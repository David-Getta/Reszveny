import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/features/account/account_controller.dart';
import 'package:reszveny/features/billing/billing_controller.dart';
import 'package:reszveny/features/billing/billing_service.dart';
import 'package:reszveny/features/billing/demo_billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/billing/web_checkout_billing_service.dart';

/// Egy bolt, amely a vásárlást elindítja, de eseményt nem küld (a fizetés folyamatban).
class _QuietStore implements BillingService {
  final events_ = StreamController<BillingEvent>.broadcast();
  final bought = <String>[];

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
  Future<void> buy(StoreProduct product) async => bought.add(product.id);
  @override
  Future<void> restore() async {}
}

StoreProduct _product(String id) => StoreProduct(
  id: id,
  title: id,
  price: '\$9.99',
  rawPrice: 9.99,
  currency: 'USD',
  kind: StoreProductKind.subscription,
);

/// Egy kódátnézés fizetési és beállítás-felületi hibáinak ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('a second purchase does not start while one is in flight', () async {
    final store = _QuietStore();
    final bc = BillingController(billing: store, entitlements: EntitlementService());
    await bc.buy(_product('whatstock.sub.pro'));
    await bc.buy(_product('whatstock.sub.max'));
    expect(store.bought, ['whatstock.sub.pro']);
    expect(bc.busyProductId, 'whatstock.sub.pro');
  });

  test('restoring with nothing to restore says so', () async {
    final bc = BillingController(
      billing: _QuietStore(),
      entitlements: EntitlementService(),
      restoreGrace: Duration.zero,
    );
    await bc.restore();
    expect(bc.restoreOutcome, RestoreOutcome.nothing);
    expect(bc.restoring, isFalse);
  });

  test('an abandoned browser checkout ends, so the plan can be chosen again', () async {
    final client = MockClient((req) async {
      http.Response json(Object o, [int s = 200]) => http.Response(jsonEncode(o), s);
      final ent = {'tier': 'trial', 'used': 0, 'extra': 0};
      return switch (req.url.path) {
        '/v1/auth/anonymous' => json({'user_id': 'u1', 'token': 'anon', 'entitlements': ent}),
        '/v1/me' => json({'user_id': 'u1', 'email': 'me@example.com', 'entitlements': ent}),
        '/v1/billing/checkout' => json({'url': 'https://checkout.stripe.com/c/1'}),
        _ => json({'error': 'nf'}, 404),
      };
    });
    final backend = BackendClient(baseUrl: 'https://x.test', inner: client);
    // Ugyanaz, amit a szerver mond: a fizetés nem történt meg.
    final ent = EntitlementService(initial: const EntitlementState(tier: PlanTier.trial));
    final account = AccountController(backend: backend, entitlements: ent, storedEmail: 'me@example.com');
    final billing = WebCheckoutBillingService(
      backend: backend,
      account: account,
      prices: DemoBillingService(latency: Duration.zero),
      openUrl: (u) async => true,
      pollInterval: const Duration(milliseconds: 10),
      pollTimeout: const Duration(milliseconds: 50),
    );
    final bc = BillingController(billing: billing, entitlements: ent);
    await bc.buy(_product('whatstock.sub.pro'));
    expect(bc.busyProductId, 'whatstock.sub.pro');
    await Future<void>.delayed(const Duration(milliseconds: 200));
    expect(bc.busyProductId, isNull);
    expect(bc.lastEvent?.status, BillingStatus.canceled);
    billing.dispose();
  });

  test('the last minutes of the trial still count as a day left', () {
    final now = DateTime(2026, 10, 23, 12);
    EntitlementService trial(Duration left) => EntitlementService(
      clock: () => now,
      initial: EntitlementState(tier: PlanTier.trial, periodStart: now, periodEnd: now.add(left)),
    );
    expect(trial(const Duration(minutes: 30)).trialDaysLeft, 1);
    expect(trial(const Duration(hours: 24, minutes: 30)).trialDaysLeft, 2);
    expect(trial(const Duration(hours: 24)).trialDaysLeft, 1);
  });
}
