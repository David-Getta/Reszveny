import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/app_preferences.dart';
import '../../core/backend/backend_client.dart';
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
    'cash': portfolio.cash,
    'cash_at': portfolio.cashAtJson,
    'alerts': [for (final a in alerts.alerts) a.toJson()],
    'notes': {for (final e in notes.all.entries) e.key: e.value.toJson()},
  };

  /// Két csomag uniója: a helyi elemek elöl, azonos azonosítónál a később
  /// javított (egyezésnél vagy javítás nélkül a helyi) marad; jegyzetnél az újabb.
  static Map<String, dynamic> merge(Map<String, dynamic> local, Map<String, dynamic> remote) {
    DateTime edited(Map<String, dynamic> e) => DateTime.tryParse('${e['edited'] ?? ''}') ?? DateTime(0);
    List<Map<String, dynamic>> byId(Object? a, Object? b) {
      final out = <String, Map<String, dynamic>>{};
      for (final e in [..._maps(a), ..._maps(b)]) {
        final id = '${e['id']}';
        if (out[id] case final prev? when !edited(e).isAfter(edited(prev))) continue;
        out[id] = e;
      }
      return out.values.toList();
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
    // Riasztásnál a teljesült változat nyer (a szerver is megjelölhette), hogy
    // egy már kiküldött riasztás ne éledjen újra.
    final alertsMerged = <Map<String, dynamic>>[];
    final alertIndex = <String, int>{};
    for (final a in [..._maps(local['alerts']), ..._maps(remote['alerts'])]) {
      final i = alertIndex['${a['id']}'];
      if (i == null) {
        alertIndex['${a['id']}'] = alertsMerged.length;
        alertsMerged.add(a);
      } else if (alertsMerged[i]['triggered_at'] == null && a['triggered_at'] != null) {
        alertsMerged[i] = a;
      } else if (alertsMerged[i]['triggered_at'] == null && a['peak'] is num) {
        // Követő stop: a két oldal közül a magasabb csúcs marad.
        final mine = alertsMerged[i]['peak'];
        if (mine is! num || (a['peak'] as num) > mine) alertsMerged[i] = {...alertsMerged[i], 'peak': a['peak']};
      }
    }
    final cash = mergeCash(local, remote);
    return {
      'v': 1,
      'lang': ?(local['lang'] ?? remote['lang']),
      'email_alerts': local['email_alerts'] ?? remote['email_alerts'] ?? true,
      'weekly_digest': local['weekly_digest'] ?? remote['weekly_digest'] ?? false,
      'favorites': {
        for (final f in [...?(local['favorites'] as List?), ...?(remote['favorites'] as List?)]) '$f',
      }.toList(),
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
      'lots': byId(local['lots'], remote['lots']),
      'dividends': byId(local['dividends'], remote['dividends']),
      'splits': _uniqueSplits(byId(local['splits'], remote['splits'])),
      'cash': cash.cash,
      'cash_at': cash.at,
      'alerts': alertsMerged,
      'notes': mergedNotes,
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
    await preferences.setFavorites([
      for (final f in (data['favorites'] as List? ?? const [])) '$f',
    ], since: AppPreferences.parseFavoriteSince(data['favorite_since']));
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
    await alerts.replaceAll([for (final j in _maps(data['alerts'])) ?PriceAlert.fromJson(j)]);
    await notes.replaceAll({
      for (final e in (data['notes'] as Map? ?? const {}).entries) '${e.key}': ?StockNote.fromJson(e.value),
    });
    return kept;
  }

  Future<void> _push(Map<String, dynamic> data) async {
    final at = await backend.putSync(data);
    _last = at;
    _syncedEmail = account.email;
    _setDirty(false);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastKey, at.toIso8601String());
    await prefs.setString(_emailKey, account.email ?? '');
  }

  /// Szinkron most: letöltés, szükség szerint összefésülés, feltöltés.
  Future<void> syncNow() async {
    if (!account.isSignedIn || _busy) return;
    _timer?.cancel();
    _busy = true;
    notifyListeners();
    try {
      final remote = await backend.getSync();
      final data = remote.data;
      final firstHere = _syncedEmail != account.email;
      if (data == null) {
        await _push(snapshot());
      } else if (firstHere ||
          (_dirty && remote.updatedAt != null && _last != null && remote.updatedAt!.isAfter(_last!))) {
        // Első belépés ezen az eszközön, vagy mindkét oldalon volt változás.
        final merged = merge(snapshot(), data);
        await _apply(merged);
        await _push(merged);
      } else if (remote.updatedAt != null && (_last == null || remote.updatedAt!.isAfter(_last!))) {
        final kept = await _apply(data);
        _last = remote.updatedAt;
        (await SharedPreferences.getInstance()).setString(_lastKey, _last!.toIso8601String());
        // Régebbi app számla vagy díj nélkül töltötte vissza a tételeket: a megtartottak visszamennek.
        if (kept) await _push(snapshot());
      } else if (_dirty) {
        await _push(snapshot());
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
}
