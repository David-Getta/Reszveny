import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/stripe.dart';
import 'package:test/test.dart';

void main() {
  late Store store;
  late Api api;
  late ConsoleMailer mailer;
  late StripeClient stripe;
  late DateTime now;
  final stripeCalls = <String, Map<String, String>>{};

  setUp(() {
    now = DateTime.utc(2026, 10, 11, 12);
    store = Store.inMemory()..clock = () => now;
    mailer = ConsoleMailer();
    stripeCalls.clear();
    final stripeHttp = MockClient((req) async {
      stripeCalls[req.url.path] = req.method == 'DELETE' ? const {'method': 'DELETE'} : req.bodyFields;
      if (req.method == 'DELETE' && req.url.path.endsWith('/subscriptions/sub_1')) {
        return http.Response(jsonEncode({'id': 'sub_1', 'status': 'canceled'}), 200);
      }
      if (req.url.path.endsWith('/checkout/sessions')) {
        return http.Response(jsonEncode({'id': 'cs_1', 'url': 'https://checkout.stripe.com/c/cs_1'}), 200);
      }
      if (req.url.path.endsWith('/billing_portal/sessions')) {
        return http.Response(jsonEncode({'url': 'https://billing.stripe.com/p/1'}), 200);
      }
      return http.Response('{"error":{"message":"nope"}}', 400);
    });
    stripe = StripeClient(
      secretKey: 'sk_test',
      webhookSecret: 'whsec_test',
      prices: StripeClient.parsePrices(
        'whatstock.sub.pro=price_pro,whatstock.sub.max=price_max,whatstock.pack.5=price_p5',
      ),
      client: stripeHttp,
    );
    api = Api(
      store: store,
      anthropicApiKey: 'sk',
      finnhubApiKey: 'fh',
      verifier: const DevVerifier(),
      mailer: mailer,
      stripe: stripe,
      publicUrl: 'https://api.whatstock.app',
      client: MockClient((_) async => http.Response('{}', 404)),
    );
  });

  Future<Map<String, dynamic>> call(
    String method,
    String path, {
    String? token,
    Object? body,
    Map<String, String>? headers,
    String? raw,
  }) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {if (token != null) 'authorization': 'Bearer $token', 'content-type': 'application/json', ...?headers},
        body: raw ?? (body == null ? null : jsonEncode(body)),
      ),
    );
    final text = await res.readAsString();
    Object? json;
    try {
      json = jsonDecode(text);
    } catch (_) {
      json = text;
    }
    return {'status': res.statusCode, 'body': json};
  }

  Future<String> anon() async => (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;

  Future<Map<String, dynamic>> login(String email, {String? token}) async {
    expect((await call('POST', '/v1/auth/email/start', body: {'email': email}))['status'], 200);
    final code = mailer.sent[email.toLowerCase()]!;
    return call('POST', '/v1/auth/email/verify', token: token, body: {'email': email, 'code': code});
  }

  Future<Map<String, dynamic>> webhook(Map<String, dynamic> event) {
    final payload = jsonEncode(event);
    return call(
      'POST',
      '/v1/stripe/webhook',
      raw: payload,
      headers: {'stripe-signature': stripe.signForTest(payload, now)},
    );
  }

  test('email login attaches the account to the current device and a second device shares it', () async {
    final t1 = await anon();
    final r1 = await login('Dave@Example.com', token: t1);
    expect(r1['status'], 200);
    expect(r1['body']['email'], 'dave@example.com');
    expect(r1['body']['token'], t1); // ugyanaz a felhasználó, ugyanaz a token

    final t2 = await anon();
    final r2 = await login('dave@example.com', token: t2);
    expect(r2['body']['token'], isNot(t2));
    expect(r2['body']['user_id'], r1['body']['user_id']);
    final me = await call('GET', '/v1/me', token: r2['body']['token'] as String);
    expect(me['body']['email'], 'dave@example.com');

    // Kijelentkezés: a második eszköz tokenje érvénytelen lesz.
    await call('POST', '/v1/auth/logout', token: r2['body']['token'] as String);
    expect((await call('GET', '/v1/me', token: r2['body']['token'] as String))['status'], 401);
  });

  test('wrong codes are rejected and the code dies after 5 attempts', () async {
    await call('POST', '/v1/auth/email/start', body: {'email': 'a@b.co'});
    final code = mailer.sent['a@b.co']!;
    for (var i = 0; i < 5; i++) {
      expect((await call('POST', '/v1/auth/email/verify', body: {'email': 'a@b.co', 'code': '000000'}))['status'], 401);
    }
    expect((await call('POST', '/v1/auth/email/verify', body: {'email': 'a@b.co', 'code': code}))['status'], 401);
    expect((await call('POST', '/v1/auth/email/start', body: {'email': 'not-an-email'}))['status'], 400);
  });

  test('checkout requires an account and returns the Stripe URL', () async {
    final t = await anon();
    expect(
      (await call(
        'POST',
        '/v1/billing/checkout',
        token: t,
        body: {'product_id': 'whatstock.sub.pro'},
      ))['body']['error'],
      'login_required',
    );
    await login('pay@example.com', token: t);
    final r = await call('POST', '/v1/billing/checkout', token: t, body: {'product_id': 'whatstock.sub.pro'});
    expect(r['body']['url'], 'https://checkout.stripe.com/c/cs_1');
    final form = stripeCalls['/v1/checkout/sessions']!;
    expect(form['mode'], 'subscription');
    expect(form['line_items[0][price]'], 'price_pro');
    expect(form['customer_email'], 'pay@example.com');
    expect(form['success_url'], 'https://api.whatstock.app/billing/success');
    final pack = await call('POST', '/v1/billing/checkout', token: t, body: {'product_id': 'whatstock.pack.5'});
    expect(pack['status'], 200);
    expect(stripeCalls['/v1/checkout/sessions']!['mode'], 'payment');
  });

  test('webhooks: checkout activates the plan once, renewal opens a new period, upgrade and cancel apply', () async {
    final t = await anon();
    final uid = (await login('sub@example.com', token: t))['body']['user_id'] as String;
    final completed = {
      'id': 'evt_1',
      'type': 'checkout.session.completed',
      'data': {
        'object': {
          'id': 'cs_1',
          'client_reference_id': uid,
          'customer': 'cus_1',
          'subscription': 'sub_1',
          'metadata': {'product_id': 'whatstock.sub.pro'},
        },
      },
    };
    expect((await webhook(completed))['status'], 200);
    await webhook(completed); // ismételt kézbesítés: nem számít kétszer
    var e = store.entitlement(uid);
    expect(e.tier, 'pro');
    store.save(e..used = 7);

    now = now.add(const Duration(days: 30));
    await webhook({
      'id': 'evt_2',
      'type': 'invoice.paid',
      'data': {
        'object': {
          'id': 'in_2',
          'customer': 'cus_1',
          'billing_reason': 'subscription_cycle',
          'lines': {
            'data': [
              {
                'price': {'id': 'price_pro'},
              },
            ],
          },
        },
      },
    });
    e = store.entitlement(uid);
    expect(e.used, 0);

    await webhook({
      'id': 'evt_3',
      'type': 'customer.subscription.updated',
      'data': {
        'object': {
          'customer': 'cus_1',
          'items': {
            'data': [
              {
                'price': {'id': 'price_max'},
              },
            ],
          },
        },
      },
    });
    expect(store.entitlement(uid).tier, 'max');

    final portal = await call('POST', '/v1/billing/portal', token: t);
    expect(portal['body']['url'], 'https://billing.stripe.com/p/1');
    expect(stripeCalls['/v1/billing_portal/sessions']!['customer'], 'cus_1');

    await webhook({
      'id': 'evt_4',
      'type': 'customer.subscription.deleted',
      'data': {
        'object': {'customer': 'cus_1'},
      },
    });
    expect(store.entitlement(uid).tier, isNull);
  });

  test('webhooks with a bad or old signature are rejected', () async {
    const payload = '{"id":"evt_x","type":"checkout.session.completed","data":{"object":{}}}';
    final bad = await call(
      'POST',
      '/v1/stripe/webhook',
      raw: payload,
      headers: {'stripe-signature': 't=1,v1=deadbeef'},
    );
    expect(bad['status'], 400);
    final old = stripe.signForTest(payload, now.subtract(const Duration(minutes: 10)));
    expect((await call('POST', '/v1/stripe/webhook', raw: payload, headers: {'stripe-signature': old}))['status'], 400);
  });

  test('deleting the account cancels the Stripe subscription and removes the user data', () async {
    final token = await anon();
    final r = await login('del@example.com', token: token);
    final uid = r['body']['user_id'] as String;
    await webhook({
      'id': 'evt_del',
      'type': 'checkout.session.completed',
      'data': {
        'object': {
          'id': 'cs_del',
          'client_reference_id': uid,
          'customer': 'cus_1',
          'subscription': 'sub_1',
          'metadata': {'product_id': 'whatstock.sub.pro'},
        },
      },
    });
    await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'whatstock.pack.5', 'verification_data': 'txn-del'},
    );
    expect(store.entitlement(uid).tier, 'pro');

    expect((await call('DELETE', '/v1/account'))['status'], 401);
    final del = await call('DELETE', '/v1/account', token: token);
    expect(del['status'], 200);
    expect(del['body'], {'deleted': true, 'stripe_subscription_cancelled': true});
    expect(stripeCalls.containsKey('/v1/subscriptions/sub_1'), isTrue);
    expect((await call('GET', '/v1/me', token: token))['status'], 401);
    expect(store.userIdForEmail('del@example.com'), isNull);
    // A bizonylat nem váltható be újra egy új fiókon.
    final fresh = await anon();
    final again = await call(
      'POST',
      '/v1/purchases/verify',
      token: fresh,
      body: {'platform': 'ios', 'product_id': 'whatstock.pack.5', 'verification_data': 'txn-del'},
    );
    expect(again['body']['applied'], isFalse);
    // Ugyanazzal az e-maillel újra lehet regisztrálni, de üres fiókkal.
    final back = await login('del@example.com', token: fresh);
    expect(back['body']['user_id'], isNot(uid));
  });

  test('if the Stripe subscription cannot be cancelled, nothing is deleted', () async {
    final token = await anon();
    final r = await login('keep@example.com', token: token);
    final uid = r['body']['user_id'] as String;
    store.setStripe(uid, customerId: 'cus_9', subscriptionId: 'sub_fail');
    final del = await call('DELETE', '/v1/account', token: token);
    expect(del['status'], 502);
    expect(del['body']['error'], 'stripe_cancel_failed');
    expect((await call('GET', '/v1/me', token: token))['status'], 200);
    expect(store.userIdForEmail('keep@example.com'), uid);
  });

  test('packs bought before login move to the account on login', () async {
    final existing = await anon();
    await login('pack@example.com', token: existing);
    final device = await anon();
    await call(
      'POST',
      '/v1/purchases/verify',
      token: device,
      body: {'platform': 'ios', 'product_id': 'whatstock.pack.5', 'verification_data': 'r1'},
    );
    final r = await login('pack@example.com', token: device);
    expect(r['body']['entitlements']['extra'], 5);
  });
}
