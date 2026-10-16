import 'package:flutter/material.dart';

import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';

/// Az 52 hetes ársáv: hol tart a mai ár az éves mélypont és csúcs között,
/// alatta hány százalékkal van a csúcs alatt.
class Week52Range extends StatelessWidget {
  const Week52Range({
    super.key,
    required this.low,
    required this.high,
    required this.price,
    required this.fmt,
    this.currency,
  });

  final double low;
  final double high;
  final double price;
  final Fmt fmt;
  final String? currency;

  /// 0 (mélypont) … 1 (csúcs); a sávon kívüli ár a széleken.
  double get position => high <= low ? 0.5 : ((price - low) / (high - low)).clamp(0.0, 1.0);

  /// Hány százalékkal van az ár a csúcs alatt (0, ha a csúcson vagy fölötte).
  double get belowHigh => high <= 0 || price >= high ? 0 : (high - price) / high * 100;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final muted = theme.textTheme.bodySmall?.copyWith(color: p.muted);
    return Column(
      key: const ValueKey('week52-range'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.week52Range, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
        const SizedBox(height: 10),
        LayoutBuilder(
          builder: (context, c) {
            const dot = 14.0;
            final x = position * (c.maxWidth - dot);
            return SizedBox(
              height: dot,
              child: Stack(
                children: [
                  Positioned.fill(
                    top: dot / 2 - 3,
                    bottom: dot / 2 - 3,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        gradient: LinearGradient(
                          colors: [p.negative.withValues(alpha: 0.55), p.positive.withValues(alpha: 0.55)],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: x,
                    child: Container(
                      key: const ValueKey('week52-marker'),
                      width: dot,
                      height: dot,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.colorScheme.surface,
                        border: Border.all(color: theme.colorScheme.onSurface, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Text(fmt.price(low, currency), style: muted),
            Expanded(
              child: Text(
                belowHigh < 0.05 ? l10n.week52AtHigh : l10n.week52BelowHigh(fmt.percent(belowHigh, decimals: 1)),
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Text(fmt.price(high, currency), style: muted),
          ],
        ),
      ],
    );
  }
}
