import 'dart:async';
import 'dart:io';

import '../../widgets/hotkey_hint.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:window_manager/window_manager.dart';

import '../../app_services.dart';
import '../../core/desktop/desktop_integration.dart';
import '../../core/desktop/quick_panel.dart';
import '../../core/desktop/system_notifier.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_quote.dart';
import '../../core/util/formatters.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../billing/usage_chip.dart';
import '../home/candidate_sheet.dart';
import '../events/events_service.dart';
import '../events/events_view.dart' show eventWhen;
import '../home/home_page.dart';
import '../home/quick_bar.dart';
import '../home/quick_search_controller.dart';
import '../alerts/alerts_view.dart';
import '../portfolio/portfolio_page.dart';
import '../portfolio/portfolio_valuation.dart';
import '../settings/settings_page.dart';
import 'shortcuts_dialog.dart';
import '../stock_detail/stock_detail_page.dart';
import '../../core/util/dates.dart';
import '../../core/util/us_market_hours.dart';

/// Az app kerete: széles képernyőn oldalsáv (új keresés, előzmények,
/// beállítások) és tartalom – mint a Claude asztali alkalmazása; keskeny
/// képernyőn hagyományos, teljes szélességű navigáció. Asztali gépen a
/// gyorsbillentyűvel előhívott kompakt sávot is ez jeleníti meg.
class AppShell extends StatefulWidget {
  const AppShell({super.key});

  static const double sidebarBreakpoint = HomePage.sidebarBreakpoint;
  static const double sidebarWidth = 248;

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  /// Telefonon (keskeny képernyőn) alsó menüsor: 0 = keresés (kezdőképernyő),
  /// 1 = portfólió, 2 = riasztások, 3 = beállítások. Minden fülnek saját
  /// navigációs verme van, így a fülek között váltva megmarad, hol tartottunk.
  int _tab = 0;
  final _tabKeys = [GlobalKey<NavigatorState>(), GlobalKey<NavigatorState>(), GlobalKey<NavigatorState>()];
  final Set<int> _visitedTabs = {0};

  /// A látható navigáció: a fülek verme széles elrendezésben is megmarad (és látszik),
  /// ha a telefonos keretből egy fülön állva szélesedett ki az ablak.
  NavigatorState? get _currentNav => (_tab == 0 ? _navigatorKey : _tabKeys[_tab - 1]).currentState;

  void _selectTab(int i) {
    if (i == _tab) {
      // Az aktív fülre koppintva vissza a fül kezdőoldalára.
      _currentNav?.popUntil((r) => r.isFirst);
      return;
    }
    setState(() {
      _tab = i;
      _visitedTabs.add(i);
    });
  }

  /// Android vissza-gomb / -gesztus: előbb az aktuális fülön lép vissza, majd a
  /// keresés fülre, és csak onnan lép ki az appból.
  void _onBack() {
    final nav = _currentNav;
    if (nav != null && nav.canPop()) {
      nav.pop();
    } else if (_tab != 0) {
      setState(() => _tab = 0);
    } else {
      SystemNavigator.pop();
    }
  }

  bool _trayReady = false;
  bool _quickPanelReady = false;

  /// A teljes ablak legutóbbi mérete: gyorssáv alatt ezen marad a rejtett felület.
  Size? _fullSize;
  AppServices? _services;

  /// A gyorskereső panelből választott részvény: a panel eltűnik, és a teljes
  /// ablakban nyílik meg.
  Future<void> _quickOpen(StockCandidate candidate) async {
    final services = _services;
    if (services == null || !mounted) return;
    await services.desktop.quickPanel.hide();
    await services.desktop.showFullWindow();
    if (!mounted) return;
    _goHome();
    _openSymbol(candidate);
  }

  /// Kép beillesztése a gyorskereső panelbe (⌘V vagy a gomb): felismerés a
  /// panelben, forgó jelzővel; több bizonytalan jelöltnél a teljes ablakban
  /// választhat a felhasználó, találat híján a panel írja ki az okát.
  Future<void> _quickPasteImage() async {
    final services = _services;
    if (services == null || !mounted) return;
    final l10n = AppLocalizations.of(context);
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    final panel = services.desktop.quickPanel;
    await panel.setMessage(null);
    await panel.setBusy(true);
    try {
      final image = await services.capture.fromClipboard();
      final result = await services.recognizer.recognize(image, outputLanguage: language);
      services.telemetry.track('photo_recognized');
      final best = result.best;
      if (best == null) {
        await panel.setMessage(l10n.noCandidatesTitle);
        return;
      }
      if (result.candidates.length == 1 || best.isConfident) {
        await _quickOpen(best);
        return;
      }
      await panel.hide();
      await services.desktop.showFullWindow();
      if (!mounted) return;
      _goHome();
      final navContext = _navigatorKey.currentContext;
      if (navContext == null || !navContext.mounted) return;
      final chosen = await showCandidateSheet(navContext, result);
      if (chosen != null && mounted) _openSymbol(chosen);
    } catch (e) {
      // Pl. nincs kép a vágólapon, vagy nem érhető el a felismerés.
      await panel.setMessage(errorMessage(l10n, e));
    } finally {
      await panel.setBusy(false);
    }
  }

  @override
  void dispose() {
    _trayTimer?.cancel();
    _services?.preferences.removeListener(_onPrefsForTray);
    _services?.alertMonitor.removeListener(_onAlertHits);
    _services?.alertMonitor.openRequest.removeListener(_onOpenRequest);
    _services?.pageRequest.removeListener(_onPageRequest);
    _services?.reports.completed.removeListener(_onAnalysisDone);
    super.dispose();
  }

  /// Teljesült riasztás: az appon belül is jelezzük, „Megnyitás” gombbal.
  void _onAlertHits() {
    final services = _services;
    if (services == null || !mounted) return;
    final hits = services.alertMonitor.lastHits;
    if (hits.isEmpty) return;
    final text = services.describeAlertHit(hits.first);
    final l10n = AppLocalizations.of(context);
    // A riasztás fontosabb a többi rövid üzenetnél: nem áll be mögéjük a sorba.
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('${text.title}\n${text.body}'),
          duration: const Duration(seconds: 8),
          action: SnackBarAction(
            label: l10n.alertOpen,
            onPressed: () => services.alertMonitor.requestOpen(hits.first.alert.symbol),
          ),
        ),
      );
  }

  /// Elkészült egy elemzés, miközben a felhasználó máshol jár (1–2 percig
  /// tart): rövid jelzés „Megnyitás” gombbal.
  void _onAnalysisDone() {
    final services = _services;
    final r = services?.reports.completed.value;
    if (services == null || r == null || !mounted || services.reports.isOnScreen(r.symbol)) return;
    final l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          key: ValueKey('analysis-ready-${r.symbol}'),
          content: Text(l10n.analysisReady(r.symbol)),
          duration: const Duration(seconds: 8),
          action: SnackBarAction(
            label: l10n.alertOpen,
            onPressed: () {
              _goHome();
              _openSymbol(StockCandidate(symbol: r.symbol, companyName: r.symbol, confidence: 1));
            },
          ),
        ),
      );
  }

  /// Értesítésre (vagy a „Megnyitás”-ra) koppintva a részvény nyílik meg.
  /// Értesítésről kért oldal (portfólió, kezdőlap): a teljes ablakban.
  Future<void> _onPageRequest() async {
    final page = _services?.pageRequest.value;
    if (page == null || !mounted) return;
    await _services!.desktop.showFullWindow();
    if (!mounted) return;
    // Telefonos elrendezésben a Portfólió fül (nem a keresés fülére tett új oldal).
    if (page == ShellPage.portfolio && MediaQuery.sizeOf(context).width < AppShell.sidebarBreakpoint) {
      if (_tab != 1) _selectTab(1);
      _tabKeys[0].currentState?.popUntil((r) => r.isFirst);
      return;
    }
    _goHome();
    if (page == ShellPage.portfolio) _openPortfolio();
  }

  Future<void> _onOpenRequest() async {
    final symbol = _services?.alertMonitor.openRequest.value;
    if (symbol == null || !mounted) return;
    await _services!.desktop.showFullWindow();
    _goHome();
    _openSymbol(StockCandidate(symbol: symbol, companyName: symbol, confidence: 1));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    if (_services == null) {
      _services = services;
      services.alertMonitor.addListener(_onAlertHits);
      services.alertMonitor.openRequest.addListener(_onOpenRequest);
      services.pageRequest.addListener(_onPageRequest);
      services.reports.completed.addListener(_onAnalysisDone);
      // A megnyitás már figyelve: jöhetnek a korábbi értesítésekre érkezett kattintások.
      if (services.alertMonitor.notifier case final SystemNotifier n) unawaited(n.listen());
    }
    if (NativeQuickPanel.isSupported) {
      final panel = services.desktop.quickPanel;
      if (!_quickPanelReady) {
        _quickPanelReady = true;
        panel.attach(
          QuickSearchController(
            panel: panel,
            search: services.marketData.search,
            // Leírásra („tech 100 etf”) az AI fejti meg a részvényt, ha a kereső nem találja.
            resolve: services.config.hasAnthropicKey
                ? (q) async => (await services.descriptionResolver.resolve(
                    q,
                    outputLanguage: SupportedLocales.languageFor(Localizations.localeOf(context)).englishName,
                  )).candidates
                : null,
            favorites: () => services.preferences.favorites,
            recent: () => services.preferences.recent,
            recentTitle: () => AppLocalizations.of(context).recentSearches,
            describe: (e) => errorMessage(AppLocalizations.of(context), e),
            open: _quickOpen,
            pasteImage: _quickPasteImage,
            openWindow: () async {
              await panel.hide();
              await services.desktop.showFullWindow();
            },
          ),
        );
      }
      // Nyelv- vagy témaváltáskor a panel feliratai és színei is frissülnek.
      panel.configure(
        placeholder: l10n.quickBarHint,
        pasteImage: l10n.pasteImage,
        openWindow: l10n.openFullWindow,
        dark: Theme.of(context).brightness == Brightness.dark,
      );
    }
    // Nyelvváltáskor a tálcamenü is az új nyelven (a következő képkocka után).
    final locale = Localizations.localeOf(context);
    if (_trayReady && _trayLocale != locale) WidgetsBinding.instance.addPostFrameCallback((_) => _refreshTray());
    _trayLocale = locale;
    if (DesktopIntegration.isSupported && !_trayReady) {
      _trayReady = true;
      services.desktop.setupTray(
        open: l10n.trayOpen,
        quickSearch: l10n.trayQuickSearch,
        quit: l10n.trayQuit,
        tooltip: l10n.appTitle,
      );
      // A kedvencek mai ára a menüben: induláskor, 5 percenként és ha a lista változik.
      WidgetsBinding.instance.addPostFrameCallback((_) => _refreshTray());
      _trayTimer = Timer.periodic(const Duration(minutes: 5), (_) => _refreshTray());
      services.preferences.addListener(_onPrefsForTray);
    }
  }

  Timer? _trayTimer;
  String _trayFavorites = '';
  Locale? _trayLocale;

  /// Minden frissítés növeli: egy lassabb, régebbi frissítés nem írja felül az újabbat.
  int _trayGeneration = 0;

  void _onPrefsForTray() {
    final now = _services?.preferences.favorites.take(DesktopIntegration.trayMaxStocks).join(',') ?? '';
    if (now != _trayFavorites) _refreshTray();
  }

  Future<void> _refreshTray() async {
    final services = _services;
    if (services == null || !mounted) return;
    final l10n = AppLocalizations.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final generation = ++_trayGeneration;
    final symbols = services.preferences.favorites.take(DesktopIntegration.trayMaxStocks).toList();
    _trayFavorites = symbols.join(',');
    final quotes = await Future.wait([
      for (final s in symbols) services.marketData.quote(s).then<StockQuote?>((q) => q, onError: (Object _) => null),
    ]);
    // A portfólió mai mozgása a menü tetején (ha van pozíció).
    PortfolioSnapshot? snapshot;
    if (services.portfolio.positions.isNotEmpty) {
      try {
        snapshot = await services.portfolioSnapshot();
      } catch (_) {}
    }
    if (!mounted || generation != _trayGeneration) return;
    await services.desktop.setupTray(
      open: l10n.trayOpen,
      quickSearch: l10n.trayQuickSearch,
      quit: l10n.trayQuit,
      tooltip: l10n.appTitle,
      stocks: [
        for (final (i, s) in symbols.indexed)
          (symbol: s, label: trayStockLabel(s, quotes[i], fmt, earningsWhen: _trayEarningsWhen(services, l10n, s))),
      ],
      onStock: services.alertMonitor.requestOpen,
      portfolio: snapshot == null ? null : trayPortfolioLabel(l10n.portfolio, snapshot, fmt),
      onPortfolio: () {
        _goHome();
        _openPortfolio();
      },
    );
  }

  /// A 7 napon belüli gyorsjelentés szövege a tálcamenühöz („Holnap”, „5 nap múlva”).
  String? _trayEarningsWhen(AppServices services, AppLocalizations l10n, String symbol) {
    final now = DateTime.now();
    final today = UsMarketHours.eventToday(now);
    final e = services.events.events
        .where((e) => e.kind == UpcomingEventKind.earnings && e.symbol == symbol && !e.date.isBefore(today))
        .where((e) => calendarDaysBetween(today, e.date) < 7)
        .firstOrNull;
    return e == null ? null : eventWhen(l10n, e.date, now);
  }

  void _openSymbol(StockCandidate candidate) {
    final services = AppServices.of(context);
    services.preferences.addRecent(candidate.symbol);
    services.telemetry.track('stock_opened');
    _currentNav?.push(MaterialPageRoute<void>(builder: (_) => StockDetailPage(candidate: candidate)));
  }

  /// Asztali billentyűparancsok (Ctrl, macOS-en ⌘): K új keresés, 1/2/3 kezdőlap,
  /// portfólió, riasztások, vessző a beállítások.
  Map<ShortcutActivator, VoidCallback> _shortcuts() {
    void search() {
      _goHome();
      WidgetsBinding.instance.addPostFrameCallback((_) => HomePage.focusSearch.value++);
    }

    void openOnly(VoidCallback open) {
      _goHome();
      open();
    }

    final actions = <LogicalKeyboardKey, VoidCallback>{
      LogicalKeyboardKey.keyK: search,
      LogicalKeyboardKey.digit1: search,
      LogicalKeyboardKey.digit2: () => openOnly(_openPortfolio),
      LogicalKeyboardKey.digit3: () => openOnly(_openAlerts),
      LogicalKeyboardKey.comma: () => openOnly(_openSettings),
      LogicalKeyboardKey.slash: _showShortcuts,
    };
    return {
      for (final e in actions.entries) ...{
        SingleActivator(e.key, control: true): e.value,
        SingleActivator(e.key, meta: true): e.value,
      },
    };
  }

  void _showShortcuts() {
    final context = _navigatorKey.currentContext;
    if (context != null) showShortcutsDialog(context);
  }

  void _goHome() {
    if (_tab != 0) setState(() => _tab = 0);
    _navigatorKey.currentState?.popUntil((r) => r.isFirst);
  }

  /// Az oldalsáv oldalai a fő navigációra kerülnek: előbb az látszódjon.
  void _showMain() {
    if (_tab != 0) setState(() => _tab = 0);
  }

  void _openPortfolio() {
    _showMain();
    _navigatorKey.currentState?.push(MaterialPageRoute<void>(builder: (_) => PortfolioPage(onOpenSymbol: _openSymbol)));
  }

  void _openAlerts() {
    _showMain();
    _navigatorKey.currentState?.push(MaterialPageRoute<void>(builder: (_) => AlertsPage(onOpenSymbol: _openSymbol)));
  }

  void _openSettings() {
    _showMain();
    _navigatorKey.currentState?.push(MaterialPageRoute<void>(builder: (_) => const SettingsPage()));
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    return ListenableBuilder(
      listenable: services.desktop,
      builder: (context, _) {
        final quick = services.desktop.isQuickBar;
        final full = _fullSize;
        // A gyorssáv a teljes felület fölött jelenik meg: az alatta lévő (rejtett, a
        // legutóbbi ablakméreten tartott) navigáció és a megnyitott oldalak megmaradnak,
        // így a sávból és a tálcamenüből is oda lehet lépni.
        return Stack(
          fit: StackFit.expand,
          children: [
            Offstage(
              offstage: quick,
              child: TickerMode(
                enabled: !quick,
                child: OverflowBox(
                  alignment: Alignment.topLeft,
                  minWidth: quick ? full?.width : null,
                  maxWidth: quick ? full?.width : null,
                  minHeight: quick ? full?.height : null,
                  maxHeight: quick ? full?.height : null,
                  child: _fullWindow(),
                ),
              ),
            ),
            if (quick)
              QuickBar(
                onOpenSymbol: (c) async {
                  await services.desktop.showFullWindow();
                  _goHome();
                  _openSymbol(c);
                },
                onOpenWindow: () async {
                  await services.desktop.showFullWindow();
                },
              ),
          ],
        );
      },
    );
  }
}

extension on _AppShellState {
  /// A teljes ablak: oldalsáv vagy telefonos keret, benne a navigációval.
  Widget _fullWindow() => LayoutBuilder(
    builder: (context, constraints) {
      if (!AppServices.of(context).desktop.isQuickBar) _fullSize = constraints.biggest;
      final wide = constraints.maxWidth >= AppShell.sidebarBreakpoint;
      final content = Navigator(
        key: _navigatorKey,
        onGenerateRoute: (settings) => MaterialPageRoute<void>(
          settings: settings,
          // Az elrendezést a kezdőlap maga követi (forgatás, átméretezés után is).
          builder: (_) => HomePage(onOpenSymbol: _openSymbol),
        ),
      );
      if (!wide) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, _) {
            if (!didPop) _onBack();
          },
          child: _phoneShell(context, content),
        );
      }
      return PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, _) {
          if (!didPop) _onBack();
        },
        child: CallbackShortcuts(
          bindings: _shortcuts(),
          child: Scaffold(
            body: Row(
              children: [
                _Sidebar(
                  onHome: _goHome,
                  onNewSearch: _goHome,
                  onOpenSymbol: _openSymbol,
                  onOpenSettings: _openSettings,
                  onOpenPortfolio: _openPortfolio,
                  onOpenAlerts: _openAlerts,
                  onShowShortcuts: _showShortcuts,
                ),
                Expanded(child: _tabStack(content)),
              ],
            ),
          ),
        ),
      );
    },
  );

  /// A fülek tartalma (mindkét elrendezésben ugyanaz, a vermek kulcsaival): a
  /// telefonos és a széles keret közti váltás nem dobja el a fülön megnyitott oldalakat.
  Widget _tabStack(Widget home) {
    Widget tab(int i, Widget root) => !_visitedTabs.contains(i)
        ? const SizedBox.shrink()
        : Navigator(
            key: _tabKeys[i - 1],
            onGenerateRoute: (settings) => MaterialPageRoute<void>(settings: settings, builder: (_) => root),
          );
    return IndexedStack(
      index: _tab,
      children: [
        home,
        tab(1, PortfolioPage(onOpenSymbol: _openSymbol)),
        tab(2, AlertsPage(onOpenSymbol: _openSymbol)),
        tab(3, const SettingsPage()),
      ],
    );
  }

  /// Telefonos keret: a fülek tartalma és alul a menüsor (feliratokkal).
  Widget _phoneShell(BuildContext context, Widget home) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      body: _tabStack(home),
      bottomNavigationBar: NavigationBar(
        key: const ValueKey('phone-nav'),
        selectedIndex: _tab,
        onDestinationSelected: _selectTab,
        height: 66,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.search_rounded),
            label: MaterialLocalizations.of(context).searchFieldLabel,
          ),
          NavigationDestination(
            icon: const Icon(Icons.pie_chart_outline_rounded),
            selectedIcon: const Icon(Icons.pie_chart_rounded),
            label: l10n.portfolio,
          ),
          NavigationDestination(
            icon: const Icon(Icons.notifications_none_rounded),
            selectedIcon: const Icon(Icons.notifications_rounded),
            label: l10n.navAlerts,
          ),
          NavigationDestination(icon: const Icon(Icons.tune_rounded), label: l10n.settings),
        ],
      ),
    );
  }
}

class _Sidebar extends StatelessWidget {
  const _Sidebar({
    required this.onHome,
    required this.onNewSearch,
    required this.onOpenSymbol,
    required this.onOpenSettings,
    required this.onOpenPortfolio,
    required this.onOpenAlerts,
    required this.onShowShortcuts,
  });

  final VoidCallback onHome;
  final VoidCallback onNewSearch;
  final ValueChanged<StockCandidate> onOpenSymbol;
  final VoidCallback onOpenSettings;
  final VoidCallback onOpenPortfolio;
  final VoidCallback onOpenAlerts;
  final VoidCallback onShowShortcuts;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final services = AppServices.of(context);
    final theme = Theme.of(context);
    final macTrafficLights = !kIsWeb && Platform.isMacOS;

    return Container(
      width: AppShell.sidebarWidth,
      decoration: BoxDecoration(
        color: p.sidebar,
        // Jobbról balra író nyelven a tartalom felé eső oldalon (a sáv vége).
        border: BorderDirectional(end: BorderSide(color: p.border)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Fejléc: macOS-en helyet hagy a lámpáknak. A logó és a név a főoldalra
          // visz; a fejléc többi része az ablak mozgatására való (alul, külön
          // rétegen, hogy a dupla kattintásra váró húzás ne késleltesse a kattintást).
          Stack(
            children: [
              const Positioned.fill(child: _DragArea(child: SizedBox.expand())),
              Padding(
                padding: EdgeInsets.fromLTRB(macTrafficLights ? 80 : 12, 12, 12, 6),
                child: Row(
                  children: [
                    Semantics(
                      button: true,
                      child: InkWell(
                        key: const ValueKey('sidebar-home'),
                        onTap: onHome,
                        borderRadius: BorderRadius.circular(8),
                        hoverColor: p.surface,
                        mouseCursor: SystemMouseCursors.click,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/branding/logo_128.png', width: 22, height: 22),
                              const SizedBox(width: 8),
                              Text(l10n.appTitle, style: theme.textTheme.titleMedium),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
            child: _SidebarButton(
              icon: Icons.add_rounded,
              label: l10n.newSearch,
              onTap: onNewSearch,
              accent: true,
              shortcut: 'K',
            ),
          ),
          _SidebarButton(
            icon: Icons.pie_chart_outline_rounded,
            label: l10n.portfolio,
            onTap: onOpenPortfolio,
            shortcut: '2',
          ),
          _SidebarButton(
            icon: Icons.notifications_none_rounded,
            label: l10n.priceAlerts,
            onTap: onOpenAlerts,
            shortcut: '3',
          ),
          _SidebarButton(icon: Icons.tune_rounded, label: l10n.settings, onTap: onOpenSettings, shortcut: ','),
          const Padding(padding: EdgeInsets.fromLTRB(12, 8, 12, 0), child: UsageChip(compact: true)),
          const SizedBox(height: 8),
          Expanded(
            child: ListenableBuilder(
              listenable: services.preferences,
              builder: (context, _) {
                final favorites = services.preferences.favorites;
                final recent = services.preferences.recent;
                Widget header(String text) => Padding(
                  padding: const EdgeInsets.fromLTRB(24, 14, 16, 6),
                  child: Text(
                    text.toUpperCase(),
                    style: theme.textTheme.labelSmall?.copyWith(color: p.muted, letterSpacing: 0.8),
                  ),
                );
                Widget empty(String text) => Padding(
                  padding: const EdgeInsets.fromLTRB(24, 4, 16, 0),
                  child: Text(text, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                );
                StockCandidate cand(String s) => StockCandidate(symbol: s, companyName: s, confidence: 1);
                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    header(l10n.favorites),
                    if (favorites.isEmpty) empty(l10n.noFavorites),
                    for (final s in favorites)
                      _SidebarButton(icon: Icons.star_rounded, label: s, onTap: () => onOpenSymbol(cand(s))),
                    header(l10n.recentSearches),
                    if (recent.isEmpty) empty(l10n.noRecentSearches),
                    for (final s in recent)
                      _SidebarButton(icon: Icons.show_chart_rounded, label: s, onTap: () => onOpenSymbol(cand(s))),
                    if (recent.isNotEmpty)
                      _SidebarButton(
                        icon: Icons.delete_sweep_outlined,
                        label: l10n.clearRecent,
                        muted: true,
                        onTap: services.preferences.clearRecent,
                      ),
                  ],
                );
              },
            ),
          ),
          if (DesktopIntegration.isSupported)
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(hotkeyHintText(l10n, services), style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                  const SizedBox(height: 4),
                  InkWell(
                    key: const ValueKey('shortcuts-help'),
                    onTap: onShowShortcuts,
                    borderRadius: BorderRadius.circular(6),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_outlined, size: 16, color: p.muted),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              '${l10n.shortcutsTitle} (${shortcutLabel('/')})',
                              style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _SidebarButton extends StatelessWidget {
  const _SidebarButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.accent = false,
    this.muted = false,
    this.shortcut,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool accent;
  final bool muted;

  /// A billentyűparancs betűje (pl. „K”), halványan a sor végén: macOS-en ⌘K, máshol Ctrl+K.
  final String? shortcut;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final color = accent ? p.accent : (muted ? p.muted : p.text);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        hoverColor: p.surface,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
          child: Row(
            children: [
              Icon(icon, size: 18, color: color),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: color, fontWeight: accent ? FontWeight.w600 : FontWeight.w500),
                ),
              ),
              if (shortcut != null) Text(shortcutLabel(shortcut!), style: TextStyle(color: p.muted, fontSize: 11)),
            ],
          ),
        ),
      ),
    );
  }
}

/// Címsor nélküli ablaknál ezzel a területtel fogva lehet mozgatni az ablakot.
class _DragArea extends StatelessWidget {
  const _DragArea({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!DesktopIntegration.isSupported) return child;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onPanStart: (_) => windowManager.startDragging(),
      onDoubleTap: () async {
        if (await windowManager.isMaximized()) {
          await windowManager.unmaximize();
        } else {
          await windowManager.maximize();
        }
      },
      child: child,
    );
  }
}

/// Egy kedvenc sora a menüsor- / tálcamenüben: ticker, ár és napi változás nyíllal.
/// A tálcamenü portfólió-sora: „Portfólió   ▲ 1,27%   +66 546 HUF”.
String trayPortfolioLabel(String title, PortfolioSnapshot s, Fmt fmt) {
  final c = s.dayGainPercent;
  if (s.unknown || c == null) return title;
  final arrow = c > 0 ? '▲' : (c < 0 ? '▼' : '•');
  return '$title   $arrow ${fmt.percent(c.abs())}   ${fmt.money(s.dayGain, s.currency, withSign: true)}';
}

/// A tálcamenü egy sora: ticker, ár, napi változás; ha 7 napon belül
/// gyorsjelentés jön, a végén „📅 Holnap” ([earningsWhen] a nyelv szövege).
String trayStockLabel(String symbol, StockQuote? q, Fmt fmt, {String? earningsWhen}) {
  final suffix = earningsWhen == null ? '' : '   📅 $earningsWhen';
  if (q == null) return '$symbol$suffix';
  final c = q.changePercent;
  if (c == null) return '$symbol   ${fmt.number(q.price)}$suffix';
  final arrow = c > 0 ? '▲' : (c < 0 ? '▼' : '•');
  return '$symbol   ${fmt.number(q.price)}   $arrow ${fmt.percent(c.abs())}$suffix';
}
