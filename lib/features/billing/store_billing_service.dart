import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

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

  @override
  Future<List<StoreProduct>> products() async {
    final res = await _iap.queryProductDetails(BillingService.allProductIds);
    if (res.notFoundIDs.isNotEmpty) debugPrint('Hiányzó bolti termékek: ${res.notFoundIDs}');
    final out = <StoreProduct>[];
    for (final d in res.productDetails) {
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
    final param = PurchaseParam(productDetails: d);
    if (product.kind == StoreProductKind.subscription) {
      await _iap.buyNonConsumable(purchaseParam: param);
    } else {
      await _iap.buyConsumable(purchaseParam: param);
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
      _events.add(
        BillingEvent(
          productId: p.productID,
          status: status,
          message: p.error?.message,
          platform: p.verificationData.source,
          verificationData: p.verificationData.serverVerificationData,
        ),
      );
      if (p.pendingCompletePurchase) _iap.completePurchase(p);
    }
  }

  void dispose() {
    _sub.cancel();
    _events.close();
  }
}
