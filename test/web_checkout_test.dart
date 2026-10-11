import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/features/account/account_controller.dart';
import 'package:reszveny/features/billing/billing_controller.dart';
import 'package:reszveny/features/billing/billing_service.dart';
import 'package:reszveny/features/billing/demo_billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/billing/web_checkout_billing_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

Map<String, dynamic> _ent(String tier) => {
  'tier': tier,
  'period_start': '2026-10-11T00:00:00.000Z',
  'period_end': '2026-11-10T00:00:00.000Z',
  'used': 0,
  'extra': 0,
};

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('Claude-style flow: sign in with a code, pay in the browser, the plan arrives by polling', () async {
    var tier = 'trial';
    String? email;
    final opened = <Uri>[];
    final client = MockClient((req) async {
      final path = req.url.path;
      http.Response json(Object o, [int s = 200]) => http.Response(jsonEncode(o), s);
      switch (path) {
        case '/v1/auth/anonymous':
          return json({'user_id': 'u1', 'token': 'anon', 'entitlements': _ent(tier)});
        case '/v1/auth/email/start':
          return json({'sent': true});
        case '/v1/auth/email/verify':
          if ((jsonDecode(req.body) as Map)['code'] != '123456') return json({'error': 'invalid_code'}, 401);
          email = 'me@example.com';
          return json({'token': 'acct', 'user_id': 'u1', 'email': email, 'entitlements': _ent(tier)});
        case '/v1/me':
          return json({'user_id': 'u1', 'email': email, 'entitlements': _ent(tier)});
        case '/v1/billing/checkout':
          if (email == null) return json({'error': 'login_required'}, 403);
          return json({'url': 'https://checkout.stripe.com/c/1'});
      }
      return json({'error': 'nf'}, 404);
    });
    final backend = BackendClient(baseUrl: 'https://x.test', inner: client);
    final ent = EntitlementService();
    final account = AccountController(backend: backend, entitlements: ent);
    final billing = WebCheckoutBillingService(
      backend: backend,
      account: account,
      prices: DemoBillingService(latency: Duration.zero),
      openUrl: (u) async {
        opened.add(u);
        return true;
      },
      pollInterval: const Duration(milliseconds: 10),
    );
    final bc = BillingController(billing: billing, entitlements: ent);
    await bc.loadProducts();
    final pro = bc.products.firstWhere((p) => p.id == 'whatstock.sub.pro');

    // Fiók nélkül belépést kér.
    await bc.buy(pro);
    await Future<void>.delayed(Duration.zero);
    expect(bc.lastEvent?.status, BillingStatus.needsLogin);

    // Hibás, majd jó kód.
    await account.startLogin('me@example.com');
    await expectLater(
      account.verify('me@example.com', '000000'),
      throwsA(isA<BackendException>().having((e) => e.code, 'code', 'invalid_code')),
    );
    await account.verify('me@example.com', '123456');
    expect(account.isSignedIn, isTrue);
    expect(backend.token, 'acct');

    // Fizetés a böngészőben; a webhook „megérkezik”, a lekérdezés átveszi.
    await bc.buy(pro);
    expect(opened.single.toString(), 'https://checkout.stripe.com/c/1');
    await Future<void>.delayed(const Duration(milliseconds: 30));
    expect(bc.lastEvent?.status, BillingStatus.pending);
    tier = 'pro';
    await Future<void>.delayed(const Duration(milliseconds: 60));
    expect(ent.state.tier, PlanTier.pro);
    expect(bc.lastEvent?.status, BillingStatus.purchased);

    // Kijelentkezés.
    await account.signOut();
    expect(account.isSignedIn, isFalse);
  });
}
