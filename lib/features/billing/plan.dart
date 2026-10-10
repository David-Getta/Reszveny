/// Előfizetési csomagok és elemzés-keretek. A termékazonosítók ugyanezek az
/// App Store Connectben és a Play Console-ban (konfigurálhatók).
enum PlanTier { trial, normal, pro, max, ultra }

class PlanSpec {
  const PlanSpec({
    required this.tier,
    required this.productId,
    required this.analysesPerPeriod,
    required this.webSearches,
    this.trialLength,
  });

  final PlanTier tier;

  /// Bolti termékazonosító; a próbának nincs.
  final String productId;

  /// Elemzések száma egy számlázási időszakban (próba: a teljes próbaidőre).
  final int analysesPerPeriod;

  /// Legfeljebb ennyi webkeresés egy normál hosszú elemzéshez (a szerver is
  /// ezt érvényesíti; a rövid kettővel kevesebbet, a mély kettővel többet kap).
  final int webSearches;

  /// Csak a próbaidőnél.
  final Duration? trialLength;

  bool get isPaid => trialLength == null;

  static const trial = PlanSpec(
    tier: PlanTier.trial,
    productId: '',
    analysesPerPeriod: 3,
    webSearches: 6,
    trialLength: Duration(days: 3),
  );
  static const normal = PlanSpec(
    tier: PlanTier.normal,
    productId: 'stocklens.sub.normal',
    analysesPerPeriod: 8,
    webSearches: 4,
  );
  static const pro = PlanSpec(
    tier: PlanTier.pro,
    productId: 'stocklens.sub.pro',
    analysesPerPeriod: 20,
    webSearches: 6,
  );
  static const max = PlanSpec(
    tier: PlanTier.max,
    productId: 'stocklens.sub.max',
    analysesPerPeriod: 80,
    webSearches: 8,
  );
  static const ultra = PlanSpec(
    tier: PlanTier.ultra,
    productId: 'stocklens.sub.ultra',
    analysesPerPeriod: 150,
    webSearches: 10,
  );

  static const List<PlanSpec> paid = [normal, pro, max, ultra];

  static PlanSpec of(PlanTier tier) => switch (tier) {
    PlanTier.trial => trial,
    PlanTier.normal => normal,
    PlanTier.pro => pro,
    PlanTier.max => max,
    PlanTier.ultra => ultra,
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
