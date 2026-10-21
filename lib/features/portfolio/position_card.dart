import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_details.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
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
              _Figure(
                label: l10n.portfolioTotalValue,
                value: fmt.money(row.value, ccy),
                sub: '${qty(pos.quantity)} × ${fmt.money(row.price, ccy, showCurrency: false)}',
              ),
              _Figure(
                label: l10n.portfolioGainLoss,
                value: fmt.money(row.gain, ccy, withSign: true),
                sub: fmt.percent(row.gainPercent, withSign: true),
                color: gainColor(p, row.gain),
              ),
              _Figure(
                label: l10n.portfolioToday,
                value: fmt.money(row.dayGain, ccy, withSign: true),
                sub: fmt.percent(q?.changePercent, withSign: true),
                color: gainColor(p, row.dayGain),
              ),
              _Figure(
                label: l10n.portfolioInvested,
                value: fmt.money(pos.cost, ccy),
                sub: l10n.portfolioAvgCost(fmt.money(pos.averageCost, ccy, showCurrency: false)),
              ),
              if (row.value case final v?)
                if (positionsAnnualReturn([pos], (_) => 1, v, DateTime.now()) case final r?)
                  Tooltip(
                    message: l10n.portfolioAnnualReturnHint,
                    triggerMode: TooltipTriggerMode.tap,
                    showDuration: const Duration(seconds: 6),
                    child: _Figure(
                      key: const ValueKey('position-annual-return'),
                      label: l10n.portfolioAnnualReturn,
                      value: l10n.portfolioPerYear(fmt.percent(r * 100, withSign: true)),
                      color: gainColor(p, r),
                    ),
                  ),
              if (pos.hasSales)
                _Figure(
                  label: l10n.portfolioRealized,
                  value: fmt.money(pos.realizedGain, ccy, withSign: true),
                  color: gainColor(p, pos.realizedGain),
                ),
              // A kapott osztalékok a pozíció pénznemében (a más pénznemű tételek nélkül).
              if (services.portfolio.dividendsOf(pos.symbol).where((d) => d.currency == ccy).toList() case final ds
                  when ds.isNotEmpty) ...[
                _Figure(
                  key: const ValueKey('position-dividends'),
                  label: l10n.portfolioDividendsReceived,
                  value: fmt.money(ds.fold<double>(0, (sum, d) => sum + d.amount), ccy),
                ),
                // Bekerülési osztalékhozam: az utolsó 12 hónap osztaléka a még birtokolt
                // részvények vételi értékéhez mérve.
                if (yieldOnCost(ds, pos.cost, now: DateTime.now()) case final y?)
                  _Figure(
                    key: const ValueKey('position-yield-on-cost'),
                    label: l10n.labelYieldOnCost,
                    value: fmt.percent(y),
                  ),
              ],
              // A várható következő osztalék a rögzítettek ritmusából, a pozíció pénznemében.
              if (expectedDividends(services.portfolio.dividendsOf(pos.symbol), [
                    pos.symbol,
                  ], now: DateTime.now()).where((x) => x.currency == ccy).firstOrNull
                  case final x?)
                _Figure(
                  key: const ValueKey('position-dividend-next'),
                  label: l10n.portfolioDividendsExpected,
                  value: '${l10n.portfolioDividendAround(fmt.date(x.date))} · ~${fmt.money(x.amount, x.currency)}',
                ),
            ],
          ),
        );
      },
    );
  }
}

class _Figure extends StatelessWidget {
  const _Figure({super.key, required this.label, required this.value, this.sub, this.color});

  final String label;
  final String value;
  final String? sub;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
        const SizedBox(height: 2),
        Text(
          value,
          style: theme.textTheme.titleSmall?.copyWith(color: color, fontWeight: FontWeight.w700),
        ),
        if (sub != null) Text(sub!, style: theme.textTheme.bodySmall?.copyWith(color: color ?? p.muted)),
      ],
    );
  }
}
