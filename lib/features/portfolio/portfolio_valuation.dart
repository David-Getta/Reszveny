import 'dart:math' as math;

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

  /// A mai eredmény: a napi változás a darabszámon, de a ma vett darabnál a vételi
  /// árhoz, a ma eladottnál az eladási árig mérve (a tegnapi záróárhoz képest).
  double? get dayGain {
    final change = dayChange, now = price;
    if (change == null) return null;
    var gain = change * position.quantity;
    if (now == null) return gain;
    final close = now - change, today = DateTime.now();
    for (final l in position.lots) {
      final d = l.date;
      if (d == null || d.year != today.year || d.month != today.month || d.day != today.day) continue;
      gain += (l.sell ? 1 : -1) * (l.price - close) * l.quantity;
    }
    return gain;
  }

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
    this.cash = 0,
    this.cashByCurrency = const {},
    this.beta,
    this.quoteTime,
  });

  /// A legfrissebb ár ideje (UTC): ennek a kereskedési napnak a mozgása a [dayGain]
  /// (hétvégén, ünnepnapon és nyitás előtt még az előző napé).
  final DateTime? quoteTime;

  /// A részvények értékkel súlyozott bétája (a bétával rendelkező pozíciókból):
  /// nagyjából hány százalékot mozdul a portfólió részvényrésze, ha a piac 1%-ot.
  /// `null`, ha a bétával rendelkező pozíciók a részvények értékének felét sem
  /// adják (pl. főleg ETF-ek béta nélkül) – akkor egy kis pozíció bétája félrevezető volna.
  final double? beta;

  /// A béta legalább ekkora részét fedje le a részvények értékének.
  static const minBetaCoverage = 0.5;

  /// A három legnagyobb pozíció együttes súlya a részvények értékében (0–1);
  /// `null`, ha legfeljebb három pozíció van (akkor nincs mit mérni).
  double? get top3Weight {
    final values = [
      for (final r in rows)
        if (r.inTotal) r.value! * r.rate!,
    ]..sort((a, b) => b.compareTo(a));
    if (values.length <= 3 || value <= 0) return null;
    return values.take(3).fold(0.0, (s, v) => s + v) / value;
  }

  /// Készpénz a brókernél az összesítés pénznemében (a felhasználó adja meg).
  final double cash;

  /// Ugyanez pénznemenként (a pénznem → az összesítés pénznemére váltott összeg).
  final Map<String, double> cashByCurrency;

  /// Az összérték: a pozíciók értéke és a készpénz.
  double get totalValue => value + cash;

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

  /// Egyetlen pozíciónak sincs ára vagy árfolyama, és készpénz sincs: az összeg nem ismert (nem 0).
  bool get unknown => rows.isNotEmpty && rows.every((r) => !r.inTotal) && cash <= 0;

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
    Map<String, double> cash = const {},
    Map<String, double> betas = const {},
  }) {
    final rows = <PositionValue>[];
    var value = 0.0, cost = 0.0, day = 0.0, dividend = 0.0, realized = 0.0;
    // A béta súlyozott összege és a bétával rendelkező pozíciók értéke.
    var betaSum = 0.0, betaBase = 0.0;
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
    DateTime? latest;
    for (final p in positions) {
      final q = quotes[p.symbol];
      if (q?.timestamp case final t? when latest == null || t.isAfter(latest)) latest = t;
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
      if (betas[p.symbol] case final b?) {
        betaSum += b * row.value! * r;
        betaBase += row.value! * r;
      }
    }
    // Készpénz az összesítés pénznemére váltva; amelyikhez nincs árfolyam, kimarad.
    var cashValue = 0.0;
    final cashByCurrency = <String, double>{};
    for (final e in cash.entries) {
      final c = e.key.toUpperCase();
      final r = rateOf(c);
      if (r == null) continue;
      cashValue += e.value * r;
      cashByCurrency[c] = (cashByCurrency[c] ?? 0) + e.value * r;
    }
    final total = value + cashValue;
    final weighted = [
      for (final r in rows)
        PositionValue(
          position: r.position,
          price: r.price,
          dayChange: r.dayChange,
          rate: r.rate,
          weight: r.inTotal && total > 0 ? r.value! * r.rate! / total : 0,
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
      cash: cashValue,
      cashByCurrency: cashByCurrency,
      beta: betaBase > 0 && betaBase >= value * minBetaCoverage ? betaSum / betaBase : null,
      quoteTime: latest,
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
    Map<String, double> cash = const {},
  }) async {
    final quotes = <String, StockQuote>{};
    final rates = <String, double>{};
    final dividends = <String, double>{};
    final betas = <String, double>{};
    Future<void> quote(String symbol) async {
      try {
        quotes[symbol] = await marketData.quote(symbol);
      } catch (_) {
        // Ár nélkül a pozíció kimarad az összegből.
      }
    }

    // Az osztalék és a béta a mutatókból jön; ha nem érhető el, egyszerűen nincs.
    Future<void> metrics(String symbol) async {
      try {
        final m = await marketData.metrics(symbol);
        if (m.dividendPerShare case final d? when d > 0) dividends[symbol] = d;
        if (m.beta case final b? when b.isFinite) betas[symbol] = b;
      } catch (_) {}
    }

    Future<void> fxRate(String from) async {
      final r = await fx.rate(from, currency);
      if (r != null) rates[from] = r.rate;
    }

    await Future.wait([
      for (final p in positions) quote(p.symbol),
      for (final s in {for (final p in positions) p.symbol}) metrics(s),
      for (final c in {
        for (final p in [...positions, ...closed]) p.currency,
        ...cash.keys,
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
      cash: cash,
      betas: betas,
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

/// Egy részvény súlya a portfólió összértékében (%) egy vétel vagy eladás előtt és
/// után, a mostani áron. A vétel új pénzként növeli, az eladás csökkenti az
/// összértéket – ha a nyilvántartott készpénzből megy ([cash]: a kereskedés pénznemében
/// lévő egyenleg), a vétel csak a készpénzen felüli részével növeli, az eladás nem
/// változtat rajta (a bevétel a készpénzbe kerül). Új pozíciónál a [price] és a
/// [currency] kell (az árfolyam egy azonos pénznemű sorból vagy az összesítés
/// pénzneméből). `null`, ha nincs ár, árfolyam vagy összérték, vagy a birtokolt
/// részvénynek most nincs ára (a mostani súlya nem ismert).
({double before, double after})? weightChange(
  PortfolioSnapshot s,
  String symbol,
  double quantity, {
  required bool sell,
  double? price,
  required String currency,
  double? cash,
}) {
  final row = s.rows.where((r) => r.position.symbol == symbol.toUpperCase()).firstOrNull;
  if (row != null && row.price == null) return null;
  final px = row?.price ?? price;
  final rate =
      row?.rate ??
      (currency == s.currency ? 1.0 : s.rows.where((r) => r.position.currency == currency).firstOrNull?.rate);
  if (px == null || px <= 0 || rate == null || s.totalValue <= 0) return null;
  final now = (row?.value ?? 0) * rate;
  final delta = quantity * px * rate * (sell ? -1 : 1);
  final total = switch (cash) {
    null => s.totalValue + delta,
    _ when sell => s.totalValue,
    final c => s.totalValue + math.max(0.0, delta - c * rate),
  };
  if (total <= 0) return null;
  return (before: now / s.totalValue * 100, after: ((now + delta) / total * 100).clamp(0, 100).toDouble());
}

/// A mai változás legnagyobb okozói: pozíciónként a mai változás a megjelenítési
/// pénznemben, abszolút érték szerint csökkenő sorrendben, legfeljebb [n] darab.
/// Üres, ha kevesebb mint két pozíció mozdult (egynél nincs mit kiemelni).
List<({String symbol, double amount})> topDayMovers(PortfolioSnapshot s, {int n = 2}) {
  final moved = [
    for (final r in s.rows)
      if ((r.dayGain, r.rate) case (final g?, final rate?) when r.inTotal && g != 0)
        (symbol: r.position.symbol, amount: g * rate),
  ]..sort((a, b) => b.amount.abs().compareTo(a.amount.abs()));
  return moved.length < 2 ? const [] : moved.take(n).toList();
}

/// Újrasúlyozási terv a célarányokhoz (csak a céllal rendelkező pozíciók).
/// A célt a teljes portfólió értékéhez mérjük – a készpénzzel együtt, így a
/// vételekre a készpénz is „fedezet”.
List<RebalanceStep> rebalancePlan(PortfolioSnapshot s, Map<String, double> targets) {
  final total = s.totalValue;
  if (total <= 0) return const [];
  return [
    // Ár vagy árfolyam nélküli pozíció nincs az összértékben: nem 0%, hanem ismeretlen.
    for (final r in s.rows)
      if (r.inTotal)
        if (targets[r.position.symbol.toUpperCase()] case final t?)
          (symbol: r.position.symbol, current: r.weight * 100, target: t, amount: t / 100 * total - r.weight * total),
  ]..sort((a, b) => b.amount.abs().compareTo(a.amount.abs()));
}

/// A cél becsült éve a mostani éves hozammal ([annualReturn], tört): a részvények
/// ([stocks]) kamatos kamattal nőnek, a készpénz ([cash]) nem; további befizetés
/// nélkül. `null`, ha a hozam nem pozitív, nincs részvény, a cél már teljesült,
/// vagy 50 évnél messzebb volna (az ilyen becslés semmitmondó).
int? goalYear(double stocks, double goal, double annualReturn, DateTime now, {double cash = 0}) {
  if (annualReturn <= 0 || stocks <= 0 || goal <= stocks + cash) return null;
  final years = math.log((goal - cash) / stocks) / math.log(1 + annualReturn);
  if (!years.isFinite || years > 50) return null;
  return now.add(Duration(days: (years * 365.25).round())).year;
}

/// Egy pozíció vétele egy új befizetésből: összeg a portfólió pénznemében és a
/// mai áron nagyjából hány darab (`null`, ha nincs ár vagy árfolyam).
typedef ContributionStep = ({String symbol, double amount, double? shares});

/// Új befizetés ([amount], a portfólió pénznemében) elosztása csak vétellel a
/// célarányok felé: a cél a mostani összértékhez és a befizetéshez együtt mérve.
/// Először a célja alatt lévő pozíciók hiánya töltődik fel (ha a pénz nem elég
/// mindre, a hiányuk arányában), a maradék a célarányok szerint oszlik el. Csak
/// az árral és árfolyammal rendelkező, céllal bíró pozíciók; a legnagyobb vétel elöl.
List<ContributionStep> contributionPlan(PortfolioSnapshot s, Map<String, double> targets, double amount) {
  if (amount <= 0) return const [];
  final rows = [
    for (final r in s.rows)
      if (r.inTotal && r.price! > 0)
        if (targets[r.position.symbol.toUpperCase()] case final t? when t > 0) (row: r, target: t),
  ];
  if (rows.isEmpty) return const [];
  final total = s.totalValue + amount;
  final deficits = [for (final x in rows) math.max(0.0, x.target / 100 * total - x.row.value! * x.row.rate!)];
  final missing = deficits.fold(0.0, (a, b) => a + b);
  final targetSum = rows.fold(0.0, (a, x) => a + x.target);
  final out = <ContributionStep>[];
  for (final (i, x) in rows.indexed) {
    final buy = missing >= amount
        ? deficits[i] * amount / missing
        : deficits[i] + (amount - missing) * x.target / targetSum;
    if (buy <= 0) continue;
    out.add((symbol: x.row.position.symbol, amount: buy, shares: buy / x.row.rate! / x.row.price!));
  }
  return out..sort((a, b) => b.amount.compareTo(a.amount));
}
