import 'dart:async';

import 'package:flutter/foundation.dart';

import 'billing_service.dart';
import 'entitlement_service.dart';

/// Szerveroldali vásárlás-ellenőrzés: a bizonylatból a friss jogosultság.
typedef PurchaseVerifier = Future<EntitlementState> Function(BillingEvent event);

/// Összeköti a boltot a jogosultságokkal: vásárlási esemény → kvóta.
class BillingController extends ChangeNotifier {
  BillingController({required this.billing, required this.entitlements, this.verifier}) {
    _sub = billing.events.listen(_onEvent);
  }

  final BillingService billing;
  final EntitlementService entitlements;

  /// Ha meg van adva (backend-mód), a vásárlást a szerver érvényesíti és a
  /// kliens az ő válaszát veszi át; különben helyben írjuk jóvá.
  final PurchaseVerifier? verifier;

  String? _verifyError;

  /// A legutóbbi szerveroldali ellenőrzés hibája (null, ha rendben volt).
  String? get verifyError => _verifyError;
  late final StreamSubscription<BillingEvent> _sub;

  List<StoreProduct> _products = const [];
  List<StoreProduct> get products => _products;

  bool _loading = false;
  bool get loading => _loading;

  bool _available = true;
  bool get available => _available;

  BillingEvent? _lastEvent;
  BillingEvent? get lastEvent => _lastEvent;

  String? _busyProductId;
  String? get busyProductId => _busyProductId;

  Future<void> loadProducts() async {
    if (_loading) return;
    _loading = true;
    notifyListeners();
    try {
      _available = await billing.isAvailable();
      _products = _available ? await billing.products() : const [];
    } catch (e) {
      debugPrint('Termékek lekérése nem sikerült: $e');
      _available = false;
      _products = const [];
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  Future<void> buy(StoreProduct p) async {
    _busyProductId = p.id;
    _lastEvent = null;
    notifyListeners();
    try {
      await billing.buy(p);
    } catch (e) {
      _lastEvent = BillingEvent(productId: p.id, status: BillingStatus.error, message: '$e');
      _busyProductId = null;
      notifyListeners();
    }
  }

  Future<void> restore() async {
    try {
      await billing.restore();
    } catch (e) {
      debugPrint('Visszaállítás nem sikerült: $e');
    }
  }

  Future<void> _onEvent(BillingEvent e) async {
    _lastEvent = e;
    if (e.status == BillingStatus.purchased || e.status == BillingStatus.restored) {
      final v = verifier;
      if (v != null) {
        try {
          await entitlements.replace(await v(e));
          _verifyError = null;
        } catch (err) {
          // A szerver nem érhető el: a bizonylat megmarad a boltban, a
          // visszaállítás később újra megpróbálja. Addig helyben írjuk jóvá.
          debugPrint('Vásárlás ellenőrzése nem sikerült: $err');
          _verifyError = '$err';
          await entitlements.applyProduct(e.productId);
        }
      } else {
        await entitlements.applyProduct(e.productId);
      }
      _busyProductId = null;
    } else if (e.status != BillingStatus.pending) {
      _busyProductId = null;
    }
    notifyListeners();
  }

  void clearLastEvent() {
    _lastEvent = null;
    notifyListeners();
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}
