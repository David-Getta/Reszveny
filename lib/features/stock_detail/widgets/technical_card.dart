import 'package:flutter/material.dart';

import '../../../core/models/price_history.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';
import '../../analysis/price_stats.dart';
import '../../analysis/technical_text.dart';
import 'kv_table.dart';
import 'section_card.dart';

/// „Technikai kép”: 50 és 200 napos mozgóátlag (és hol tart hozzájuk az ár),
/// 14 napos RSI az állapotával, 30 napos évesített volatilitás – a napi
/// záróárakból számolva; a címkék mellett ⓘ magyarázattal.
class TechnicalCard extends StatelessWidget {
  const TechnicalCard({
    super.key,
    required this.history,
    required this.currency,
    required this.fmt,
    required this.glossary,
    this.price,
  });

  final PriceHistory history;
  final String? currency;
  final Fmt fmt;
  final Map<String, String> glossary;

  /// A mai ár; nélküle az utolsó záróár.
  final double? price;

  /// Ennyi záróár alatt nincs mit mutatni.
  static const minPoints = 15;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final pts = history.points;
    if (pts.length < minPoints) return const SizedBox.shrink();
    final last = price ?? pts.last.close;
    final sma50 = PriceStats.sma(pts, 50), sma200 = PriceStats.sma(pts, 200);
    final rsi = PriceStats.rsi(pts, 14);
    final vol = PriceStats.volatility(pts, 21);
    String? average(double? sma) {
      final rel = describeVsAverage(l10n, fmt, last, sma);
      return rel == null ? null : '${fmt.price(sma!, currency)} · $rel';
    }

    final rows = <(String, String?)>[
      (l10n.labelSma50, average(sma50)),
      (l10n.labelSma200, average(sma200)),
      (l10n.labelRsi, rsi == null ? null : describeRsi(l10n, fmt, rsi)),
      (l10n.labelVolatility30, vol == null ? null : fmt.percent(vol, decimals: 1)),
    ];
    if (rows.every((r) => r.$2 == null)) return const SizedBox.shrink();
    return SectionCard(
      key: const ValueKey('technical-card'),
      title: l10n.sectionTechnical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KvTable(rows: rows, hideMissing: true, hints: glossary),
          if (sma50 != null && sma200 != null) ...[
            const SizedBox(height: 8),
            Text(
              sma50 >= sma200 ? l10n.techGoldenCross : l10n.techDeathCross,
              key: const ValueKey('technical-cross'),
              style: theme.textTheme.bodySmall?.copyWith(color: sma50 >= sma200 ? p.positive : p.negative),
            ),
          ],
          const SizedBox(height: 6),
          Text(l10n.techNote, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
        ],
      ),
    );
  }
}
