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
    this.yearlyProductId,
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

  /// Éves előfizetés termékazonosítója (a Pro-nál és a Max-nál): 10 havi díj
  /// egy évre, a keret ugyanúgy havonta újul.
  final String? yearlyProductId;

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
    productId: 'whatstock.sub.normal',
    analysesPerPeriod: 8,
    webSearches: 4,
  );
  static const pro = PlanSpec(
    tier: PlanTier.pro,
    productId: 'whatstock.sub.pro',
    analysesPerPeriod: 18,
    webSearches: 6,
    yearlyProductId: 'whatstock.sub.pro.year',
  );
  static const max = PlanSpec(
    tier: PlanTier.max,
    productId: 'whatstock.sub.max',
    analysesPerPeriod: 40,
    webSearches: 8,
    yearlyProductId: 'whatstock.sub.max.year',
  );
  static const ultra = PlanSpec(
    tier: PlanTier.ultra,
    productId: 'whatstock.sub.ultra',
    analysesPerPeriod: 70,
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

  /// A csomag a havi vagy az éves termékazonosító alapján.
  static PlanSpec? byProductId(String id) {
    for (final p in paid) {
      if (p.productId == id || p.yearlyProductId == id) return p;
    }
    return null;
  }

  /// Éves előfizetés-e a termék.
  static bool isYearlyProduct(String id) => paid.any((p) => p.yearlyProductId == id);

  /// Csomagok éves előfizetéssel.
  static List<PlanSpec> get withYearly => [
    for (final p in paid)
      if (p.yearlyProductId != null) p,
  ];

  /// Egy előfizetési időszak hossza (a boltok havonta újítják).
  static const Duration period = Duration(days: 30);
}

/// Külön vásárolható elemzés-csomag (fogyó termék, nem jár le).
class AddOnPack {
  const AddOnPack({required this.productId, required this.analyses});

  final String productId;
  final int analyses;

  static const List<AddOnPack> all = [
    AddOnPack(productId: 'whatstock.pack.5', analyses: 5),
    AddOnPack(productId: 'whatstock.pack.20', analyses: 20),
    AddOnPack(productId: 'whatstock.pack.50', analyses: 50),
  ];

  static AddOnPack? byProductId(String id) {
    for (final p in all) {
      if (p.productId == id) return p;
    }
    return null;
  }
}
