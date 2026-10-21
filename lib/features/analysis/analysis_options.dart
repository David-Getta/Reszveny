import '../billing/plan.dart';

/// Az elemzés hossza. A hosszabb elemzés több keretet fogyaszt.
enum AnalysisDepth { brief, standard, deep }

/// Kinek szól az elemzés: kezdőnek magyaráz, tapasztaltnak tömörebb.
enum ReaderLevel { beginner, experienced }

/// Az olvasó saját pozíciója az elemzett részvényben (a portfólióból).
class PositionContext {
  const PositionContext({
    required this.quantity,
    required this.averageCost,
    required this.currency,
    this.firstDate,
    this.lastDate,
    this.dividendsReceived12m,
  });

  final double quantity;
  final double averageCost;
  final String currency;
  final DateTime? firstDate;
  final DateTime? lastDate;

  /// Az elmúlt 12 hónapban ebből a részvényből kapott osztalék (a pozíció pénznemében), ha rögzítette.
  final double? dividendsReceived12m;

  /// Bekerülési osztalékhozam százalékban (a 12 havi osztalék a vételi értékhez), ha számolható.
  double? get yieldOnCost {
    final r = dividendsReceived12m;
    final cost = quantity * averageCost;
    return r == null || r <= 0 || cost <= 0 ? null : r / cost * 100;
  }
}

/// Az AI-elemzés beállításai (a felhasználó választja a beállításokban,
/// a webkeresések száma a csomagból jön).
class AnalysisOptions {
  const AnalysisOptions({
    this.depth = AnalysisDepth.standard,
    this.readerLevel = ReaderLevel.beginner,
    this.counterArgument = true,
    this.webSearches = 6,
    this.readerCountry,
    this.readerCurrency,
    this.position,
    this.readerNote,
  });

  final AnalysisDepth depth;
  final ReaderLevel readerLevel;

  /// Az összefoglaló végén mindig szerepeljen a tézis legerősebb ellenérve.
  final bool counterArgument;

  /// Legfeljebb ennyi webkeresés egy elemzéshez (csomag + hossz alapján).
  final int webSearches;

  /// Az olvasó országa (ISO 3166, pl. `HU`) és megjelenítési pénzneme (pl. `HUF`).
  final String? readerCountry;
  final String? readerCurrency;

  /// Ha az olvasónak van ebből a részvényből, a pozíciója (különben `null`).
  final PositionContext? position;

  /// Az olvasó saját jegyzete ehhez a részvényhez (tézis, figyelt pontok).
  final String? readerNote;

  /// Hány elemzést fogyaszt a keretből.
  int get cost => costOf(depth);

  static int costOf(AnalysisDepth d) => d == AnalysisDepth.deep ? 2 : 1;

  /// Célzott terjedelem szavakban.
  (int, int) get wordRange => wordRangeOf(depth);

  static (int, int) wordRangeOf(AnalysisDepth d) => switch (d) {
    AnalysisDepth.brief => (700, 1000),
    AnalysisDepth.standard => (1250, 1800),
    AnalysisDepth.deep => (2400, 3300),
  };

  /// A válasz kimeneti token-korlátja (a gondolkodással együtt).
  int get maxTokens => maxTokensOf(depth);

  static int maxTokensOf(AnalysisDepth d) => switch (d) {
    AnalysisDepth.brief => 12000,
    AnalysisDepth.standard => 18000,
    AnalysisDepth.deep => 32000,
  };

  /// Ennyi weboldal nyitható meg teljes szöveggel (pl. a gyorsjelentés
  /// közleménye, a hatósági döntés), hogy a pontos számok ne csak keresési
  /// kivonatból jöjjenek. A szerver ugyanígy korlátoz.
  int get webFetches => webFetchesOf(depth);

  static int webFetchesOf(AnalysisDepth d) => switch (d) {
    AnalysisDepth.brief => 1,
    AnalysisDepth.standard => 2,
    AnalysisDepth.deep => 4,
  };

  /// Egy megnyitott oldalból legfeljebb ennyi token kerül a modell elé.
  static const fetchMaxContentTokens = 10000;

  /// Webkeresések: a csomag alapértéke, rövidnél kettővel kevesebb, mélyebbnél
  /// kettővel több (2 és 12 között).
  static int searchesFor(PlanTier? tier, AnalysisDepth depth) {
    final base = PlanSpec.of(tier ?? PlanTier.trial).webSearches;
    final delta = switch (depth) {
      AnalysisDepth.brief => -2,
      AnalysisDepth.standard => 0,
      AnalysisDepth.deep => 2,
    };
    return (base + delta).clamp(2, 12);
  }

  AnalysisOptions copyWith({
    AnalysisDepth? depth,
    ReaderLevel? readerLevel,
    bool? counterArgument,
    int? webSearches,
    String? readerCountry,
    String? readerCurrency,
    PositionContext? position,
    String? readerNote,
  }) => AnalysisOptions(
    depth: depth ?? this.depth,
    readerLevel: readerLevel ?? this.readerLevel,
    counterArgument: counterArgument ?? this.counterArgument,
    webSearches: webSearches ?? this.webSearches,
    readerCountry: readerCountry ?? this.readerCountry,
    readerCurrency: readerCurrency ?? this.readerCurrency,
    position: position ?? this.position,
    readerNote: readerNote ?? this.readerNote,
  );
}
