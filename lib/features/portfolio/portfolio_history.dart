import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../analysis/price_stats.dart';
import '../../core/models/price_history.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../stock_detail/widgets/price_chart.dart';
import 'portfolio_store.dart';
import 'portfolio_valuation.dart';

/// A portfólió értékének története napi záróárakból: minden napon a már
/// megvett darabok (a vétel dátumától) × az aznapi (vagy utolsó ismert) záróár,
/// átváltva az összesítés pénznemébe (a mai árfolyammal); az eladások a dátumuktól
/// csökkentik a darabszámot. Dátum nélküli tranzakció az elejétől számít. `null`,
/// ha nincs legalább két pont.
PriceHistory? portfolioValueHistory(
  List<PortfolioLot> lots,
  Map<String, PriceHistory> histories,
  double? Function(String currency) rate,
) {
  DateTime day(DateTime t) => DateTime(t.year, t.month, t.day);
  final usable = [
    for (final l in lots)
      if (histories[l.symbol]?.points.isNotEmpty == true && rate(l.currency) != null) l,
  ];
  if (usable.isEmpty) return null;
  final days = <DateTime>{
    for (final s in {for (final l in usable) l.symbol})
      for (final p in histories[s]!.points) day(p.time),
  }.toList()..sort();
  final buys = usable.where((l) => !l.sell);
  final dated = [for (final l in buys) l.date].whereType<DateTime>();
  final start = buys.any((l) => l.date == null) || dated.isEmpty
      ? days.first
      : dated.map(day).reduce((a, b) => a.isBefore(b) ? a : b);

  // Tickerenként az adott napig utolsó ismert záróár (előre haladó mutatóval).
  final idx = <String, int>{};
  final last = <String, double>{};
  final points = <PricePoint>[];
  for (final d in days) {
    for (final s in histories.keys) {
      final pts = histories[s]!.points;
      var i = idx[s] ?? 0;
      while (i < pts.length && !day(pts[i].time).isAfter(d)) {
        last[s] = pts[i].close;
        i++;
      }
      idx[s] = i;
    }
    if (d.isBefore(start)) continue;
    // Tickerenként az aznap birtokolt darabszám (vételek − eladások, legalább 0).
    final held = <String, double>{};
    final ccy = <String, String>{};
    for (final l in usable) {
      if (l.date != null && day(l.date!).isAfter(d)) continue;
      held[l.symbol] = (held[l.symbol] ?? 0) + l.signedQuantity;
      ccy[l.symbol] = l.currency;
    }
    var value = 0.0;
    var any = false;
    for (final e in held.entries) {
      final close = last[e.key];
      if (close == null) continue;
      value += (e.value < 0 ? 0 : e.value) * close * rate(ccy[e.key]!)!;
      any = true;
    }
    if (any) points.add(PricePoint(time: d, close: value));
  }
  return points.length < 2 ? null : PriceHistory(symbol: 'PORTFOLIO', points: points);
}

/// A portfólió és az S&P 500 összevetése: mintha minden vétel összegét a vétel
/// napján egy S&P 500 indexkövető alapba (SPY) tetted volna, és minden eladáskor
/// ugyanannyi pénzt vettél volna ki belőle. Mindkét oldal vagyona a megmaradt
/// befektetés értéke plusz az eladásokból kapott pénz; a hozam a befektetett
/// összegre vetítve, ugyanazzal a mai árfolyammal átváltva, így a deviza nem torzít.
class BenchmarkComparison {
  const BenchmarkComparison({required this.invested, required this.portfolioValue, required this.benchmarkValue});

  final double invested;
  final double portfolioValue;
  final double benchmarkValue;

  double get portfolioGain => (portfolioValue / invested - 1) * 100;
  double get benchmarkGain => (benchmarkValue / invested - 1) * 100;

  /// Százalékpontban: pozitív, ha a portfólió jobban ment.
  double get difference => portfolioGain - benchmarkGain;
}

/// `null`, ha nincs összevethető vétel vagy index-adat.
BenchmarkComparison? benchmarkComparison(
  List<PortfolioLot> lots,
  Map<String, PriceHistory> histories,
  PriceHistory index,
  double? Function(String currency) rate,
) {
  DateTime day(DateTime t) => DateTime(t.year, t.month, t.day);
  final idx = index.points;
  if (idx.length < 2) return null;
  final first = idx.first.time;
  // Az adott napig utolsó ismert indexár (a sorozat előtti napra az első).
  double indexAt(DateTime d) {
    var v = idx.first.close;
    for (final p in idx) {
      if (day(p.time).isAfter(d)) break;
      v = p.close;
    }
    return v;
  }

  var invested = 0.0, cash = 0.0, units = 0.0;
  final held = <String, double>{};
  final lastValue = <String, double>{};
  for (final l in lots) {
    final r = rate(l.currency);
    final pts = histories[l.symbol]?.points;
    if (r == null || pts == null || pts.isEmpty) continue;
    final amount = l.quantity * l.price * r;
    final at = indexAt(day(l.date ?? first));
    if (amount <= 0 || at <= 0) continue;
    held[l.symbol] = (held[l.symbol] ?? 0) + l.signedQuantity;
    lastValue[l.symbol] = pts.last.close * r;
    if (l.sell) {
      cash += amount;
      units -= amount / at;
    } else {
      invested += amount;
      units += amount / at;
    }
  }
  if (invested <= 0) return null;
  var value = cash;
  for (final e in held.entries) {
    if (e.value > 0) value += e.value * lastValue[e.key]!;
  }
  return BenchmarkComparison(invested: invested, portfolioValue: value, benchmarkValue: units * idx.last.close + cash);
}

/// Az összevetés indexe: S&P 500 indexkövető ETF.
const benchmarkSymbol = 'SPY';

/// „Értékalakulás” kártya a portfólió oldalán: a teljes érték grafikonja
/// időtáv-választóval, a befektetett összeg szaggatott vonalával.
/// Hány nyitott pozíció ára jár a saját 200 napos mozgóátlaga felett (egyszerű
/// trendkép); `null`, ha egyikhez sincs elég adat.
({int above, int count})? portfolioTrend(Iterable<String> symbols, Map<String, PriceHistory> histories) {
  var above = 0, count = 0;
  for (final s in symbols) {
    final pts = histories[s]?.points;
    final sma = pts == null ? null : PriceStats.sma(pts, 200);
    if (pts == null || sma == null || sma <= 0) continue;
    count++;
    if (pts.last.close > sma) above++;
  }
  return count == 0 ? null : (above: above, count: count);
}

class PortfolioHistoryCard extends StatefulWidget {
  const PortfolioHistoryCard({super.key, required this.snapshot});

  final PortfolioSnapshot snapshot;

  @override
  State<PortfolioHistoryCard> createState() => _PortfolioHistoryCardState();
}

class _PortfolioHistoryCardState extends State<PortfolioHistoryCard> {
  String? _key;
  Future<(PriceHistory?, BenchmarkComparison?, ({int above, int count})?)>? _future;

  Future<(PriceHistory?, BenchmarkComparison?, ({int above, int count})?)> _load(AppServices services) async {
    final lots = services.portfolio.lots;
    final histories = <String, PriceHistory>{};
    PriceHistory? index;
    await Future.wait([
      for (final s in {for (final l in lots) l.symbol})
        services.marketData.history(s).then((h) => histories[s] = h).then((_) {}, onError: (Object _) {}),
      services.marketData.history(benchmarkSymbol).then((h) => index = h).then((_) {}, onError: (Object _) {}),
    ]);
    final rates = <String, double>{for (final r in widget.snapshot.rows) r.position.currency: ?r.rate};
    double? rate(String c) => c == widget.snapshot.currency ? 1.0 : rates[c];
    final i = index;
    return (
      portfolioValueHistory(lots, histories, rate),
      i == null ? null : benchmarkComparison(lots, histories, i, rate),
      portfolioTrend([for (final p in services.portfolio.positions) p.symbol], histories),
    );
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final key = '${widget.snapshot.currency}|${services.portfolio.lots.map((l) => l.id).join(',')}';
    if (key != _key) {
      _key = key;
      _future = _load(services);
    }
    return FutureBuilder<(PriceHistory?, BenchmarkComparison?, ({int above, int count})?)>(
      future: _future,
      builder: (context, snap) {
        final (h, bench, trend) = snap.data ?? (null, null, null);
        if (h == null) return const SizedBox.shrink();
        Color tone(double v) => v >= 0 ? p.positive : p.negative;
        return Card(
          key: const ValueKey('portfolio-history'),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.portfolioHistory, style: theme.textTheme.titleMedium),
                const SizedBox(height: 12),
                PriceChart(
                  history: h,
                  fmt: fmt,
                  currency: widget.snapshot.currency,
                  showChange: false,
                  levels: [ChartLevel(price: widget.snapshot.cost, label: l10n.portfolioInvested, color: p.muted)],
                ),
                // Egyszerű trendkép: hány pozíció jár a saját 200 napos átlaga felett.
                if (trend case final t?) ...[
                  const SizedBox(height: 10),
                  Row(
                    key: const ValueKey('portfolio-trend'),
                    children: [
                      Icon(
                        t.above * 2 >= t.count ? Icons.trending_up_rounded : Icons.trending_down_rounded,
                        size: 16,
                        color: t.above * 2 >= t.count ? p.positive : p.negative,
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          l10n.portfolioAbove200(t.above, t.count),
                          style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                        ),
                      ),
                    ],
                  ),
                ],
                if (bench != null) ...[
                  const SizedBox(height: 14),
                  Text(l10n.benchmarkTitle, style: theme.textTheme.titleSmall),
                  const SizedBox(height: 8),
                  Wrap(
                    key: const ValueKey('portfolio-benchmark'),
                    spacing: 28,
                    runSpacing: 8,
                    children: [
                      for (final (label, value) in [
                        (l10n.benchmarkYours, bench.portfolioValue),
                        (l10n.benchmarkIndex, bench.benchmarkValue),
                      ])
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(label, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                            const SizedBox(height: 2),
                            Text(
                              fmt.percent((value / bench.invested - 1) * 100, withSign: true),
                              style: theme.textTheme.titleSmall?.copyWith(
                                color: tone(value - bench.invested),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              fmt.money(value, widget.snapshot.currency),
                              style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                            ),
                          ],
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    bench.difference >= 0
                        ? l10n.benchmarkAhead(fmt.number(bench.difference, decimals: 1))
                        : l10n.benchmarkBehind(fmt.number(-bench.difference, decimals: 1)),
                    style: theme.textTheme.bodyMedium?.copyWith(color: tone(bench.difference)),
                  ),
                  const SizedBox(height: 4),
                  Text(l10n.benchmarkHint, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
