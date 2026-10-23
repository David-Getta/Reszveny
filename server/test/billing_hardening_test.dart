import 'dart:async';
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
      final b = jsonDecode(req.body) as Map;
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
}
