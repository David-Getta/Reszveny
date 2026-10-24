import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/analysis/analysis_options.dart';
import 'util/storage_room.dart';
import 'util/tombstones.dart';
import 'util/us_market_hours.dart';

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
    this.aiConsent = true,
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
    this.portfolioGoalNotified,
    List<WatchList> watchLists = const [],
    Map<String, double> targets = const {},
    this.targetsAt,
    Map<String, String> sorts = const {},
    this.benchmark,
    Map<String, DateTime> favoriteSince = const {},
    Map<String, DateTime> favoritesRemoved = const {},
    Map<String, DateTime> favoritesAdded = const {},
    Map<String, DateTime> listsRemoved = const {},
    Map<String, DateTime> listsAdded = const {},
    Map<String, DateTime> switchesAt = const {},
  }) : _favoriteSince = Map.of(favoriteSince),
       _switchesAt = Map.of(switchesAt),
       _listsRemoved = Map.of(listsRemoved),
       _listsAdded = Map.of(listsAdded),
       _favoritesRemoved = Map.of(favoritesRemoved),
       _favoritesAdded = Map.of(favoritesAdded),
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
  static const _favoritesRemovedKey = 'favorites_removed';
  static const _favoritesAddedKey = 'favorites_added';

  /// Szinkronhoz: mikor vette le a felhasználó a kedvencet (UTC), és mikor vette
  /// fel utoljára (pontos idő) – így egy levett kedvenc nem jön vissza a másik
  /// eszköz régi listájából, az újra felvett viszont megmarad.
  final Map<String, DateTime> _favoritesRemoved;
  final Map<String, DateTime> _favoritesAdded;

  Map<String, String> get favoritesRemovedJson => tombstonesJson(_favoritesRemoved);
  Map<String, String> get favoritesAddedJson => {
    for (final e in _favoritesAdded.entries)
      if (_favorites.contains(e.key)) e.key: e.value.toUtc().toIso8601String(),
  };

  static const _listsRemovedKey = 'lists_removed';
  static const _listsAddedKey = 'lists_added';

  /// A saját listák szinkronjához: mikor törölték a listát (`list:<név>`) vagy
  /// vették le róla a részvényt (`item:<név>|<TICKER>`), illetve mikor hozták
  /// létre / vették fel (a név kisbetűsen). Így a másik eszköz régi példánya nem
  /// hozza vissza, ami törölve lett.
  final Map<String, DateTime> _listsRemoved;
  final Map<String, DateTime> _listsAdded;

  static String listKey(String name) => 'list:${name.trim().toLowerCase()}';
  static String itemKey(String name, String symbol) => 'item:${name.trim().toLowerCase()}|${symbol.toUpperCase()}';

  /// A jelenlegi listák és tagjaik kulcsai.
  Set<String> get _listKeys => {
    for (final l in _lists) ...[listKey(l.name), for (final s in l.symbols) itemKey(l.name, s)],
  };

  Map<String, String> get listsRemovedJson => tombstonesJson(_listsRemoved);
  Map<String, String> get listsAddedJson {
    final keys = _listKeys;
    return {
      for (final e in _listsAdded.entries)
        if (keys.contains(e.key)) e.key: e.value.toUtc().toIso8601String(),
    };
  }

  void _listMark(String key, {required bool added}) {
    final now = DateTime.now().toUtc();
    if (added) {
      _listsAdded[key] = now;
      _listsRemoved.remove(key);
    } else {
      _listsRemoved[key] = now;
      _listsAdded.remove(key);
    }
  }

  /// A listák jelzéseinek cseréje (szinkronkor a fiók állapotára).
  Future<void> replaceListMarks({required Map<String, DateTime> removed, required Map<String, DateTime> added}) async {
    _listsRemoved
      ..clear()
      ..addAll(removed);
    _listsAdded
      ..clear()
      ..addAll(added);
    await _saveLists();
  }

  /// A jelzések cseréje (szinkronkor a fiók állapotára).
  Future<void> replaceFavoriteMarks({
    required Map<String, DateTime> removed,
    required Map<String, DateTime> added,
  }) async {
    _favoritesRemoved
      ..clear()
      ..addAll(removed);
    _favoritesAdded
      ..clear()
      ..addAll(added);
    await _saveFavorites();
  }

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

  /// Új kedvencnél a mostani kereskedési nap (a meglévőt nem írja felül) és a pontos
  /// felvételi idő. A nap New York-i: a „felvétel óta” változás ennek a záróárához
  /// mér – helyi dátummal keletebbre (vagy éjfél után Európában) a következő
  /// kereskedési nap zárása lenne a mérce.
  void _markFavorite(String s) {
    final now = DateTime.now();
    _favoriteSince.putIfAbsent(s, () => UsMarketHours.sessionDate(now.toUtc()));
    _favoritesAdded[s] = now.toUtc();
    _favoritesRemoved.remove(s);
  }

  /// A felhasználó levette a kedvencet.
  void _unmarkFavorite(String s) {
    _favoriteSince.remove(s);
    _favoritesAdded.remove(s);
    _favoritesRemoved[s] = DateTime.now().toUtc();
  }

  Future<void> _saveFavorites() => _save((p) async {
    await p.setStringList(_favoritesKey, _favorites);
    await p.setString(_favoriteSinceKey, jsonEncode(favoriteSinceJson));
    await p.setString(_favoritesRemovedKey, jsonEncode(favoritesRemovedJson));
    await p.setString(_favoritesAddedKey, jsonEncode(favoritesAddedJson));
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
  static const _aiConsentKey = 'ai_consent';
  static const _emailAlertsKey = 'email_alerts';
  static const _weeklyDigestKey = 'weekly_digest';

  /// A szinkronizált kapcsolók (e-mailes riasztás, heti összefoglaló) utolsó
  /// állításának ideje: az összefésülésnél a később állított nyer.
  static const _switchesAtKey = 'switches_at';
  static const _earningsRemindersKey = 'earnings_reminders';
  static const _dividendRemindersKey = 'dividend_reminders';
  static const _signalAlertsKey = 'signal_alerts';
  static const _morningBriefKey = 'morning_brief';
  static const _portfolioMoveKey = 'portfolio_move_alert';
  static const _portfolioMoveNotifiedKey = 'portfolio_move_notified';
  static const _portfolioGoalNotifiedKey = 'portfolio_goal_notified';
  static const _targetsKey = 'portfolio_targets';
  static const _targetsAtKey = 'portfolio_targets_at';
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

  /// Hozzájárult-e, hogy az AI-funkciók a szükséges adatokat (fotó, kérdés, jegyzet,
  /// pozíció) az Anthropicnak küldjék: `null` = még nem kérdeztük, `false` = nem.
  /// (A tárolóból betöltve kérdezetlenül `null`; a konstruktor alapja a tesztekhez igaz.)
  /// Engedélyezte-e a felhasználó, hogy az AI-kérések adatai az Anthropichoz kerüljenek
  /// (`null`: még nem döntött; az első AI-kérés előtt az app rákérdez).
  bool? aiConsent;

  /// Belépve a szerver e-mailben is szól, ha egy riasztás teljesül.
  bool emailAlerts;

  /// Belépve hétfőnként e-mailes összefoglaló a kedvencekről és a portfólióról.
  bool weeklyDigest;

  final Map<String, DateTime> _switchesAt;

  /// A kapcsolók állításának ideje a szinkron-csomagba (UTC).
  Map<String, String> get switchesAtJson => {
    for (final e in _switchesAt.entries) e.key: e.value.toUtc().toIso8601String(),
  };

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
    return amount == null || amount <= 0 || parts[1].isEmpty ? null : _euroGoal(amount, parts[1]);
  }

  /// A levában (2026 előtt) megadott cél euróban: a cél pénzneme a kijelzésé, az pedig
  /// már euró – különben a kártya „nincs cél”-t mutatna.
  static ({double amount, String currency}) _euroGoal(double amount, String currency) => currency.toUpperCase() == 'BGN'
      ? (amount: amount / 1.95583, currency: 'EUR') // a rögzített átváltási árfolyam (FxService.bgnPerEur)
      : (amount: amount, currency: currency);

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
              (final num a, final String c) when a.isFinite && a > 0 && c.isNotEmpty => _euroGoal(a.toDouble(), c),
              _ => null,
            },
            at: DateTime.tryParse('${(e.value as Map)['at']}')?.toUtc(),
          ),
  };

  /// A szinkronból kapott célok átvétele a csomag idejével (nem most bélyegezve).
  /// Mindkét cél a memóriában egyszerre cserélődik, a mentés utána fut.
  Future<void> applyGoals(Map<String, ({({double amount, String currency})? goal, DateTime? at})> goals) {
    final saves = <Future<void>>[];
    if (goals[goalPortfolio] case final g?) {
      portfolioGoal = g.goal;
      saves.add(_saveGoal(goalPortfolio, _goalKey, g.goal, g.at, fromSync: true));
    }
    if (goals[goalDividend] case final g?) {
      dividendGoal = g.goal;
      saves.add(_saveGoal(goalDividend, _dividendGoalKey, g.goal, g.at, fromSync: true));
    }
    return Future.wait(saves);
  }

  /// Értesítés, ha a teljes portfólió egy nap alatt legalább ennyi %-ot mozdul (0: ki).
  double portfolioMoveAlert;

  /// A legutóbbi portfólió-értesítés napja és mozgása (`2026-10-16|-3.2`), hogy
  /// naponta egyszer szóljon, és ugyanazt a mozgást ne jelezze újra.
  String? portfolioMoveNotified;

  /// Melyik portfólió-célról (összeg|pénznem) ment már értesítés.
  String? portfolioGoalNotified;

  /// A választható küszöbök a beállításokban.
  static const portfolioMoveSteps = [2.0, 3.0, 5.0];

  final List<WatchList> _lists;

  final Map<String, double> _targets;

  /// Célarányok a portfólióban (ticker → százalék).
  Map<String, double> get targets => Map.unmodifiable(_targets);

  /// A célarányok utolsó módosítása (a szinkronban az újabb teljes beállítás nyer,
  /// a törlés is); `null`, ha ezen az eszközön még nem állították.
  DateTime? targetsAt;

  /// A célarányok cseréje. [fromSync] nélkül (a felhasználó állította) most
  /// bélyegezve; a szinkron a csomag idejével hívja (idő nélkül a helyi marad).
  Future<void> setTargets(Map<String, double> targets, {DateTime? at, bool fromSync = false}) async {
    _targets
      ..clear()
      ..addAll({
        for (final e in targets.entries)
          if (e.value > 0 && e.value <= 100) e.key.toUpperCase(): e.value,
      });
    targetsAt = fromSync ? (at?.toUtc() ?? targetsAt) : DateTime.now().toUtc();
    notifyListeners();
    await _saveTargets();
  }

  Future<void> _saveTargets() => _save((p) async {
    await p.setString(_targetsKey, jsonEncode(_targets));
    await (targetsAt == null ? p.remove(_targetsAtKey) : p.setString(_targetsAtKey, targetsAt!.toIso8601String()));
  });

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

  static Map<String, DateTime> _parseMarks(String? raw) {
    try {
      return raw == null ? const {} : parseTombstones(jsonDecode(raw));
    } catch (_) {
      return const {};
    }
  }

  static Future<AppPreferences> load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      // Kulcsonként hibatűrő olvasás: egy sérült vagy más típusú érték (pl. a
      // gyorsbillentyűé) nem viszi el a többi beállítást (a kedvenceket, a hozzájárulást).
      T? safe<T>(T? Function() read) {
        try {
          return read();
        } catch (_) {
          return null;
        }
      }

      String? str(String key) => safe(() => prefs.getString(key));
      bool? flag(String key) => safe(() => prefs.getBool(key));
      List<String>? strings(String key) => safe(() => prefs.getStringList(key));
      final mode = ThemeMode.values.asNameMap()[str(_themeKey) ?? ''] ?? ThemeMode.system;
      final hotkey = safe(
        () => switch (str(_hotkeyKey)) {
          final raw? => jsonDecode(raw),
          null => null,
        },
      );
      // Az első indításkor (még üres tár) a bevezető ki nem fejezettnek jelölve: így
      // a közben írt kulcsok (pl. a próbaidő) után sem tűnik a régi felhasználóénak.
      final onboarding = flag(_onboardingKey);
      final fresh = onboarding == null && prefs.getKeys().isEmpty;
      if (fresh) await prefs.setBool(_onboardingKey, false);
      final loaded = AppPreferences(
        themeMode: mode,
        recent: strings(_recentKey) ?? const [],
        favorites: strings(_favoritesKey) ?? const [],
        hotkeyJson: hotkey is Map<String, dynamic> ? hotkey : null,
        // A bolgár leva 2026-tól euró (az ECB már nem jegyzi).
        displayCurrency: switch (str(_currencyKey)) {
          'BGN' => 'EUR',
          final c => c ?? currencyUnset,
        },
        autoUpdate: flag(_autoUpdateKey) ?? true,
        analysisDepth: AnalysisDepth.values.asNameMap()[str(_depthKey) ?? ''] ?? AnalysisDepth.standard,
        readerLevel: ReaderLevel.values.asNameMap()[str(_readerKey) ?? ''] ?? ReaderLevel.beginner,
        counterArgument: flag(_counterKey) ?? true,
        // Alapból ki: a Claude asztali appja is a dupla Option-nyomást figyeli.
        doubleOption: flag(_doubleOptionKey) ?? false,
        doubleOptionAsked: flag(_doubleOptionAskedKey) ?? false,
        keepInTray: flag(_keepInTrayKey) ?? true,
        onboardingDone: onboarding ?? !fresh,
        analysesDone: safe(() => prefs.getInt(_analysesDoneKey)) ?? 0,
        reviewAsked: flag(_reviewAskedKey) ?? false,
        telemetryConsent: flag(_telemetryKey),
        aiConsent: flag(_aiConsentKey),
        emailAlerts: flag(_emailAlertsKey) ?? true,
        weeklyDigest: flag(_weeklyDigestKey) ?? false,
        switchesAt: _parseMarks(str(_switchesAtKey)),
        earningsReminders: flag(_earningsRemindersKey) ?? true,
        dividendReminders: flag(_dividendRemindersKey) ?? true,
        signalAlerts: flag(_signalAlertsKey) ?? true,
        morningBrief: flag(_morningBriefKey) ?? false,
        portfolioMoveAlert: safe(() => prefs.getDouble(_portfolioMoveKey)) ?? 0,
        portfolioGoal: parseGoal(str(_goalKey)),
        dividendGoal: parseGoal(str(_dividendGoalKey)),
        goalsAt: parseGoalsAt(str(_goalsAtKey)),
        hiddenHome: {...?strings(_hiddenHomeKey)},
        portfolioMoveNotified: str(_portfolioMoveNotifiedKey),
        portfolioGoalNotified: str(_portfolioGoalNotifiedKey),
        watchLists: WatchList.parseAll(str(_listsKey)),
        targets: parseTargets(str(_targetsKey)),
        targetsAt: DateTime.tryParse(str(_targetsAtKey) ?? '')?.toUtc(),
        sorts: parseSorts(str(_sortsKey)),
        benchmark: str(_benchmarkKey),
        favoriteSince: parseFavoriteSince(str(_favoriteSinceKey)),
        favoritesRemoved: _parseMarks(str(_favoritesRemovedKey)),
        favoritesAdded: _parseMarks(str(_favoritesAddedKey)),
        listsRemoved: _parseMarks(str(_listsRemovedKey)),
        listsAdded: _parseMarks(str(_listsAddedKey)),
      );
      loaded._loadResolved(strings(_resolvedKey));
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

  Future<void> setAiConsent(bool allowed) async {
    aiConsent = allowed;
    notifyListeners();
    await _save((p) => p.setBool(_aiConsentKey, allowed));
  }

  Future<void> setTelemetryConsent(bool allowed) async {
    telemetryConsent = allowed;
    notifyListeners();
    await _save((p) => p.setBool(_telemetryKey, allowed));
  }

  Future<void> setEmailAlerts(bool enabled) async {
    if (emailAlerts == enabled) return;
    emailAlerts = enabled;
    _switchesAt[_emailAlertsKey] = DateTime.now().toUtc();
    await _saveSwitches();
  }

  Future<void> setWeeklyDigest(bool enabled) async {
    if (weeklyDigest == enabled) return;
    weeklyDigest = enabled;
    _switchesAt[_weeklyDigestKey] = DateTime.now().toUtc();
    await _saveSwitches();
  }

  /// A szinkronból: a kapcsolók értéke és állításuk ideje (a régi csomagban idő nélkül).
  Future<void> applySwitches({
    required bool emailAlerts,
    required bool weeklyDigest,
    Map<String, DateTime> at = const {},
  }) async {
    this.emailAlerts = emailAlerts;
    this.weeklyDigest = weeklyDigest;
    _switchesAt.addAll(at);
    await _saveSwitches();
  }

  Future<void> _saveSwitches() async {
    notifyListeners();
    await _save((p) async {
      await p.setBool(_emailAlertsKey, emailAlerts);
      await p.setBool(_weeklyDigestKey, weeklyDigest);
      await p.setString(_switchesAtKey, jsonEncode(switchesAtJson));
    });
  }

  /// Új saját lista; `false`, ha a név üres, foglalt vagy elérte a [maxLists]-et.
  Future<bool> addWatchList(String name) async {
    final n = name.trim();
    if (n.isEmpty || n.characters.length > maxListName || _lists.length >= maxLists || _listNamed(n) != null) {
      return false;
    }
    _lists.add(WatchList(name: n));
    _listMark(listKey(n), added: true);
    await _saveLists();
    return true;
  }

  Future<bool> renameWatchList(String from, String to) async {
    final l = _listNamed(from), n = to.trim();
    if (l == null || n.isEmpty || n.characters.length > maxListName) return false;
    final other = _listNamed(n);
    if (other != null && other != l) return false;
    _lists[_lists.indexOf(l)] = WatchList(name: n, symbols: l.symbols);
    // Átnevezés: a régi név törölt, az új (a tagjaival) most létrehozott.
    if (listKey(l.name) != listKey(n)) {
      _listMark(listKey(l.name), added: false);
      _listMark(listKey(n), added: true);
      for (final s in l.symbols) {
        _listMark(itemKey(l.name, s), added: false);
        _listMark(itemKey(n, s), added: true);
      }
    }
    await _saveLists();
    return true;
  }

  /// A lista és a tagjai is töröltnek jelölve: egy újra létrehozott, azonos nevű
  /// listába egy régi eszköz nem hozza vissza a régi tagokat.
  Future<void> removeWatchList(String name) async {
    for (final l in _lists.where((l) => l.name.toLowerCase() == name.toLowerCase())) {
      for (final s in l.symbols) {
        _listMark(itemKey(l.name, s), added: false);
      }
    }
    _lists.removeWhere((l) => l.name.toLowerCase() == name.toLowerCase());
    _listMark(listKey(name), added: false);
    await _saveLists();
  }

  /// Foglalt-e a listanév (kis- és nagybetűtől függetlenül); átnevezéskor a saját
  /// régi neve ([except]) nem számít foglaltnak.
  bool listNameTaken(String name, {String? except}) {
    final l = _listNamed(name);
    return l != null && l != (except == null ? null : _listNamed(except));
  }

  /// Egy törölt lista visszaállítása (visszavonás) a régi helyére, a tagjaival;
  /// `false`, ha közben azonos nevű lista készült.
  Future<bool> restoreWatchList(WatchList list, {int? at}) async {
    if (_listNamed(list.name) != null) return false;
    _lists.insert((at ?? _lists.length).clamp(0, _lists.length), list);
    _listMark(listKey(list.name), added: true);
    for (final s in list.symbols) {
      _listMark(itemKey(list.name, s), added: true);
    }
    await _saveLists();
    return true;
  }

  /// Egy levett kedvenc visszavétele (visszavonás) a régi helyére és felvételi napjával,
  /// a közben történt többi változás (új kedvenc, átrendezés) megtartásával.
  Future<void> restoreFavorite(String symbol, {required int at, DateTime? since}) async {
    final s = symbol.trim().toUpperCase();
    if (s.isEmpty || _favorites.contains(s)) return;
    _favorites.insert(at.clamp(0, _favorites.length), s);
    if (since != null) _favoriteSince[s] = since;
    _markFavorite(s);
    notifyListeners();
    await _saveFavorites();
  }

  /// Részvény fel- vagy levétele egy saját listáról; felvételkor kedvenc is lesz.
  /// Az [at] a felvétel helye (visszavonáskor a régi), különben a lista vége.
  Future<void> toggleInList(String name, String symbol, {int? at}) async {
    final l = _listNamed(name), s = symbol.trim().toUpperCase();
    if (l == null || s.isEmpty) return;
    final symbols = [...l.symbols];
    final removed = symbols.remove(s);
    _listMark(itemKey(l.name, s), added: !removed);
    if (!removed) {
      symbols.insert((at ?? symbols.length).clamp(0, symbols.length), s);
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
        _listMark(itemKey(l.name, s), added: true);
        isNew = true;
      }
      if (isNew) added++;
    }
    if (l != null) _lists[_lists.indexOf(l)] = WatchList(name: l.name, symbols: inList);
    await _saveFavorites();
    await _saveLists();
    return added;
  }

  /// Az összes saját lista cseréje (szinkronkor a fiók adataira, visszaállításkor
  /// a mentéssel összefésülve). A [maxLists] csak az új lista létrehozását korlátozza:
  /// egy összefésülés nem dobhat el meglévő listát.
  Future<void> setWatchLists(List<WatchList> lists) async {
    _lists
      ..clear()
      ..addAll(lists);
    await _saveLists();
  }

  /// Tickerváltás (pl. átnevezett cég): a kedvencekben a régi helyén az új (ha még
  /// nincs ott), a felvételi nap, a célarány és a saját listák tagsága is átkerül.
  Future<void> renameSymbol(String from, String to) async {
    final f = from.trim().toUpperCase(), t = to.trim().toUpperCase();
    if (f == t || t.isEmpty) return;
    final i = _favorites.indexOf(f);
    if (i >= 0) {
      final since = _favoriteSince[f];
      if (_favorites.contains(t)) {
        _favorites.removeAt(i);
      } else {
        _favorites[i] = t;
        _markFavorite(t);
        // A „mióta figyeled” a régi tickerét viszi tovább.
        if (since != null) _favoriteSince[t] = since;
      }
      _unmarkFavorite(f);
    }
    if (_targets.remove(f) case final target?) {
      _targets[t] = ((_targets[t] ?? 0) + target).clamp(0, 100).toDouble();
      targetsAt = DateTime.now().toUtc();
    }
    for (final (n, l) in _lists.indexed) {
      if (!l.symbols.contains(f)) continue;
      _lists[n] = WatchList(name: l.name, symbols: {for (final s in l.symbols) s == f ? t : s}.toList());
      _listMark(itemKey(l.name, f), added: false);
      _listMark(itemKey(l.name, t), added: true);
    }
    await _saveFavorites();
    await _saveTargets();
    await _saveLists();
  }

  WatchList? _listNamed(String name) =>
      _lists.where((l) => l.name.toLowerCase() == name.trim().toLowerCase()).firstOrNull;

  Future<void> _saveLists() async {
    notifyListeners();
    await _save((p) async {
      await p.setString(_listsKey, jsonEncode([for (final l in _lists) l.toJson()]));
      await p.setString(_listsRemovedKey, jsonEncode(listsRemovedJson));
      await p.setString(_listsAddedKey, jsonEncode(listsAddedJson));
    });
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

  Future<void> setPortfolioGoalNotified(String value) async {
    portfolioGoalNotified = value;
    await _save((p) => p.setString(_portfolioGoalNotifiedKey, value));
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
      _unmarkFavorite(s);
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
    bool restore = false,
  }) async {
    final previous = {..._favorites};
    // Visszavonás: az újra felvett kedvenc újabbnak jelölve (egy már szinkronizált
    // levétel se vigye el).
    if (restore) {
      final now = DateTime.now().toUtc();
      for (final s in symbols.map((s) => s.toUpperCase()).where((s) => !previous.contains(s))) {
        _favoritesAdded[s] = now;
        _favoritesRemoved.remove(s);
      }
    }
    // Nagybetűsen, ismétlés nélkül (egy kézzel írt mentés „aapl”-je se legyen kétszer).
    _favorites
      ..clear()
      ..addAll({for (final s in symbols) s.trim().toUpperCase()}.where((s) => s.isNotEmpty));
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
    _favoritesRemoved.clear();
    _favoritesAdded.clear();
    _listsRemoved.clear();
    _listsAdded.clear();
    _recent = [];
    _lists.clear();
    _targets.clear();
    targetsAt = null;
    _sorts.clear();
    portfolioGoal = null;
    dividendGoal = null;
    _goalsAt.clear();
    // A begépelt keresési leírások és az értesítések nyomai (célösszeg, napi mozgás) is.
    _resolved.clear();
    portfolioMoveNotified = null;
    portfolioGoalNotified = null;
    notifyListeners();
    await _save((p) async {
      for (final k in [
        _resolvedKey,
        _portfolioMoveNotifiedKey,
        _portfolioGoalNotifiedKey,
        _favoritesKey,
        _favoriteSinceKey,
        _favoritesRemovedKey,
        _favoritesAddedKey,
        _listsRemovedKey,
        _listsAddedKey,
        _recentKey,
        _listsKey,
        _targetsKey,
        _targetsAtKey,
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

  /// Betelt tárolónál a gyorsítótár helyén (a tárolás hibája nem akadályozza a működést).
  Future<void> _save(Future<void> Function(SharedPreferences) write) => writeWithRoom(write);
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
      symbols: {
        for (final s in (j['symbols'] is List ? j['symbols'] as List : const []))
          if (s is String && s.trim().isNotEmpty) s.trim().toUpperCase(),
      }.toList(),
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
