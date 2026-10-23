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
  BillingController({
    required this.billing,
    required this.entitlements,
    this.verifier,
    this.onPurchased,
    this.restoreGrace = const Duration(seconds: 4),
  }) {
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

  /// A visszaállítás után ennyit várunk a bolt eseményeire (a visszaállított
  /// vásárlások külön érkeznek), mielőtt „nincs mit visszaállítani”-t mondunk.
  final Duration restoreGrace;
  bool _restoring = false;
  bool get restoring => _restoring;
  bool _sawRestore = false;
  RestoreOutcome? _restoreOutcome;

  /// A legutóbbi visszaállítás eredménye a felületnek (`null`: nem volt, vagy még fut).
  RestoreOutcome? get restoreOutcome => _restoreOutcome;

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
    // Egyszerre egy vásárlás (különben két fizetés is elindulhatna).
    if (_busyProductId != null) return;
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
    if (_restoring) return;
    _restoring = true;
    _sawRestore = false;
    _restoreOutcome = null;
    notifyListeners();
    try {
      await billing.restore();
      if (restoreGrace > Duration.zero) await Future<void>.delayed(restoreGrace);
      _restoreOutcome = _sawRestore ? RestoreOutcome.found : RestoreOutcome.nothing;
    } catch (e) {
      debugPrint('Visszaállítás nem sikerült: $e');
      _restoreOutcome = RestoreOutcome.failed;
    } finally {
      _restoring = false;
      notifyListeners();
    }
  }

  /// A lap megnyitásakor: a korábbi (már lezárt) vásárlás vagy visszaállítás üzenete
  /// ne jelenjen meg újra (a folyamatban lévő fizetésé marad).
  void clearFinished() {
    if (_lastEvent?.status == BillingStatus.pending) return;
    _lastEvent = null;
    if (!_restoring) _restoreOutcome = null;
    notifyListeners();
  }

  Future<void> _onEvent(BillingEvent e) async {
    _lastEvent = e;
    if (_restoring && (e.status == BillingStatus.restored || e.status == BillingStatus.purchased)) _sawRestore = true;
    final granted = e.entitlements;
    if (e.status == BillingStatus.purchased) onPurchased?.call();
    if (granted != null) {
      // A szerver már jóváírta (böngészős fizetés): csak átvesszük.
      await entitlements.replace(granted);
      _busyProductId = null;
    } else if (e.status == BillingStatus.purchased || e.status == BillingStatus.restored) {
      final v = verifier;
      if (v != null) {
        // A bizonylat megmarad, amíg a szerver nem dönt róla; a boltnál csak a mentése
        // után zárjuk le a vásárlást (utána csak innen küldhető újra).
        await _remember(e);
        await _complete(e);
        switch (await _verify(v, e)) {
          case _Verified.ok:
            break;
          case _Verified.rejected:
            // A szerver elutasította: nem „sikeres vásárlás”.
            _lastEvent = BillingEvent(productId: e.productId, status: BillingStatus.error, message: _verifyError);
          case _Verified.later:
            await entitlements.applyProduct(e.productId);
        }
      } else {
        await entitlements.applyProduct(e.productId);
        await _complete(e);
      }
      _busyProductId = null;
    } else if (e.status != BillingStatus.pending) {
      _busyProductId = null;
    }
    notifyListeners();
  }

  static const _pendingKey = 'billing_pending_verifications';

  static Future<void> _complete(BillingEvent e) async {
    try {
      await e.complete?.call();
    } catch (err) {
      debugPrint('A vásárlás lezárása nem sikerült: $err');
    }
  }

  /// Ellenőrzés a szerveren. Ha a szerver döntött (jóváírta vagy érvénytelennek
  /// találta), a bizonylat törlődik a várólistáról; ha nem érhető el, marad.
  Future<_Verified> _verify(PurchaseVerifier v, BillingEvent e) async {
    try {
      await entitlements.replace(await v(e));
      _verifyError = null;
      await _forget(e);
      return _Verified.ok;
    } catch (err) {
      _verifyError = '$err';
      // Érvénytelen bizonylat (vagy ismeretlen termék): újrapróbálni sincs értelme. A
      // zárt előzetes meghívókód-hibája (403 `invite_*`) nem a bizonylaté: az marad.
      if (err is BackendException &&
          err.status >= 400 &&
          err.status < 500 &&
          err.status != 401 &&
          !(err.status == 403 && err.code.startsWith('invite_'))) {
        await _forget(e);
        return _Verified.rejected;
      }
      // A szerver nem érhető el: a bizonylat a várólistán marad, indításkor
      // újra elküldjük. Addig helyben írjuk jóvá.
      debugPrint('Vásárlás ellenőrzése nem sikerült: $err');
      return _Verified.later;
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

/// A szerveroldali ellenőrzés eredménye: jóváírva, elutasítva, vagy később újra.
enum _Verified { ok, rejected, later }

/// A visszaállítás eredménye: talált vásárlást, nem talált semmit, vagy hiba volt.
enum RestoreOutcome { found, nothing, failed }
