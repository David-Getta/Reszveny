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
    this.dividendGrowth5y,
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

  /// A részvényenkénti osztalék átlagos évi növekedése az elmúlt öt évben, százalékban.
  final double? dividendGrowth5y;
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

  /// Gyorsítótárhoz (offline megjelenítés).
  Map<String, dynamic> toJson() => {
    'peTrailing': ?peTrailing,
    'peForward': ?peForward,
    'pb': ?pb,
    'ps': ?ps,
    'evToEbitda': ?evToEbitda,
    'peg': ?peg,
    'eps': ?eps,
    'dividendYield': ?dividendYield,
    'dividendPerShare': ?dividendPerShare,
    'payoutRatio': ?payoutRatio,
    'dividendGrowth5y': ?dividendGrowth5y,
    'beta': ?beta,
    'week52High': ?week52High,
    'week52Low': ?week52Low,
    if (week52HighDate != null) 'week52HighDate': week52HighDate!.toIso8601String(),
    if (week52LowDate != null) 'week52LowDate': week52LowDate!.toIso8601String(),
    'averageVolume10d': ?averageVolume10d,
    'revenueTtm': ?revenueTtm,
    'netIncomeTtm': ?netIncomeTtm,
    'grossMargin': ?grossMargin,
    'operatingMargin': ?operatingMargin,
    'netMargin': ?netMargin,
    'roe': ?roe,
    'roa': ?roa,
    'debtToEquity': ?debtToEquity,
    'currentRatio': ?currentRatio,
    'revenueGrowth': ?revenueGrowth,
    'epsGrowth': ?epsGrowth,
  };

  factory StockMetrics.fromJson(Map<String, dynamic> j) => StockMetrics(
    peTrailing: (j['peTrailing'] as num?)?.toDouble(),
    peForward: (j['peForward'] as num?)?.toDouble(),
    pb: (j['pb'] as num?)?.toDouble(),
    ps: (j['ps'] as num?)?.toDouble(),
    evToEbitda: (j['evToEbitda'] as num?)?.toDouble(),
    peg: (j['peg'] as num?)?.toDouble(),
    eps: (j['eps'] as num?)?.toDouble(),
    dividendYield: (j['dividendYield'] as num?)?.toDouble(),
    dividendPerShare: (j['dividendPerShare'] as num?)?.toDouble(),
    payoutRatio: (j['payoutRatio'] as num?)?.toDouble(),
    dividendGrowth5y: (j['dividendGrowth5y'] as num?)?.toDouble(),
    beta: (j['beta'] as num?)?.toDouble(),
    week52High: (j['week52High'] as num?)?.toDouble(),
    week52Low: (j['week52Low'] as num?)?.toDouble(),
    week52HighDate: DateTime.tryParse(j['week52HighDate'] as String? ?? ''),
    week52LowDate: DateTime.tryParse(j['week52LowDate'] as String? ?? ''),
    averageVolume10d: (j['averageVolume10d'] as num?)?.toDouble(),
    revenueTtm: (j['revenueTtm'] as num?)?.toDouble(),
    netIncomeTtm: (j['netIncomeTtm'] as num?)?.toDouble(),
    grossMargin: (j['grossMargin'] as num?)?.toDouble(),
    operatingMargin: (j['operatingMargin'] as num?)?.toDouble(),
    netMargin: (j['netMargin'] as num?)?.toDouble(),
    roe: (j['roe'] as num?)?.toDouble(),
    roa: (j['roa'] as num?)?.toDouble(),
    debtToEquity: (j['debtToEquity'] as num?)?.toDouble(),
    currentRatio: (j['currentRatio'] as num?)?.toDouble(),
    revenueGrowth: (j['revenueGrowth'] as num?)?.toDouble(),
    epsGrowth: (j['epsGrowth'] as num?)?.toDouble(),
  );
}
