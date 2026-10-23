import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/features/billing/billing_controller.dart';
import 'package:reszveny/features/billing/billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';

class _Store implements BillingService {
  final events_ = StreamController<BillingEvent>.broadcast();

  @override
  String get name => 'Store';
  @override
  bool get isDemo => false;
  @override
  Stream<BillingEvent> get events => events_.stream;
  @override
  Future<bool> isAvailable() async => true;
  @override
  Future<List<StoreProduct>> products() async => const [];
  @override
  Future<void> buy(StoreProduct product) async {}
  @override
  Future<void> restore() async {}
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  BillingEvent bought(String data) => BillingEvent(
    productId: 'whatstock.pack.20',
    status: BillingStatus.purchased,
    platform: 'app_store',
    verificationData: data,
  );

  test('a purchase the server could not check is kept and sent again at the next start', () async {
    final store = _Store();
    var online = false;
    final sent = <String?>[];
    Future<EntitlementState> verifier(BillingEvent e) async {
      sent.add(e.verificationData);
      if (!online) throw const SocketException('offline');
      return const EntitlementState(extraCredits: 20);
    }

    final entitlements = EntitlementService();
    final c = BillingController(billing: store, entitlements: entitlements, verifier: verifier);
    store.events_.add(bought('receipt-1'));
    await pumpEventQueue();
    expect(c.verifyError, isNotNull);
    expect(entitlements.state.extraCredits, 20, reason: 'addig helyben jóváírva');

    // Újraindítás: egy új vezérlő a tárolt bizonylatot újra elküldi.
    online = true;
    final again = BillingController(billing: store, entitlements: EntitlementService(), verifier: verifier);
    await again.retryPending();
    expect(sent, ['receipt-1', 'receipt-1']);
    expect(again.verifyError, isNull);
    // Utána nincs több várakozó bizonylat.
    await again.retryPending();
    expect(sent, hasLength(2));
  });

  test('a receipt the server rejects is not sent again', () async {
    final store = _Store();
    var calls = 0;
    Future<EntitlementState> verifier(BillingEvent e) async {
      calls++;
      throw const BackendException(402, 'invalid_purchase');
    }

    final c = BillingController(billing: store, entitlements: EntitlementService(), verifier: verifier);
    store.events_.add(bought('bad'));
    await pumpEventQueue();
    await c.retryPending();
    expect(calls, 1);
  });
}
