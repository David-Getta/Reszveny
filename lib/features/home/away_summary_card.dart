import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../portfolio/portfolio_page.dart' show gainColor;
import 'away_summary.dart';

/// „Amíg távol voltál” kártya a kezdőképernyőn: a legutóbbi látogatás óta a
/// legnagyobb mozgások (koppintásra a részvény nyílik), a teljesült riasztások
/// és a gyorsjelentést adott cégek; a ✕ elveti.
class AwaySummaryCard extends StatelessWidget {
  const AwaySummaryCard({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    return ListenableBuilder(
      listenable: services.away,
      builder: (context, _) {
        final r = services.away.report;
        if (r == null) return const SizedBox.shrink();
        final l10n = AppLocalizations.of(context);
        final p = AppPalette.of(context);
        final theme = Theme.of(context);
        final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
        return Card(
          key: const ValueKey('home-away'),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(l10n.awayTitle, style: theme.textTheme.titleSmall),
                          Text(
                            l10n.awaySince(fmt.dateTime(r.since)),
                            style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      key: const ValueKey('away-dismiss'),
                      tooltip: l10n.close,
                      icon: Icon(Icons.close_rounded, size: 20, color: p.muted),
                      onPressed: services.away.dismiss,
                    ),
                  ],
                ),
                if (r.moves.isNotEmpty || r.portfolioPercent != null) ...[
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 8,
                    runSpacing: 6,
                    children: [
                      // Az egész portfólió változása elöl.
                      if (r.portfolioPercent case final pp?)
                        Chip(
                          key: const ValueKey('away-portfolio'),
                          visualDensity: VisualDensity.compact,
                          avatar: Icon(Icons.pie_chart_outline_rounded, size: 16, color: p.muted),
                          label: Text.rich(
                            TextSpan(
                              text: '${l10n.portfolio} ',
                              style: const TextStyle(fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: fmt.percent(pp, withSign: true, decimals: 1),
                                  style: TextStyle(color: gainColor(p, pp)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      for (final m in r.moves)
                        ActionChip(
                          key: ValueKey('away-move-${m.symbol}'),
                          visualDensity: VisualDensity.compact,
                          label: Text.rich(
                            TextSpan(
                              text: '${m.symbol} ',
                              style: const TextStyle(fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: fmt.percent(AwayReport.percent(m), withSign: true, decimals: 1),
                                  style: TextStyle(color: gainColor(p, m.to - m.from)),
                                ),
                              ],
                            ),
                          ),
                          onPressed: () =>
                              onOpenSymbol(StockCandidate(symbol: m.symbol, companyName: m.symbol, confidence: 1)),
                        ),
                    ],
                  ),
                ],
                if (r.alertsTriggered > 0) ...[
                  const SizedBox(height: 8),
                  Row(
                    key: const ValueKey('away-alerts'),
                    children: [
                      Icon(Icons.notifications_active_outlined, size: 16, color: p.accent),
                      const SizedBox(width: 6),
                      Text(l10n.awayAlerts(r.alertsTriggered), style: theme.textTheme.bodyMedium),
                    ],
                  ),
                ],
                if (r.reported.isNotEmpty) ...[
                  const SizedBox(height: 6),
                  Row(
                    key: const ValueKey('away-reported'),
                    children: [
                      Icon(Icons.assessment_outlined, size: 16, color: p.accent),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(l10n.awayReported(r.reported.join(', ')), style: theme.textTheme.bodyMedium),
                      ),
                    ],
                  ),
                ],
                if (r.isQuiet) ...[
                  const SizedBox(height: 6),
                  Text(
                    l10n.awayQuiet,
                    key: const ValueKey('away-quiet'),
                    style: TextStyle(color: p.muted),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
