import 'package:flutter/material.dart';

import '../../../core/models/price_history.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';
import '../../analysis/price_stats.dart';

/// Hozamok a grafikon alatt: 1 hét, 1 hónap, 3 hónap, év eleje óta, 1 év, 5 év.
/// A hiányzó időszak (rövid történet) kimarad.
class ReturnsStrip extends StatelessWidget {
  const ReturnsStrip({super.key, required this.history, required this.fmt});

  final PriceHistory history;
  final Fmt fmt;

  /// Hozam az év eleje óta: az előző év utolsó záróárától. Ha nincs tavalyi
  /// adat, csak akkor az év első napjától, ha az január első hetébe esik
  /// (különben az év közepéről indulna, félrevezetően).
  static double? ytd(List<PricePoint> pts) {
    if (pts.length < 2) return null;
    final last = pts.last;
    PricePoint? base;
    for (final p in pts) {
      if (p.time.year >= last.time.year) {
        if (base == null && p.time.month == 1 && p.time.day <= 7) base = p;
        break;
      }
      base = p;
    }
    if (base == null || base.close == 0 || identical(base, last)) return null;
    return (last.close / base.close - 1) * 100;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final pts = history.points;
    final items = [
      (l10n.rangeOneWeek, PriceStats.returnOver(pts, 7)),
      (l10n.rangeOneMonth, PriceStats.returnOver(pts, 30)),
      (l10n.rangeThreeMonths, PriceStats.returnOver(pts, 91)),
      (l10n.rangeYtd, ytd(pts)),
      (l10n.rangeOneYear, PriceStats.returnOver(pts, 365)),
      (l10n.rangeFiveYears, PriceStats.returnOver(pts, 5 * 365 - 5)),
    ].where((e) => e.$2 != null).toList();
    if (items.isEmpty) return const SizedBox.shrink();
    return Padding(
      key: const ValueKey('returns-strip'),
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          for (final (label, v) in items)
            Expanded(
              child: Column(
                children: [
                  Text(label, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                  const SizedBox(height: 2),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      fmt.percent(v, decimals: v!.abs() >= 100 ? 0 : 1, withSign: true),
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: v >= 0 ? p.positive : p.negative,
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
