/// Értékelési és pénzügyi mutatók. Minden mező opcionális: amit az
/// adatforrás nem ad, az `null`, és a felület "n/a"-t mutat.
class StockMetrics {
  const StockMetrics({
    this.peTrailing,
    this.peForward,
    this.pb,
    this.ps,
    this.evToEbitda,
    this.peg,
    this.eps,
    this.dividendYield,
    this.dividendPerShare,
    this.payoutRatio,
    this.beta,
    this.week52High,
    this.week52Low,
    this.week52HighDate,
    this.week52LowDate,
    this.averageVolume10d,
    this.revenueTtm,
    this.netIncomeTtm,
    this.grossMargin,
    this.operatingMargin,
    this.netMargin,
    this.roe,
    this.roa,
    this.debtToEquity,
    this.currentRatio,
    this.revenueGrowth,
    this.epsGrowth,
  });

  final double? peTrailing;
  final double? peForward;
  final double? pb;
  final double? ps;
  final double? evToEbitda;
  final double? peg;
  final double? eps;

  /// Százalékban (pl. 0.55 = 0,55%).
  final double? dividendYield;
  final double? dividendPerShare;
  final double? payoutRatio;
  final double? beta;
  final double? week52High;
  final double? week52Low;
  final DateTime? week52HighDate;
  final DateTime? week52LowDate;
  final double? averageVolume10d;
  final double? revenueTtm;
  final double? netIncomeTtm;
  final double? grossMargin;
  final double? operatingMargin;
  final double? netMargin;
  final double? roe;
  final double? roa;
  final double? debtToEquity;
  final double? currentRatio;
  final double? revenueGrowth;
  final double? epsGrowth;
}
