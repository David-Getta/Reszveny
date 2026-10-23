import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/backend/backend_client.dart' show BackendException;
import 'billing_service.dart';
import 'entitlement_service.dart';

/// Szerveroldali vásárlás-ellenőrzés: a bizonylatból a friss jogosultság.
typedef PurchaseVerifier = Future<EntitlementState> Function(BillingEvent event);

/// Összeköti a boltot a jogosultságokkal: vásárlási esemény → kvóta.
class BillingController extends ChangeNotifier {
  BillingController({required this.billing, required this.entitlements, this.verifier, this.onPurchased}) {
    _sub = billing.events.listen(_onEvent);
  }

  final BillingService billing;
  final EntitlementService entitlements;

  /// Ha meg van adva (backend-mód), a vásárlást a szerver érvényesíti és a
  /// kliens az ő válaszát veszi át; különben helyben írjuk jóvá.
  final PurchaseVerifier? verifier;

  /// Sikeres vásárlás után (statisztikához).
  final void Function()? onPurchased;

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
    final granted = e.entitlements;
    if (e.status == BillingStatus.purchased) onPurchased?.call();
    if (granted != null) {
      // A szerver már jóváírta (böngészős fizetés): csak átvesszük.
      await entitlements.replace(granted);
      _busyProductId = null;
    } else if (e.status == BillingStatus.purchased || e.status == BillingStatus.restored) {
      final v = verifier;
      if (v != null) {
        // A bizonylat megmarad, amíg a szerver nem dönt róla: a bolt a vásárlást
        // már lezárta (a csomagot el is használta), így csak innen küldhető újra.
        await _remember(e);
        if (!await _verify(v, e)) await entitlements.applyProduct(e.productId);
      } else {
        await entitlements.applyProduct(e.productId);
      }
      _busyProductId = null;
    } else if (e.status != BillingStatus.pending) {
      _busyProductId = null;
    }
    notifyListeners();
  }

  static const _pendingKey = 'billing_pending_verifications';

  /// Ellenőrzés a szerveren; igaz, ha a szerver döntött (jóváírta vagy
  /// érvénytelennek találta) – akkor a bizonylat törlődik a várólistáról.
  Future<bool> _verify(PurchaseVerifier v, BillingEvent e) async {
    try {
      await entitlements.replace(await v(e));
      _verifyError = null;
      await _forget(e);
      return true;
    } catch (err) {
      _verifyError = '$err';
      // Érvénytelen bizonylat (vagy ismeretlen termék): újrapróbálni sincs értelme.
      if (err is BackendException && err.status >= 400 && err.status < 500 && err.status != 401) {
        await _forget(e);
        return true;
      }
      // A szerver nem érhető el: a bizonylat a várólistán marad, indításkor
      // újra elküldjük. Addig helyben írjuk jóvá.
      debugPrint('Vásárlás ellenőrzése nem sikerült: $err');
      return false;
    }
  }

  /// A még ellenőrizetlen bizonylatok újraküldése (indításkor).
  Future<void> retryPending() async {
    final v = verifier;
    if (v == null) return;
    for (final p in await _pending()) {
      await _verify(
        v,
        BillingEvent(
          productId: '${p['product_id']}',
          status: BillingStatus.restored,
          platform: p['platform'] as String?,
          verificationData: p['data'] as String?,
        ),
      );
    }
    notifyListeners();
  }

  static Future<List<Map<String, dynamic>>> _pending() async {
    try {
      final raw = (await SharedPreferences.getInstance()).getString(_pendingKey);
      final list = raw == null ? const [] : jsonDecode(raw) as List;
      return [for (final m in list) (m as Map).cast<String, dynamic>()];
    } catch (_) {
      return [];
    }
  }

  static Future<void> _savePending(List<Map<String, dynamic>> items) async {
    try {
      await (await SharedPreferences.getInstance()).setString(_pendingKey, jsonEncode(items));
    } catch (_) {}
  }

  static Future<void> _remember(BillingEvent e) async {
    final data = e.verificationData;
    if (data == null || data.isEmpty) return;
    final items = await _pending();
    if (items.any((m) => m['data'] == data)) return;
    await _savePending([
      ...items,
      {'product_id': e.productId, 'platform': e.platform, 'data': data},
    ]);
  }

  static Future<void> _forget(BillingEvent e) async {
    final items = await _pending();
    final kept = [
      for (final m in items)
        if (m['data'] != e.verificationData) m,
    ];
    if (kept.length != items.length) await _savePending(kept);
  }

  /// Belépés után újrapróbálja a megszakadt vásárlást.
  Future<void> retry(StoreProduct p) => buy(p);

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
