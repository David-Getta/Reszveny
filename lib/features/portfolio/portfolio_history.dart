import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../analysis/price_stats.dart';
import '../../core/models/price_history.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../home/markets_strip.dart' show MarketsStrip;
import '../../theme/app_theme.dart';
import '../../widgets/metric_hint.dart';
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

DateTime _day(DateTime t) => DateTime(t.year, t.month, t.day);

/// A portfólió időarányos értékindexe (TWR): minden nap az előző napi darabszámok
/// mai és tegnapi záróáron vett értékének aránya láncolódik, így a vételek és az
/// eladások nem számítanak hozamnak (vagy esésnek). Az első birtokolt napon 1;
/// üres, ha nincs használható adat.
List<PricePoint> portfolioTwrIndex(
  List<PortfolioLot> lots,
  Map<String, PriceHistory> histories,
  double? Function(String currency) rate,
) {
  final usable = [
    for (final l in lots)
      if (histories[l.symbol]?.points.isNotEmpty == true && rate(l.currency) != null) l,
  ];
  if (usable.isEmpty) return const [];
  final symbols = {for (final l in usable) l.symbol};
  final days = <DateTime>{
    for (final s in symbols)
      for (final p in histories[s]!.points) _day(p.time),
  }.toList()..sort();
  final rateOf = {for (final l in usable) l.symbol: rate(l.currency)!};
  // A tranzakciók időrendben (dátum nélküli elöl): a darabszám napról napra, növekményesen.
  final ordered = [...usable]..sort((a, b) => (a.date ?? DateTime(0)).compareTo(b.date ?? DateTime(0)));
  var next = 0;
  final idx = <String, int>{};
  final last = <String, double>{};
  final held = <String, double>{};
  Map<String, double>? prevHeld;
  var prevLast = <String, double>{};
  var index = 1.0;
  final points = <PricePoint>[];
  for (final d in days) {
    for (final s in symbols) {
      final pts = histories[s]!.points;
      var i = idx[s] ?? 0;
      while (i < pts.length && !_day(pts[i].time).isAfter(d)) {
        // A hibás (nem pozitív) záróár kimarad: az előző ismert ár marad.
        if (pts[i].close > 0) last[s] = pts[i].close;
        i++;
      }
      idx[s] = i;
    }
    // A nap végéig történt tranzakciók (dátum nélküli az elejétől).
    while (next < ordered.length && (ordered[next].date == null || !_day(ordered[next].date!).isAfter(d))) {
      final l = ordered[next++];
      held[l.symbol] = (held[l.symbol] ?? 0) + l.signedQuantity;
    }
    if (prevHeld case final before?) {
      // A tegnapi darabszámok ma és tegnap: a napi hozam a pénzmozgások nélkül.
      var today = 0.0, yesterday = 0.0;
      for (final e in before.entries) {
        final now = last[e.key], then = prevLast[e.key];
        if (e.value <= 0 || now == null || then == null) continue;
        today += e.value * now * rateOf[e.key]!;
        yesterday += e.value * then * rateOf[e.key]!;
      }
      if (yesterday > 0) {
        index *= today / yesterday;
        points.add(PricePoint(time: d, close: index));
      }
    }
    if (held.values.any((q) => q > 0)) {
      // Az első birtokolt nap a kiindulás.
      if (points.isEmpty) points.add(PricePoint(time: d, close: 1));
      prevHeld = Map.of(held);
    } else {
      prevHeld = null;
    }
    prevLast = Map.of(last);
  }
  return points;
}

/// A legnagyobb visszaesés a portfólió időarányos értékindexén ([portfolioTwrIndex])
/// – a vételek és az eladások hatása nélkül: egy korábbi csúcstól a későbbi
/// mélypontig, százalékban (negatív), a két nappal. `null`, ha nincs legalább
/// [minDays] nap adat, vagy az esés [minDrop]%-nál kisebb.
({double percent, DateTime peak, DateTime trough})? portfolioMaxDrawdown(
  List<PortfolioLot> lots,
  Map<String, PriceHistory> histories,
  double? Function(String currency) rate, {
  int minDays = 20,
  double minDrop = 1,
}) => maxDrawdownOf(portfolioTwrIndex(lots, histories, rate), minDays: minDays, minDrop: minDrop);

/// A legnagyobb visszaesés egy index-sorban (az első pont a kiinduló csúcs).
({double percent, DateTime peak, DateTime trough})? maxDrawdownOf(
  List<PricePoint> index, {
  int minDays = 20,
  double minDrop = 1,
}) {
  if (index.length - 1 < minDays) return null;
  var peak = index.first;
  var worst = 0.0;
  ({DateTime peak, DateTime trough})? at;
  for (final p in index.skip(1)) {
    if (p.close > peak.close) peak = p;
    final dd = (p.close / peak.close - 1) * 100;
    if (dd < worst) {
      worst = dd;
      at = (peak: peak.time, trough: p.time);
    }
  }
  if (at == null || worst > -minDrop) return null;
  return (percent: worst, peak: at.peak, trough: at.trough);
}

/// Az idei időarányos hozam (%) az index-sorból: az előző év utolsó pontjához mérve
/// (ha a portfólió idén indult, a kezdőnaphoz), és ugyanarra az időszakra a
/// [benchmark] hozama. `null`, ha idén még nincs összevethető pont.
({double percent, double? benchmark})? ytdReturn(List<PricePoint> index, PriceHistory? benchmark, DateTime now) {
  final jan1 = DateTime(now.year);
  if (index.length < 2 || index.last.time.isBefore(jan1)) return null;
  final base = index.where((p) => p.time.isBefore(jan1)).lastOrNull ?? index.first;
  final end = index.last;
  if (identical(base, end) || base.close <= 0) return null;
  final pts = benchmark?.points ?? const <PricePoint>[];
  double? closeOn(DateTime d) => pts.where((p) => !_day(p.time).isAfter(d)).lastOrNull?.close;
  final b0 = closeOn(base.time), b1 = closeOn(end.time);
  return (
    percent: (end.close / base.close - 1) * 100,
    benchmark: b0 == null || b1 == null || b0 <= 0 ? null : (b1 / b0 - 1) * 100,
  );
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
  // Az index története (legfeljebb 5 év) előtti dátumú vétel nem vethető össze: a
  // sorozat első ára mellett a portfólió hosszabb időszaka „verné” az indexet. (A
  // dátum nélküli tétel – mint a grafikonon – a kezdettől számít.)
  final tooOld = lots.any(
    (l) =>
        l.date != null && day(l.date!).isBefore(day(first)) && histories[l.symbol] != null && rate(l.currency) != null,
  );
  if (tooOld) return null;
  // Az adott napig utolsó ismert indexár.
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
    // A díjjal együtt (a vétel többe került, az eladás kevesebbet hozott).
    final amount = l.cost * r;
    final at = indexAt(day(l.date ?? first));
    if (at <= 0) continue;
    // A darabszám akkor is változik, ha a díj elviszi az eladás teljes bevételét.
    held[l.symbol] = (held[l.symbol] ?? 0) + l.signedQuantity;
    lastValue[l.symbol] = pts.last.close * r;
    if (amount <= 0) continue;
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

/// A portfólió értékalakulásánál választható indexek: ugyanazok, mint a „Piacok
/// ma” sávban (indexkövető ETF-ek); az első az alapértelmezett.
final benchmarks = [for (final (symbol, name) in MarketsStrip.markets) (symbol: symbol, name: name)];

/// Az alapértelmezett összevetési index (S&P 500): a részvény grafikonján is ez.
final benchmarkSymbol = benchmarks.first.symbol;

/// A választott index (ismeretlen tárolt értéknél az alapértelmezett).
({String symbol, String name}) benchmarkOf(String? symbol) =>
    benchmarks.firstWhere((b) => b.symbol == symbol, orElse: () => benchmarks.first);

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

/// Az értékalakulás-kártya adatai a pillanatkép pozícióiból ([account] számláé,
/// `null`: mind): a választott index, az idősorok (a gyorsítótárból, ha friss) és az
/// árfolyamok alapján – a kártya és az AI-portfólióelemzés is ebből dolgozik.
Future<PortfolioHistoryData> loadPortfolioHistory(
  AppServices services,
  PortfolioSnapshot snapshot, {
  String? account,
}) async {
  final symbol = benchmarkOf(services.preferences.benchmark).symbol;
  // A felaprózásokkal igazított tételek (az árfolyam-idősor is igazított).
  final lots = services.portfolio.adjustedLotsIn(account);
  final histories = <String, PriceHistory>{};
  PriceHistory? index;
  await Future.wait([
    for (final s in {for (final l in lots) l.symbol})
      services.marketData.history(s).then((h) => histories[s] = h).then((_) {}, onError: (Object _) {}),
    services.marketData.history(symbol).then((h) => index = h).then((_) {}, onError: (Object _) {}),
  ]);
  final rates = <String, double>{for (final r in snapshot.rows) r.position.currency: ?r.rate};
  // A már eladott, más pénznemű pozíciók árfolyama is kell (a múltbeli értékhez és a visszaeséshez).
  final missing = {for (final l in lots) l.currency}..removeAll({...rates.keys, snapshot.currency});
  if (missing.isNotEmpty) {
    try {
      rates.addAll(await services.fx.ratesFor(missing, snapshot.currency));
    } catch (_) {
      // Árfolyam nélkül ezek kimaradnak, mint eddig.
    }
  }
  double? rate(String c) => c == snapshot.currency ? 1.0 : rates[c];
  final i = index;
  final twr = portfolioTwrIndex(lots, histories, rate);
  return (
    drawdown: maxDrawdownOf(twr),
    ytd: ytdReturn(twr, i, DateTime.now()),
    history: portfolioValueHistory(lots, histories, rate),
    bench: i == null ? null : benchmarkComparison(lots, histories, i, rate),
    trend: portfolioTrend([for (final p in services.portfolio.positionsIn(account)) p.symbol], histories),
    symbol: symbol,
    indexMissing: i == null || i.points.isEmpty,
  );
}

/// „Értékalakulás” kártya a portfólió oldalán: a teljes érték grafikonja
/// időtáv-választóval, a befektetett összeg szaggatott vonalával.
class PortfolioHistoryCard extends StatefulWidget {
  const PortfolioHistoryCard({super.key, required this.snapshot, this.account});

  final PortfolioSnapshot snapshot;

  /// Csak ennek a számlának a tranzakcióiból (`null`: mind).
  final String? account;

  @override
  State<PortfolioHistoryCard> createState() => _PortfolioHistoryCardState();
}

class _PortfolioHistoryCardState extends State<PortfolioHistoryCard> {
  String? _key;
  Future<PortfolioHistoryData>? _future;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final bench0 = benchmarkOf(services.preferences.benchmark);
    final key =
        '${widget.snapshot.currency}|${services.portfolio.holdingsKey}|${bench0.symbol}|${widget.account ?? ''}';
    if (key != _key) {
      _key = key;
      _future = loadPortfolioHistory(services, widget.snapshot, account: widget.account);
    }
    return FutureBuilder<PortfolioHistoryData>(
      future: _future,
      builder: (context, snap) {
        final data = snap.data;
        final h = data?.history;
        if (data == null || h == null) return const SizedBox.shrink();
        final trend = data.trend;
        // Indexváltás után, amíg az új index töltődik, a régi értékei nem látszanak az új neve alatt.
        final switching = data.symbol != bench0.symbol;
        final bench = switching ? null : data.bench;
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
                // Az idei időarányos hozam (az index ugyanerre az időszakra), és a legnagyobb
                // visszaesés a csúcs és a mélypont napjával – mindkettő a vételek és eladások hatása nélkül.
                if (data.ytd != null || data.drawdown != null) ...[
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 28,
                    runSpacing: 12,
                    children: [
                      if (data.ytd case final y?)
                        MetricFigure(
                          key: const ValueKey('portfolio-ytd'),
                          label: l10n.portfolioYtdReturn,
                          value: fmt.percent(y.percent, decimals: 1, withSign: true),
                          sub: switch (y.benchmark) {
                            final b? =>
                              '${benchmarkOf(data.symbol).name}: ${fmt.percent(b, decimals: 1, withSign: true)}',
                            _ => null,
                          },
                          color: gainColor(p, y.percent),
                          subColor: p.muted,
                          hint: l10n.glossTwrYtd,
                        ),
                      if (data.drawdown case final dd?)
                        MetricFigure(
                          key: const ValueKey('portfolio-drawdown'),
                          label: l10n.portfolioMaxDrawdown,
                          value: fmt.percent(dd.percent, decimals: 1),
                          sub: '${fmt.date(dd.peak)} – ${fmt.date(dd.trough)}',
                          color: p.negative,
                          hint: l10n.glossMaxDrawdown,
                        ),
                    ],
                  ),
                ],
                // A választó akkor is látszik, ha az index nem töltődött be (vissza lehessen váltani).
                if (data.bench != null || switching || data.indexMissing) ...[
                  const SizedBox(height: 14),
                  Text(l10n.benchmarkTitleIndex, style: theme.textTheme.titleSmall),
                  const SizedBox(height: 6),
                  // Az index választható (megjegyezve); a nevek tulajdonnevek, nem fordítjuk.
                  Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: [
                      for (final b in benchmarks)
                        ChoiceChip(
                          key: ValueKey('benchmark-${b.symbol}'),
                          label: Text(b.name),
                          selected: b.symbol == bench0.symbol,
                          visualDensity: VisualDensity.compact,
                          onSelected: (_) {
                            // A beállítás azonnal átáll (a mentés a háttérben); a kártya új indexszel tölt.
                            services.preferences.setBenchmark(b.symbol);
                            setState(() {});
                          },
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  if (bench == null)
                    switching
                        ? const LinearProgressIndicator(key: ValueKey('benchmark-loading'))
                        : Text(
                            l10n.notAvailable,
                            key: const ValueKey('benchmark-unavailable'),
                            style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                          )
                  else ...[
                    Wrap(
                      key: const ValueKey('portfolio-benchmark'),
                      spacing: 28,
                      runSpacing: 8,
                      children: [
                        for (final (label, value) in [
                          (l10n.benchmarkYours, bench.portfolioValue),
                          (bench0.name, bench.benchmarkValue),
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
                    Text(l10n.benchmarkHintIndex, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                  ],
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}

/// Az értékalakulás-kártya betöltött adatai: a grafikon, az index-összevetés, a
/// trendkép, az index, amellyel számoltunk, és hogy annak idősora hiányzott-e.
typedef PortfolioHistoryData = ({
  ({double percent, DateTime peak, DateTime trough})? drawdown,
  ({double percent, double? benchmark})? ytd,
  PriceHistory? history,
  BenchmarkComparison? bench,
  ({int above, int count})? trend,
  String symbol,
  bool indexMissing,
});
