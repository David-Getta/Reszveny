import 'dart:async';

import 'package:flutter/foundation.dart';

import 'billing_service.dart';
import 'entitlement_service.dart';

/// Összeköti a boltot a jogosultságokkal: vásárlási esemény → kvóta.
class BillingController extends ChangeNotifier {
  BillingController({required this.billing, required this.entitlements}) {
    _sub = billing.events.listen(_onEvent);
  }

  final BillingService billing;
  final EntitlementService entitlements;
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
      // Élesben itt a szerver ellenőrzi a bizonylatot; a kliens a szerver
      // válaszát veszi át. Addig helyben írjuk jóvá.
      await entitlements.applyProduct(e.productId);
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
