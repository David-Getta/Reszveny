import 'dart:async';
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

/// Párhuzamos kérések: a várakozás közben lefutó másik kérés ne vezessen dupla
/// előfizetéshez, szellemsorokhoz vagy kijátszott korláthoz.
void main() {
  late Store store;
  late Api api;
  late ConsoleMailer mailer;
  late StripeClient stripe;
  late DateTime now;
  late List<String> stripeLog;
  var sessions = 0;

  setUp(() {
    now = DateTime.utc(2026, 10, 11, 12);
    store = Store.inMemory()..clock = () => now;
    mailer = ConsoleMailer();
    stripeLog = [];
    sessions = 0;
    final stripeHttp = MockClient((req) async {
      stripeLog.add('${req.method} ${req.url.path}${req.url.hasQuery ? '?${req.url.query}' : ''}');
      // Lassú Stripe: a párhuzamos kérések egymásba futnának.
      await Future<void>.delayed(const Duration(milliseconds: 5));
      if (req.url.path.endsWith('/customers')) return http.Response(jsonEncode({'id': 'cus_1'}), 200);
      if (req.url.path.endsWith('/expire')) return http.Response(jsonEncode({'status': 'expired'}), 200);
      if (req.url.path.endsWith('/checkout/sessions')) {
        sessions++;
        return http.Response(
          jsonEncode({'id': 'cs_$sessions', 'url': 'https://checkout.stripe.com/c/cs_$sessions'}),
          200,
        );
      }
      if (req.method == 'DELETE') return http.Response(jsonEncode({'status': 'canceled'}), 200);
      return http.Response('{"error":{"message":"nope"}}', 400);
    });
    stripe = StripeClient(
      secretKey: 'sk_test',
      webhookSecret: 'whsec_test',
      prices: StripeClient.parsePrices('whatstock.sub.pro=price_pro,whatstock.sub.max=price_max'),
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

  Future<(int, Object?)> call(
    String method,
    String path, {
    String? token,
    Object? body,
    Stream<List<int>>? stream,
  }) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {if (token != null) 'authorization': 'Bearer $token', 'content-type': 'application/json'},
        body: stream ?? (body == null ? null : jsonEncode(body)),
      ),
    );
    final text = await res.readAsString();
    return (res.statusCode, text.isEmpty ? null : jsonDecode(text));
  }

  Future<(String, String)> signedIn(String email) async {
    final (_, anon) = await call('POST', '/v1/auth/anonymous');
    final token = (anon as Map)['token'] as String;
    await call('POST', '/v1/auth/email/start', body: {'email': email});
    final (_, v) = await call(
      'POST',
      '/v1/auth/email/verify',
      token: token,
      body: {'email': email, 'code': mailer.sent[email]!},
    );
    return ((v as Map)['token'] as String, v['user_id'] as String);
  }

  Future<int> webhook(Map<String, dynamic> event) async {
    final payload = jsonEncode(event);
    final res = await api.handler(
      Request(
        'POST',
        Uri.parse('http://localhost/v1/stripe/webhook'),
        headers: {'stripe-signature': stripe.signForTest(payload, now)},
        body: payload,
      ),
    );
    return res.statusCode;
  }

  Map<String, dynamic> completed(String uid, String session, String sub, {String status = 'paid'}) => {
    'id': 'evt_$session',
    'type': 'checkout.session.completed',
    'data': {
      'object': {
        'id': session,
        'client_reference_id': uid,
        'customer': 'cus_x',
        'subscription': sub,
        'payment_status': status,
        'metadata': {'product_id': 'whatstock.sub.pro', 'user_id': uid},
      },
    },
  };

  test('two checkouts at once share one customer, and only the newer session stays payable', () async {
    final (token, uid) = await signedIn('dave@example.com');
    final both = await Future.wait([
      for (var i = 0; i < 2; i++)
        call('POST', '/v1/billing/checkout', token: token, body: {'product_id': 'whatstock.sub.pro'}),
    ]);
    expect(both.map((r) => r.$1), [200, 200]);
    expect(stripeLog.where((l) => l.endsWith('/customers')), hasLength(1));
    expect(stripeLog, contains('POST /v1/checkout/sessions/cs_1/expire'));
    expect(store.stripeOf(uid).customerId, 'cus_1');
    // Ha mégis mindkettőt kifizetik: a második előfizetés lemondva (arányos jóváírással), az első marad.
    expect(await webhook(completed(uid, 'cs_1', 'sub_1')), 200);
    expect(await webhook(completed(uid, 'cs_2', 'sub_2')), 200);
    expect(store.stripeOf(uid), (customerId: 'cus_1', subscriptionId: 'sub_1'));
    expect(stripeLog, contains('DELETE /v1/subscriptions/sub_2?prorate=true&invoice_now=true'));
  });

  test('a subscription paid later by bank transfer is cancelled when the account is deleted', () async {
    final (token, uid) = await signedIn('dave@example.com');
    expect(await webhook(completed(uid, 'cs_9', 'sub_9', status: 'unpaid')), 200);
    expect(store.stripeOf(uid).subscriptionId, 'sub_9');
    expect(store.entitlement(uid).tier, isNot('pro'), reason: 'a pénz még nem érkezett meg');
    expect((await call('DELETE', '/v1/account', token: token)).$1, 200);
    expect(stripeLog, contains('DELETE /v1/subscriptions/sub_9'));
    // A fizetés a törlés után érkezik: nincs jóváírás, és az előfizetés lemondva.
    stripeLog.clear();
    final late = completed(uid, 'cs_9', 'sub_9')..['type'] = 'checkout.session.async_payment_succeeded';
    expect(await webhook({...late, 'id': 'evt_late'}), 200);
    expect(store.userExists(uid), isFalse);
    expect(stripeLog, contains('DELETE /v1/subscriptions/sub_9'));
    expect(store.database.select('SELECT * FROM purchases WHERE user_id = ?', [uid]), isEmpty);
  });

  test('a sync upload still being read when the account is deleted is not stored', () async {
    final (token, uid) = await signedIn('dave@example.com');
    final body = StreamController<List<int>>();
    final put = call('PUT', '/v1/sync', token: token, stream: body.stream);
    await Future<void>.delayed(Duration.zero);
    expect((await call('DELETE', '/v1/account', token: token)).$1, 200);
    body.add(
      utf8.encode(
        jsonEncode({
          'data': {
            'favorites': ['AAPL'],
          },
        }),
      ),
    );
    await body.close();
    expect((await put).$1, isNot(200));
    expect(store.syncData(uid), isNull);
  });

  test('a burst of wrong codes still runs into the limit', () async {
    final (_, anon) = await call('POST', '/v1/auth/anonymous');
    final token = (anon as Map)['token'] as String;
    final results = await Future.wait([
      for (var i = 0; i < 20; i++) call('POST', '/v1/referral/redeem', token: token, body: {'code': 'WRONG$i'}),
    ]);
    expect(results.where((r) => r.$1 == 429), isNotEmpty);
  });
}
