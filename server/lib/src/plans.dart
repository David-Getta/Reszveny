/// Csomagok és keretek – ugyanaz, mint a kliensben (`lib/features/billing/plan.dart`).
/// A szerver a forrása az igazságnak; a kliens csak tükrözi.
class PlanSpec {
  const PlanSpec(this.tier, this.productId, this.analysesPerPeriod, this.webSearches);

  final String tier;
  final String productId;
  final int analysesPerPeriod;

  /// Webkeresések egy alap hosszú elemzéshez (a kliens `PlanSpec.webSearches`).
  final int webSearches;

  static const trialDays = 3;
  static const trialAnalyses = 3;
  static const periodDays = 30;

  static const paid = [
    PlanSpec('normal', 'stocklens.sub.normal', 8, 4),
    PlanSpec('pro', 'stocklens.sub.pro', 20, 6),
    PlanSpec('max', 'stocklens.sub.max', 80, 8),
    PlanSpec('ultra', 'stocklens.sub.ultra', 150, 10),
  ];

  static const packs = {'stocklens.pack.5': 5, 'stocklens.pack.20': 20, 'stocklens.pack.50': 50};

  static PlanSpec? byTier(String? tier) {
    if (tier == 'trial') return const PlanSpec('trial', '', trialAnalyses, 6);
    for (final p in paid) {
      if (p.tier == tier) return p;
    }
    return null;
  }

  static PlanSpec? byProductId(String id) {
    for (final p in paid) {
      if (p.productId == id) return p;
    }
    return null;
  }
}

/// Az elemzés hossza (a kliens `AnalysisDepth`-e): mennyi keretet fogyaszt, és
/// mekkora token- és webkeresés-korlátot enged a szerver.
enum Depth {
  brief(cost: 1, maxTokens: 10000, searchDelta: -2),
  standard(cost: 1, maxTokens: 16000, searchDelta: 0),
  deep(cost: 2, maxTokens: 28000, searchDelta: 2);

  const Depth({required this.cost, required this.maxTokens, required this.searchDelta});

  final int cost;
  final int maxTokens;
  final int searchDelta;

  static Depth parse(String? s) => Depth.values.asNameMap()[s ?? ''] ?? Depth.standard;

  /// Engedélyezett webkeresések a csomag és a hossz alapján (2 és 12 között).
  int searchesFor(String? tier) => ((PlanSpec.byTier(tier)?.webSearches ?? 6) + searchDelta).clamp(2, 12);
}
