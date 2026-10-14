import 'dart:io';

import '../../widgets/hotkey_hint.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:window_manager/window_manager.dart';

import '../../app_services.dart';
import '../../core/desktop/desktop_integration.dart';
import '../../core/desktop/quick_panel.dart';
import '../../core/models/stock_candidate.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../billing/usage_chip.dart';
import '../home/candidate_sheet.dart';
import '../home/home_page.dart';
import '../home/quick_bar.dart';
import '../home/quick_search_controller.dart';
import '../alerts/alerts_view.dart';
import '../portfolio/portfolio_page.dart';
import '../settings/settings_page.dart';
import '../stock_detail/stock_detail_page.dart';

/// Az app kerete: széles képernyőn oldalsáv (új keresés, előzmények,
/// beállítások) és tartalom – mint a Claude asztali alkalmazása; keskeny
/// képernyőn hagyományos, teljes szélességű navigáció. Asztali gépen a
/// gyorsbillentyűvel előhívott kompakt sávot is ez jeleníti meg.
class AppShell extends StatefulWidget {
  const AppShell({super.key});

  static const double sidebarBreakpoint = 860;
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
  bool _wide = true;

  NavigatorState? get _currentNav => (_wide || _tab == 0 ? _navigatorKey : _tabKeys[_tab - 1]).currentState;

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
    } else if (!_wide && _tab != 0) {
      setState(() => _tab = 0);
    } else {
      SystemNavigator.pop();
    }
  }

  bool _trayReady = false;
  bool _quickPanelReady = false;
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
    _services?.alertMonitor.removeListener(_onAlertHits);
    _services?.alertMonitor.openRequest.removeListener(_onOpenRequest);
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

  /// Értesítésre (vagy a „Megnyitás”-ra) koppintva a részvény nyílik meg.
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
    }
    if (NativeQuickPanel.isSupported) {
      final panel = services.desktop.quickPanel;
      if (!_quickPanelReady) {
        _quickPanelReady = true;
        panel.attach(
          QuickSearchController(
            panel: panel,
            search: services.marketData.search,
            favorites: () => services.preferences.favorites,
            recent: () => services.preferences.recent,
            recentTitle: () => AppLocalizations.of(context).recentSearches,
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
    if (DesktopIntegration.isSupported && !_trayReady) {
      _trayReady = true;
      services.desktop.setupTray(
        open: l10n.trayOpen,
        quickSearch: l10n.trayQuickSearch,
        quit: l10n.trayQuit,
        tooltip: l10n.appTitle,
      );
    }
  }

  void _openSymbol(StockCandidate candidate) {
    final services = AppServices.of(context);
    services.preferences.addRecent(candidate.symbol);
    services.telemetry.track('stock_opened');
    _currentNav?.push(MaterialPageRoute<void>(builder: (_) => StockDetailPage(candidate: candidate)));
  }

  void _goHome() {
    if (!_wide && _tab != 0) setState(() => _tab = 0);
    _navigatorKey.currentState?.popUntil((r) => r.isFirst);
  }

  void _openPortfolio() {
    _navigatorKey.currentState?.push(MaterialPageRoute<void>(builder: (_) => PortfolioPage(onOpenSymbol: _openSymbol)));
  }

  void _openAlerts() {
    _navigatorKey.currentState?.push(MaterialPageRoute<void>(builder: (_) => AlertsPage(onOpenSymbol: _openSymbol)));
  }

  void _openSettings() {
    _navigatorKey.currentState?.push(MaterialPageRoute<void>(builder: (_) => const SettingsPage()));
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    return ListenableBuilder(
      listenable: services.desktop,
      builder: (context, _) {
        if (services.desktop.isQuickBar) {
          return QuickBar(
            onOpenSymbol: (c) async {
              await services.desktop.showFullWindow();
              _goHome();
              _openSymbol(c);
            },
            onOpenWindow: () async {
              await services.desktop.showFullWindow();
            },
          );
        }
        return LayoutBuilder(
          builder: (context, constraints) {
            final wide = constraints.maxWidth >= AppShell.sidebarBreakpoint;
            _wide = wide;
            final content = Navigator(
              key: _navigatorKey,
              onGenerateRoute: (settings) => MaterialPageRoute<void>(
                settings: settings,
                builder: (_) => HomePage(onOpenSymbol: _openSymbol, showAppBarActions: !wide),
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
                    ),
                    Expanded(child: content),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

extension on _AppShellState {
  /// Telefonos keret: a fülek tartalma és alul a menüsor (feliratokkal).
  Widget _phoneShell(BuildContext context, Widget home) {
    final l10n = AppLocalizations.of(context);
    Widget tab(int i, Widget root) => !_visitedTabs.contains(i)
        ? const SizedBox.shrink()
        : Navigator(
            key: _tabKeys[i - 1],
            onGenerateRoute: (settings) => MaterialPageRoute<void>(settings: settings, builder: (_) => root),
          );
    return Scaffold(
      body: IndexedStack(
        index: _tab,
        children: [
          home,
          tab(1, PortfolioPage(onOpenSymbol: _openSymbol)),
          tab(2, AlertsPage(onOpenSymbol: _openSymbol)),
          tab(3, const SettingsPage()),
        ],
      ),
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
  });

  final VoidCallback onHome;
  final VoidCallback onNewSearch;
  final ValueChanged<StockCandidate> onOpenSymbol;
  final VoidCallback onOpenSettings;
  final VoidCallback onOpenPortfolio;
  final VoidCallback onOpenAlerts;

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
        border: Border(right: BorderSide(color: p.border)),
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
            child: _SidebarButton(icon: Icons.add_rounded, label: l10n.newSearch, onTap: onNewSearch, accent: true),
          ),
          _SidebarButton(icon: Icons.pie_chart_outline_rounded, label: l10n.portfolio, onTap: onOpenPortfolio),
          _SidebarButton(icon: Icons.notifications_none_rounded, label: l10n.priceAlerts, onTap: onOpenAlerts),
          _SidebarButton(icon: Icons.tune_rounded, label: l10n.settings, onTap: onOpenSettings),
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
              child: Text(hotkeyHintText(l10n, services), style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
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
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool accent;
  final bool muted;

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
