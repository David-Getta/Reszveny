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
    this.dividendReminders = true,
    this.signalAlerts = true,
    this.morningBrief = false,
    this.portfolioMoveAlert = 0,
    this.portfolioGoal,
    this.dividendGoal,
    Map<String, DateTime> goalsAt = const {},
    Set<String> hiddenHome = const {},
    this.portfolioMoveNotified,
    List<WatchList> watchLists = const [],
    Map<String, double> targets = const {},
    Map<String, String> sorts = const {},
    this.benchmark,
    Map<String, DateTime> favoriteSince = const {},
  }) : _favoriteSince = Map.of(favoriteSince),
       _hiddenHome = Set.of(hiddenHome),
       _sorts = Map.of(sorts),
       _goalsAt = Map.of(goalsAt),
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
  static const _favoriteSinceKey = 'favorite_since';

  /// Mikor lett a részvény kedvenc (a „mióta figyeled” változáshoz); a funkció
  /// előtti kedvenceknél nincs.
  final Map<String, DateTime> _favoriteSince;
  DateTime? favoriteSince(String symbol) => _favoriteSince[symbol.toUpperCase()];

  /// A felvételi napok a szinkronhoz (ticker → `yyyy-MM-dd`).
  Map<String, String> get favoriteSinceJson => {
    for (final e in _favoriteSince.entries) e.key: e.value.toIso8601String().substring(0, 10),
  };

  /// Felvételi napok beolvasása; a hibás tételek kimaradnak.
  static Map<String, DateTime> parseFavoriteSince(Object? v) {
    var m = v;
    if (v is String) {
      try {
        m = jsonDecode(v);
      } catch (_) {
        return {};
      }
    }
    if (m is! Map) return {};
    return {
      for (final e in m.entries)
        if (DateTime.tryParse('${e.value}') case final d?) '${e.key}'.toUpperCase(): DateTime(d.year, d.month, d.day),
    };
  }

  /// Új kedvencnél a mai nap (a meglévőt nem írja felül).
  void _markFavorite(String s) {
    final now = DateTime.now();
    _favoriteSince.putIfAbsent(s, () => DateTime(now.year, now.month, now.day));
  }

  Future<void> _saveFavorites() => _save((p) async {
    await p.setStringList(_favoritesKey, _favorites);
    await p.setString(_favoriteSinceKey, jsonEncode(favoriteSinceJson));
  });

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
  static const _dividendRemindersKey = 'dividend_reminders';
  static const _signalAlertsKey = 'signal_alerts';
  static const _morningBriefKey = 'morning_brief';
  static const _portfolioMoveKey = 'portfolio_move_alert';
  static const _portfolioMoveNotifiedKey = 'portfolio_move_notified';
  static const _targetsKey = 'portfolio_targets';
  static const _goalKey = 'portfolio_goal';
  static const _dividendGoalKey = 'dividend_goal';
  static const _goalsAtKey = 'goals_at';
  static const _hiddenHomeKey = 'home_hidden';
  static const _resolvedKey = 'resolved_descriptions';

  /// A kezdőképernyő elrejthető részei (azonosítók a beállításokhoz).
  static const homeSections = [
    'markets',
    'away',
    'brief',
    'portfolio',
    'favorites',
    'events',
    'results',
    'news',
    'analyses',
  ];
  static const _listsKey = 'watch_lists';
  static const _sortsKey = 'list_sorts';
  static const _benchmarkKey = 'portfolio_benchmark';

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

  /// Értesítés a várható osztalék napján (a rögzített kifizetések ritmusából).
  bool dividendReminders;

  /// Napi technikai jelzés-értesítés (asztali gépen).
  bool signalAlerts;

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

  final Map<String, String> _sorts;

  /// Az értékalakulás összevetésének indexe (ETF-ticker, pl. `QQQ`); `null`: S&P 500.
  String? benchmark;

  Future<void> setBenchmark(String symbol) async {
    if (benchmark == symbol) return;
    benchmark = symbol;
    notifyListeners();
    await _save((p) => p.setString(_benchmarkKey, symbol));
  }

  /// Egy lista legutóbb választott rendezése (pl. `positions` → `dividend`), hogy
  /// az app újraindítása után is megmaradjon; `null`, ha még nem választottak.
  String? sortOf(String list) => _sorts[list];

  Future<void> setSort(String list, String value) async {
    if (_sorts[list] == value) return;
    _sorts[list] = value;
    await _save((p) => p.setString(_sortsKey, jsonEncode(_sorts)));
  }

  /// A célok tárolt módosítási idői (fajta → ISO-8601); a hibás tételek kimaradnak.
  static Map<String, DateTime> parseGoalsAt(String? raw) {
    try {
      final v = raw == null ? null : jsonDecode(raw);
      return {
        if (v is Map)
          for (final e in v.entries)
            if (DateTime.tryParse('${e.value}') case final t?) '${e.key}': t.toUtc(),
      };
    } catch (_) {
      return const {};
    }
  }

  /// A tárolt rendezések beolvasása; a hibás tételek kimaradnak.
  static Map<String, String> parseSorts(String? raw) {
    try {
      final v = raw == null ? null : jsonDecode(raw);
      return {
        if (v is Map)
          for (final e in v.entries)
            if (e.value is String) '${e.key}': e.value as String,
      };
    } catch (_) {
      return const {};
    }
  }

  /// A portfólió célértéke és pénzneme (pl. 10 000 000 HUF); `null`, ha nincs.
  ({double amount, String currency})? portfolioGoal;

  static ({double amount, String currency})? parseGoal(String? raw) {
    final parts = raw?.split('|');
    if (parts == null || parts.length != 2) return null;
    final amount = double.tryParse(parts[0]);
    return amount == null || amount <= 0 || parts[1].isEmpty ? null : (amount: amount, currency: parts[1]);
  }

  Future<void> setPortfolioGoal(({double amount, String currency})? goal, {DateTime? at}) async {
    portfolioGoal = goal;
    await _saveGoal(goalPortfolio, _goalKey, goal, at);
  }

  /// Havi osztalékcél és pénzneme (pl. 50 000 HUF havonta); `null`, ha nincs.
  ({double amount, String currency})? dividendGoal;

  Future<void> setDividendGoal(({double amount, String currency})? goal, {DateTime? at}) async {
    dividendGoal = goal;
    await _saveGoal(goalDividend, _dividendGoalKey, goal, at);
  }

  /// A célok fajtái a szinkronban.
  static const goalPortfolio = 'portfolio', goalDividend = 'dividend';

  /// Célonként az utolsó módosítás ideje (UTC, a törlésé is), hogy a szinkronban
  /// az újabb nyerjen, és a törölt cél ne éledjen újra egy másik készülékről.
  final Map<String, DateTime> _goalsAt;

  /// [fromSync] nélkül (a felhasználó állította) most; a szinkron a csomag idejével
  /// hívja, és ha annak nincs ideje (régi csomag), a cél bélyeg nélkül marad.
  Future<void> _saveGoal(
    String kind,
    String key,
    ({double amount, String currency})? goal,
    DateTime? at, {
    bool fromSync = false,
  }) async {
    if (fromSync && at == null) {
      _goalsAt.remove(kind);
    } else {
      _goalsAt[kind] = (at ?? DateTime.now()).toUtc();
    }
    notifyListeners();
    await _save((p) async {
      await (goal == null ? p.remove(key) : p.setString(key, '${goal.amount}|${goal.currency}'));
      await p.setString(_goalsAtKey, jsonEncode({for (final e in _goalsAt.entries) e.key: e.value.toIso8601String()}));
    });
  }

  /// A célok a szinkroncsomagba: `{portfolio: {amount, currency, at}, dividend: {at}}`
  /// (összeg nélkül: törölve).
  Map<String, Map<String, Object>> get goalsJson => {
    for (final (kind, goal) in [(goalPortfolio, portfolioGoal), (goalDividend, dividendGoal)])
      if (goal != null || _goalsAt[kind] != null)
        kind: {
          if (goal != null) ...{'amount': goal.amount, 'currency': goal.currency},
          if (_goalsAt[kind] case final at?) 'at': at.toIso8601String(),
        },
  };

  /// A szinkroncsomag céljai: fajtánként a cél (`null`: törölve) és az idő.
  static Map<String, ({({double amount, String currency})? goal, DateTime? at})> parseGoals(Object? v) => {
    if (v is Map)
      for (final e in v.entries)
        if (e.value is Map && (e.key == goalPortfolio || e.key == goalDividend))
          '${e.key}': (
            goal: switch (((e.value as Map)['amount'], (e.value as Map)['currency'])) {
              (final num a, final String c) when a.isFinite && a > 0 && c.isNotEmpty => (
                amount: a.toDouble(),
                currency: c,
              ),
              _ => null,
            },
            at: DateTime.tryParse('${(e.value as Map)['at']}')?.toUtc(),
          ),
  };

  /// A szinkronból kapott célok átvétele a csomag idejével (nem most bélyegezve).
  Future<void> applyGoals(Map<String, ({({double amount, String currency})? goal, DateTime? at})> goals) async {
    if (goals[goalPortfolio] case final g?) {
      portfolioGoal = g.goal;
      await _saveGoal(goalPortfolio, _goalKey, g.goal, g.at, fromSync: true);
    }
    if (goals[goalDividend] case final g?) {
      dividendGoal = g.goal;
      await _saveGoal(goalDividend, _dividendGoalKey, g.goal, g.at, fromSync: true);
    }
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
        dividendReminders: prefs.getBool(_dividendRemindersKey) ?? true,
        signalAlerts: prefs.getBool(_signalAlertsKey) ?? true,
        morningBrief: prefs.getBool(_morningBriefKey) ?? false,
        portfolioMoveAlert: prefs.getDouble(_portfolioMoveKey) ?? 0,
        portfolioGoal: parseGoal(prefs.getString(_goalKey)),
        dividendGoal: parseGoal(prefs.getString(_dividendGoalKey)),
        goalsAt: parseGoalsAt(prefs.getString(_goalsAtKey)),
        hiddenHome: {...?prefs.getStringList(_hiddenHomeKey)},
        portfolioMoveNotified: prefs.getString(_portfolioMoveNotifiedKey),
        watchLists: WatchList.parseAll(prefs.getString(_listsKey)),
        targets: parseTargets(prefs.getString(_targetsKey)),
        sorts: parseSorts(prefs.getString(_sortsKey)),
        benchmark: prefs.getString(_benchmarkKey),
        favoriteSince: parseFavoriteSince(prefs.getString(_favoriteSinceKey)),
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
        _markFavorite(s);
        await _saveFavorites();
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
        _markFavorite(s);
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
      await p.setString(_favoriteSinceKey, jsonEncode(favoriteSinceJson));
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

  /// Tickerváltás (pl. átnevezett cég): a kedvencekben a régi helyén az új (ha még
  /// nincs ott), a felvételi nap, a célarány és a saját listák tagsága is átkerül.
  Future<void> renameSymbol(String from, String to) async {
    final f = from.trim().toUpperCase(), t = to.trim().toUpperCase();
    if (f == t || t.isEmpty) return;
    final i = _favorites.indexOf(f);
    if (i >= 0) {
      if (_favorites.contains(t)) {
        _favorites.removeAt(i);
      } else {
        _favorites[i] = t;
      }
      if (_favoriteSince.remove(f) case final since?) _favoriteSince.putIfAbsent(t, () => since);
    }
    if (_targets.remove(f) case final target?) _targets[t] = ((_targets[t] ?? 0) + target).clamp(0, 100).toDouble();
    for (final (n, l) in _lists.indexed) {
      if (!l.symbols.contains(f)) continue;
      _lists[n] = WatchList(name: l.name, symbols: {for (final s in l.symbols) s == f ? t : s}.toList());
    }
    await _saveFavorites();
    await _save((p) => p.setString(_targetsKey, jsonEncode(_targets)));
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

  Future<void> setDividendReminders(bool enabled) async {
    if (dividendReminders == enabled) return;
    dividendReminders = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_dividendRemindersKey, enabled));
  }

  Future<void> setSignalAlerts(bool enabled) async {
    if (signalAlerts == enabled) return;
    signalAlerts = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_signalAlertsKey, enabled));
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
    if (_favorites.remove(s)) {
      _favoriteSince.remove(s);
    } else {
      _favorites.insert(0, s);
      _markFavorite(s);
    }
    notifyListeners();
    await _saveFavorites();
  }

  Future<void> setHotkeyJson(Map<String, dynamic>? json) async {
    hotkeyJson = json;
    notifyListeners();
    await _save((p) => json == null ? p.remove(_hotkeyKey) : p.setString(_hotkeyKey, jsonEncode(json)));
  }

  /// A kedvencek cseréje (szinkronkor a fiók adataira, visszavonáskor a korábbira).
  /// A [since] felvételi napjai tickerenként felülírják a helyieket, a hiányzók
  /// megmaradnak (egy a mezőt még nem ismerő eszköz üres listája nem törli a
  /// dátumokat); [stampNew] esetén az új kedvencek a mai napot kapják.
  Future<void> setFavorites(
    List<String> symbols, {
    Map<String, DateTime> since = const {},
    bool stampNew = false,
  }) async {
    final previous = {..._favorites};
    _favorites
      ..clear()
      ..addAll(symbols.map((s) => s.toUpperCase()));
    _favoriteSince
      ..addAll(since)
      ..removeWhere((s, _) => !_favorites.contains(s));
    if (stampNew) _favorites.where((s) => !previous.contains(s)).forEach(_markFavorite);
    notifyListeners();
    await _saveFavorites();
  }

  /// A személyes listák (kedvencek, előzmények) törlése; a beállítások maradnak.
  Future<void> clearPersonalData() async {
    _favorites.clear();
    _favoriteSince.clear();
    _recent = [];
    _lists.clear();
    _targets.clear();
    _sorts.clear();
    portfolioGoal = null;
    dividendGoal = null;
    _goalsAt.clear();
    notifyListeners();
    await _save((p) async {
      for (final k in [
        _favoritesKey,
        _favoriteSinceKey,
        _recentKey,
        _listsKey,
        _targetsKey,
        _sortsKey,
        _goalKey,
        _dividendGoalKey,
        _goalsAtKey,
      ]) {
        await p.remove(k);
      }
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
