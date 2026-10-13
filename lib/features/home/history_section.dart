import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_report.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';

StockCandidate _candidate(String symbol) => StockCandidate(symbol: symbol, companyName: symbol, confidence: 1);

/// Legutóbb megnyitott részvények gyorsgombként (telefonon nincs oldalsáv,
/// ezért a kezdőképernyőn látszanak).
class RecentChips extends StatelessWidget {
  const RecentChips({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return ListenableBuilder(
      listenable: services.preferences,
      builder: (context, _) {
        final recent = services.preferences.recent;
        if (recent.isEmpty) return const SizedBox.shrink();
        return Column(
          key: const ValueKey('home-recent'),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 4),
                    child: Text(l10n.recentSearches, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                  ),
                ),
                TextButton(
                  onPressed: services.preferences.clearRecent,
                  style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                  child: Text(l10n.clearRecent),
                ),
              ],
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final s in recent)
                  ActionChip(
                    avatar: Icon(Icons.show_chart_rounded, size: 16, color: p.accent),
                    label: Text(s, style: const TextStyle(fontWeight: FontWeight.w600)),
                    onPressed: () => onOpenSymbol(_candidate(s)),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}

/// „Elemzéseim”: a készüléken elmentett AI-elemzések (a legújabb elöl). A sorra
/// koppintva megnyílik a részvény az elmentett elemzéssel – 12 óra után is.
class MyAnalysesList extends StatefulWidget {
  const MyAnalysesList({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  /// Ennyi látszik elsőre; a „Továbbiak” gomb mutatja a többit.
  static const collapsedCount = 5;

  @override
  State<MyAnalysesList> createState() => _MyAnalysesListState();
}

class _MyAnalysesListState extends State<MyAnalysesList> {
  bool _all = false;
  AppServices? _services;
  String? _language;
  List<StockReport> _reports = const [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final services = AppServices.of(context);
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    if (!identical(services, _services)) {
      _services?.reports.removeListener(_reload);
      _services = services;
      services.reports.addListener(_reload);
    } else if (language == _language) {
      return;
    }
    _language = language;
    _reload();
  }

  @override
  void dispose() {
    _services?.reports.removeListener(_reload);
    super.dispose();
  }

  /// Új elemzés vagy nyelvváltás után újraolvassuk a listát (csak az aktuális
  /// nyelven készült elemzések nyithatók meg, ezért csak azok látszanak).
  Future<void> _reload() async {
    final list = await _services!.reports.savedReports(language: _language);
    if (mounted) setState(() => _reports = list);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final reports = _reports;
    if (reports.isEmpty) return const SizedBox.shrink();
    final shown = _all ? reports : reports.take(MyAnalysesList.collapsedCount).toList();
    return Column(
      key: const ValueKey('home-analyses'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 4, bottom: 8),
          child: Text(l10n.myAnalyses, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
        ),
        Card(
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              for (final (i, r) in shown.indexed) ...[
                if (i > 0) const Divider(height: 1),
                ListTile(
                  key: ValueKey('analysis-${r.symbol}'),
                  leading: CircleAvatar(
                    backgroundColor: p.accent.withValues(alpha: 0.15),
                    child: Icon(Icons.auto_awesome_rounded, size: 18, color: p.accent),
                  ),
                  title: Row(
                    children: [
                      Text(r.symbol, style: const TextStyle(fontWeight: FontWeight.w700)),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          fmt.dateTime(r.generatedAt),
                          textAlign: TextAlign.end,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                        ),
                      ),
                    ],
                  ),
                  subtitle: r.headline.isEmpty ? null : Text(r.headline, maxLines: 2, overflow: TextOverflow.ellipsis),
                  onTap: () => widget.onOpenSymbol(_candidate(r.symbol)),
                ),
              ],
              if (!_all && reports.length > MyAnalysesList.collapsedCount) ...[
                const Divider(height: 1),
                TextButton(
                  onPressed: () => setState(() => _all = true),
                  child: Text(MaterialLocalizations.of(context).moreButtonTooltip),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
