/// Csomagok és keretek – ugyanaz, mint a kliensben (`lib/features/billing/plan.dart`).
/// A szerver a forrása az igazságnak; a kliens csak tükrözi.
class PlanSpec {
  const PlanSpec(this.tier, this.productId, this.analysesPerPeriod);

  final String tier;
  final String productId;
  final int analysesPerPeriod;

  static const trialDays = 3;
  static const trialAnalyses = 3;
  static const periodDays = 30;

  static const paid = [
    PlanSpec('normal', 'stocklens.sub.normal', 8),
    PlanSpec('pro', 'stocklens.sub.pro', 20),
    PlanSpec('max', 'stocklens.sub.max', 80),
    PlanSpec('ultra', 'stocklens.sub.ultra', 150),
  ];

  static const packs = {'stocklens.pack.5': 5, 'stocklens.pack.20': 20, 'stocklens.pack.50': 50};

  static PlanSpec? byTier(String? tier) {
    if (tier == 'trial') return const PlanSpec('trial', '', trialAnalyses);
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
