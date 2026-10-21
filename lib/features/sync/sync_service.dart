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
    'watch_lists': [for (final l in preferences.watchLists) l.toJson()],
    if (preferences.targets.isNotEmpty) 'targets': preferences.targets,
    'lots': [for (final l in portfolio.lots) l.toJson()],
    'dividends': [for (final d in portfolio.dividends) d.toJson()],
    'cash': portfolio.cash,
    'alerts': [for (final a in alerts.alerts) a.toJson()],
    'notes': {for (final e in notes.all.entries) e.key: e.value.toJson()},
  };

  /// Két csomag uniója: a helyi elemek elöl, azonos azonosítónál a helyi
  /// marad; jegyzetnél az újabb.
  static Map<String, dynamic> merge(Map<String, dynamic> local, Map<String, dynamic> remote) {
    List<Map<String, dynamic>> maps(Object? v) => [
      for (final e in (v is List ? v : const []))
        if (e is Map) e.cast<String, dynamic>(),
    ];
    List<Map<String, dynamic>> byId(Object? a, Object? b) {
      final seen = <String>{};
      return [
        for (final e in [...maps(a), ...maps(b)])
          if (seen.add('${e['id']}')) e,
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
    // Riasztásnál a teljesült változat nyer (a szerver is megjelölhette), hogy
    // egy már kiküldött riasztás ne éledjen újra.
    final alertsMerged = <Map<String, dynamic>>[];
    final alertIndex = <String, int>{};
    for (final a in [...maps(local['alerts']), ...maps(remote['alerts'])]) {
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
      'lots': byId(local['lots'], remote['lots']),
      'dividends': byId(local['dividends'], remote['dividends']),
      // Készpénz: pénznemenként a helyi nyer.
      'cash': {...PortfolioStore.parseCashMap(remote['cash']), ...PortfolioStore.parseCashMap(local['cash'])},
      'alerts': alertsMerged,
      'notes': mergedNotes,
    };
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

  Future<void> _apply(Map<String, dynamic> data) async {
    _applying = true;
    _lastJson = null;
    try {
      await applyTo(data, preferences: preferences, portfolio: portfolio, alerts: alerts, notes: notes);
    } finally {
      _applying = false;
      _lastJson = jsonEncode(snapshot());
    }
  }

  /// Egy csomag átvétele a helyi tárolókba (a meglévők helyére).
  static Future<void> applyTo(
    Map<String, dynamic> data, {
    required AppPreferences preferences,
    required PortfolioStore portfolio,
    required AlertStore alerts,
    required NotesStore notes,
  }) async {
    List<Map<String, dynamic>> maps(Object? v) => [
      for (final e in (v is List ? v : const []))
        if (e is Map) e.cast<String, dynamic>(),
    ];
    await preferences.setFavorites([for (final f in (data['favorites'] as List? ?? const [])) '$f']);
    // Régi csomagban nincs ilyen mező: akkor a helyi listák maradnak.
    if (data['watch_lists'] is List) {
      await preferences.setWatchLists([for (final l in data['watch_lists'] as List) ?WatchList.fromJson(l)]);
    }
    if (data['targets'] is Map) await preferences.setTargets(AppPreferences.parseTargets(data['targets']));
    if (data['cash'] is Map) await portfolio.replaceAllCash(PortfolioStore.parseCashMap(data['cash']));
    await preferences.setEmailAlerts(data['email_alerts'] != false);
    await preferences.setWeeklyDigest(data['weekly_digest'] == true);
    await portfolio.replaceAll([for (final j in maps(data['lots'])) ?PortfolioLot.fromJson(j)]);
    // Régi csomagban (korábbi app) nincs osztaléklista: akkor a helyi marad.
    if (data['dividends'] is List) {
      await portfolio.replaceAllDividends([for (final j in maps(data['dividends'])) ?DividendRecord.fromJson(j)]);
    }
    await alerts.replaceAll([for (final j in maps(data['alerts'])) ?PriceAlert.fromJson(j)]);
    await notes.replaceAll({
      for (final e in (data['notes'] as Map? ?? const {}).entries) '${e.key}': ?StockNote.fromJson(e.value),
    });
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
        await _apply(data);
        _last = remote.updatedAt;
        (await SharedPreferences.getInstance()).setString(_lastKey, _last!.toIso8601String());
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
