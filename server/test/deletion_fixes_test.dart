import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/invites.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/quota.dart';
import 'package:whatstock_server/src/stripe.dart';

/// A fióktörlés hiányosságainak javításai (a negyvenkilencedik kódátnézés).
void main() {
  late Store store;
  late ConsoleMailer mailer;
  late List<String> stripeCalls;
  late bool stripeDown;
  late StripeClient stripe;

  setUp(() {
    store = Store.inMemory();
    mailer = ConsoleMailer();
    stripeCalls = [];
    stripeDown = false;
    stripe = StripeClient(
      secretKey: 'sk_test',
      webhookSecret: 'whsec_test',
      prices: StripeClient.parsePrices('whatstock.sub.pro=price_pro,whatstock.pack.20=price_p20'),
      client: MockClient((req) async {
        stripeCalls.add('${req.method} ${req.url.path}');
        if (stripeDown && req.method == 'DELETE') return http.Response('{"error":{"message":"down"}}', 500);
        return http.Response('{"id":"cus_new","url":"https://x"}', 200);
      }),
    );
  });

  Api build({InviteBook invites = const InviteBook()}) => Api(
    store: store,
    anthropicApiKey: 'k',
    finnhubApiKey: 'k',
    verifier: const DevVerifier(),
    mailer: mailer,
    stripe: stripe,
    invites: invites,
    client: MockClient((_) async => http.Response('{}', 404)),
  );

  Future<({int status, dynamic body})> call(
    Api api,
    String method,
    String path, {
    String? token,
    Object? body,
    String? raw,
    Map<String, String>? headers,
  }) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token', ...?headers},
        body: raw ?? (body == null ? null : jsonEncode(body)),
      ),
    );
    final text = await res.readAsString();
    Object? decoded;
    try {
      decoded = text.isEmpty ? null : jsonDecode(text);
    } catch (_) {
      decoded = text;
    }
    return (status: res.statusCode, body: decoded);
  }

  Future<(String, String)> account(Api api, String email) async {
    final anon = (await call(api, 'POST', '/v1/auth/anonymous')).body as Map;
    await call(api, 'POST', '/v1/auth/email/start', body: {'email': email});
    final r =
        (await call(
              api,
              'POST',
              '/v1/auth/email/verify',
              token: anon['token'] as String,
              body: {'email': email, 'code': mailer.sent[email]},
            )).body
            as Map;
    return (r['token'] as String, r['user_id'] as String);
  }

  test('a Stripe customer that could not be deleted is deleted later by housekeeping', () async {
    final api = build();
    final (t, uid) = await account(api, 'cus@x.io');
    store.setStripe(uid, customerId: 'cus_123');
    stripeDown = true;
    expect((await call(api, 'DELETE', '/v1/account', token: t)).status, 200);
    expect(store.pendingStripeDeletions(), ['cus_123']);
    stripeDown = false;
    stripeCalls.clear();
    await api.retryStripeDeletions();
    expect(stripeCalls, ['DELETE /v1/customers/cus_123']);
    expect(store.pendingStripeDeletions(), isEmpty);
  });

  test('a refund arriving after the account was deleted writes nothing back', () async {
    final api = build();
    final (t, uid) = await account(api, 'refund@x.io');
    store.recordPurchase(
      userId: uid,
      productId: 'whatstock.pack.20',
      platform: 'stripe',
      transactionId: 'cs_1',
      linkKey: 'pi_PLAIN_123',
    );
    await call(api, 'DELETE', '/v1/account', token: t);
    final payload = jsonEncode({
      'id': 'evt_r',
      'type': 'charge.refunded',
      'data': {
        'object': {'id': 'ch_1', 'payment_intent': 'pi_PLAIN_123', 'refunded': true},
      },
    });
    final res = await call(
      api,
      'POST',
      '/v1/stripe/webhook',
      raw: payload,
      headers: {'stripe-signature': stripe.signForTest(payload, DateTime.now())},
    );
    expect(res.status, 200);
    final dump = store.database.select('SELECT transaction_id, link_key FROM purchases').map((r) => '$r').join();
    expect(dump, isNot(contains('pi_PLAIN_123')));
    expect(store.database.select("SELECT 1 FROM entitlements WHERE user_id = 'deleted'"), isEmpty);
  });

  test('nothing is saved for an account that no longer exists (late rewards, races)', () {
    final (uid, _) = store.createAnonymousUser(null);
    store.deleteUser(uid);
    store.save(store.entitlement(uid)..extra = 5);
    store.save(store.entitlement(Store.deletedUser)..extra = 5);
    store.markDigest(uid);
    store.addTesterRedemption('TESTER', uid);
    for (final table in ['entitlements', 'digest_log', 'tester_redemptions']) {
      expect(store.database.select('SELECT 1 FROM $table WHERE user_id IN (?, ?)', [uid, Store.deletedUser]), isEmpty);
    }
    // Létező fióknak továbbra is ment.
    final (live, _) = store.createAnonymousUser(null);
    store.save(store.entitlement(live)..extra = 3);
    expect(Quota(store).available(store.entitlement(live)), greaterThan(0));
    expect(store.entitlement(live).extra, 3);
  });

  test('a deleted account still takes its tester-code and invite slot, without its id', () {
    final (uid, _) = store.createAnonymousUser(null);
    store.addTesterRedemption('TESTER1', uid);
    store.addInviteDevice('PREVIEW1', uid);
    store.deleteUser(uid);
    expect(store.testerRedemptions('TESTER1', uid), (count: 1, mine: false));
    expect(store.inviteDeviceCount('PREVIEW1'), 1);
    expect(store.inviteHasDevice('PREVIEW1', uid), isFalse);
  });

  test('signing in to an existing account leaves nothing of the anonymous one behind', () async {
    final api = build();
    await account(api, 'merge@x.io');
    final anon = (await call(api, 'POST', '/v1/auth/anonymous')).body as Map;
    final anonId = anon['user_id'] as String;
    await call(api, 'POST', '/v1/auth/email/start', body: {'email': 'merge@x.io'});
    await call(
      api,
      'POST',
      '/v1/auth/email/verify',
      token: anon['token'] as String,
      body: {'email': 'merge@x.io', 'code': mailer.sent['merge@x.io']},
    );
    expect(store.userExists(anonId), isFalse);
    expect(store.database.select('SELECT 1 FROM entitlements WHERE user_id = ?', [anonId]), isEmpty);
  });

  test('the account can be deleted from the app with an expired preview invite', () async {
    final api = build(invites: InviteBook.parse('PREVIEW1:Test:2026-01-01:3'));
    store.clock = () => DateTime.utc(2026, 10, 24);
    final (uid, token) = store.createAnonymousUser(null);
    final res = await call(api, 'DELETE', '/v1/account', token: token, headers: {'x-whatstock-invite': 'PREVIEW1'});
    expect(res.status, 200);
    expect(store.userExists(uid), isFalse);
  });

  test('the browser deletion answers the same for a real and an unknown address, even at the daily code cap', () async {
    final api = build();
    await account(api, 'cap@x.io');
    for (var i = 0; i < Api.codesPerAddressPerDay; i++) {
      store.createLoginCode('cap@x.io');
    }
    final known = await call(
      api,
      'POST',
      '/account/delete?lang=en',
      raw: 'step=start&email=cap%40x.io',
      headers: {'content-type': 'application/x-www-form-urlencoded', 'x-forwarded-for': '10.0.0.1'},
    );
    final unknown = await call(
      api,
      'POST',
      '/account/delete?lang=en',
      raw: 'step=start&email=nobody%40x.io',
      headers: {'content-type': 'application/x-www-form-urlencoded', 'x-forwarded-for': '10.0.0.2'},
    );
    expect(known.status, unknown.status);
    expect(known.body, contains('name="code"'));
    expect(unknown.body, contains('name="code"'));
  });
}
