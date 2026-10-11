import 'package:flutter/material.dart';

import '../../../app_services.dart';
import '../../../core/util/formatters.dart';
import '../../../features/fx/fx_service.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';

/// Ár a felhasználó pénznemében („≈ 85 420 HUF”), ha az eltér a részvényétől.
/// Amíg az árfolyam töltődik, vagy ha nem elérhető, nem jelenik meg semmi.
class ConvertedPrice extends StatelessWidget {
  const ConvertedPrice({
    super.key,
    required this.amount,
    required this.fromCurrency,
    this.style,
    this.withRate = false,
  });

  final double amount;
  final String? fromCurrency;
  final TextStyle? style;

  /// Mutassa-e az árfolyam-megjegyzést is (dátummal).
  final bool withRate;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final locale = Localizations.localeOf(context);
    final to = services.displayCurrency(locale);
    final from = fromCurrency;
    if (to == null || from == null || from.toUpperCase() == to.toUpperCase()) return const SizedBox.shrink();
    if (!FxService.isSupported(from) || !FxService.isSupported(to)) return const SizedBox.shrink();

    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final fmt = Fmt(locale.toString(), na: l10n.notAvailable);
    return FutureBuilder<FxRate?>(
      future: services.fx.rate(from, to),
      initialData: services.fx.cachedRate(from, to),
      builder: (context, snap) {
        final r = snap.data;
        if (r == null) return const SizedBox.shrink();
        final converted = r.convert(amount);
        final text = '≈ ${fmt.price(converted, to)}';
        if (!withRate) return Text(text, style: style ?? TextStyle(color: p.muted));
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(text, style: style ?? TextStyle(color: p.muted)),
            Text(
              l10n.fxRateNote(from, fmt.number(r.rate, decimals: r.rate < 10 ? 4 : 2), to, fmt.date(r.date)),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted),
            ),
          ],
        );
      },
    );
  }
}
