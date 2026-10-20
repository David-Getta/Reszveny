import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/analysis/analysis_options.dart';

/// Felhasználói beállítások: megjelenés (téma) és a legutóbbi keresések.
class AppPreferences extends ChangeNotifier {
  AppPreferences({
    this.themeMode = ThemeMode.system,
    List<String> recent = const [],
    List<String> favorites = const [],
    this.hotkeyJson,
    this.displayCurrency,
    this.autoUpdate = true,
    this.analysisDepth = AnalysisDepth.standard,
    this.readerLevel = ReaderLevel.beginner,
    this.counterArgument = true,
    this.doubleOption = false,
    this.doubleOptionAsked = false,
    this.keepInTray = true,
    this.onboardingDone = true,
    this.analysesDone = 0,
    this.reviewAsked = false,
    this.telemetryConsent,
    this.emailAlerts = true,
    this.weeklyDigest = false,
    this.earningsReminders = true,
    this.morningBrief = false,
    this.portfolioMoveAlert = 0,
    this.portfolioGoal,
    Set<String> hiddenHome = const {},
    this.portfolioMoveNotified,
    List<WatchList> watchLists = const [],
    Map<String, double> targets = const {},
  }) : _hiddenHome = Set.of(hiddenHome),
       _lists = List.of(watchLists),
       _targets = Map.of(targets),
       _recent = List.of(recent),
       _favorites = List.of(favorites) {
    displayCurrency ??= currencyUnset;
  }

  static const _themeKey = 'theme_mode';
  static const _recentKey = 'recent_symbols';
  static const _hotkeyKey = 'global_hotkey';
  static const _favoritesKey = 'favorite_symbols';
  static const _currencyKey = 'display_currency';
  static const _autoUpdateKey = 'auto_update';
  static const _depthKey = 'analysis_depth';
  static const _doubleOptionKey = 'double_option';
  static const _doubleOptionAskedKey = 'double_option_asked';
  static const _readerKey = 'analysis_reader_level';
  static const _counterKey = 'analysis_counter_argument';
  static const _keepInTrayKey = 'keep_in_tray';
  static const _onboardingKey = 'onboarding_done';
  static const _analysesDoneKey = 'analyses_done';
  static const _reviewAskedKey = 'review_asked';
  static const _telemetryKey = 'telemetry_consent';
  static const _emailAlertsKey = 'email_alerts';
  static const _weeklyDigestKey = 'weekly_digest';
  static const _earningsRemindersKey = 'earnings_reminders';
  static const _morningBriefKey = 'morning_brief';
  static const _portfolioMoveKey = 'portfolio_move_alert';
  static const _portfolioMoveNotifiedKey = 'portfolio_move_notified';
  static const _targetsKey = 'portfolio_targets';
  static const _goalKey = 'portfolio_goal';
  static const _hiddenHomeKey = 'home_hidden';
  static const _resolvedKey = 'resolved_descriptions';

  /// A kezdőképernyő elrejthető részei (azonosítók a beállításokhoz).
  static const homeSections = ['markets', 'brief', 'portfolio', 'favorites', 'events', 'news', 'analyses'];
  static const _listsKey = 'watch_lists';

  /// Legfeljebb ennyi saját lista, és egy név legfeljebb ennyi karakter.
  static const maxLists = 20;
  static const maxListName = 30;
  static const maxRecent = 20;

  /// Megjelenés; módosítása a [setThemeMode] metódussal, hogy mentsünk is.
  ThemeMode themeMode;

  List<String> _recent;
  List<String> get recent => List.unmodifiable(_recent);

  final List<String> _favorites;
  List<String> get favorites => List.unmodifiable(_favorites);
  bool isFavorite(String symbol) => _favorites.contains(symbol.toUpperCase());

  /// Az AI-elemzés hossza (a mély elemzés két elemzést fogyaszt).
  AnalysisDepth analysisDepth;

  /// Kezdő (magyarázó) vagy tapasztalt (tömörebb) olvasónak szóljon az elemzés.
  ReaderLevel readerLevel;

  /// Az összefoglaló végén szerepeljen a tézis legerősebb ellenérve.
  bool counterArgument;

  /// macOS: a dupla Option-nyomás is előhívja az appot.
  bool doubleOption;

  /// Kértük-e már egyszer a „Bemenetfigyelés” engedélyt (csak egyszer kérdezünk).
  bool doubleOptionAsked;

  /// Frissítések automatikus letöltése és telepítése (ahol a platform engedi).
  bool autoUpdate;

  /// Asztali gépen az ablak bezárása után is fusson a menüsorban / tálcán.
  bool keepInTray;

  /// Láttuk-e már az első indításkori bemutatót. Csak friss telepítésnél hamis
  /// (ha még semmi nincs elmentve), a meglévő felhasználóknak nem mutatjuk.
  bool onboardingDone;

  /// Hány AI-elemzés készült el ezen a készüléken (az értékelés-kéréshez).
  int analysesDone;

  /// Kértünk-e már értékelést a boltban (csak egyszer kérünk).
  bool reviewAsked;

  /// Névtelen használati statisztika és hibajelentés: `null` = még nem
  /// kérdeztük, `true` = engedélyezte, `false` = nem kéri.
  bool? telemetryConsent;

  /// Belépve a szerver e-mailben is szól, ha egy riasztás teljesül.
  bool emailAlerts;

  /// Belépve hétfőnként e-mailes összefoglaló a kedvencekről és a portfólióról.
  bool weeklyDigest;

  /// Asztali értesítés a figyelt részvények gyorsjelentése előtti napon.
  bool earningsReminders;

  /// Reggelente magától elkészül a napi összefoglaló (amíg az app fut).
  bool morningBrief;

  final Set<String> _hiddenHome;

  /// Az AI által megfejtett leírások („tech 100 etf” → QQQ): másodszor már
  /// AI-hívás nélkül nyílik, és gépelés közben javaslatként is megjelenik.
  final Map<String, ({String symbol, String name})> _resolved = {};
  static const maxResolved = 50;

  static String _descriptionKey(String q) => q.trim().toLowerCase().replaceAll(RegExp(r'\s+'), ' ');

  ({String symbol, String name})? resolvedFor(String query) => _resolved[_descriptionKey(query)];

  /// A leírásokhoz tartozó megjegyzett találatok, amelyek [prefix]-szel kezdődnek.
  List<({String query, String symbol, String name})> resolvedStartingWith(String prefix) {
    final p = _descriptionKey(prefix);
    if (p.isEmpty) return const [];
    return [
      for (final e in _resolved.entries)
        if (e.key.startsWith(p)) (query: e.key, symbol: e.value.symbol, name: e.value.name),
    ];
  }

  Future<void> rememberResolved(String query, {required String symbol, required String name}) async {
    final key = _descriptionKey(query);
    if (key.length < 4 || symbol.isEmpty) return;
    _resolved.remove(key);
    _resolved[key] = (symbol: symbol.toUpperCase(), name: name);
    while (_resolved.length > maxResolved) {
      _resolved.remove(_resolved.keys.first);
    }
    await _save(
      (p) => p.setStringList(_resolvedKey, [
        for (final e in _resolved.entries) '${e.key}|${e.value.symbol}|${e.value.name.replaceAll('|', ' ')}',
      ]),
    );
  }

  void _loadResolved(List<String>? raw) {
    for (final line in raw ?? const <String>[]) {
      final parts = line.split('|');
      if (parts.length < 2 || parts[0].isEmpty || parts[1].isEmpty) continue;
      _resolved[parts[0]] = (symbol: parts[1], name: parts.length > 2 ? parts.sublist(2).join('|') : parts[1]);
    }
  }

  /// Látszik-e a kezdőképernyő adott része (alapból mind).
  bool showsHome(String section) => !_hiddenHome.contains(section);

  Future<void> setHomeSection(String section, bool visible) async {
    if (visible ? !_hiddenHome.remove(section) : !_hiddenHome.add(section)) return;
    notifyListeners();
    await _save((p) => p.setStringList(_hiddenHomeKey, _hiddenHome.toList()));
  }

  /// A portfólió célértéke és pénzneme (pl. 10 000 000 HUF); `null`, ha nincs.
  ({double amount, String currency})? portfolioGoal;

  static ({double amount, String currency})? parseGoal(String? raw) {
    final parts = raw?.split('|');
    if (parts == null || parts.length != 2) return null;
    final amount = double.tryParse(parts[0]);
    return amount == null || amount <= 0 || parts[1].isEmpty ? null : (amount: amount, currency: parts[1]);
  }

  Future<void> setPortfolioGoal(({double amount, String currency})? goal) async {
    portfolioGoal = goal;
    notifyListeners();
    await _save((p) => goal == null ? p.remove(_goalKey) : p.setString(_goalKey, '${goal.amount}|${goal.currency}'));
  }

  /// Értesítés, ha a teljes portfólió egy nap alatt legalább ennyi %-ot mozdul (0: ki).
  double portfolioMoveAlert;

  /// A legutóbbi portfólió-értesítés napja és mozgása (`2026-10-16|-3.2`), hogy
  /// naponta egyszer szóljon, és ugyanazt a mozgást ne jelezze újra.
  String? portfolioMoveNotified;

  /// A választható küszöbök a beállításokban.
  static const portfolioMoveSteps = [2.0, 3.0, 5.0];

  final List<WatchList> _lists;

  final Map<String, double> _targets;

  /// Célarányok a portfólióban (ticker → százalék).
  Map<String, double> get targets => Map.unmodifiable(_targets);

  Future<void> setTargets(Map<String, double> targets) async {
    _targets
      ..clear()
      ..addAll({
        for (final e in targets.entries)
          if (e.value > 0 && e.value <= 100) e.key.toUpperCase(): e.value,
      });
    notifyListeners();
    await _save((p) => p.setString(_targetsKey, jsonEncode(_targets)));
  }

  /// A tárolt célarányok beolvasása (hibás érték kimarad).
  static Map<String, double> parseTargets(Object? raw) {
    try {
      final v = raw is String ? jsonDecode(raw) : raw;
      return {
        for (final e in (v is Map ? v : const {}).entries)
          if (e.value is num && (e.value as num) > 0 && (e.value as num) <= 100)
            '${e.key}'.toUpperCase(): (e.value as num).toDouble(),
      };
    } catch (_) {
      return const {};
    }
  }

  /// Saját listák a kedvencek között (pl. „Tech”, „Osztalék”), létrehozási sorrendben.
  List<WatchList> get watchLists => List.unmodifiable(_lists);

  /// Mely saját listákon van rajta a részvény.
  List<String> listsOf(String symbol) => [
    for (final l in _lists)
      if (l.symbols.contains(symbol.toUpperCase())) l.name,
  ];

  /// Megjelenítési pénznem (ISO-kód) vagy `null`: csak a részvény saját pénzneme.
  /// A „nincs beállítva” állapotot az [AppPreferences.currencyUnset] jelöli.
  String? displayCurrency;

  /// A felhasználó által átállított globális gyorsbillentyű (hotkey_manager
  /// JSON-ja), vagy `null` az alapértelmezetthez.
  Map<String, dynamic>? hotkeyJson;

  static Future<AppPreferences> load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final mode = ThemeMode.values.asNameMap()[prefs.getString(_themeKey) ?? ''] ?? ThemeMode.system;
      final hk = prefs.getString(_hotkeyKey);
      final loaded = AppPreferences(
        themeMode: mode,
        recent: prefs.getStringList(_recentKey) ?? const [],
        favorites: prefs.getStringList(_favoritesKey) ?? const [],
        hotkeyJson: hk == null ? null : (jsonDecode(hk) as Map<String, dynamic>),
        displayCurrency: prefs.getString(_currencyKey) ?? currencyUnset,
        autoUpdate: prefs.getBool(_autoUpdateKey) ?? true,
        analysisDepth: AnalysisDepth.values.asNameMap()[prefs.getString(_depthKey) ?? ''] ?? AnalysisDepth.standard,
        readerLevel: ReaderLevel.values.asNameMap()[prefs.getString(_readerKey) ?? ''] ?? ReaderLevel.beginner,
        counterArgument: prefs.getBool(_counterKey) ?? true,
        // Alapból ki: a Claude asztali appja is a dupla Option-nyomást figyeli.
        doubleOption: prefs.getBool(_doubleOptionKey) ?? false,
        doubleOptionAsked: prefs.getBool(_doubleOptionAskedKey) ?? false,
        keepInTray: prefs.getBool(_keepInTrayKey) ?? true,
        onboardingDone: prefs.getBool(_onboardingKey) ?? prefs.getKeys().isNotEmpty,
        analysesDone: prefs.getInt(_analysesDoneKey) ?? 0,
        reviewAsked: prefs.getBool(_reviewAskedKey) ?? false,
        telemetryConsent: prefs.getBool(_telemetryKey),
        emailAlerts: prefs.getBool(_emailAlertsKey) ?? true,
        weeklyDigest: prefs.getBool(_weeklyDigestKey) ?? false,
        earningsReminders: prefs.getBool(_earningsRemindersKey) ?? true,
        morningBrief: prefs.getBool(_morningBriefKey) ?? false,
        portfolioMoveAlert: prefs.getDouble(_portfolioMoveKey) ?? 0,
        portfolioGoal: parseGoal(prefs.getString(_goalKey)),
        hiddenHome: {...?prefs.getStringList(_hiddenHomeKey)},
        portfolioMoveNotified: prefs.getString(_portfolioMoveNotifiedKey),
        watchLists: WatchList.parseAll(prefs.getString(_listsKey)),
        targets: parseTargets(prefs.getString(_targetsKey)),
      );
      loaded._loadResolved(prefs.getStringList(_resolvedKey));
      return loaded;
    } catch (_) {
      return AppPreferences();
    }
  }

  Future<void> completeOnboarding() async {
    onboardingDone = true;
    notifyListeners();
    await _save((p) => p.setBool(_onboardingKey, true));
  }

  /// Egy elemzés elkészült; visszaadja az eddigi számot.
  Future<int> countAnalysis() async {
    analysesDone++;
    await _save((p) => p.setInt(_analysesDoneKey, analysesDone));
    return analysesDone;
  }

  Future<void> markReviewAsked() async {
    reviewAsked = true;
    await _save((p) => p.setBool(_reviewAskedKey, true));
  }

  Future<void> setTelemetryConsent(bool allowed) async {
    telemetryConsent = allowed;
    notifyListeners();
    await _save((p) => p.setBool(_telemetryKey, allowed));
  }

  Future<void> setEmailAlerts(bool enabled) async {
    if (emailAlerts == enabled) return;
    emailAlerts = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_emailAlertsKey, enabled));
  }

  Future<void> setWeeklyDigest(bool enabled) async {
    if (weeklyDigest == enabled) return;
    weeklyDigest = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_weeklyDigestKey, enabled));
  }

  /// Új saját lista; `false`, ha a név üres, foglalt vagy elérte a [maxLists]-et.
  Future<bool> addWatchList(String name) async {
    final n = name.trim();
    if (n.isEmpty || n.length > maxListName || _lists.length >= maxLists || _listNamed(n) != null) return false;
    _lists.add(WatchList(name: n));
    await _saveLists();
    return true;
  }

  Future<bool> renameWatchList(String from, String to) async {
    final l = _listNamed(from), n = to.trim();
    if (l == null || n.isEmpty || n.length > maxListName) return false;
    final other = _listNamed(n);
    if (other != null && other != l) return false;
    _lists[_lists.indexOf(l)] = WatchList(name: n, symbols: l.symbols);
    await _saveLists();
    return true;
  }

  Future<void> removeWatchList(String name) async {
    _lists.removeWhere((l) => l.name.toLowerCase() == name.toLowerCase());
    await _saveLists();
  }

  /// Részvény fel- vagy levétele egy saját listáról; felvételkor kedvenc is lesz.
  Future<void> toggleInList(String name, String symbol) async {
    final l = _listNamed(name), s = symbol.trim().toUpperCase();
    if (l == null || s.isEmpty) return;
    final symbols = [...l.symbols];
    if (!symbols.remove(s)) {
      symbols.add(s);
      if (!_favorites.contains(s)) {
        _favorites.insert(0, s);
        await _save((p) => p.setStringList(_favoritesKey, _favorites));
      }
    }
    _lists[_lists.indexOf(l)] = WatchList(name: l.name, symbols: symbols);
    await _saveLists();
  }

  /// Több ticker egyszerre a kedvencek végére (és a [list] listára, ha meg van
  /// adva), a megadott sorrendben. Az új tételek számát adja vissza.
  Future<int> addSymbols(List<String> symbols, {String? list}) async {
    final l = list == null ? null : _listNamed(list);
    final inList = [...?l?.symbols];
    var added = 0;
    for (final raw in symbols) {
      final s = raw.trim().toUpperCase();
      if (s.isEmpty) continue;
      var isNew = false;
      if (!_favorites.contains(s)) {
        _favorites.add(s);
        isNew = true;
      }
      if (l != null && !inList.contains(s)) {
        inList.add(s);
        isNew = true;
      }
      if (isNew) added++;
    }
    if (l != null) _lists[_lists.indexOf(l)] = WatchList(name: l.name, symbols: inList);
    notifyListeners();
    await _save((p) async {
      await p.setStringList(_favoritesKey, _favorites);
      await p.setString(_listsKey, jsonEncode([for (final l in _lists) l.toJson()]));
    });
    return added;
  }

  /// Az összes saját lista cseréje (szinkronkor a fiók adataira).
  Future<void> setWatchLists(List<WatchList> lists) async {
    _lists
      ..clear()
      ..addAll(lists.take(maxLists));
    await _saveLists();
  }

  WatchList? _listNamed(String name) =>
      _lists.where((l) => l.name.toLowerCase() == name.trim().toLowerCase()).firstOrNull;

  Future<void> _saveLists() async {
    notifyListeners();
    await _save((p) => p.setString(_listsKey, jsonEncode([for (final l in _lists) l.toJson()])));
  }

  Future<void> setMorningBrief(bool enabled) async {
    if (morningBrief == enabled) return;
    morningBrief = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_morningBriefKey, enabled));
  }

  Future<void> setPortfolioMoveAlert(double percent) async {
    if (portfolioMoveAlert == percent) return;
    portfolioMoveAlert = percent;
    notifyListeners();
    await _save((p) => p.setDouble(_portfolioMoveKey, percent));
  }

  Future<void> setPortfolioMoveNotified(String value) async {
    portfolioMoveNotified = value;
    await _save((p) => p.setString(_portfolioMoveNotifiedKey, value));
  }

  Future<void> setEarningsReminders(bool enabled) async {
    if (earningsReminders == enabled) return;
    earningsReminders = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_earningsRemindersKey, enabled));
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    themeMode = mode;
    notifyListeners();
    await _save((p) => p.setString(_themeKey, mode.name));
  }

  Future<void> addRecent(String symbol) async {
    final s = symbol.trim().toUpperCase();
    if (s.isEmpty) return;
    _recent
      ..remove(s)
      ..insert(0, s);
    if (_recent.length > maxRecent) _recent = _recent.sublist(0, maxRecent);
    notifyListeners();
    await _save((p) => p.setStringList(_recentKey, _recent));
  }

  /// Jelző: a felhasználó még nem választott; ilyenkor a rendszer nyelvéből
  /// származtatjuk. Az üres sztring = „csak a saját pénznem”.
  static const String currencyUnset = '__unset__';

  Future<void> setAnalysisDepth(AnalysisDepth d) async {
    analysisDepth = d;
    notifyListeners();
    await _save((p) => p.setString(_depthKey, d.name));
  }

  Future<void> setReaderLevel(ReaderLevel l) async {
    readerLevel = l;
    notifyListeners();
    await _save((p) => p.setString(_readerKey, l.name));
  }

  Future<void> setCounterArgument(bool enabled) async {
    counterArgument = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_counterKey, enabled));
  }

  Future<void> setDoubleOption(bool enabled) async {
    doubleOption = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_doubleOptionKey, enabled));
  }

  Future<void> markDoubleOptionAsked() async {
    doubleOptionAsked = true;
    await _save((p) => p.setBool(_doubleOptionAskedKey, true));
  }

  Future<void> setKeepInTray(bool enabled) async {
    keepInTray = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_keepInTrayKey, enabled));
  }

  Future<void> setAutoUpdate(bool enabled) async {
    autoUpdate = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_autoUpdateKey, enabled));
  }

  Future<void> setDisplayCurrency(String? code) async {
    displayCurrency = code ?? '';
    notifyListeners();
    await _save((p) => p.setString(_currencyKey, displayCurrency!));
  }

  Future<void> toggleFavorite(String symbol) async {
    final s = symbol.trim().toUpperCase();
    if (s.isEmpty) return;
    if (!_favorites.remove(s)) _favorites.insert(0, s);
    notifyListeners();
    await _save((p) => p.setStringList(_favoritesKey, _favorites));
  }

  Future<void> setHotkeyJson(Map<String, dynamic>? json) async {
    hotkeyJson = json;
    notifyListeners();
    await _save((p) => json == null ? p.remove(_hotkeyKey) : p.setString(_hotkeyKey, jsonEncode(json)));
  }

  /// A kedvencek cseréje (szinkronkor a fiók adataira).
  Future<void> setFavorites(List<String> symbols) async {
    _favorites
      ..clear()
      ..addAll(symbols.map((s) => s.toUpperCase()));
    notifyListeners();
    await _save((p) => p.setStringList(_favoritesKey, _favorites));
  }

  /// A személyes listák (kedvencek, előzmények) törlése; a beállítások maradnak.
  Future<void> clearPersonalData() async {
    _favorites.clear();
    _recent = [];
    _lists.clear();
    _targets.clear();
    notifyListeners();
    await _save((p) async {
      await p.remove(_favoritesKey);
      await p.remove(_recentKey);
      await p.remove(_listsKey);
      await p.remove(_targetsKey);
    });
  }

  Future<void> clearRecent() async {
    _recent = [];
    notifyListeners();
    await _save((p) => p.remove(_recentKey));
  }

  Future<void> _save(Future<void> Function(SharedPreferences) write) async {
    try {
      await write(await SharedPreferences.getInstance());
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}

/// Egy saját lista a kedvencek között: név és tickerek (a felvétel sorrendjében).
class WatchList {
  const WatchList({required this.name, this.symbols = const []});

  final String name;
  final List<String> symbols;

  Map<String, dynamic> toJson() => {'name': name, 'symbols': symbols};

  static WatchList? fromJson(Object? j) {
    if (j is! Map || j['name'] is! String || (j['name'] as String).trim().isEmpty) return null;
    return WatchList(
      name: (j['name'] as String).trim(),
      symbols: [
        for (final s in (j['symbols'] is List ? j['symbols'] as List : const []))
          if (s is String && s.trim().isNotEmpty) s.trim().toUpperCase(),
      ],
    );
  }

  /// A tárolt JSON-lista beolvasása; a hibás tételeket kihagyja.
  static List<WatchList> parseAll(String? raw) {
    if (raw == null) return const [];
    try {
      final v = jsonDecode(raw);
      return [for (final e in (v is List ? v : const [])) ?fromJson(e)];
    } catch (_) {
      return const [];
    }
  }
}
