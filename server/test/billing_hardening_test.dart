import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/invites.dart';
import 'package:whatstock_server/src/plans.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/stripe.dart';
import 'package:whatstock_server/src/testers.dart';

void main() {
  late Store store;
  late Api api;
  late DateTime now;
  late ConsoleMailer mailer;
  late StripeClient stripe;
  // Az Anthropic-hívás késleltetése (versenyhelyzethez).
  Completer<void>? gate;
  var upstreamCalls = 0;
  final betas = <String?>[];
  final bodies = <Map>[];
  // A következő válasz (alapból egy befejezett elemzés).
  http.Response Function()? reply;

  String okBody() => jsonEncode({
    'stop_reason': 'end_turn',
    'content': [
      {'type': 'text', 'text': '{}'},
    ],
    'usage': {'input_tokens': 1, 'output_tokens': 1},
  });

  Api build({int trialPerIpPerDay = 10, int referralMax = 10}) => Api(
    store: store,
    anthropicApiKey: 'sk-test',
    finnhubApiKey: 'fh-test',
    verifier: const DevVerifier(),
    mailer: mailer,
    stripe: stripe,
    trialPerIpPerDay: trialPerIpPerDay,
    referralMax: referralMax,
    testers: TesterBook.parse('DAVID-TESZT:Dávid:max:30:2'),
    client: MockClient((req) async {
      upstreamCalls++;
      final g = gate;
      if (g != null) await g.future;
      final b = req.body.isEmpty ? const <String, Object?>{} : jsonDecode(req.body) as Map;
      betas.add(req.headers['anthropic-beta']);
      bodies.add(b);
      if (b['stream'] == true) {
        return http.Response(
          'event: message_start\ndata: {"type":"message_start"}\n\n'
          'event: content_block_delta\ndata: {"type":"content_block_delta","delta":{"text":"full analysis"}}\n\n'
          'event: message_delta\ndata: {"type":"message_delta","delta":{"stop_reason":"end_turn"}}\n\n',
          200,
          headers: {'content-type': 'text/event-stream'},
        );
      }
      return reply?.call() ?? http.Response(okBody(), 200);
    }),
  );

  setUp(() {
    now = DateTime.utc(2026, 10, 11, 12);
    store = Store.inMemory()..clock = () => now;
    mailer = ConsoleMailer();
    gate = null;
    upstreamCalls = 0;
    betas.clear();
    bodies.clear();
    reply = null;
    stripe = StripeClient(
      secretKey: 'sk_test',
      webhookSecret: 'whsec_test',
      prices: StripeClient.parsePrices('whatstock.sub.pro=price_pro,whatstock.sub.max=price_max'),
      client: MockClient((req) async => http.Response('{"id":"cs","url":"https://x"}', 200)),
    );
    api = build();
  });

  Future<({int status, dynamic body})> call(
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
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token', ...?headers},
        body: raw ?? (body == null ? null : jsonEncode(body)),
      ),
    );
    final text = await res.readAsString();
    Object? j;
    try {
      j = jsonDecode(text);
    } catch (_) {
      j = text;
    }
    return (status: res.statusCode, body: j);
  }

  Future<(String, String)> anon({Map<String, String>? headers}) async {
    final r = await call('POST', '/v1/auth/anonymous', headers: headers);
    return (r.body['token'] as String, r.body['user_id'] as String);
  }

  Future<Map<String, dynamic>> login(String email, {String? token}) async {
    await call('POST', '/v1/auth/email/start', body: {'email': email});
    final code = mailer.sent[email.toLowerCase()]!;
    return (await call('POST', '/v1/auth/email/verify', token: token, body: {'email': email, 'code': code})).body
        as Map<String, dynamic>;
  }

  Map<String, dynamic> analyzeBody({bool stream = false}) => {
    'max_tokens': 100,
    'stream': ?(stream ? true : null),
    'messages': [
      {'role': 'user', 'content': 'AAPL'},
    ],
  };

  Future<int> verify(String token, String product, String data) async => (await call(
    'POST',
    '/v1/purchases/verify',
    token: token,
    body: {'platform': 'app_store', 'product_id': product, 'verification_data': data},
  )).status;

  test('a streamed request is not free: the stream flag is dropped and the analysis is charged', () async {
    final (t, uid) = await anon();
    store.save(
      store.entitlement(uid)
        ..tier = null
        ..extra = 1,
    );
    expect((await call('POST', '/v1/analyze', token: t, body: analyzeBody(stream: true))).status, 200);
    expect(bodies.single.containsKey('stream'), isFalse);
    expect(store.entitlement(uid).extra, 0);
    expect((await call('POST', '/v1/analyze', token: t, body: analyzeBody(stream: true))).status, 402);
  });

  test('concurrent analyses cannot spend the same credit twice', () async {
    final (t, uid) = await anon();
    store.save(
      store.entitlement(uid)
        ..tier = null
        ..extra = 1,
    );
    gate = Completer<void>();
    final f = [for (var i = 0; i < 4; i++) call('POST', '/v1/analyze', token: t, body: analyzeBody())];
    await Future<void>.delayed(const Duration(milliseconds: 50));
    gate!.complete();
    final res = await Future.wait(f);
    expect(res.where((r) => r.status == 200), hasLength(1));
    expect(res.where((r) => r.status == 402), hasLength(3));
    expect(store.entitlement(uid).extra, 0);
  });

  test('a pack credited while an analysis runs is kept', () async {
    final (t, uid) = await anon();
    store.save(
      store.entitlement(uid)
        ..tier = null
        ..extra = 1,
    );
    gate = Completer<void>();
    final f = call('POST', '/v1/analyze', token: t, body: analyzeBody());
    await Future<void>.delayed(const Duration(milliseconds: 50));
    expect(await verify(t, 'whatstock.pack.20', 'receipt-1'), 200);
    gate!.complete();
    expect((await f).status, 200);
    expect(store.entitlement(uid).extra, 20, reason: '1 + 20 − 1');
  });

  test('a failed or unfinished analysis gives the reserved credit back', () async {
    final (t, uid) = await anon();
    store.save(
      store.entitlement(uid)
        ..tier = null
        ..extra = 2,
    );
    reply = () => http.Response('{"type":"error"}', 529);
    expect((await call('POST', '/v1/analyze', token: t, body: analyzeBody())).status, 529);
    expect(store.entitlement(uid).extra, 2);
    reply = () => http.Response(jsonEncode({'stop_reason': 'pause_turn', 'content': []}), 200);
    expect((await call('POST', '/v1/analyze', token: t, body: analyzeBody())).status, 200);
    expect(store.entitlement(uid).extra, 2, reason: 'a folytatás számít, nem a félbemaradt rész');
    reply = () => http.Response(jsonEncode({'stop_reason': 'max_tokens', 'content': []}), 200);
    expect((await call('POST', '/v1/analyze', token: t, body: analyzeBody())).status, 200);
    expect(store.entitlement(uid).extra, 2, reason: 'a hosszkorláton megszakadt elemzés nem kerül pénzbe');
    expect((await call('POST', '/v1/analyze', token: t, raw: '{not json')).status, 400);
    expect(store.entitlement(uid).extra, 2);
  });

  test('only the beta features the app uses are passed on', () async {
    final (t, uid) = await anon();
    store.save(
      store.entitlement(uid)
        ..tier = null
        ..extra = 3,
    );
    await call(
      'POST',
      '/v1/analyze',
      token: t,
      body: analyzeBody(),
      headers: {'anthropic-beta': 'server-side-fallback-2026-07-01, expensive-thing-2026-01-01'},
    );
    await call('POST', '/v1/analyze', token: t, body: analyzeBody(), headers: {'anthropic-beta': 'expensive-thing'});
    expect(betas, ['server-side-fallback-2026-07-01', null]);
  });

  test('the trial limit per address cannot be dodged with a forged forwarding header', () async {
    api = build(trialPerIpPerDay: 2);
    final tiers = <String?>[];
    for (var i = 0; i < 6; i++) {
      final r = await call('POST', '/v1/auth/anonymous', headers: {'x-forwarded-for': '198.51.100.$i, 203.0.113.7'});
      tiers.add(r.body['entitlements']['tier'] as String?);
    }
    expect(tiers, ['trial', 'trial', null, null, null, null]);
    // Belső proxy-ugrás a végén: a jobbról első nyilvános cím számít.
    final other = await call('POST', '/v1/auth/anonymous', headers: {'x-forwarded-for': '203.0.113.8, 10.0.0.1'});
    expect(other.body['entitlements']['tier'], 'trial');
  });

  test('redeeming a tester code again does not start it over', () async {
    final (t, uid) = await anon();
    await call('POST', '/v1/referral/redeem', token: t, body: {'code': 'DAVID-TESZT'});
    store.save(store.entitlement(uid)..used = 40);
    await call('POST', '/v1/referral/redeem', token: t, body: {'code': 'DAVID-TESZT'});
    expect(store.entitlement(uid).used, 40);
  });

  test('the helper calls and questions need a plan, a live trial or extra analyses', () async {
    api = build(trialPerIpPerDay: 1);
    await anon(headers: {'x-forwarded-for': '203.0.113.1'});
    final (t, uid) = await anon(headers: {'x-forwarded-for': '203.0.113.1'});
    expect(store.entitlement(uid).tier, isNull);
    final helper = {
      'max_tokens': 100,
      'messages': [
        {'role': 'user', 'content': 'x'},
      ],
    };
    expect((await call('POST', '/v1/anthropic/v1/messages', token: t, body: helper)).status, 402);
    store.save(store.entitlement(uid)..extra = 1);
    expect((await call('POST', '/v1/anthropic/v1/messages', token: t, body: helper)).status, 200);

    final (t2, _) = await anon();
    now = now.add(const Duration(days: 30));
    final ask = {
      'messages': [
        {'role': 'user', 'content': 'hello'},
      ],
    };
    expect(
      (await call('POST', '/v1/ask', token: t2, body: ask)).status,
      402,
      reason: 'lejárt próbaidő',
    );
  });

  test('signing in moves a paid plan and its purchases; the old anonymous token stops working', () async {
    final (anonTok, anonId) = await anon();
    expect(await verify(anonTok, 'whatstock.sub.max', 'receipt-max'), 200);
    final (tb, _) = await anon();
    final b = await login('b@x.io', token: tb);
    final (tc, _) = await anon();
    final c = await login('c@x.io', token: tc);
    final rb = await login('b@x.io', token: anonTok);
    expect(rb['entitlements']['tier'], 'max');
    expect(store.entitlement(anonId).tier, isNull, reason: 'nem másolódik');
    expect(store.hasPurchases(b['user_id'] as String), isTrue);
    expect(store.hasPurchases(anonId), isFalse);
    // Ugyanazzal a névtelen tokennel egy másik fiókba: már nem érvényes.
    final rc = await call('GET', '/v1/me', token: anonTok);
    expect(rc.status, 401);
    expect(store.entitlement(c['user_id'] as String).tier, 'trial');
    expect(upstreamCalls, 0);
  });

  test('store server notifications get through the invite gate', () async {
    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: const DevVerifier(),
      invites: InviteBook.parse('PREVIEW1:Test'),
      googleNotificationToken: 'secret',
    );
    for (final p in ['/v1/stores/apple/notifications', '/v1/stores/google/notifications?token=secret']) {
      final res = await call('POST', p, body: <String, Object?>{});
      expect(res.body is Map ? (res.body as Map)['error'] : null, isNot(anyOf('invite_required', 'invite_invalid')));
    }
    expect((await call('GET', '/v1/me')).body['error'], 'invite_required');
  });

  test('a subscription ends after its paid period (plus a short grace) unless renewed', () async {
    final (t, uid) = await anon();
    expect(await verify(t, 'whatstock.sub.normal', 'receipt-sub'), 200);
    final paid = store.entitlement(uid).paidThrough!;
    expect(paid, now.add(const Duration(days: 30)));
    store.save(store.entitlement(uid)..used = 8);
    // A kifizetett időszak után, a türelmi időben: nincs új keret (a régi marad).
    now = paid.add(const Duration(days: 1));
    expect((store.entitlement(uid).tier, store.entitlement(uid).used), ('normal', 8));
    now = paid.add(Store.paidGrace);
    expect(store.entitlement(uid).tier, isNull);
    expect((await call('POST', '/v1/analyze', token: t, body: analyzeBody())).status, 402);
    // Megújítás (új tranzakció): újra él, új kerettel.
    expect(await verify(t, 'whatstock.sub.normal', 'receipt-renewal'), 200);
    expect((store.entitlement(uid).tier, store.entitlement(uid).used), ('normal', 0));
  });

  test('a store subscription period follows the store: the quota resets with the renewal, not on day 30', () async {
    final until = now.add(const Duration(days: 31));
    api = Api(store: store, anthropicApiKey: 'k', finnhubApiKey: 'k', verifier: _FixedVerifier(until), mailer: mailer);
    final (t, uid) = await anon();
    expect(await verify(t, 'whatstock.sub.pro', 'receipt'), 200);
    final e = store.entitlement(uid);
    expect((e.periodEnd, e.paidThrough), (until, until));
    // Éves előfizetés: havonta gördülő keret, a kifizetett idő egy év.
    final year = now.add(const Duration(days: 365));
    api = Api(store: store, anthropicApiKey: 'k', finnhubApiKey: 'k', verifier: _FixedVerifier(year), mailer: mailer);
    expect(await verify(t, 'whatstock.sub.pro', 'receipt-year'), 200);
    final y = store.entitlement(uid);
    expect((y.periodEnd, y.paidThrough), (now.add(const Duration(days: 30)), year));
    now = now.add(const Duration(days: 45));
    expect(store.entitlement(uid).tier, 'pro', reason: 'az éves előfizetés közben tovább gördül');
  });

  Future<int> webhook(Map<String, dynamic> event) async {
    final payload = jsonEncode(event);
    return (await call(
      'POST',
      '/v1/stripe/webhook',
      raw: payload,
      headers: {'stripe-signature': stripe.signForTest(payload, now)},
    )).status;
  }

  Map<String, dynamic> event(String id, String type, Map<String, dynamic> object) => {
    'id': id,
    'type': type,
    'data': {'object': object},
  };

  test('Stripe: no second subscription; unpaid checkouts are not credited; refunds and disputes take back', () async {
    final (t, _) = await anon();
    final uid = (await login('pay@x.io', token: t))['user_id'] as String;
    // Késleltetett fizetés: a „completed” még nem fizetett, csak az „async_payment_succeeded”.
    final session = {
      'id': 'cs_1',
      'client_reference_id': uid,
      'customer': 'cus_1',
      'subscription': 'sub_1',
      'metadata': {'product_id': 'whatstock.sub.pro'},
    };
    await webhook(event('e1', 'checkout.session.completed', {...session, 'payment_status': 'unpaid'}));
    expect(store.entitlement(uid).tier, 'trial');
    await webhook(event('e2', 'checkout.session.async_payment_succeeded', {...session, 'payment_status': 'paid'}));
    expect(store.entitlement(uid).tier, 'pro');
    // Második előfizetés élő mellé: nem.
    final second = await call('POST', '/v1/billing/checkout', token: t, body: {'product_id': 'whatstock.sub.max'});
    expect((second.status, second.body['error']), (409, 'already_subscribed'));

    // Csomag, majd visszatérítés: a csomag visszavonva (egyszer).
    await webhook(
      event('e3', 'checkout.session.completed', {
        'id': 'cs_2',
        'client_reference_id': uid,
        'customer': 'cus_1',
        'payment_intent': 'pi_pack',
        'payment_status': 'paid',
        'metadata': {'product_id': 'whatstock.pack.20'},
      }),
    );
    expect(store.entitlement(uid).extra, 20);
    await webhook(event('e4', 'charge.refunded', {'id': 'ch_1', 'payment_intent': 'pi_pack'}));
    await webhook(event('e5', 'charge.dispute.created', {'id': 'dp_1', 'payment_intent': 'pi_pack'}));
    expect(store.entitlement(uid).extra, 0);
    // Az előfizetés első számlájának visszatérítése: a csomag megszűnik.
    await webhook(
      event('e6', 'invoice.paid', {
        'id': 'in_1',
        'customer': 'cus_1',
        'billing_reason': 'subscription_create',
        'payment_intent': 'pi_sub',
        'lines': {
          'data': [
            {
              'price': {'id': 'price_pro'},
              'period': {'end': now.add(const Duration(days: 31)).millisecondsSinceEpoch ~/ 1000},
            },
          ],
        },
      }),
    );
    expect(store.entitlement(uid).paidThrough, now.add(const Duration(days: 31)));
    await webhook(event('e7', 'charge.refunded', {'id': 'ch_2', 'payment_intent': 'pi_sub'}));
    expect(store.entitlement(uid).tier, isNull);
  });

  test('a store subscription of a deleted account can be restored on a new account', () async {
    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: _FixedVerifier(now.add(const Duration(days: 30))),
      mailer: mailer,
    );
    final (t, _) = await anon();
    expect(await verify(t, 'whatstock.sub.pro', 'r1'), 200);
    expect((await call('DELETE', '/v1/account', token: t)).status, 200);
    final (t2, uid2) = await anon();
    expect(await verify(t2, 'whatstock.sub.pro', 'r1'), 200);
    expect(store.entitlement(uid2).tier, 'pro');
    expect(store.userForPurchaseLink('app_store', 'link-r1'), uid2);
  });

  test('login codes cannot be guessed at length: a daily cap on codes and on wrong attempts', () async {
    var sent = 0;
    for (var i = 0; i < 12; i++) {
      now = now.add(const Duration(minutes: 13));
      final r = await call('POST', '/v1/auth/email/start', body: {'email': 'target@x.io'});
      if (r.status == 200) sent++;
    }
    expect(sent, 10);
    // Rossz kódok: legfeljebb 15 próbálkozás naponta (az utána beírt helyes kód sem megy át).
    now = now.add(const Duration(hours: 2));
    for (var round = 0; round < 4; round++) {
      await call('POST', '/v1/auth/email/start', body: {'email': 'victim@x.io'});
      for (var i = 0; i < 5; i++) {
        await call('POST', '/v1/auth/email/verify', body: {'email': 'victim@x.io', 'code': '000000'});
      }
      now = now.add(const Duration(minutes: 13));
    }
    await call('POST', '/v1/auth/email/start', body: {'email': 'victim@x.io'});
    final code = mailer.sent['victim@x.io']!;
    final r = await call('POST', '/v1/auth/email/verify', body: {'email': 'victim@x.io', 'code': code});
    expect(r.status, 401);
    // Másnap újra lehet.
    now = now.add(const Duration(days: 1, hours: 1));
    await call('POST', '/v1/auth/email/start', body: {'email': 'victim@x.io'});
    final next = mailer.sent['victim@x.io']!;
    expect((await call('POST', '/v1/auth/email/verify', body: {'email': 'victim@x.io', 'code': next})).status, 200);
  });

  test('oversized bodies are refused before they are read, also without a length header', () async {
    final big = await api.handler(
      Request(
        'POST',
        Uri.parse('http://localhost/v1/auth/anonymous'),
        headers: {'content-type': 'application/json', 'content-length': '${2 * 1024 * 1024}'},
        body: 'x' * (2 * 1024 * 1024),
      ),
    );
    expect(big.statusCode, 413);
    final chunked = await api.handler(
      Request(
        'POST',
        Uri.parse('http://localhost/v1/auth/anonymous'),
        headers: {'content-type': 'application/json'},
        body: Stream<List<int>>.fromIterable([for (var i = 0; i < 40; i++) List.filled(64 * 1024, 32)]),
      ),
    );
    expect(chunked.statusCode, 413);
    // Túl hosszú eszköz-azonosító nem tárolódik.
    final r = await call('POST', '/v1/auth/anonymous', body: {'device_id': 'd' * 500});
    final row = store.database.select('SELECT device_id FROM users WHERE id = ?', [r.body['user_id']]).single;
    expect(row['device_id'], isNull);
  });

  test('new anonymous accounts are limited per address', () async {
    var ok = 0;
    for (var i = 0; i < Api.signupsPerIpPerHour + 3; i++) {
      final r = await call('POST', '/v1/auth/anonymous', headers: {'x-forwarded-for': '203.0.113.50'});
      if (r.status == 200) ok++;
    }
    expect(ok, Api.signupsPerIpPerHour);
    expect((await call('POST', '/v1/auth/anonymous', headers: {'x-forwarded-for': '203.0.113.51'})).status, 200);
  });

  test('the market proxy serves only the endpoints the app uses, and caches quotes briefly', () async {
    final (t, _) = await anon();
    expect((await call('GET', '/v1/market/stock/insider-sentiment?symbol=AAPL', token: t)).status, 404);
    expect((await call('GET', '/v1/market/crypto/candle?symbol=X', token: t)).status, 404);
    final before = upstreamCalls;
    expect((await call('GET', '/v1/market/quote?symbol=AAPL', token: t)).status, 200);
    expect((await call('GET', '/v1/market/quote?symbol=aapl', token: t)).status, 200);
    expect(upstreamCalls - before, 1, reason: '30 másodpercig a tárolt ár');
    now = now.add(const Duration(seconds: 31));
    await call('GET', '/v1/market/quote?symbol=AAPL', token: t);
    expect(upstreamCalls - before, 2);
  });

  test('analysis requests keep only the fields the app uses', () {
    final body = jsonDecode(
      Api.limitRequest(
        jsonEncode({
          'max_tokens': 100,
          'messages': [
            {'role': 'user', 'content': 'AAPL'},
          ],
          'fallbacks': [
            {'model': 'claude-opus-4-8', 'max_tokens': 128000},
          ],
          'cache_control': {'type': 'ephemeral', 'ttl': '1h'},
          'inference_geo': 'us',
          'tools': {'type': 'web_search'},
          'output_config': {'effort': 'max'},
        }),
        depth: Depth.standard,
        tier: 'pro',
      )!,
    ) as Map;
    expect(body.keys, unorderedEquals(['model', 'max_tokens', 'messages', 'output_config']));
    expect(body['output_config'], <String, Object?>{});
  });

  test('telemetry accepts known platforms and real version numbers only', () async {
    final (t, _) = await anon();
    await call(
      'POST',
      '/v1/telemetry',
      token: t,
      body: {
        'platform': 'evil-platform',
        'version': '<script>',
        'events': {'paywall_view': 1},
      },
    );
    await call(
      'POST',
      '/v1/telemetry',
      token: t,
      body: {
        'platform': 'iOS',
        'version': '0.2.253+256',
        'events': {'paywall_view': 1},
      },
    );
    final rows = store.database.select('SELECT DISTINCT platform, version FROM event_counts ORDER BY platform');
    expect([for (final r in rows) '${r['platform']} ${r['version']}'], ['iOS 0.2.253+256', 'other other']);
  });

  test('sharing needs a plan, a live trial or extra analyses', () async {
    api = build(trialPerIpPerDay: 1);
    await anon(headers: {'x-forwarded-for': '203.0.113.60'});
    final (t, _) = await anon(headers: {'x-forwarded-for': '203.0.113.60'});
    final r = await call(
      'POST',
      '/v1/share',
      token: t,
      body: {'symbol': 'AAPL', 'name': 'Apple', 'language': 'en', 'summary': 'x'},
    );
    expect(r.status, anyOf(402, 400));
    if (r.status == 400) fail('a megosztás tartalma itt nem számít: előbb a jogosultság');
  });

  test('wrong codes from one address do not lock the owner out from another', () async {
    const attacker = {'x-forwarded-for': '203.0.113.5'};
    const owner = {'x-forwarded-for': '198.51.100.7'};
    for (var round = 0; round < 4; round++) {
      await call('POST', '/v1/auth/email/start', body: {'email': 'victim@x.io'}, headers: attacker);
      for (var i = 0; i < 5; i++) {
        await call(
          'POST',
          '/v1/auth/email/verify',
          body: {'email': 'victim@x.io', 'code': '000000'},
          headers: attacker,
        );
      }
      now = now.add(const Duration(minutes: 13));
    }
    await call('POST', '/v1/auth/email/start', body: {'email': 'victim@x.io'}, headers: owner);
    final code = mailer.sent['victim@x.io']!;
    final r = await call('POST', '/v1/auth/email/verify', body: {'email': 'victim@x.io', 'code': code}, headers: owner);
    expect(r.status, 200);
  });

  test('malformed login fields and deeply nested sync data are 400s, not 500s', () async {
    final e = await call('POST', '/v1/auth/email/verify', body: {'email': 42, 'code': 123456});
    expect(e.status, 401);
    final s = await call('POST', '/v1/auth/email/start', body: {'email': 42});
    expect(s.status, 400);
    final t = (await login('deep@x.io'))['token'] as String;
    final deep = '{"data":{"x":${'[' * 5000}${']' * 5000}}}';
    final r = await call('PUT', '/v1/sync', token: t, raw: deep);
    expect(r.status, 400);
  });

  test('shares made before signing in to an account go with it when the account is deleted', () async {
    final (t, uid) = await anon();
    store.save(
      store.entitlement(uid)
        ..tier = 'pro'
        ..periodStart = now
        ..periodEnd = now.add(const Duration(days: 30)),
    );
    final created = await call(
      'POST',
      '/v1/share',
      token: t,
      body: {'symbol': 'AAPL', 'name': 'Apple', 'language': 'en', 'summary': 'x', 'headline': 'h'},
    );
    expect(created.status, 200, reason: '${created.body}');
    final id = created.body['id'] as String;
    // Másik eszközön már van fiók; ez az eszköz belép oda (összevonás), majd törli.
    final first = await login('owner@x.io');
    final merged = await login('owner@x.io', token: t);
    expect(merged['user_id'], first['user_id']);
    expect((await call('DELETE', '/v1/account', token: merged['token'] as String)).status, 200);
    expect((await call('GET', '/s/$id')).status, 404);
  });

  test('the weekly summary unsubscribe link: a confirmation page, then the switch goes off (with its time)', () async {
    final t = (await login('sub@x.io'))['token'] as String;
    final uid = store.userIdForEmail('sub@x.io')!;
    await call(
      'PUT',
      '/v1/sync',
      token: t,
      body: {
        'data': {
          'weekly_digest': true,
          'favorites': ['AAPL'],
        },
      },
    );
    final token = store.unsubscribeToken(uid);
    expect((await call('GET', '/u/$token')).status, 200);
    expect((jsonDecode(store.syncData(uid)!.data) as Map)['weekly_digest'], true, reason: 'GET nem iratkoztat le');
    expect((await call('POST', '/u/$token', raw: 'List-Unsubscribe=One-Click')).status, 200);
    final data = jsonDecode(store.syncData(uid)!.data) as Map;
    expect(data['weekly_digest'], false);
    expect((data['switches_at'] as Map)['weekly_digest'], isNotNull);
    expect((await call('GET', '/u/${'0' * 32}')).status, 404);
  });
}

/// Ellenőrző, amely mindent elfogad, a megadott lejárattal.
class _FixedVerifier implements PurchaseVerifier {
  _FixedVerifier(this.until);

  final DateTime until;

  @override
  Future<VerifiedPurchase?> verify({
    required String platform,
    required String productId,
    required String verificationData,
  }) async => VerifiedPurchase('fixed-$verificationData', linkKey: 'link-$verificationData', expiresAt: until);
}
