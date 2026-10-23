import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/features/billing/billing_controller.dart';
import 'package:reszveny/features/billing/billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';

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

  test('a rejected purchase is not reported as a success', () async {
    final store = _Store();
    Future<EntitlementState> verifier(BillingEvent e) async => throw const BackendException(402, 'invalid_purchase');
    final c = BillingController(billing: store, entitlements: EntitlementService(), verifier: verifier);
    store.events_.add(bought('bad'));
    await pumpEventQueue();
    expect(c.lastEvent?.status, BillingStatus.error);
  });

  test('a closed-preview invite error keeps the receipt for later', () async {
    final store = _Store();
    var calls = 0;
    Future<EntitlementState> verifier(BillingEvent e) async {
      calls++;
      throw const BackendException(403, 'invite_required');
    }

    final c = BillingController(billing: store, entitlements: EntitlementService(), verifier: verifier);
    store.events_.add(bought('kept'));
    await pumpEventQueue();
    await c.retryPending();
    expect(calls, 2);
  });

  test('the store purchase is completed only after its receipt is saved', () async {
    final store = _Store();
    final order = <String>[];
    Future<EntitlementState> verifier(BillingEvent e) async {
      order.add('verify');
      return const EntitlementState(extraCredits: 20);
    }

    BillingController(billing: store, entitlements: EntitlementService(), verifier: verifier);
    store.events_.add(
      BillingEvent(
        productId: 'whatstock.pack.20',
        status: BillingStatus.purchased,
        platform: 'google_play',
        verificationData: 'token',
        complete: () async {
          final saved = (await SharedPreferences.getInstance()).getString('billing_pending_verifications') ?? '';
          order.add(saved.contains('token') ? 'complete after save' : 'complete before save');
        },
      ),
    );
    await pumpEventQueue();
    expect(order, ['complete after save', 'verify']);
  });

  test('no fresh quota past the paid-through date; a refunded pack debt is not shown as credit', () {
    final now = DateTime.utc(2026, 10, 23, 12);
    final s = EntitlementService(
      clock: () => now,
      initial: EntitlementState(
        tier: PlanTier.pro,
        periodStart: now.subtract(const Duration(days: 31)),
        periodEnd: now.subtract(const Duration(hours: 20)),
        paidThrough: now.subtract(const Duration(hours: 20)),
        usedInPeriod: 18,
        extraCredits: -3,
      ),
    );
    expect(s.available, 0);
    expect(s.extraCredits, 0);
    expect(EntitlementState.fromJson({'paid_through': '2026-10-22T16:00:00.000Z'}).paidThrough, isNotNull);
  });
}
