import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_details.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/metric_hint.dart';
import '../stock_detail/widgets/section_card.dart';
import 'annual_return.dart';
import 'dividend_forecast.dart';
import 'portfolio_page.dart';
import 'portfolio_valuation.dart';

/// „A pozícióm” a részletes nézetben, ha a részvény a portfólióban van:
/// darabszám, átlagár, jelenlegi érték, nyereség/veszteség és a napi változás.
class PositionCard extends StatelessWidget {
  const PositionCard({super.key, required this.details});

  final StockDetails details;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return ListenableBuilder(
      listenable: services.portfolio,
      builder: (context, _) {
        final pos = services.portfolio.positionOf(details.symbol);
        if (pos == null) return const SizedBox.shrink();
        final q = details.quote;
        final row = PositionValue(position: pos, price: q?.price, dayChange: q?.change, rate: 1);
        final ccy = pos.currency;
        final now = DateTime.now();
        String qty(double v) => fmt.number(v, decimals: v == v.roundToDouble() ? 0 : 4);
        return SectionCard(
          title: l10n.portfolioYourPosition,
          trailing: TextButton(
            key: const ValueKey('position-transactions'),
            onPressed: () => showPurchasesSheet(context, pos, currentPrice: q?.price),
            child: Text(l10n.portfolioTransactions),
          ),
          child: Wrap(
            spacing: 28,
            runSpacing: 12,
            children: [
              MetricFigure(
                label: l10n.portfolioTotalValue,
                value: fmt.money(row.value, ccy),
                sub: '${qty(pos.quantity)} × ${fmt.money(row.price, ccy, showCurrency: false)}',
              ),
              MetricFigure(
                label: l10n.portfolioGainLoss,
                value: fmt.money(row.gain, ccy, withSign: true),
                sub: fmt.percent(row.gainPercent, withSign: true),
                color: gainColor(p, row.gain),
              ),
              MetricFigure(
                label: l10n.portfolioToday,
                value: fmt.money(row.dayGain, ccy, withSign: true),
                sub: fmt.percent(q?.changePercent, withSign: true),
                color: gainColor(p, row.dayGain),
              ),
              MetricFigure(
                label: l10n.portfolioInvested,
                value: fmt.money(pos.cost, ccy),
                sub: l10n.portfolioAvgCost(fmt.money(pos.averageCost, ccy, showCurrency: false)),
              ),
              if (row.value case final v?)
                if (positionsAnnualReturn([pos], (_) => 1, v, now) case final r?)
                  Tooltip(
                    message: l10n.portfolioAnnualReturnHint,
                    triggerMode: TooltipTriggerMode.tap,
                    showDuration: const Duration(seconds: 6),
                    child: MetricFigure(
                      key: const ValueKey('position-annual-return'),
                      label: l10n.portfolioAnnualReturn,
                      value: l10n.portfolioPerYear(fmt.percent(r * 100, withSign: true)),
                      color: gainColor(p, r),
                    ),
                  ),
              if (pos.hasSales)
                MetricFigure(
                  label: l10n.portfolioRealized,
                  value: fmt.money(pos.realizedGain, ccy, withSign: true),
                  color: gainColor(p, pos.realizedGain),
                ),
              // A kapott osztalékok a pozíció pénznemében (a más pénznemű tételek nélkül), a
              // bekerülési osztalékhozam és a rögzítettek ritmusából várható következő.
              if (services.portfolio.dividendsOf(pos.symbol).where((d) => d.currency == ccy).toList() case final ds
                  when ds.isNotEmpty) ...[
                MetricFigure(
                  key: const ValueKey('position-dividends'),
                  label: l10n.portfolioDividendsReceived,
                  value: fmt.money(ds.fold<double>(0, (sum, d) => sum + d.amount), ccy),
                ),
                if (yieldOnCost(ds, pos.cost, now: now) case final y?)
                  MetricFigure(
                    key: const ValueKey('position-yield-on-cost'),
                    label: l10n.labelYieldOnCost,
                    value: fmt.percent(y),
                    hint: l10n.glossYieldOnCost,
                  ),
                if (expectedDividends(ds, [pos.symbol], now: now).firstOrNull case final x?)
                  MetricFigure(
                    key: const ValueKey('position-dividend-next'),
                    label: l10n.portfolioDividendsExpected,
                    value:
                        '${l10n.portfolioDividendAround(fmt.date(x.date))} · ${approxMoney(fmt, x.amount, x.currency)}',
                  ),
              ],
            ],
          ),
        );
      },
    );
  }
}
