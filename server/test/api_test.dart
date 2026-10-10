import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:stocklens_server/src/api.dart';
import 'package:stocklens_server/src/db.dart';
import 'package:stocklens_server/src/purchase_verifier.dart';
import 'package:test/test.dart';

void main() {
  late Store store;
  late Api api;
  late DateTime now;
  var upstreamCalls = 0;
  Map<String, dynamic>? lastUpstream;

  setUp(() {
    now = DateTime.utc(2026, 10, 10, 12);
    store = Store.inMemory()..clock = () => now;
    upstreamCalls = 0;
    final client = MockClient((req) async {
      upstreamCalls++;
      if (req.url.path.endsWith('/v1/messages')) {
        lastUpstream = req.body.isEmpty ? null : (jsonDecode(req.body) as Map).cast<String, dynamic>();
        expect(req.headers['x-api-key'], 'sk-test');
        return http.Response(
          jsonEncode({
            'stop_reason': 'end_turn',
            'content': [
              {'type': 'text', 'text': '{"headline":"x","sections":[],"sources":[]}'},
            ],
            'usage': {'input_tokens': 1000, 'output_tokens': 200},
          }),
          200,
        );
      }
      if (req.url.path.contains('/quote')) {
        expect(req.headers['X-Finnhub-Token'], 'fh-test');
        return http.Response('{"c": 1.0}', 200);
      }
      return http.Response('{}', 404);
    });
    api = Api(
      store: store,
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      client: client,
    );
  });

  Future<Map<String, dynamic>> call(
    String method,
    String path, {
    String? token,
    Object? body,
    Map<String, String> headers = const {},
  }) async {
    final req = Request(
      method,
      Uri.parse('http://localhost$path'),
      headers: {if (token != null) 'authorization': 'Bearer $token', 'content-type': 'application/json', ...headers},
      body: body == null ? null : jsonEncode(body),
    );
    final res = await api.handler(req);
    final text = await res.readAsString();
    return {'status': res.statusCode, 'body': text.isEmpty ? null : jsonDecode(text)};
  }

  test('anonymous auth starts a 3-day trial and /me returns it', () async {
    final r = await call('POST', '/v1/auth/anonymous', body: {'device_id': 'dev1'});
    expect(r['status'], 200);
    final token = r['body']['token'] as String;
    final me = await call('GET', '/v1/me', token: token);
    expect(me['body']['entitlements']['tier'], 'trial');
    expect(me['body']['entitlements']['used'], 0);
    final noAuth = await call('GET', '/v1/me');
    expect(noAuth['status'], 401);
  });

  test('analyze forwards with the server key, consumes quota and blocks at 402', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    for (var i = 0; i < 3; i++) {
      final r = await call(
        'POST',
        '/v1/analyze',
        token: token,
        body: {
          'messages': [
            {'role': 'user', 'content': 'x "symbol": "AAPL"'},
          ],
        },
      );
      expect(r['status'], 200, reason: 'call $i');
    }
    expect(upstreamCalls, 3);
    final blocked = await call('POST', '/v1/analyze', token: token, body: {});
    expect(blocked['status'], 402);
    expect(blocked['body']['error'], 'quota_exceeded');
    expect(upstreamCalls, 3);
    now = now.add(const Duration(days: 4));
    final expired = await call('POST', '/v1/analyze', token: token, body: {});
    expect(expired['body']['error'], 'trial_expired');
  });

  test('purchase verification activates a plan, deduplicates, and packs add credits', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    final r = await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'stocklens.sub.pro', 'verification_data': 'receipt-1'},
    );
    expect(r['status'], 200);
    expect(r['body']['applied'], isTrue);
    expect(r['body']['entitlements']['tier'], 'pro');
    final again = await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'stocklens.sub.pro', 'verification_data': 'receipt-1'},
    );
    expect(again['body']['applied'], isFalse);
    final pack = await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'stocklens.pack.20', 'verification_data': 'receipt-2'},
    );
    expect(pack['body']['entitlements']['extra'], 20);
    final bad = await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'nope', 'verification_data': 'x'},
    );
    expect(bad['status'], 400);
  });

  test('market proxy adds the Finnhub key', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    final r = await call('GET', '/v1/market/quote?symbol=AAPL', token: token);
    expect(r['status'], 200);
    expect(r['body']['c'], 1.0);
  });

  test('paid period rolls over on the server', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'android', 'product_id': 'stocklens.sub.normal', 'verification_data': 'r'},
    );
    for (var i = 0; i < 8; i++) {
      await call('POST', '/v1/analyze', token: token, body: {});
    }
    expect((await call('POST', '/v1/analyze', token: token, body: {}))['status'], 402);
    now = now.add(const Duration(days: 31));
    final me = await call('GET', '/v1/me', token: token);
    expect(me['body']['entitlements']['used'], 0);
    expect((await call('POST', '/v1/analyze', token: token, body: {}))['status'], 200);
  });

  test('in-depth analysis costs 2, and 402 insufficient_quota when only 1 is left', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    const deep = {'x-stocklens-depth': 'deep'};
    final ok = await call('POST', '/v1/analyze', token: token, body: {}, headers: deep);
    expect(ok['status'], 200);
    expect((await call('GET', '/v1/me', token: token))['body']['entitlements']['used'], 2);
    final blocked = await call('POST', '/v1/analyze', token: token, body: {}, headers: deep);
    expect(blocked['status'], 402);
    expect(blocked['body'], {'error': 'insufficient_quota', 'needed': 2, 'available': 1});
    // Egy rövid még belefér.
    final brief = await call('POST', '/v1/analyze', token: token, body: {}, headers: {'x-stocklens-depth': 'brief'});
    expect(brief['status'], 200);
  });

  test('server caps max_tokens and web searches by plan and depth', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'stocklens.sub.normal', 'verification_data': 'r-n'},
    );
    final greedy = {
      'max_tokens': 64000,
      'tools': [
        {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': 50},
      ],
      'messages': [],
    };
    await call('POST', '/v1/analyze', token: token, body: greedy);
    expect(lastUpstream!['max_tokens'], 16000);
    expect((lastUpstream!['tools'] as List).first['max_uses'], 4); // Normál: 4
    await call('POST', '/v1/analyze', token: token, body: greedy, headers: {'x-stocklens-depth': 'deep'});
    expect(lastUpstream!['max_tokens'], 28000);
    expect((lastUpstream!['tools'] as List).first['max_uses'], 6); // Normál + részletes: 4 + 2
    // Kisebb kérést nem emel meg.
    await call(
      'POST',
      '/v1/analyze',
      token: token,
      body: {
        'max_tokens': 8000,
        'tools': [
          {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': 2},
        ],
      },
    );
    expect(lastUpstream!['max_tokens'], 8000);
    expect((lastUpstream!['tools'] as List).first['max_uses'], 2);
  });
}
