import '../billing/plan.dart';

/// Az elemzés hossza. A hosszabb elemzés több keretet fogyaszt.
enum AnalysisDepth { brief, standard, deep }

/// Kinek szól az elemzés: kezdőnek magyaráz, tapasztaltnak tömörebb.
enum ReaderLevel { beginner, experienced }

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

  /// Hány elemzést fogyaszt a keretből.
  int get cost => costOf(depth);

  static int costOf(AnalysisDepth d) => d == AnalysisDepth.deep ? 2 : 1;

  /// Célzott terjedelem szavakban.
  (int, int) get wordRange => wordRangeOf(depth);

  static (int, int) wordRangeOf(AnalysisDepth d) => switch (d) {
    AnalysisDepth.brief => (600, 900),
    AnalysisDepth.standard => (1100, 1600),
    AnalysisDepth.deep => (2200, 3000),
  };

  /// A válasz kimeneti token-korlátja (a gondolkodással együtt).
  int get maxTokens => maxTokensOf(depth);

  static int maxTokensOf(AnalysisDepth d) => switch (d) {
    AnalysisDepth.brief => 10000,
    AnalysisDepth.standard => 16000,
    AnalysisDepth.deep => 28000,
  };

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
  }) => AnalysisOptions(
    depth: depth ?? this.depth,
    readerLevel: readerLevel ?? this.readerLevel,
    counterArgument: counterArgument ?? this.counterArgument,
    webSearches: webSearches ?? this.webSearches,
    readerCountry: readerCountry ?? this.readerCountry,
    readerCurrency: readerCurrency ?? this.readerCurrency,
  );
}
