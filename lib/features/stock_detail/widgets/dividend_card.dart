import 'package:flutter/material.dart';

import '../../../app_services.dart';
import '../../../core/models/stock_metrics.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';
import '../../portfolio/dividend_forecast.dart' show approxMoney;
import '../../portfolio/portfolio_store.dart' show storedCurrency;
import 'kv_table.dart';
import 'section_card.dart';

/// Az „Osztalék” kártya a részvény oldalán: hozam, évi osztalék részvényenként,
/// kifizetési arány és az 5 éves növekedés; ha a részvény a portfólióban van,
/// a saját darabszámra jutó évi osztalék is. Ha a cég az utolsó 12 hónapban
/// nem fizetett, egy mondat mondja ki a hiányzó sorok helyett.
class DividendCard extends StatelessWidget {
  const DividendCard({
    super.key,
    required this.symbol,
    required this.currency,
    required this.metrics,
    this.error,
    this.hints = const {},
  });

  final String symbol;
  final String? currency;
  final StockMetrics? metrics;

  /// A mutatók betöltésének hibaüzenete (ilyenkor a kártya csak ezt mutatja).
  final String? error;
  final Map<String, String> hints;

  /// Nem fizetett osztalékot: a forrás kifejezetten nullát ad, pozitív érték
  /// nincs. A hiányzó adat (`null`) nem ezt jelenti – akkor „n/a” sorok látszanak.
  static bool paysNone(StockMetrics m) {
    final values = [m.dividendYield, m.dividendPerShare];
    return values.any((v) => v == 0) && !values.any((v) => v != null && v > 0);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final m = metrics;
    return SectionCard(
      key: const ValueKey('dividend-card'),
      title: l10n.sectionDividend,
      child: switch (error) {
        final e? => SectionError(e),
        _ when m != null && paysNone(m) => Text(
          l10n.dividendNone,
          key: const ValueKey('dividend-none'),
          style: TextStyle(color: AppPalette.of(context).muted),
        ),
        _ => ListenableBuilder(
          listenable: services.portfolio,
          builder: (context, _) {
            final dps = m?.dividendPerShare;
            // A saját darabszámra jutó évi osztalék, ha a pozíció a részvény pénznemében van.
            final pos = services.portfolio.positionOf(symbol);
            final yours = pos != null && dps != null && dps > 0 && pos.currency == storedCurrency(currency ?? '')
                ? (amount: pos.quantity * dps, currency: pos.currency)
                : null;
            return KvTable(
              missing: l10n.notAvailable,
              hints: hints,
              rows: [
                (l10n.labelDividendYield, m?.dividendYield == null ? null : fmt.percent(m!.dividendYield)),
                (l10n.labelDividendPerShare, dps == null ? null : fmt.price(dps, currency)),
                (l10n.labelPayoutRatio, m?.payoutRatio == null ? null : fmt.percent(m!.payoutRatio)),
                (
                  l10n.labelDividendGrowth5y,
                  m?.dividendGrowth5y == null ? null : fmt.percent(m!.dividendGrowth5y, withSign: true),
                ),
                if (yours != null) (l10n.dividendOnYourShares, approxMoney(fmt, yours.amount, yours.currency)),
              ],
            );
          },
        ),
      },
    );
  }
}
