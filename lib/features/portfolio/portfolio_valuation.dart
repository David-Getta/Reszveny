import '../../core/models/stock_quote.dart';
import '../fx/fx_service.dart';
import '../market_data/market_data_provider.dart';
import 'annual_return.dart';
import 'portfolio_store.dart';

/// Egy pozíció értékelése az aktuális árral.
class PositionValue {
  const PositionValue({
    required this.position,
    this.price,
    this.dayChange,
    this.rate,
    this.weight = 0,
    this.dividendPerShare,
  });

  final Position position;

  /// Aktuális ár a részvény pénznemében (`null`, ha nem érhető el).
  final double? price;

  /// Napi változás darabonként a részvény pénznemében.
  final double? dayChange;

  /// Átváltási árfolyam az összesítés pénznemébe (`null`, ha nincs).
  final double? rate;

  /// Súly a portfólióban (0–1), az összesítés pénznemében számolt értékből.
  final double weight;

  /// Az utolsó éves osztalék részvényenként, a részvény pénznemében.
  final double? dividendPerShare;

  /// Várható éves osztalék a részvény pénznemében (`null`, ha nem fizet).
  double? get annualDividend =>
      dividendPerShare == null || dividendPerShare! <= 0 ? null : dividendPerShare! * position.quantity;

  double? get value => price == null ? null : price! * position.quantity;
  double? get gain => value == null ? null : value! - position.cost;
  double? get gainPercent => gain == null || position.cost == 0 ? null : gain! / position.cost * 100;
  double? get dayGain => dayChange == null ? null : dayChange! * position.quantity;

  /// Benne van-e az összesítésben (van ár és árfolyam).
  bool get inTotal => value != null && rate != null;
}

/// A portfólió pillanatképe az összesítés pénznemében.
class PortfolioSnapshot {
  const PortfolioSnapshot({
    required this.currency,
    required this.rows,
    required this.value,
    required this.cost,
    required this.dayGain,
    this.annualDividend = 0,
    this.realized = 0,
    this.closed = const [],
    this.realizedByYear = const {},
    this.annualReturn,
  });

  /// Pénzsúlyozott éves hozam (XIRR, tört: 0,12 = 12%) a vételek és eladások
  /// dátumával, a mai értékkel. Csak ha minden tranzakciónak van dátuma, minden
  /// pozíció benne van az összegben, és az első vétel legalább egy éve volt –
  /// rövidebb időre az évesítés félrevezető lenne. Az osztalék nincs benne.
  final double? annualReturn;

  /// A realizált nyereség az eladás éve szerint, az összesítés pénznemében
  /// (dátum nélküli eladás: `null` kulcs).
  final Map<int?, double> realizedByYear;

  final String currency;

  /// Az eladásokon elért (realizált) nyereség az összesítés pénznemében,
  /// a lezárt pozíciókkal együtt.
  final double realized;

  /// A teljesen eladott pozíciók és realizált nyereségük az összesítés pénznemében.
  final List<({Position position, double? realized})> closed;

  /// Várható éves osztalék az összesítés pénznemében (az utolsó éves osztalék alapján).
  final double annualDividend;

  /// Osztalékhozam a mai értékre, illetve a bekerülési értékre.
  double? get dividendYield => value == 0 || annualDividend == 0 ? null : annualDividend / value * 100;
  double? get dividendYieldOnCost => cost == 0 || annualDividend == 0 ? null : annualDividend / cost * 100;
  final List<PositionValue> rows;
  final double value;
  final double cost;
  final double dayGain;

  double get gain => value - cost;
  double? get gainPercent => cost == 0 ? null : gain / cost * 100;

  /// Napi változás százalékban a tegnapi záró értékhez képest.
  double? get dayGainPercent => value - dayGain == 0 ? null : dayGain / (value - dayGain) * 100;

  /// Egyetlen pozíciónak sincs ára vagy árfolyama: az összeg nem ismert (nem 0).
  bool get unknown => rows.isNotEmpty && rows.every((r) => !r.inTotal);

  /// Vannak-e pozíciók, amelyek ár vagy árfolyam híján kimaradtak az összesítésből.
  bool get hasExcluded => rows.any((r) => !r.inTotal);

  /// Összesítés: minden pozíció értéke, bekerülési értéke és napi változása
  /// átváltva [currency]-be. A [rate] `null`-t ad, ha nincs árfolyam.
  static PortfolioSnapshot compute(
    List<Position> positions, {
    required Map<String, StockQuote> quotes,
    required double? Function(String from, String to) rate,
    required String currency,
    Map<String, double> dividends = const {},
    List<Position> closed = const [],
    DateTime? now,
  }) {
    final rows = <PositionValue>[];
    var value = 0.0, cost = 0.0, day = 0.0, dividend = 0.0, realized = 0.0;
    double? rateOf(String c) => c == currency ? 1.0 : rate(c, currency);
    final closedRows = <({Position position, double? realized})>[];
    final byYear = <int?, double>{};
    void addRealized(Position p, double? r) {
      if (r == null) return;
      realized += p.realizedGain * r;
      for (final e in p.realizedByYear.entries) {
        byYear[e.key] = (byYear[e.key] ?? 0) + e.value * r;
      }
    }

    for (final p in closed) {
      final r = rateOf(p.currency);
      addRealized(p, r);
      closedRows.add((position: p, realized: r == null ? null : p.realizedGain * r));
    }
    for (final p in positions) {
      final q = quotes[p.symbol];
      final r = rateOf(p.currency);
      addRealized(p, r);
      final row = PositionValue(
        position: p,
        price: q?.price,
        dayChange: q?.change,
        rate: r,
        dividendPerShare: dividends[p.symbol],
      );
      rows.add(row);
      if (!row.inTotal) continue;
      value += row.value! * r!;
      cost += p.cost * r;
      day += (row.dayGain ?? 0) * r;
      dividend += (row.annualDividend ?? 0) * r;
    }
    final weighted = [
      for (final r in rows)
        PositionValue(
          position: r.position,
          price: r.price,
          dayChange: r.dayChange,
          rate: r.rate,
          weight: r.inTotal && value > 0 ? r.value! * r.rate! / value : 0,
          dividendPerShare: r.dividendPerShare,
        ),
    ]..sort((a, b) => b.weight.compareTo(a.weight));
    return PortfolioSnapshot(
      annualReturn: rows.every((r) => r.inTotal)
          ? positionsAnnualReturn([...closed, ...positions], rateOf, value, now ?? DateTime.now())
          : null,
      currency: currency,
      rows: weighted,
      value: value,
      cost: cost,
      dayGain: day,
      annualDividend: dividend,
      realized: realized,
      closed: closedRows,
      realizedByYear: byYear,
    );
  }

  /// Árak és árfolyamok letöltése, majd összesítés. Egy-egy hiányzó ár vagy
  /// árfolyam nem állítja meg: az a pozíció kimarad az összegből.
  static Future<PortfolioSnapshot> load(
    List<Position> positions, {
    required MarketDataProvider marketData,
    required FxService fx,
    required String currency,
    List<Position> closed = const [],
  }) async {
    final quotes = <String, StockQuote>{};
    final rates = <String, double>{};
    final dividends = <String, double>{};
    Future<void> quote(String symbol) async {
      try {
        quotes[symbol] = await marketData.quote(symbol);
      } catch (_) {
        // Ár nélkül a pozíció kimarad az összegből.
      }
    }

    // Az osztalék a mutatókból jön; ha nem érhető el, egyszerűen nincs.
    Future<void> dividend(String symbol) async {
      try {
        final d = (await marketData.metrics(symbol)).dividendPerShare;
        if (d != null && d > 0) dividends[symbol] = d;
      } catch (_) {}
    }

    Future<void> fxRate(String from) async {
      final r = await fx.rate(from, currency);
      if (r != null) rates[from] = r.rate;
    }

    await Future.wait([
      for (final p in positions) quote(p.symbol),
      for (final s in {for (final p in positions) p.symbol}) dividend(s),
      for (final c in {
        for (final p in [...positions, ...closed]) p.currency,
      }.where((c) => c != currency))
        fxRate(c),
    ]);
    return compute(
      positions,
      quotes: quotes,
      rate: (from, _) => rates[from],
      currency: currency,
      dividends: dividends,
      closed: closed,
    );
  }

  /// Az összesítés pénzneme: a megjelenítési pénznem, különben a pozíciók
  /// közös pénzneme, végső esetben USD.
  static String totalCurrency(List<Position> positions, String? displayCurrency) {
    if (displayCurrency != null && displayCurrency.isNotEmpty) return displayCurrency;
    final all = {for (final p in positions) p.currency};
    return all.length == 1 ? all.first : 'USD';
  }
}

/// Egy pozíció újrasúlyozása: a mostani és a cél arány (%), és mennyit kellene
/// venni (+) vagy eladni (−) a portfólió pénznemében.
typedef RebalanceStep = ({String symbol, double current, double target, double amount});

/// Újrasúlyozási terv a célarányokhoz (csak a céllal rendelkező pozíciók).
/// A célt a teljes portfólió értékéhez mérjük.
List<RebalanceStep> rebalancePlan(PortfolioSnapshot s, Map<String, double> targets) {
  if (s.value <= 0) return const [];
  return [
    for (final r in s.rows)
      if (targets[r.position.symbol.toUpperCase()] case final t?)
        (symbol: r.position.symbol, current: r.weight * 100, target: t, amount: t / 100 * s.value - r.weight * s.value),
  ]..sort((a, b) => b.amount.abs().compareTo(a.amount.abs()));
}
