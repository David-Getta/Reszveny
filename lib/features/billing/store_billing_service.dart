import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart' show ReplacementMode;
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

import 'billing_service.dart';
import 'plan.dart';

/// App Store (iOS, macOS) és Play (Android) vásárlás az `in_app_purchase`
/// bővítménnyel. A vásárlást a szervernek kell hitelesítenie
/// (`verificationData`), mielőtt a kvóta jóváírásra kerül – lásd docs.
class StoreBillingService implements BillingService {
  StoreBillingService({InAppPurchase? iap}) : _iap = iap ?? InAppPurchase.instance {
    _sub = _iap.purchaseStream.listen(
      _onPurchases,
      onError: (Object e) {
        debugPrint('Vásárlási stream hiba: $e');
      },
    );
  }

  final InAppPurchase _iap;
  late final StreamSubscription<List<PurchaseDetails>> _sub;
  final _events = StreamController<BillingEvent>.broadcast();

  @override
  String get name => 'Store';

  @override
  bool get isDemo => false;

  @override
  Stream<BillingEvent> get events => _events.stream;

  @override
  Future<bool> isAvailable() => _iap.isAvailable();

  final Map<String, ProductDetails> _details = {};

  /// Androidon az alapcsomag és minden ajánlat (próbaidő, bevezető ár) külön tétel ugyanazzal
  /// az azonosítóval: a listára és a vásárlásba az alapcsomag kerül (ajánlat-azonosító
  /// nélkül), így a kártya ára és a fizetett ár ugyanaz.
  static bool isBasePlan(ProductDetails d) => switch (d) {
    GooglePlayProductDetails(:final subscriptionIndex?, :final productDetails) =>
      productDetails.subscriptionOfferDetails?[subscriptionIndex].offerId == null,
    _ => true,
  };

  @override
  Future<List<StoreProduct>> products() async {
    final res = await _iap.queryProductDetails(BillingService.allProductIds);
    if (res.notFoundIDs.isNotEmpty) debugPrint('Hiányzó bolti termékek: ${res.notFoundIDs}');
    final out = <StoreProduct>[];
    final seen = <String>{};
    final all = res.productDetails;
    for (final d in all) {
      // Ajánlat, amelynek van alapcsomagja is: kimarad.
      if (!isBasePlan(d) && all.any((o) => o.id == d.id && isBasePlan(o))) continue;
      if (!seen.add(d.id)) continue;
      _details[d.id] = d;
      out.add(
        StoreProduct(
          id: d.id,
          title: d.title,
          price: d.price,
          rawPrice: d.rawPrice,
          currency: d.currencyCode,
          kind: PlanSpec.byProductId(d.id) != null ? StoreProductKind.subscription : StoreProductKind.pack,
        ),
      );
    }
    return out;
  }

  @override
  Future<void> buy(StoreProduct product) async {
    final d = _details[product.id];
    if (d == null) {
      _events.add(BillingEvent(productId: product.id, status: BillingStatus.error, message: 'unknown product'));
      return;
    }
    final param = product.kind == StoreProductKind.subscription && d is GooglePlayProductDetails
        ? GooglePlayPurchaseParam(productDetails: d, changeSubscriptionParam: await _replacing(d.id))
        : PurchaseParam(productDetails: d);
    if (product.kind == StoreProductKind.subscription) {
      await _iap.buyNonConsumable(purchaseParam: param);
    } else {
      await _iap.buyConsumable(purchaseParam: param);
    }
  }

  /// Google Play csomagváltás: a meglévő (másik) előfizetés cseréje – különben a Play egy
  /// második, párhuzamosan számlázó előfizetést indítana. A fel nem használt idő arányosan
  /// beszámít.
  Future<ChangeSubscriptionParam?> _replacing(String productId) async {
    try {
      final android = _iap.getPlatformAddition<InAppPurchaseAndroidPlatformAddition>();
      final past = (await android.queryPastPurchases()).pastPurchases;
      final old = past.where((p) => p.productID != productId && PlanSpec.byProductId(p.productID) != null).firstOrNull;
      return old == null
          ? null
          : ChangeSubscriptionParam(oldPurchaseDetails: old, replacementMode: ReplacementMode.withTimeProration);
    } catch (e) {
      debugPrint('Korábbi előfizetés nem kérdezhető le: $e');
      return null;
    }
  }

  @override
  Future<void> restore() => _iap.restorePurchases();

  void _onPurchases(List<PurchaseDetails> purchases) {
    for (final p in purchases) {
      final status = switch (p.status) {
        PurchaseStatus.purchased => BillingStatus.purchased,
        PurchaseStatus.restored => BillingStatus.restored,
        PurchaseStatus.pending => BillingStatus.pending,
        PurchaseStatus.error => BillingStatus.error,
        PurchaseStatus.canceled => BillingStatus.canceled,
      };
      // A sikeres vásárlást a vezérlő zárja le, miután a bizonylatot elmentette.
      final paid = status == BillingStatus.purchased || status == BillingStatus.restored;
      _events.add(
        BillingEvent(
          productId: p.productID,
          status: status,
          message: p.error?.message,
          platform: p.verificationData.source,
          verificationData: p.verificationData.serverVerificationData,
          complete: paid && p.pendingCompletePurchase ? () => _iap.completePurchase(p) : null,
        ),
      );
      if (!paid && p.pendingCompletePurchase) _iap.completePurchase(p);
    }
  }

  void dispose() {
    _sub.cancel();
    _events.close();
  }
}
