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
    this.alignEnd = true,
  });

  final double amount;
  final String? fromCurrency;
  final TextStyle? style;

  /// Mutassa-e az árfolyam-megjegyzést is (dátummal).
  final bool withRate;

  /// Jobbra zárt (széles fejléc) vagy balra zárt (telefonon, a név alatt).
  final bool alignEnd;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    // A megjelenítési pénznem váltása azonnal látszik (nem csak a következő újrarajzoláskor).
    return ListenableBuilder(listenable: services.preferences, builder: (context, _) => _build(context, services));
  }

  Widget _build(BuildContext context, AppServices services) {
    final locale = Localizations.localeOf(context);
    final to = services.displayCurrency(locale);
    final from = fromCurrency;
    if (to == null || from == null) return const SizedBox.shrink();
    // Ugyanaz a pénznem (az alegység – GBp, GBX – nem az: azt átváltjuk fontra).
    if (FxService.major(from) == FxService.major(to)) return const SizedBox.shrink();
    if (!FxService.isSupported(from) || !FxService.isSupported(to)) return const SizedBox.shrink();

    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final fmt = Fmt(locale.toString(), na: l10n.notAvailable);
    // A pár szerint kulcsolva: új pénznemnél nem a régi árfolyam marad az új címke alatt.
    return FutureBuilder<FxRate?>(
      key: ValueKey('$from>$to'),
      future: services.fx.rate(from, to),
      initialData: services.fx.cachedRate(from, to),
      builder: (context, snap) {
        final r = snap.data;
        if (r == null) return const SizedBox.shrink();
        final converted = r.convert(amount);
        final text = '≈ ${fmt.price(converted, to)}';
        if (!withRate) return Text(text, style: style ?? TextStyle(color: p.muted));
        return Column(
          crossAxisAlignment: alignEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(text, style: style ?? TextStyle(color: p.muted)),
            Text(
              // Nagyon kis árfolyamnál (1 IDR = 0,00005 GBP) a fordítottja olvasható.
              r.rate < 0.01
                  ? l10n.fxRateNote(to, fmt.number(1 / r.rate, decimals: 2), from, fmt.date(r.date))
                  : l10n.fxRateNote(from, fmt.number(r.rate, decimals: r.rate < 10 ? 4 : 2), to, fmt.date(r.date)),
              textAlign: alignEnd ? TextAlign.end : TextAlign.start,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted),
            ),
          ],
        );
      },
    );
  }
}
