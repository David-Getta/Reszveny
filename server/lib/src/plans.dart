/// Csomagok és keretek – ugyanaz, mint a kliensben (`lib/features/billing/plan.dart`).
/// A szerver a forrása az igazságnak; a kliens csak tükrözi.
class PlanSpec {
  const PlanSpec(this.tier, this.productId, this.analysesPerPeriod, this.webSearches, {this.yearlyProductId});

  final String tier;
  final String productId;

  /// Éves előfizetés (Pro, Max): ugyanaz a havi keret, egy évre fizetve.
  final String? yearlyProductId;
  final int analysesPerPeriod;

  /// Webkeresések egy alap hosszú elemzéshez (a kliens `PlanSpec.webSearches`).
  final int webSearches;

  static const trialDays = 3;
  static const trialAnalyses = 3;
  static const periodDays = 30;

  static const paid = [
    PlanSpec('normal', 'whatstock.sub.normal', 8, 4),
    PlanSpec('pro', 'whatstock.sub.pro', 18, 6, yearlyProductId: 'whatstock.sub.pro.year'),
    PlanSpec('max', 'whatstock.sub.max', 40, 8, yearlyProductId: 'whatstock.sub.max.year'),
    PlanSpec('ultra', 'whatstock.sub.ultra', 70, 10),
  ];

  static const packs = {'whatstock.pack.5': 5, 'whatstock.pack.20': 20, 'whatstock.pack.50': 50};

  /// Alapárak USD-ben – ugyanaz, mint a kliens `Pricing.baseUsd`-je (teszt
  /// ellenőrzi); az árak oldal ebből dolgozik, a boltok helyi árat mutatnak.
  static const usd = {
    'whatstock.sub.normal': 7.99,
    'whatstock.sub.pro': 18.99,
    'whatstock.sub.max': 41.99,
    'whatstock.sub.ultra': 64.99,
    'whatstock.sub.pro.year': 189.99,
    'whatstock.sub.max.year': 419.99,
    'whatstock.pack.5': 4.99,
    'whatstock.pack.20': 17.99,
    'whatstock.pack.50': 39.99,
  };

  static PlanSpec? byTier(String? tier) {
    if (tier == 'trial') return const PlanSpec('trial', '', trialAnalyses, 6);
    for (final p in paid) {
      if (p.tier == tier) return p;
    }
    return null;
  }

  static PlanSpec? byProductId(String id) {
    for (final p in paid) {
      if (p.productId == id || p.yearlyProductId == id) return p;
    }
    return null;
  }
}

/// Az elemzés hossza (a kliens `AnalysisDepth`-e): mennyi keretet fogyaszt, és
/// mekkora token-, webkeresés- és oldalmegnyitás-korlátot enged a szerver.
enum Depth {
  brief(cost: 1, maxTokens: 12000, searchDelta: -2, fetches: 1),
  standard(cost: 1, maxTokens: 18000, searchDelta: 0, fetches: 2),
  deep(cost: 2, maxTokens: 32000, searchDelta: 2, fetches: 4);

  const Depth({required this.cost, required this.maxTokens, required this.searchDelta, required this.fetches});

  final int cost;
  final int maxTokens;
  final int searchDelta;

  /// Ennyi weboldal nyitható meg teljes szöveggel (pl. a gyorsjelentés közleménye).
  final int fetches;

  /// Egy megnyitott oldalból legfeljebb ennyi token kerül a modell elé (a költség korlátja).
  static const maxFetchTokens = 10000;

  static Depth parse(String? s) => Depth.values.asNameMap()[s ?? ''] ?? Depth.standard;

  /// Engedélyezett webkeresések a csomag és a hossz alapján (2 és 12 között).
  int searchesFor(String? tier) => ((PlanSpec.byTier(tier)?.webSearches ?? 6) + searchDelta).clamp(2, 12);
}
