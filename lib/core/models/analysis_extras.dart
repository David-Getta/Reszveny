/// Az elemzéshez külön letöltött, a felületen nem mutatott adatok: versenytársak,
/// bennfentes ügyletek, EPS-meglepetések és a következő gyorsjelentés. Ezek a
/// modellnek mennek, így kevesebb webkeresést kell rájuk elhasználnia.
class AnalysisExtras {
  const AnalysisExtras({this.peers = const [], this.insider, this.earnings = const [], this.nextEarnings});

  final List<String> peers;
  final InsiderSummary? insider;

  /// Az utolsó negyedévek jelentett és várt EPS-e (a legfrissebb elöl).
  final List<EarningsSurprise> earnings;
  final UpcomingEarnings? nextEarnings;

  bool get isEmpty => peers.isEmpty && insider == null && earnings.isEmpty && nextEarnings == null;

  Map<String, dynamic> toJson() => {
    if (peers.isNotEmpty) 'peers': peers,
    if (insider != null) 'insider_transactions': insider!.toJson(),
    if (earnings.isNotEmpty) 'earnings_history': earnings.map((e) => e.toJson()).toList(),
    if (nextEarnings != null) 'next_earnings': nextEarnings!.toJson(),
  };
}

/// Bennfentes ügyletek összesítése egy időablakra.
class InsiderSummary {
  const InsiderSummary({
    required this.windowDays,
    required this.buys,
    required this.sells,
    required this.netShares,
    this.notable = const [],
  });

  final int windowDays;

  /// Nyílt piaci vételek (`P`) és eladások (`S`) száma.
  final int buys;
  final int sells;

  /// Nettó részvényváltozás a vételekből és eladásokból.
  final double netShares;

  /// A legnagyobb ügyletek (legfeljebb néhány).
  final List<InsiderTrade> notable;

  Map<String, dynamic> toJson() => {
    'window_days': windowDays,
    'open_market_buys': buys,
    'open_market_sells': sells,
    'net_shares': netShares.round(),
    'largest': notable.map((t) => t.toJson()).toList(),
  };
}

class InsiderTrade {
  const InsiderTrade({required this.name, required this.date, required this.code, required this.change, this.price});

  final String name;
  final DateTime date;

  /// SEC Form 4 kód: `P` vétel, `S` eladás, `M` opciólehívás, `A` juttatás…
  final String code;
  final double change;
  final double? price;

  Map<String, dynamic> toJson() => {
    'name': name,
    'date': date.toIso8601String().substring(0, 10),
    'code': code,
    'shares_change': change.round(),
    'price': ?price,
  };
}

class EarningsSurprise {
  const EarningsSurprise({required this.period, this.actual, this.estimate, this.surprisePercent});

  final DateTime period;
  final double? actual;
  final double? estimate;
  final double? surprisePercent;

  /// Megverte-e a várakozást (`null`, ha valamelyik szám hiányzik).
  bool? get beat => actual == null || estimate == null ? null : actual! >= estimate!;

  /// A meglepetés százalékban: a jelentett, ha van, különben a két számból.
  double? get surprise =>
      surprisePercent ??
      (actual == null || estimate == null || estimate == 0 ? null : (actual! - estimate!) / estimate!.abs() * 100);

  Map<String, dynamic> toJson() => {
    'period': period.toIso8601String().substring(0, 10),
    'eps_actual': ?actual,
    'eps_estimate': ?estimate,
    'surprise_percent': ?surprisePercent,
  };
}

class UpcomingEarnings {
  const UpcomingEarnings({required this.date, this.hour, this.epsEstimate, this.revenueEstimate});

  final DateTime date;

  /// `bmo` nyitás előtt, `amc` zárás után, `dmh` kereskedés közben.
  final String? hour;
  final double? epsEstimate;
  final double? revenueEstimate;

  Map<String, dynamic> toJson() => {
    'date': date.toIso8601String().substring(0, 10),
    'hour': ?hour,
    'eps_estimate': ?epsEstimate,
    'revenue_estimate': ?revenueEstimate,
  };
}

/// A részvény oldalának „Gyorsjelentések” kártyája: az utolsó negyedévek
/// jelentett és várt EPS-e (a legfrissebb elöl) és a következő jelentés.
class EarningsOverview {
  const EarningsOverview({this.history = const [], this.next});

  final List<EarningsSurprise> history;
  final UpcomingEarnings? next;

  bool get isEmpty => history.isEmpty && next == null;
}
