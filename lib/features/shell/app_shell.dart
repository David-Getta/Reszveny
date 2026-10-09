import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import '../../app_services.dart';
import '../../core/desktop/desktop_integration.dart';
import '../../core/models/stock_candidate.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../home/home_page.dart';
import '../home/quick_bar.dart';
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
  bool _trayReady = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
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
    _navigatorKey.currentState?.push(MaterialPageRoute<void>(builder: (_) => StockDetailPage(candidate: candidate)));
  }

  void _goHome() => _navigatorKey.currentState?.popUntil((r) => r.isFirst);

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
            final content = Navigator(
              key: _navigatorKey,
              onGenerateRoute: (settings) => MaterialPageRoute<void>(
                settings: settings,
                builder: (_) => HomePage(onOpenSymbol: _openSymbol, showAppBarActions: !wide),
              ),
            );
            if (!wide) return content;
            return Scaffold(
              body: Row(
                children: [
                  _Sidebar(onNewSearch: _goHome, onOpenSymbol: _openSymbol, onOpenSettings: _openSettings),
                  Expanded(child: content),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class _Sidebar extends StatelessWidget {
  const _Sidebar({required this.onNewSearch, required this.onOpenSymbol, required this.onOpenSettings});

  final VoidCallback onNewSearch;
  final ValueChanged<StockCandidate> onOpenSymbol;
  final VoidCallback onOpenSettings;

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
          // Húzható fejléc: macOS-en helyet hagy a lámpáknak.
          _DragArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(macTrafficLights ? 84 : 16, 14, 12, 8),
              child: Row(
                children: [
                  Icon(Icons.auto_graph_rounded, color: p.accent, size: 20),
                  const SizedBox(width: 8),
                  Text(l10n.appTitle, style: theme.textTheme.titleMedium),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
            child: _SidebarButton(icon: Icons.add_rounded, label: l10n.newSearch, onTap: onNewSearch, accent: true),
          ),
          _SidebarButton(icon: Icons.tune_rounded, label: l10n.settings, onTap: onOpenSettings),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 16, 6),
            child: Text(
              l10n.recentSearches.toUpperCase(),
              style: theme.textTheme.labelSmall?.copyWith(color: p.muted, letterSpacing: 0.8),
            ),
          ),
          Expanded(
            child: ListenableBuilder(
              listenable: services.preferences,
              builder: (context, _) {
                final recent = services.preferences.recent;
                if (recent.isEmpty) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(24, 4, 16, 0),
                    child: Text(l10n.noRecentSearches, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                  );
                }
                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    for (final s in recent)
                      _SidebarButton(
                        icon: Icons.show_chart_rounded,
                        label: s,
                        onTap: () => onOpenSymbol(StockCandidate(symbol: s, companyName: s, confidence: 1)),
                      ),
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
              child: Text(
                l10n.hotkeyHint(services.desktop.shortcutLabel),
                style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
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
