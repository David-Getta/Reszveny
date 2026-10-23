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

/// Mennyi ideje tart egy pozíciót: teljes évek, a maradék teljes hónapok, és (egy
/// hónapon belül) a napok – naptári napok szerint.
({int years, int months, int days}) heldFor(DateTime since, DateTime now) {
  final from = DateTime(since.year, since.month, since.day), to = DateTime(now.year, now.month, now.day);
  var months = (to.year - from.year) * 12 + to.month - from.month;
  if (to.day < from.day) months--;
  if (months < 0) months = 0;
  return (years: months ~/ 12, months: months % 12, days: months == 0 ? to.difference(from).inDays : 0);
}

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
        String qty(double v) => fmt.quantity(v);
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
                  MetricFigure(
                    key: const ValueKey('position-annual-return'),
                    label: l10n.portfolioAnnualReturn,
                    value: l10n.portfolioPerYear(fmt.percent(r * 100, withSign: true)),
                    color: gainColor(p, r),
                    hint: l10n.portfolioAnnualReturnHint,
                  ),
              // Mióta tartja: a legrégebbi még birtokolt vételtől (FIFO szerint).
              // (A ma vett pozíciónál még nincs mit mutatni.)
              if (pos.firstDate case final since? when heldFor(since, now) != (years: 0, months: 0, days: 0))
                MetricFigure(
                  key: const ValueKey('position-held'),
                  label: l10n.positionHeld,
                  value: switch (heldFor(since, now)) {
                    (years: final y, months: final m, days: _) when y > 0 => [
                      l10n.longTermYears(y),
                      if (m > 0) l10n.durationMonths(m),
                    ].join(' '),
                    (years: _, months: final m, days: _) when m > 0 => l10n.durationMonths(m),
                    (years: _, months: _, days: final d) => l10n.durationDays(d),
                  },
                  sub: l10n.positionHeldSince(fmt.date(since)),
                ),
              if (pos.hasSales)
                MetricFigure(
                  label: l10n.portfolioRealized,
                  value: fmt.money(pos.realizedGain, ccy, withSign: true),
                  color: gainColor(p, pos.realizedGain),
                ),
              // A kapott osztalékok a pozíció pénznemében (a más pénznemű tételek nélkül) és
              // a bekerülési osztalékhozam; a várható következő a részvény minden osztalékából,
              // a pozíció pénznemét előnyben.
              if (services.portfolio.dividendsOf(pos.symbol) case final all when all.isNotEmpty) ...[
                if (all.where((d) => d.currency == ccy).toList() case final ds when ds.isNotEmpty) ...[
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
                ],
                if (expectedDividends(all, [pos.symbol], now: now) case final next when next.isNotEmpty)
                  if (next.firstWhere((x) => x.currency == ccy, orElse: () => next.first) case final x)
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
