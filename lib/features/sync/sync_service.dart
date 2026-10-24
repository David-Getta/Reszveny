import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' show AppLifecycleListener, StringCharacters;
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

/// A csomag egy mezője listaként, ill. térképként; más típusnál üres – egy hibás
/// (más app vagy kézzel írt) csomag ne akassza meg minden szinkront.
List<Object?> _list(Object? v) => v is List ? v : const [];
Map<String, dynamic> _map(Object? v) => v is Map ? {for (final e in v.entries) '${e.key}': e.value} : const {};

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
  static const _foreignKey = 'sync_foreign';

  /// A fiókcsomag ebben a változatban ismeretlen részei (egy újabb app írta őket):
  /// felső szintű mezők, nem értelmezhető tételek (pl. egy új riasztásfajta) és a tételek
  /// ismeretlen mezői. A feltöltés visszaírja őket ([withForeign]), így egy régebbi eszköz
  /// szinkronja nem törli ki azt, amit egy újabb vett fel.
  Map<String, dynamic> _foreign = const {};

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

  /// Van-e még fel nem töltött helyi változás.
  bool get dirty => _dirty;

  /// A futó szinkron vége (kijelentkezés előtt ezt várjuk meg).
  Completer<void>? _run;

  /// Kijelentkezés előtt: a futó szinkron megvárása, majd a még fel nem töltött
  /// változások felküldése. Igaz, ha minden fent van a fiókban.
  Future<bool> flush() async {
    for (var r = _run; r != null; r = _run) {
      await r.future;
    }
    if (_dirty && account.isSignedIn) await syncNow();
    return !_dirty;
  }

  /// A legutóbbi feltöltést a szerver túl nagynak találta (413): az újrapróbálás
  /// magától nem segít, a felület megmondja, mit lehet tenni.
  bool get tooLarge => _tooLarge;
  bool _tooLarge = false;
  bool get enabled => account.isSignedIn;

  /// Indításkor: állapot betöltése, figyelés, és ha be van lépve, szinkron.
  Future<void> start() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      _last = DateTime.tryParse(prefs.getString(_lastKey) ?? '');
      _syncedEmail = prefs.getString(_emailKey);
      _dirty = prefs.getBool(_dirtyKey) ?? false;
      final foreign = jsonDecode(prefs.getString(_foreignKey) ?? '{}');
      if (foreign is Map) _foreign = foreign.cast<String, dynamic>();
    } catch (_) {}
    for (final l in [preferences, portfolio, alerts, notes]) {
      l.addListener(_localChanged);
    }
    _lastJson = jsonEncode(snapshot());
    _wasSignedIn = account.isSignedIn;
    account.addListener(_accountChanged);
    // Visszatéréskor (előtérbe kerülve) friss adat a többi eszközről.
    try {
      _lifecycle = AppLifecycleListener(
        onResume: () {
          // Asztali gépen minden ablakfókusz „visszatérés”: egy percen belül nem kér újra
          // (a helyi változás úgyis magától feltöltődik).
          final ran = _ranAt;
          if (!account.isSignedIn || (ran != null && DateTime.now().difference(ran) < resumeMinGap)) return;
          unawaited(syncNow());
        },
      );
    } catch (_) {
      // Flutter-kötés nélkül (pl. egységtesztben) nincs életciklus-figyelés.
    }
    if (account.isSignedIn) await syncNow();
  }

  AppLifecycleListener? _lifecycle;

  @override
  void dispose() {
    _timer?.cancel();
    _lifecycle?.dispose();
    for (final l in [preferences, portfolio, alerts, notes]) {
      l.removeListener(_localChanged);
    }
    account.removeListener(_accountChanged);
    super.dispose();
  }

  /// A fiók törlése után: a készüléken megtartott adat már nem egy másik fiókhoz
  /// tartozik, így a következő belépés első belépésként összefésül (nem cseréli le).
  Future<void> forgetAccount() async {
    _syncedEmail = null;
    _last = null;
    _foreign = const {};
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_emailKey);
      await prefs.remove(_lastKey);
      await prefs.remove(_foreignKey);
    } catch (_) {}
  }

  /// A letöltött fiókcsomag ismeretlen részeinek megjegyzése (a következő feltöltéshez).
  Future<void> _rememberForeign(Map<String, dynamic>? data) async {
    _foreign = data == null ? const {} : foreignOf(data);
    try {
      final prefs = await SharedPreferences.getInstance();
      await (_foreign.isEmpty ? prefs.remove(_foreignKey) : prefs.setString(_foreignKey, jsonEncode(_foreign)));
    } catch (_) {}
  }

  /// A tételfajták mezői, amelyeket ez a változat ismer (és a [snapshotOf] ír).
  static const _knownFields = {
    'lots': {'id', 'symbol', 'quantity', 'price', 'currency', 'date', 'side', 'account', 'fee', 'edited', 'renamed'},
    'dividends': {'id', 'symbol', 'amount', 'currency', 'date', 'account', 'edited', 'renamed'},
    'splits': {'id', 'symbol', 'from', 'to', 'date', 'edited', 'renamed'},
    'alerts': {
      'id',
      'symbol',
      'kind',
      'value',
      'currency',
      'created_at',
      'triggered_at',
      'triggered_price',
      'peak',
      'edited',
      'renamed',
    },
  };

  static bool _parses(String section, Map<String, dynamic> j) => switch (section) {
    'lots' => PortfolioLot.fromJson(j) != null,
    'dividends' => DividendRecord.fromJson(j) != null,
    'splits' => SplitRecord.fromJson(j) != null,
    _ => PriceAlert.fromJson(j) != null,
  };

  /// Egy csomag ebben a változatban ismeretlen részei: `top` (felső szintű mezők),
  /// `unparsed` (fajtánként a nem értelmezhető tételek) és `fields` (fajtánként, tétel-
  /// azonosítónként az ismeretlen mezők).
  @visibleForTesting
  static Map<String, dynamic> foreignOf(Map<String, dynamic> data) {
    final known = {...emptyPackage.keys, 'lang', 'email_alerts', 'weekly_digest', 'switches_at'};
    final top = {
      for (final e in data.entries)
        if (!known.contains(e.key)) e.key: e.value,
    };
    final unparsed = <String, List<Map<String, dynamic>>>{};
    final fields = <String, Map<String, Map<String, dynamic>>>{};
    for (final MapEntry(key: section, value: names) in _knownFields.entries) {
      for (final j in _maps(data[section])) {
        if (!_parses(section, j)) {
          (unparsed[section] ??= []).add(j);
          continue;
        }
        final extra = {
          for (final e in j.entries)
            if (!names.contains(e.key)) e.key: e.value,
        };
        if (extra.isNotEmpty) (fields[section] ??= {})['${j['id']}'] = extra;
      }
    }
    return {
      if (top.isNotEmpty) 'top': top,
      if (unparsed.isNotEmpty) 'unparsed': unparsed,
      if (fields.isNotEmpty) 'fields': fields,
    };
  }

  /// A helyi csomag a megőrzött ismeretlen részekkel: a felső szintű mezők (az ismertek
  /// a helyiből), a tételek ismeretlen mezői a még meglévő tételekre, és a nem értelmezhető
  /// tételek (ha a helyi csomagban nincs ugyanilyen azonosítójú).
  @visibleForTesting
  static Map<String, dynamic> withForeign(Map<String, dynamic> snap, Map<String, dynamic> foreign) {
    if (foreign.isEmpty) return snap;
    final out = {..._map(foreign['top']), ...snap};
    final unparsed = _map(foreign['unparsed']), fields = _map(foreign['fields']);
    for (final section in _knownFields.keys) {
      final extra = _map(fields[section]), rest = _maps(unparsed[section]);
      if (extra.isEmpty && rest.isEmpty) continue;
      final items = _maps(snap[section]);
      final ids = {for (final i in items) '${i['id']}'};
      out[section] = [
        for (final i in items) {..._map(extra['${i['id']}']), ...i},
        for (final r in rest)
          if (!ids.contains('${r['id']}')) r,
      ];
    }
    return out;
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
    // Csak változáskor írunk (egy import sok értesítése ne írja újra minden alkalommal).
    if (_dirty == v) return;
    _dirty = v;
    SharedPreferences.getInstance().then((p) => p.setBool(_dirtyKey, v)).catchError((_) => false);
  }

  /// A helyi adatok egy csomagban (a fiókcsomag ismeretlen részeivel együtt).
  Map<String, dynamic> snapshot() => withForeign(
    snapshotOf(
      preferences: preferences,
      portfolio: portfolio,
      alerts: alerts,
      notes: notes,
      language: language?.call(),
    ),
    _foreign,
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
    'switches_at': preferences.switchesAtJson,
    'favorites': preferences.favorites,
    'lists_removed': preferences.listsRemovedJson,
    'lists_added': preferences.listsAddedJson,
    'favorites_removed': preferences.favoritesRemovedJson,
    'favorites_added': preferences.favoritesAddedJson,
    'favorite_since': preferences.favoriteSinceJson,
    'watch_lists': [for (final l in preferences.watchLists) l.toJson()],
    // Üresen is szerepel (a törlés is átjut), az idejével: az újabb teljes beállítás nyer.
    'targets': preferences.targets,
    'targets_at': ?preferences.targetsAt?.toIso8601String(),
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
    // A tárolt sorrendben (az `alerts` nézet a legújabbat teszi előre; így egy másik
    // eszköz nem fordítja meg minden szinkronnál).
    'alerts': [for (final a in alerts.alerts.toList().reversed) a.toJson()],
    'alerts_deleted': alerts.deletedJson,
    'notes': {for (final e in notes.all.entries) e.key: e.value.toJson()},
    'notes_deleted': notes.deletedJson,
  };

  /// Két csomag uniója: a helyi elemek elöl, azonos azonosítónál a később
  /// javított (egyezésnél vagy javítás nélkül a helyi) marad; jegyzetnél az újabb.
  ///
  /// [firstSignIn]: az eszköz első belépése egy fiókba, amelyben már van adat. Ilyenkor
  /// a két oldal egymástól függetlenül készült: a kétszer begépelt (azonos tartalmú)
  /// tétel csak egyszer marad, a két különböző jegyzet egymás után, a készpénznél, a
  /// célaránynál és a céloknál pedig a fiók értéke marad (nem a frissebb helyi).
  static Map<String, dynamic> merge(
    Map<String, dynamic> local,
    Map<String, dynamic> remote, {
    bool firstSignIn = false,
  }) {
    DateTime edited(Map<String, dynamic> e) => parseStamp(e['edited']) ?? DateTime(0);
    // Az újabb változat: a javítás vagy a tickerváltás ideje, amelyik későbbi.
    DateTime changed(Map<String, dynamic> e) => switch (parseStamp(e['renamed'])) {
      final r? when r.isAfter(edited(e)) => r,
      _ => edited(e),
    };
    // Törlési jelzések: a két oldal uniója (azonosítónként a későbbi); a törölt
    // tétel nem támad fel a másik oldal régi példányából – csak ha később javították
    // (egy régi eszközön végzett tickerváltás nem javítás).
    final deleted = unionTombstones(local['deleted'], remote['deleted']);
    List<Map<String, dynamic>> byId(Object? a, Object? b) {
      final out = <String, Map<String, dynamic>>{};
      for (final e in [..._maps(a), ..._maps(b)]) {
        final id = '${e['id']}';
        if (out[id] case final prev? when !changed(e).isAfter(changed(prev))) continue;
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

    final notesL = _map(local['notes']);
    final notesR = _map(remote['notes']);
    final mergedNotes = <String, dynamic>{...notesR};
    for (final e in notesL.entries) {
      final r = StockNote.fromJson(notesR[e.key]);
      final l = StockNote.fromJson(e.value);
      if (l == null) continue;
      if (firstSignIn && r != null && !r.text.contains(l.text.trim())) {
        // Két külön írt jegyzet: egyik sem vész el (a fiókbeli elöl).
        final text = l.text.contains(r.text.trim()) ? l.text : '${r.text.trimRight()}\n\n${l.text}';
        final newer = l.updatedAt.isAfter(r.updatedAt) ? l.updatedAt : r.updatedAt;
        mergedNotes[e.key] = StockNote(
          text: text.characters.take(NotesStore.maxLength).toString(),
          updatedAt: newer,
        ).toJson();
      } else if (r == null || (!firstSignIn && !r.updatedAt.isAfter(l.updatedAt))) {
        mergedNotes[e.key] = e.value;
      }
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
    // A javítás vagy a tickerváltás ideje, amelyik későbbi (a törlés ellen csak a javítás véd).
    DateTime edit(Map<String, dynamic> a) => changed(a);

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
      (a) => switch ((alertsDeleted['${a['id']}'], parseStamp(a['edited']))) {
        (final gone?, final edited) => edited == null || !edited.isAfter(gone),
        _ => false,
      },
    );
    final cash = mergeCash(local, remote, preferRemote: firstSignIn);
    // Kedvencek: a két oldal uniója, kivéve amit levettek, és utána nem vették fel újra.
    final favRemoved = unionTombstones(local['favorites_removed'], remote['favorites_removed']);
    final favAdded = unionTombstones(local['favorites_added'], remote['favorites_added']);
    final favorites = [
      for (final f in {
        for (final f in [..._list(local['favorites']), ..._list(remote['favorites'])]) '$f',
      })
        if (switch (favRemoved[f]) {
          final removed? => favAdded[f]?.isAfter(removed) ?? false,
          null => true,
        })
          f,
    ];
    favRemoved.removeWhere((f, _) => favorites.contains(f));
    favAdded.removeWhere((f, _) => !favorites.contains(f));
    final lists = _mergeLists(local, remote);
    final (localLots, localDividends) = firstSignIn
        ? (_withoutTwins(local['lots'], remote['lots']), _withoutTwins(local['dividends'], remote['dividends']))
        : (local['lots'], local['dividends']);
    final lots = byId(localLots, remote['lots']);
    final dividends = byId(localDividends, remote['dividends']);
    final splits = _uniqueSplits(byId(local['splits'], remote['splits']));
    // A megmaradt (a törlés után visszaállított vagy javított) tétel jelzése
    // eltűnik, hogy később (pl. egy régebbi app vagy egy mentés után) ne törölje.
    final kept = {
      for (final e in [...lots, ...dividends, ...splits]) '${e['id']}',
    };
    deleted.removeWhere((id, _) => kept.contains(id));
    // A kapcsolók (e-mailes riasztás, heti összefoglaló): a később állított nyer; idő
    // nélkül (régi app, vagy sosem állították) a helyi, mint eddig.
    final localAt = parseTombstones(local['switches_at']), remoteAt = parseTombstones(remote['switches_at']);
    final switchesAt = unionTombstones(local['switches_at'], remote['switches_at']);
    // Ha a helyi oldal még nem állította (nincs ideje: alapérték vagy régi app), a
    // fiók értéke nyer – egy új eszköz alapértékei nem írják felül a beállítást.
    Object switchOf(String key, bool fallback) {
      final l = localAt[key], r = remoteAt[key];
      final first = l == null || (r != null && r.isAfter(l)) ? remote : local;
      final second = identical(first, local) ? remote : local;
      return first[key] ?? second[key] ?? fallback;
    }

    final keptAlerts = {for (final a in alertsMerged) '${a['id']}'};
    alertsDeleted.removeWhere((id, _) => keptAlerts.contains(id));
    notesDeleted.removeWhere((symbol, _) => mergedNotes.containsKey(symbol));
    return {
      'v': 1,
      'lang': ?(local['lang'] ?? remote['lang']),
      'email_alerts': switchOf('email_alerts', true),
      'weekly_digest': switchOf('weekly_digest', false),
      'switches_at': {for (final e in switchesAt.entries) e.key: e.value.toUtc().toIso8601String()},
      'favorites': favorites,
      'favorites_removed': tombstonesJson(favRemoved),
      'favorites_added': {for (final e in favAdded.entries) e.key: e.value.toUtc().toIso8601String()},
      'watch_lists': lists.lists,
      'lists_removed': tombstonesJson(lists.removed),
      'lists_added': {for (final e in lists.added.entries) e.key: e.value.toUtc().toIso8601String()},
      ...mergeTargets(local, remote, preferRemote: firstSignIn),
      // Kedvencenként a felvételi nap: azonos tickernél a helyi marad (mint a többi tételnél) –
      // így egy levétel és újrafelvétel nem veszik el a másik eszköz régebbi napja miatt.
      'favorite_since': {
        for (final e in {
          ...AppPreferences.parseFavoriteSince(remote['favorite_since']),
          ...AppPreferences.parseFavoriteSince(local['favorite_since']),
        }.entries)
          e.key: e.value.toIso8601String().substring(0, 10),
      },
      'goals': mergeGoals(local['goals'], remote['goals'], preferRemote: firstSignIn),
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
  /// [preferRemote] (első belépés): ahol a fióknak van egyenlege, az marad.
  static ({Map<String, double> cash, Map<String, String> at}) mergeCash(
    Map<String, dynamic> local,
    Map<String, dynamic> remote, {
    bool preferRemote = false,
  }) {
    final lc = PortfolioStore.parseCashMap(local['cash']), rc = PortfolioStore.parseCashMap(remote['cash']);
    final la = PortfolioStore.parseCashAt(local['cash_at']), ra = PortfolioStore.parseCashAt(remote['cash_at']);
    final cash = <String, double>{}, at = <String, String>{};
    for (final c in {...lc.keys, ...rc.keys, ...la.keys, ...ra.keys}) {
      final lt = la[c], rt = ra[c];
      final remoteWins = (preferRemote && rc.containsKey(c)) || (rt != null && (lt == null || rt.isAfter(lt)));
      final v = lt == null && rt == null && !remoteWins ? (lc[c] ?? rc[c]) : (remoteWins ? rc[c] : lc[c]);
      if (v != null) cash[c] = v;
      final newest = remoteWins ? rt : (lt ?? rt);
      if (newest != null) at[c] = newest.toIso8601String();
    }
    return (cash: cash, at: at);
  }

  /// Célarányok: az újabb (időbélyeggel) teljes beállítás nyer, a törlés is; ha
  /// egyik oldalnak sincs ideje (régi csomag), tickerenként a helyi elöl.
  /// [preferRemote] (első belépés): ha a fióknak van beállítása, az marad.
  static Map<String, dynamic> mergeTargets(
    Map<String, dynamic> local,
    Map<String, dynamic> remote, {
    bool preferRemote = false,
  }) {
    final lt = DateTime.tryParse('${local['targets_at'] ?? ''}'),
        rt = DateTime.tryParse('${remote['targets_at'] ?? ''}');
    final l = AppPreferences.parseTargets(local['targets']), r = AppPreferences.parseTargets(remote['targets']);
    final remoteWins = (preferRemote && r.isNotEmpty) || (rt != null && (lt == null || rt.isAfter(lt)));
    return {
      'targets': remoteWins ? r : (lt != null ? l : {...r, ...l}),
      'targets_at': ?(remoteWins ? (rt ?? lt) : lt)?.toUtc().toIso8601String(),
    };
  }

  /// Célok (portfólió-célérték, havi osztalékcél): fajtánként az újabb módosítás
  /// nyer – a törlés is, így egy másik készülék régebbi célja nem éled újra.
  /// Időbélyeg nélkül (régi csomag) a helyi nyer, ha van.
  /// [preferRemote] (első belépés): fajtánként a fiók célja marad, ha van.
  static Map<String, dynamic> mergeGoals(Object? local, Object? remote, {bool preferRemote = false}) {
    final l = local is Map ? local : const {}, r = remote is Map ? remote : const {};
    final lp = AppPreferences.parseGoals(l), rp = AppPreferences.parseGoals(r);
    return {
      for (final kind in {...lp.keys, ...rp.keys})
        kind: switch ((lp[kind]?.at, rp[kind]?.at)) {
          _ when preferRemote && rp[kind] != null => r[kind],
          (final lt, final rt?) when lt == null || rt.isAfter(lt) => r[kind],
          _ => l[kind] ?? r[kind],
        },
    };
  }

  /// A helyi tételek a fiókban már meglévő (más azonosítójú, de azonos tartalmú)
  /// párjuk nélkül: első belépéskor egy kétszer begépelt vétel ne duplázza a pozíciót.
  /// Darabra párosít – két azonos helyi tételből csak annyi esik ki, ahány a fiókban van.
  static List<Map<String, dynamic>> _withoutTwins(Object? local, Object? remote) {
    String content(Map<String, dynamic> e) {
      final keys = e.keys.where((k) => k != 'id' && k != 'edited' && k != 'renamed').toList()..sort();
      // Számként egységesen (egy régebbi app 10-et írhatott 10.0 helyett).
      return jsonEncode([
        for (final k in keys) [k, e[k] is num ? (e[k] as num).toDouble() : e[k]],
      ]);
    }

    final remoteList = _maps(remote), localList = _maps(local);
    final ids = {for (final r in remoteList) '${r['id']}'};
    final spare = <String, int>{};
    for (final r in remoteList) {
      spare.update(content(r), (n) => n + 1, ifAbsent: () => 1);
    }
    // Az azonos azonosítójú (már szinkronizált) tétel a saját párja.
    for (final l in localList) {
      if (ids.contains('${l['id']}')) spare.update(content(l), (n) => n - 1, ifAbsent: () => -1);
    }
    final kept = <Map<String, dynamic>>[];
    for (final l in localList) {
      final k = content(l);
      if (!ids.contains('${l['id']}') && (spare[k] ?? 0) > 0) {
        spare[k] = spare[k]! - 1;
        continue;
      }
      kept.add(l);
    }
    return kept;
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
  /// Saját listák: név szerint (kisbetűvel) a két oldal uniója, tagonként is –
  /// kivéve a törölt listát és a listáról levett részvényt, hacsak utána újra
  /// létre nem hozták / fel nem vették.
  static ({List<Map<String, dynamic>> lists, Map<String, DateTime> removed, Map<String, DateTime> added}) _mergeLists(
    Map<String, dynamic> local,
    Map<String, dynamic> remote,
  ) {
    final removed = unionTombstones(local['lists_removed'], remote['lists_removed']);
    final added = unionTombstones(local['lists_added'], remote['lists_added']);
    bool alive(String key) => switch (removed[key]) {
      final at? => added[key]?.isAfter(at) ?? false,
      null => true,
    };
    final merged = <String, WatchList>{};
    for (final raw in [..._list(local['watch_lists']), ..._list(remote['watch_lists'])]) {
      final l = WatchList.fromJson(raw);
      if (l == null || !alive(AppPreferences.listKey(l.name))) continue;
      final prev = merged[l.name.toLowerCase()];
      final symbols = prev == null ? l.symbols : {...prev.symbols, ...l.symbols}.toList();
      merged[l.name.toLowerCase()] = WatchList(
        name: prev?.name ?? l.name,
        symbols: [
          for (final s in symbols)
            if (alive(AppPreferences.itemKey(l.name, s))) s,
        ],
      );
    }
    // A megmaradtak jelzése eltűnik, a felvételi idő csak a meglévőknél marad.
    final keys = {
      for (final l in merged.values) ...[
        AppPreferences.listKey(l.name),
        for (final s in l.symbols) AppPreferences.itemKey(l.name, s),
      ],
    };
    removed.removeWhere((k, _) => keys.contains(k));
    added.removeWhere((k, _) => !keys.contains(k));
    return (lists: [for (final l in merged.values) l.toJson()], removed: removed, added: added);
  }

  /// A csomag átvétele; igaz, ha egy tételen megmaradt a helyi számla vagy díj.
  Future<bool> _apply(Map<String, dynamic> data) async {
    _applying = true;
    _lastJson = null;
    final ({bool kept, Future<void> saved}) r;
    try {
      r = applyNow(data, preferences: preferences, portfolio: portfolio, alerts: alerts, notes: notes);
    } finally {
      // A csere után azonnal: a mentés alatt történt helyi változás már feltöltendő.
      _applying = false;
      _lastJson = jsonEncode(snapshot());
    }
    await r.saved;
    return r.kept;
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
    final r = applyNow(data, preferences: preferences, portfolio: portfolio, alerts: alerts, notes: notes);
    await r.saved;
    return r.kept;
  }

  /// Mint az [applyTo], de a tárolók memóriabeli cseréje szinkron, egy lépésben
  /// történik (a mentés utána fut): közben nem kerülhet be egy helyi változás, amit a
  /// csere felülírna vagy a szinkron „már feltöltöttnek” látna.
  static ({bool kept, Future<void> saved}) applyNow(
    Map<String, dynamic> data, {
    required AppPreferences preferences,
    required PortfolioStore portfolio,
    required AlertStore alerts,
    required NotesStore notes,
  }) {
    final saves = <Future<void>>[];
    // Régi csomagban nincs felvételi nap: akkor a helyiek maradnak (a kedvencekre szűkítve).
    final favorites = [for (final f in _list(data['favorites'])) '$f'];
    saves.add(preferences.setFavorites(favorites, since: AppPreferences.parseFavoriteSince(data['favorite_since'])));
    // A kedvencek jelzései a csomag szerint; régi csomagban nincsenek: a helyiek
    // maradnak, a csomagban szereplő kedvencek levételi jelzése nélkül.
    saves.add(
      preferences.replaceFavoriteMarks(
        removed: data['favorites_removed'] is Map
            ? parseTombstones(data['favorites_removed'])
            : _without(preferences.favoritesRemovedJson, favorites.map((f) => f.toUpperCase()).toSet()),
        added: data['favorites_added'] is Map
            ? parseTombstones(data['favorites_added'])
            : parseTombstones(preferences.favoritesAddedJson),
      ),
    );
    // Régi csomagban nincs ilyen mező: akkor a helyi listák maradnak.
    if (data['watch_lists'] is List) {
      final lists = [for (final l in data['watch_lists'] as List) ?WatchList.fromJson(l)];
      saves.add(preferences.setWatchLists(lists));
      // A listák jelzései a csomag szerint; régi csomagban nincsenek: a helyiek
      // maradnak, a csomagban szereplő listák és tagok levételi jelzése nélkül.
      final present = {
        for (final l in lists) ...[
          AppPreferences.listKey(l.name),
          for (final s in l.symbols) AppPreferences.itemKey(l.name, s),
        ],
      };
      saves.add(
        preferences.replaceListMarks(
          removed: data['lists_removed'] is Map
              ? parseTombstones(data['lists_removed'])
              : _without(preferences.listsRemovedJson, present),
          added: data['lists_added'] is Map
              ? parseTombstones(data['lists_added'])
              : parseTombstones(preferences.listsAddedJson),
        ),
      );
    }
    if (data['targets'] is Map) {
      saves.add(
        preferences.setTargets(
          AppPreferences.parseTargets(data['targets']),
          at: DateTime.tryParse('${data['targets_at'] ?? ''}'),
          fromSync: true,
        ),
      );
    }
    // Régi csomagban nincs cél: akkor a helyiek maradnak.
    if (data['goals'] is Map) saves.add(preferences.applyGoals(AppPreferences.parseGoals(data['goals'])));
    if (data['cash'] is Map) {
      saves.add(
        portfolio.replaceAllCash(
          PortfolioStore.parseCashMap(data['cash']),
          // Régi csomagban nincs időbélyeg: akkor a helyiek maradnak.
          at: data['cash_at'] is Map ? PortfolioStore.parseCashAt(data['cash_at']) : null,
        ),
      );
    }
    saves.add(
      preferences.applySwitches(
        emailAlerts: data['email_alerts'] != false,
        weeklyDigest: data['weekly_digest'] == true,
        at: parseTombstones(data['switches_at']),
      ),
    );
    // A számlát és a díjat nem ismerő (régebbi) app a tételt a mezők nélkül tölti
    // vissza: azonos tételnél ilyenkor a helyi számla és díj marad. Ha a mező ott
    // van (üresen is), az a javított érték – az nyer.
    var kept = false;
    Map<String, dynamic> keep(Map<String, dynamic> j, Map<String, Object> fields) {
      if (fields.isNotEmpty) kept = true;
      return {...j, ...fields};
    }

    final local = {for (final l in portfolio.lots) l.id: l};
    saves.add(
      portfolio.replaceAll([
        for (final j in _maps(data['lots']))
          ?PortfolioLot.fromJson(
            keep(j, {
              if (local['${j['id']}'] case final l?) ...{
                if (l.account case final a? when !j.containsKey('account')) 'account': a,
                if (l.fee > 0 && !j.containsKey('fee')) 'fee': l.fee,
              },
            }),
          ),
      ]),
    );
    // Régi csomagban (korábbi app) nincs osztaléklista: akkor a helyi marad.
    if (data['dividends'] is List) {
      // Az osztalék számlája is megmarad, ha egy régebbi app nélküle töltötte vissza.
      final localDividend = {for (final d in portfolio.dividends) d.id: d};
      saves.add(
        portfolio.replaceAllDividends([
          for (final j in _maps(data['dividends']))
            ?DividendRecord.fromJson(
              keep(j, {
                if (localDividend['${j['id']}']?.account case final a? when !j.containsKey('account')) 'account': a,
              }),
            ),
        ]),
      );
    }
    if (data['splits'] is List) {
      saves.add(portfolio.replaceAllSplits([for (final j in _maps(data['splits'])) ?SplitRecord.fromJson(j)]));
    }
    // A törlési jelzések a csomag szerint; régi csomagban nincsenek: a helyiek
    // maradnak, a csomagban szereplő tételeké nélkül (különben később törölnék).
    saves.add(
      portfolio.replaceAllDeleted(
        data['deleted'] is Map
            ? parseTombstones(data['deleted'])
            : _without(portfolio.deletedJson, {
                for (final key in ['lots', 'dividends', 'splits'])
                  for (final j in _maps(data[key])) '${j['id']}',
              }),
      ),
    );
    saves.add(alerts.replaceAll([for (final j in _maps(data['alerts'])) ?PriceAlert.fromJson(j)]));
    saves.add(
      alerts.replaceAllDeleted(
        data['alerts_deleted'] is Map
            ? parseTombstones(data['alerts_deleted'])
            : _without(alerts.deletedJson, {for (final j in _maps(data['alerts'])) '${j['id']}'}),
      ),
    );
    saves.add(notes.replaceAll({for (final e in _map(data['notes']).entries) e.key: ?StockNote.fromJson(e.value)}));
    saves.add(
      notes.replaceAllDeleted(
        data['notes_deleted'] is Map
            ? parseTombstones(data['notes_deleted'])
            : _without(notes.deletedJson, {..._map(data['notes']).keys}),
      ),
    );
    return (kept: kept, saved: Future.wait(saves));
  }

  /// Feltöltés csak akkor, ha a szerveren még a [base] változat van (különben 409).
  /// Az [email] fiókjába: ha közben kijelentkeztek, a csomag akkor is az övé lett
  /// (a következő, másik fiókos belépés így nem fésüli bele az új fiókba).
  Future<void> _push(Map<String, dynamic> data, {required DateTime? base, required String? email}) async {
    final changes = _changes;
    final at = await backend.putSync(data, conditional: true, base: base);
    _last = at;
    _syncedEmail = email;
    // A feltöltés közben történt változás még nem ment fel: piszkos marad, és
    // hamarosan újra szinkronizálunk.
    if (_changes == changes) {
      _setDirty(false);
    } else {
      _rerun = true;
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastKey, at.toIso8601String());
    await prefs.setString(_emailKey, email ?? '');
  }

  /// Szinkron most: letöltés, szükség szerint összefésülés, feltöltés. Ha a
  /// letöltés és a feltöltés között más is írt (egy másik eszköz vagy a szerver
  /// riasztásfigyelője), a szerver elutasítja: újra letöltjük és összefésüljük.
  Future<void> syncNow() async {
    if (!account.isSignedIn) return;
    // Futás közben kért szinkron (egy közben tett változás): a mostani után hamarosan újra.
    if (_busy) {
      _rerun = true;
      return;
    }
    // Import közben nem: a köteg végén a változás magától szinkronizál.
    if (portfolio.batching) {
      _schedule(pushDelay);
      return;
    }
    _timer?.cancel();
    _busy = true;
    final run = _run = Completer<void>();
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
      _tooLarge = false;
      _retryDelay = retryStart;
      // Futás közben is: egy másik eszköz változása magától is megérkezik; a közben
      // tett (még fel nem töltött) változás pedig hamarosan.
      _schedule(_rerun ? pushDelay : pullInterval);
      _rerun = false;
    } catch (e) {
      debugPrint('Szinkron nem sikerült: $e');
      _failed = true;
      _tooLarge = e is BackendException && e.status == 413;
      // Újrapróbálás egyre ritkábban (ahogy a felület is ígéri); a túl nagy csomag
      // csak egy törlés után fér fel (az a változással magától indul), addig ritkán.
      _schedule(_tooLarge ? retryMax : _retryDelay);
      _retryDelay = _retryDelay * 2 > retryMax ? retryMax : _retryDelay * 2;
      _rerun = false;
    } finally {
      _busy = false;
      _ranAt = DateTime.now();
      _run = null;
      run.complete();
      notifyListeners();
    }
  }

  /// A legutóbbi szinkron vége (helyi idő), a visszatéréskori ritkításhoz.
  DateTime? _ranAt;

  /// Futás közben változás történt vagy új szinkront kértek: a végén hamarosan újra.
  bool _rerun = false;
  static const resumeMinGap = Duration(minutes: 1);

  static const retryStart = Duration(seconds: 30);
  static const retryMax = Duration(minutes: 30);
  static const pullInterval = Duration(minutes: 15);
  Duration _retryDelay = retryStart;

  void _schedule(Duration after) {
    if (!account.isSignedIn) return;
    _timer?.cancel();
    _timer = Timer(after, () => unawaited(syncNow()));
  }

  /// Üres csomag: egy még üres fiókra váltva a készülék is üresen indul.
  static const Map<String, dynamic> emptyPackage = {
    'v': 1,
    'favorites': <String>[],
    'favorites_removed': <String, String>{},
    'favorites_added': <String, String>{},
    'favorite_since': <String, String>{},
    'watch_lists': <Object>[],
    'lists_removed': <String, String>{},
    'lists_added': <String, String>{},
    'targets': <String, double>{},
    'targets_at': '1970-01-01T00:00:00.000Z',
    'goals': {'portfolio': <String, Object>{}, 'dividend': <String, Object>{}},
    'lots': <Object>[],
    'dividends': <Object>[],
    'splits': <Object>[],
    'deleted': <String, String>{},
    'cash': <String, double>{},
    'cash_at': <String, String>{},
    'alerts': <Object>[],
    'alerts_deleted': <String, String>{},
    'notes': <String, Object>{},
    'notes_deleted': <String, String>{},
  };

  Future<void> _syncOnce() async {
    // A fiók, amelyhez ez a kör tartozik: ha közben kilépnek (vagy másik fiókba lépnek),
    // a válasz már nem érvényes – se a készülékre, se a másik fiókba nem kerül.
    final email = account.email;
    final remote = await backend.getSync();
    if (account.email != email) return;
    // A letöltés alatt indult egy import: most nem cserélünk (a köteg végén újra).
    if (portfolio.batching) {
      _rerun = true;
      return;
    }
    final data = remote.data;
    final base = remote.updatedAt;
    await _rememberForeign(data);
    if (account.email != email) return;
    if (_syncedEmail != null && _syncedEmail != account.email) {
      // Másik fiók: a készüléken lévő adat az előzőé (ott megvan), nem kerül az újba.
      // A készülék az új fiók adatait veszi át; üres fióknál üresen indul.
      await _apply({...emptyPackage, ...?data});
      if (account.email == email) await _push(snapshot(), base: base, email: email);
      return;
    }
    final firstHere = _syncedEmail == null;
    if (data == null) {
      await _push(snapshot(), base: null, email: email);
    } else if (firstHere || (_dirty && base != null && _last != null && !base.isAtSameMomentAs(_last!))) {
      // Első belépés ezen az eszközön, vagy mindkét oldalon volt változás.
      await _apply(merge(snapshot(), data, firstSignIn: firstHere));
      // A mentés alatt tett helyi változás is felmegy: a mostani állapot, nem az összefésült.
      if (account.email == email) await _push(snapshot(), base: base, email: email);
    } else if (base != null && (_last == null || !base.isAtSameMomentAs(_last!))) {
      final kept = await _apply(data);
      _last = base;
      (await SharedPreferences.getInstance()).setString(_lastKey, base.toIso8601String());
      // Régebbi app számla vagy díj nélkül töltötte vissza a tételeket: a megtartottak visszamennek.
      if (kept && account.email == email) await _push(snapshot(), base: base, email: email);
    } else if (_dirty) {
      await _push(snapshot(), base: base, email: email);
    }
  }
}
