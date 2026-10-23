import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/app_preferences.dart';
import '../../core/backend/backend_client.dart';
import '../../core/util/tombstones.dart';
import '../account/account_controller.dart';
import '../alerts/price_alert.dart';
import '../notes/notes_store.dart';
import '../portfolio/portfolio_store.dart';

/// A csomag egy listája térképekként (a hibás elemek kimaradnak).
List<Map<String, dynamic>> _maps(Object? v) => [
  for (final e in (v is List ? v : const []))
    if (e is Map) e.cast<String, dynamic>(),
];

/// A portfólió, a kedvencek, a riasztások és a jegyzetek szinkronja az
/// e-mailes fiókkal, így minden eszközön ugyanazok. Az utolsó írás nyer; ha
/// mindkét oldalon volt változás (vagy ezen az eszközön most lép be először),
/// a két oldal uniója lesz az eredmény, hogy semmi ne vesszen el.
class SyncService extends ChangeNotifier {
  SyncService({
    required this.backend,
    required this.account,
    required this.preferences,
    required this.portfolio,
    required this.alerts,
    required this.notes,
    this.pushDelay = const Duration(seconds: 3),
    this.language,
  });

  /// Az app nyelve (a szerver e-mailjeihez).
  final String Function()? language;

  final BackendClient backend;
  final AccountController account;
  final AppPreferences preferences;
  final PortfolioStore portfolio;
  final AlertStore alerts;
  final NotesStore notes;
  final Duration pushDelay;

  static const _lastKey = 'sync_last';
  static const _emailKey = 'sync_email';
  static const _dirtyKey = 'sync_dirty';

  DateTime? _last;
  String? _syncedEmail;
  bool _dirty = false;

  /// A helyi változások száma: a feltöltés végén ebből látszik, változott-e
  /// közben valami (akkor nem jelöljük tisztának).
  int _changes = 0;
  bool _applying = false;
  bool _busy = false;
  bool _failed = false;
  bool _wasSignedIn = false;
  Timer? _timer;

  /// Az utoljára szinkronizált csomag lenyomata: ha a helyi adat nem tér el tőle
  /// (pl. csak a téma vagy a legutóbbi keresések változtak), nincs teendő.
  String? _lastJson;

  /// Az utolsó sikeres szinkron (a szerver ideje szerint).
  DateTime? get lastSynced => _last;
  bool get busy => _busy;
  bool get failed => _failed;
  bool get enabled => account.isSignedIn;

  /// Indításkor: állapot betöltése, figyelés, és ha be van lépve, szinkron.
  Future<void> start() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      _last = DateTime.tryParse(prefs.getString(_lastKey) ?? '');
      _syncedEmail = prefs.getString(_emailKey);
      _dirty = prefs.getBool(_dirtyKey) ?? false;
    } catch (_) {}
    for (final l in [preferences, portfolio, alerts, notes]) {
      l.addListener(_localChanged);
    }
    _lastJson = jsonEncode(snapshot());
    _wasSignedIn = account.isSignedIn;
    account.addListener(_accountChanged);
    if (account.isSignedIn) await syncNow();
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (final l in [preferences, portfolio, alerts, notes]) {
      l.removeListener(_localChanged);
    }
    account.removeListener(_accountChanged);
    super.dispose();
  }

  void _accountChanged() {
    final now = account.isSignedIn;
    if (now && !_wasSignedIn) unawaited(syncNow());
    _wasSignedIn = now;
  }

  void _localChanged() {
    if (_applying) return;
    final json = jsonEncode(snapshot());
    if (json == _lastJson) return;
    _lastJson = json;
    _changes++;
    // Kijelentkezve is megjegyezzük, hogy volt változás (belépéskor összefésüljük).
    _setDirty(true);
    if (!account.isSignedIn) return;
    _timer?.cancel();
    _timer = Timer(pushDelay, () => unawaited(syncNow()));
  }

  void _setDirty(bool v) {
    _dirty = v;
    SharedPreferences.getInstance().then((p) => p.setBool(_dirtyKey, v)).catchError((_) => false);
  }

  /// A helyi adatok egy csomagban.
  Map<String, dynamic> snapshot() => snapshotOf(
    preferences: preferences,
    portfolio: portfolio,
    alerts: alerts,
    notes: notes,
    language: language?.call(),
  );

  /// A személyes adatok egy csomagban (szinkronhoz és a biztonsági mentéshez is).
  static Map<String, dynamic> snapshotOf({
    required AppPreferences preferences,
    required PortfolioStore portfolio,
    required AlertStore alerts,
    required NotesStore notes,
    String? language,
  }) => {
    'v': 1,
    'lang': ?language,
    'email_alerts': preferences.emailAlerts,
    'weekly_digest': preferences.weeklyDigest,
    'favorites': preferences.favorites,
    'favorites_removed': preferences.favoritesRemovedJson,
    'favorites_added': preferences.favoritesAddedJson,
    'favorite_since': preferences.favoriteSinceJson,
    'watch_lists': [for (final l in preferences.watchLists) l.toJson()],
    if (preferences.targets.isNotEmpty) 'targets': preferences.targets,
    'goals': preferences.goalsJson,
    // A számla és a díj üresen is szerepel: így a javításkor törölt érték
    // megkülönböztethető attól, hogy egy régebbi app nem ismerte (az kihagyja).
    'lots': [
      for (final l in portfolio.lots) {...l.toJson(), 'account': l.account, 'fee': l.fee},
    ],
    'dividends': [
      for (final d in portfolio.dividends) {...d.toJson(), 'account': d.account},
    ],
    'splits': [for (final s in portfolio.splits) s.toJson()],
    'deleted': portfolio.deletedJson,
    'cash': portfolio.cash,
    'cash_at': portfolio.cashAtJson,
    'alerts': [for (final a in alerts.alerts) a.toJson()],
    'alerts_deleted': alerts.deletedJson,
    'notes': {for (final e in notes.all.entries) e.key: e.value.toJson()},
    'notes_deleted': notes.deletedJson,
  };

  /// Két csomag uniója: a helyi elemek elöl, azonos azonosítónál a később
  /// javított (egyezésnél vagy javítás nélkül a helyi) marad; jegyzetnél az újabb.
  static Map<String, dynamic> merge(Map<String, dynamic> local, Map<String, dynamic> remote) {
    DateTime edited(Map<String, dynamic> e) => DateTime.tryParse('${e['edited'] ?? ''}') ?? DateTime(0);
    // Törlési jelzések: a két oldal uniója (azonosítónként a későbbi); a törölt
    // tétel nem támad fel a másik oldal régi példányából – csak ha később javították.
    final deleted = unionTombstones(local['deleted'], remote['deleted']);
    List<Map<String, dynamic>> byId(Object? a, Object? b) {
      final out = <String, Map<String, dynamic>>{};
      for (final e in [..._maps(a), ..._maps(b)]) {
        final id = '${e['id']}';
        if (out[id] case final prev? when !edited(e).isAfter(edited(prev))) continue;
        out[id] = e;
      }
      bool gone(Map<String, dynamic> e) => switch (deleted['${e['id']}']) {
        final at? => !edited(e).isAfter(at),
        null => false,
      };
      return [
        for (final e in out.values)
          if (!gone(e)) e,
      ];
    }

    final notesL = (local['notes'] as Map? ?? const {}).cast<String, dynamic>();
    final notesR = (remote['notes'] as Map? ?? const {}).cast<String, dynamic>();
    final mergedNotes = <String, dynamic>{...notesR};
    for (final e in notesL.entries) {
      final r = StockNote.fromJson(notesR[e.key]);
      final l = StockNote.fromJson(e.value);
      if (l == null) continue;
      if (r == null || !r.updatedAt.isAfter(l.updatedAt)) mergedNotes[e.key] = e.value;
    }
    // A törölt jegyzet csak akkor marad, ha a törlés után írták.
    final notesDeleted = unionTombstones(local['notes_deleted'], remote['notes_deleted']);
    mergedNotes.removeWhere(
      (symbol, n) => switch ((notesDeleted[symbol], StockNote.fromJson(n))) {
        (final at?, final note?) => !note.updatedAt.isAfter(at),
        _ => false,
      },
    );
    // Riasztás: azonosítónként a felhasználó később módosított változata nyer
    // (szerkesztés, újraélesítés, visszaállítás – a teljesülés ideje nem számít,
    // az a régi beállítás szerint történt). Azonos módosításnál a teljesült (a
    // szerver is megjelölhette), hogy egy már kiküldött riasztás ne éledjen újra;
    // két aktív példánál a követő stop magasabb csúcsa marad.
    DateTime? at(Object? v) => DateTime.tryParse('${v ?? ''}');
    DateTime edit(Map<String, dynamic> a) => at(a['edited']) ?? DateTime(0);

    final alertsMerged = <Map<String, dynamic>>[];
    final alertIndex = <String, int>{};
    for (final a in [..._maps(local['alerts']), ..._maps(remote['alerts'])]) {
      final i = alertIndex['${a['id']}'];
      if (i == null) {
        alertIndex['${a['id']}'] = alertsMerged.length;
        alertsMerged.add(a);
        continue;
      }
      final cur = alertsMerged[i];
      final (ea, ec) = (edit(a), edit(cur));
      if (ea.isAfter(ec)) {
        alertsMerged[i] = a;
      } else if (ea.isAtSameMomentAs(ec)) {
        final (ta, tc) = (at(a['triggered_at']), at(cur['triggered_at']));
        if (ta != null && (tc == null || ta.isBefore(tc))) {
          // A korábbi teljesülés az érvényes (a kiküldött e-mail ahhoz tartozik).
          alertsMerged[i] = a;
        } else if (ta == null && tc == null && a['peak'] is num) {
          // Követő stop ugyanabban a beállításban: a magasabb csúcs marad.
          final mine = cur['peak'];
          if (mine is! num || (a['peak'] as num) > mine) alertsMerged[i] = {...cur, 'peak': a['peak']};
        }
      }
    }
    // A törölt riasztás csak akkor marad, ha a törlés után szerkesztették (a
    // szerver jelölése nem számít: az a törlésről még nem tudhatott).
    final alertsDeleted = unionTombstones(local['alerts_deleted'], remote['alerts_deleted']);
    alertsMerged.removeWhere(
      (a) => switch ((alertsDeleted['${a['id']}'], at(a['edited']))) {
        (final gone?, final edited) => edited == null || !edited.isAfter(gone),
        _ => false,
      },
    );
    final cash = mergeCash(local, remote);
    // Kedvencek: a két oldal uniója, kivéve amit levettek, és utána nem vették fel újra.
    final favRemoved = unionTombstones(local['favorites_removed'], remote['favorites_removed']);
    final favAdded = unionTombstones(local['favorites_added'], remote['favorites_added']);
    final favorites = [
      for (final f in {
        for (final f in [...?(local['favorites'] as List?), ...?(remote['favorites'] as List?)]) '$f',
      })
        if (switch (favRemoved[f]) {
          final removed? => favAdded[f]?.isAfter(removed) ?? false,
          null => true,
        })
          f,
    ];
    favRemoved.removeWhere((f, _) => favorites.contains(f));
    favAdded.removeWhere((f, _) => !favorites.contains(f));
    final lots = byId(local['lots'], remote['lots']);
    final dividends = byId(local['dividends'], remote['dividends']);
    final splits = _uniqueSplits(byId(local['splits'], remote['splits']));
    // A megmaradt (a törlés után visszaállított vagy javított) tétel jelzése
    // eltűnik, hogy később (pl. egy régebbi app vagy egy mentés után) ne törölje.
    final kept = {
      for (final e in [...lots, ...dividends, ...splits]) '${e['id']}',
    };
    deleted.removeWhere((id, _) => kept.contains(id));
    final keptAlerts = {for (final a in alertsMerged) '${a['id']}'};
    alertsDeleted.removeWhere((id, _) => keptAlerts.contains(id));
    notesDeleted.removeWhere((symbol, _) => mergedNotes.containsKey(symbol));
    return {
      'v': 1,
      'lang': ?(local['lang'] ?? remote['lang']),
      'email_alerts': local['email_alerts'] ?? remote['email_alerts'] ?? true,
      'weekly_digest': local['weekly_digest'] ?? remote['weekly_digest'] ?? false,
      'favorites': favorites,
      'favorites_removed': tombstonesJson(favRemoved),
      'favorites_added': {for (final e in favAdded.entries) e.key: e.value.toUtc().toIso8601String()},
      'watch_lists': _mergeLists(local['watch_lists'], remote['watch_lists']),
      // Célarányok: tickerenként a helyi nyer.
      'targets': {...AppPreferences.parseTargets(remote['targets']), ...AppPreferences.parseTargets(local['targets'])},
      // Kedvencenként a felvételi nap: azonos tickernél a helyi marad (mint a többi tételnél) –
      // így egy levétel és újrafelvétel nem veszik el a másik eszköz régebbi napja miatt.
      'favorite_since': {
        for (final e in {
          ...AppPreferences.parseFavoriteSince(remote['favorite_since']),
          ...AppPreferences.parseFavoriteSince(local['favorite_since']),
        }.entries)
          e.key: e.value.toIso8601String().substring(0, 10),
      },
      'goals': mergeGoals(local['goals'], remote['goals']),
      'lots': lots,
      'dividends': dividends,
      'splits': splits,
      'deleted': tombstonesJson(deleted),
      'cash': cash.cash,
      'cash_at': cash.at,
      'alerts': alertsMerged,
      'alerts_deleted': tombstonesJson(alertsDeleted),
      'notes': mergedNotes,
      'notes_deleted': tombstonesJson(notesDeleted),
    };
  }

  /// Készpénz: pénznemenként az újabb módosítás nyer – a törlés is, így egy másik
  /// készülék régebbi egyenlege nem éleszti újra. Időbélyeg nélkül (régi csomag)
  /// a helyi nyer, és ami csak a távoliban van, megmarad.
  static ({Map<String, double> cash, Map<String, String> at}) mergeCash(
    Map<String, dynamic> local,
    Map<String, dynamic> remote,
  ) {
    final lc = PortfolioStore.parseCashMap(local['cash']), rc = PortfolioStore.parseCashMap(remote['cash']);
    final la = PortfolioStore.parseCashAt(local['cash_at']), ra = PortfolioStore.parseCashAt(remote['cash_at']);
    final cash = <String, double>{}, at = <String, String>{};
    for (final c in {...lc.keys, ...rc.keys, ...la.keys, ...ra.keys}) {
      final lt = la[c], rt = ra[c];
      final remoteWins = rt != null && (lt == null || rt.isAfter(lt));
      final v = lt == null && rt == null ? (lc[c] ?? rc[c]) : (remoteWins ? rc[c] : lc[c]);
      if (v != null) cash[c] = v;
      final newest = remoteWins ? rt : (lt ?? rt);
      if (newest != null) at[c] = newest.toIso8601String();
    }
    return (cash: cash, at: at);
  }

  /// Célok (portfólió-célérték, havi osztalékcél): fajtánként az újabb módosítás
  /// nyer – a törlés is, így egy másik készülék régebbi célja nem éled újra.
  /// Időbélyeg nélkül (régi csomag) a helyi nyer, ha van.
  static Map<String, dynamic> mergeGoals(Object? local, Object? remote) {
    final l = local is Map ? local : const {}, r = remote is Map ? remote : const {};
    final lp = AppPreferences.parseGoals(l), rp = AppPreferences.parseGoals(r);
    return {
      for (final kind in {...lp.keys, ...rp.keys})
        kind: switch ((lp[kind]?.at, rp[kind]?.at)) {
          (final lt, final rt?) when lt == null || rt.isAfter(lt) => r[kind],
          _ => l[kind] ?? r[kind],
        },
    };
  }

  /// Felaprózások: két eszközön rögzítve más az azonosító, de ugyanaz (ticker, nap,
  /// arány) csak egyszer maradhat – kétszer alkalmazva a darabszám hibás lenne.
  /// Helyi törlési jelzések a megadott azonosítók nélkül.
  static Map<String, DateTime> _without(Map<String, String> deleted, Set<String> ids) => {
    for (final e in parseTombstones(deleted).entries)
      if (!ids.contains(e.key)) e.key: e.value,
  };

  static List<Map<String, dynamic>> _uniqueSplits(List<Map<String, dynamic>> splits) {
    final seen = <String>{};
    return [
      for (final s in splits)
        if (SplitRecord.fromJson(s)?.key case final k? when seen.add(k)) s,
    ];
  }

  /// Saját listák: név szerint (kis- és nagybetűtől függetlenül) összevonva, a
  /// helyiek elöl; azonos listánál a tickerek uniója.
  static List<Map<String, dynamic>> _mergeLists(Object? local, Object? remote) {
    final merged = <String, WatchList>{};
    for (final raw in [...?(local as List?), ...?(remote as List?)]) {
      final l = WatchList.fromJson(raw);
      if (l == null) continue;
      final prev = merged[l.name.toLowerCase()];
      merged[l.name.toLowerCase()] = prev == null
          ? l
          : WatchList(name: prev.name, symbols: {...prev.symbols, ...l.symbols}.toList());
    }
    return [for (final l in merged.values) l.toJson()];
  }

  /// A csomag átvétele; igaz, ha egy tételen megmaradt a helyi számla vagy díj.
  Future<bool> _apply(Map<String, dynamic> data) async {
    _applying = true;
    _lastJson = null;
    try {
      return await applyTo(data, preferences: preferences, portfolio: portfolio, alerts: alerts, notes: notes);
    } finally {
      _applying = false;
      _lastJson = jsonEncode(snapshot());
    }
  }

  /// Egy csomag átvétele a helyi tárolókba (a meglévők helyére). Igaz, ha egy
  /// tételen megmaradt a helyi számla vagy díj, mert a csomag nélküle hozta (ilyenkor
  /// a helyi állapotot vissza kell küldeni).
  static Future<bool> applyTo(
    Map<String, dynamic> data, {
    required AppPreferences preferences,
    required PortfolioStore portfolio,
    required AlertStore alerts,
    required NotesStore notes,
  }) async {
    // Régi csomagban nincs felvételi nap: akkor a helyiek maradnak (a kedvencekre szűkítve).
    final favorites = [for (final f in (data['favorites'] as List? ?? const [])) '$f'];
    await preferences.setFavorites(favorites, since: AppPreferences.parseFavoriteSince(data['favorite_since']));
    // A kedvencek jelzései a csomag szerint; régi csomagban nincsenek: a helyiek
    // maradnak, a csomagban szereplő kedvencek levételi jelzése nélkül.
    await preferences.replaceFavoriteMarks(
      removed: data['favorites_removed'] is Map
          ? parseTombstones(data['favorites_removed'])
          : _without(preferences.favoritesRemovedJson, favorites.map((f) => f.toUpperCase()).toSet()),
      added: data['favorites_added'] is Map
          ? parseTombstones(data['favorites_added'])
          : parseTombstones(preferences.favoritesAddedJson),
    );
    // Régi csomagban nincs ilyen mező: akkor a helyi listák maradnak.
    if (data['watch_lists'] is List) {
      await preferences.setWatchLists([for (final l in data['watch_lists'] as List) ?WatchList.fromJson(l)]);
    }
    if (data['targets'] is Map) await preferences.setTargets(AppPreferences.parseTargets(data['targets']));
    // Régi csomagban nincs cél: akkor a helyiek maradnak.
    if (data['goals'] is Map) await preferences.applyGoals(AppPreferences.parseGoals(data['goals']));
    if (data['cash'] is Map) {
      await portfolio.replaceAllCash(
        PortfolioStore.parseCashMap(data['cash']),
        // Régi csomagban nincs időbélyeg: akkor a helyiek maradnak.
        at: data['cash_at'] is Map ? PortfolioStore.parseCashAt(data['cash_at']) : null,
      );
    }
    await preferences.setEmailAlerts(data['email_alerts'] != false);
    await preferences.setWeeklyDigest(data['weekly_digest'] == true);
    // A számlát és a díjat nem ismerő (régebbi) app a tételt a mezők nélkül tölti
    // vissza: azonos tételnél ilyenkor a helyi számla és díj marad. Ha a mező ott
    // van (üresen is), az a javított érték – az nyer.
    var kept = false;
    Map<String, dynamic> keep(Map<String, dynamic> j, Map<String, Object> fields) {
      if (fields.isNotEmpty) kept = true;
      return {...j, ...fields};
    }

    final local = {for (final l in portfolio.lots) l.id: l};
    await portfolio.replaceAll([
      for (final j in _maps(data['lots']))
        ?PortfolioLot.fromJson(
          keep(j, {
            if (local['${j['id']}'] case final l?) ...{
              if (l.account case final a? when !j.containsKey('account')) 'account': a,
              if (l.fee > 0 && !j.containsKey('fee')) 'fee': l.fee,
            },
          }),
        ),
    ]);
    // Régi csomagban (korábbi app) nincs osztaléklista: akkor a helyi marad.
    if (data['dividends'] is List) {
      // Az osztalék számlája is megmarad, ha egy régebbi app nélküle töltötte vissza.
      final localDividend = {for (final d in portfolio.dividends) d.id: d};
      await portfolio.replaceAllDividends([
        for (final j in _maps(data['dividends']))
          ?DividendRecord.fromJson(
            keep(j, {
              if (localDividend['${j['id']}']?.account case final a? when !j.containsKey('account')) 'account': a,
            }),
          ),
      ]);
    }
    if (data['splits'] is List) {
      await portfolio.replaceAllSplits([for (final j in _maps(data['splits'])) ?SplitRecord.fromJson(j)]);
    }
    // A törlési jelzések a csomag szerint; régi csomagban nincsenek: a helyiek
    // maradnak, a csomagban szereplő tételeké nélkül (különben később törölnék).
    await portfolio.replaceAllDeleted(
      data['deleted'] is Map
          ? parseTombstones(data['deleted'])
          : _without(portfolio.deletedJson, {
              for (final key in ['lots', 'dividends', 'splits'])
                for (final j in _maps(data[key])) '${j['id']}',
            }),
    );
    await alerts.replaceAll([for (final j in _maps(data['alerts'])) ?PriceAlert.fromJson(j)]);
    await alerts.replaceAllDeleted(
      data['alerts_deleted'] is Map
          ? parseTombstones(data['alerts_deleted'])
          : _without(alerts.deletedJson, {for (final j in _maps(data['alerts'])) '${j['id']}'}),
    );
    await notes.replaceAll({
      for (final e in (data['notes'] as Map? ?? const {}).entries) '${e.key}': ?StockNote.fromJson(e.value),
    });
    await notes.replaceAllDeleted(
      data['notes_deleted'] is Map
          ? parseTombstones(data['notes_deleted'])
          : _without(notes.deletedJson, {...?(data['notes'] as Map?)?.keys.map((k) => '$k')}),
    );
    return kept;
  }

  /// Feltöltés csak akkor, ha a szerveren még a [base] változat van (különben 409).
  Future<void> _push(Map<String, dynamic> data, {required DateTime? base}) async {
    final changes = _changes;
    final at = await backend.putSync(data, conditional: true, base: base);
    _last = at;
    _syncedEmail = account.email;
    // A feltöltés közben történt változás még nem ment fel: piszkos marad, és
    // hamarosan újra szinkronizálunk.
    if (_changes == changes) {
      _setDirty(false);
    } else if (account.isSignedIn) {
      _timer?.cancel();
      _timer = Timer(pushDelay, () => unawaited(syncNow()));
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastKey, at.toIso8601String());
    await prefs.setString(_emailKey, account.email ?? '');
  }

  /// Szinkron most: letöltés, szükség szerint összefésülés, feltöltés. Ha a
  /// letöltés és a feltöltés között más is írt (egy másik eszköz vagy a szerver
  /// riasztásfigyelője), a szerver elutasítja: újra letöltjük és összefésüljük.
  Future<void> syncNow() async {
    if (!account.isSignedIn || _busy) return;
    _timer?.cancel();
    _busy = true;
    notifyListeners();
    try {
      for (var attempt = 1; ; attempt++) {
        try {
          await _syncOnce();
          break;
        } on BackendException catch (e) {
          if (e.status != 409 || attempt >= 3) rethrow;
        }
      }
      _failed = false;
    } catch (e) {
      debugPrint('Szinkron nem sikerült: $e');
      _failed = true;
    } finally {
      _busy = false;
      notifyListeners();
    }
  }

  Future<void> _syncOnce() async {
    final remote = await backend.getSync();
    final data = remote.data;
    final base = remote.updatedAt;
    final firstHere = _syncedEmail != account.email;
    if (data == null) {
      await _push(snapshot(), base: null);
    } else if (firstHere || (_dirty && base != null && _last != null && !base.isAtSameMomentAs(_last!))) {
      // Első belépés ezen az eszközön, vagy mindkét oldalon volt változás.
      final merged = merge(snapshot(), data);
      await _apply(merged);
      await _push(merged, base: base);
    } else if (base != null && (_last == null || !base.isAtSameMomentAs(_last!))) {
      final kept = await _apply(data);
      _last = base;
      (await SharedPreferences.getInstance()).setString(_lastKey, base.toIso8601String());
      // Régebbi app számla vagy díj nélkül töltötte vissza a tételeket: a megtartottak visszamennek.
      if (kept) await _push(snapshot(), base: base);
    } else if (_dirty) {
      await _push(snapshot(), base: base);
    }
  }
}
