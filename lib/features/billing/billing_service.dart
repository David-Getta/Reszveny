import 'entitlement_service.dart';
import 'plan.dart';

enum StoreProductKind { subscription, pack }

/// Egy bolti termék a megjelenítendő árral.
class StoreProduct {
  const StoreProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.rawPrice,
    required this.currency,
    required this.kind,
  });

  final String id;
  final String title;

  /// A bolt által formázott ár (pl. „2 990 Ft”).
  final String price;
  final double rawPrice;
  final String currency;
  final StoreProductKind kind;

  PlanSpec? get plan => PlanSpec.byProductId(id);
  bool get isYearly => PlanSpec.isYearlyProduct(id);
  AddOnPack? get pack => AddOnPack.byProductId(id);
}

enum BillingStatus {
  purchased,
  restored,
  pending,
  error,
  canceled,

  /// A böngészős fizetéshez fiók kell: a felület a belépést kéri, aztán újrapróbálja.
  needsLogin,
}

class BillingEvent {
  const BillingEvent({
    required this.productId,
    required this.status,
    this.message,
    this.platform,
    this.verificationData,
    this.entitlements,
    this.complete,
  });

  final String productId;
  final BillingStatus status;
  final String? message;

  /// A bolt neve a szerveroldali ellenőrzéshez (`app_store`, `google_play`, `demo`).
  final String? platform;

  /// A bolt bizonylata (`serverVerificationData`), amit a backend ellenőriz.
  final String? verificationData;

  /// Ha a szerver már jóváírta (böngészős fizetés), a friss jogosultság.
  final EntitlementState? entitlements;

  /// A vásárlás lezárása a boltnál (a csomag elhasználása): csak a bizonylat
  /// mentése után hívandó, különben egy közben bezárt app elveszítené a vásárlást
  /// (lezáratlanul a bolt újra elküldi).
  final Future<void> Function()? complete;
}

/// Fizetés a platform boltján keresztül. A jogosultságot a [BillingController]
/// frissíti az események alapján.
abstract interface class BillingService {
  String get name;

  /// Szimulált bolt (asztali gép, web, teszt).
  bool get isDemo;

  Future<bool> isAvailable();
  Future<List<StoreProduct>> products();
  Future<void> buy(StoreProduct product);
  Future<void> restore();
  Stream<BillingEvent> get events;

  /// Az összes termékazonosító, amit a boltból lekérünk.
  static Set<String> get allProductIds => {
    for (final p in PlanSpec.paid) p.productId,
    for (final p in PlanSpec.withYearly) p.yearlyProductId!,
    for (final p in AddOnPack.all) p.productId,
  };
}
