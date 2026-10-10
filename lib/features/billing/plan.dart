/// Előfizetési csomagok és elemzés-keretek. A termékazonosítók ugyanezek az
/// App Store Connectben és a Play Console-ban (konfigurálhatók).
enum PlanTier { trial, normal, pro, max1, max2 }

class PlanSpec {
  const PlanSpec({required this.tier, required this.productId, required this.analysesPerPeriod, this.trialLength});

  final PlanTier tier;

  /// Bolti termékazonosító; a próbának nincs.
  final String productId;

  /// Elemzések száma egy számlázási időszakban (próba: a teljes próbaidőre).
  final int analysesPerPeriod;

  /// Csak a próbaidőnél.
  final Duration? trialLength;

  bool get isPaid => trialLength == null;

  static const trial = PlanSpec(
    tier: PlanTier.trial,
    productId: '',
    analysesPerPeriod: 3,
    trialLength: Duration(days: 3),
  );
  static const normal = PlanSpec(tier: PlanTier.normal, productId: 'stocklens.sub.normal', analysesPerPeriod: 8);
  static const pro = PlanSpec(tier: PlanTier.pro, productId: 'stocklens.sub.pro', analysesPerPeriod: 20);
  static const max1 = PlanSpec(tier: PlanTier.max1, productId: 'stocklens.sub.max1', analysesPerPeriod: 80);
  static const max2 = PlanSpec(tier: PlanTier.max2, productId: 'stocklens.sub.max2', analysesPerPeriod: 150);

  static const List<PlanSpec> paid = [normal, pro, max1, max2];

  static PlanSpec of(PlanTier tier) => switch (tier) {
    PlanTier.trial => trial,
    PlanTier.normal => normal,
    PlanTier.pro => pro,
    PlanTier.max1 => max1,
    PlanTier.max2 => max2,
  };

  static PlanSpec? byProductId(String id) {
    for (final p in paid) {
      if (p.productId == id) return p;
    }
    return null;
  }

  /// Egy előfizetési időszak hossza (a boltok havonta újítják).
  static const Duration period = Duration(days: 30);
}

/// Külön vásárolható elemzés-csomag (fogyó termék, nem jár le).
class AddOnPack {
  const AddOnPack({required this.productId, required this.analyses});

  final String productId;
  final int analyses;

  static const List<AddOnPack> all = [
    AddOnPack(productId: 'stocklens.pack.5', analyses: 5),
    AddOnPack(productId: 'stocklens.pack.20', analyses: 20),
    AddOnPack(productId: 'stocklens.pack.50', analyses: 50),
  ];

  static AddOnPack? byProductId(String id) {
    for (final p in all) {
      if (p.productId == id) return p;
    }
    return null;
  }
}
