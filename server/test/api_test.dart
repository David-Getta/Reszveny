import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
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
      body: {'platform': 'ios', 'product_id': 'whatstock.sub.pro', 'verification_data': 'receipt-1'},
    );
    expect(r['status'], 200);
    expect(r['body']['applied'], isTrue);
    expect(r['body']['entitlements']['tier'], 'pro');
    final again = await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'whatstock.sub.pro', 'verification_data': 'receipt-1'},
    );
    expect(again['body']['applied'], isFalse);
    final pack = await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'whatstock.pack.20', 'verification_data': 'receipt-2'},
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

  test('a yearly plan gives the same monthly allowance as the monthly one', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    final r = await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'whatstock.sub.max.year', 'verification_data': 'r-year'},
    );
    expect(r['status'], 200);
    final e = r['body']['entitlements'];
    expect(e['tier'], 'max');
    // Fizető csomag: az elemzés a teljes értékű modellen fut.
    await call('POST', '/v1/analyze', token: token, body: {'messages': []});
    expect(lastUpstream!['model'], 'claude-opus-5-5');
  });

  test('market proxy adds the Finnhub key', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    final r = await call('GET', '/v1/market/quote?symbol=AAPL', token: token);
    expect(r['status'], 200);
    expect(r['body']['c'], 1.0);
  });

  test('price history comes from Twelve Data in Finnhub candle form, cached', () async {
    var tdCalls = 0;
    final client = MockClient((req) async {
      expect(req.url.host, 'td.test');
      expect(req.url.path, '/time_series');
      expect(req.url.queryParameters['apikey'], 'td-key');
      expect(req.url.queryParameters['symbol'], 'NDAQ');
      expect(req.url.queryParameters['start_date'], '2021-10-10');
      tdCalls++;
      return http.Response(
        jsonEncode({
          'status': 'ok',
          'values': [
            {
              'datetime': '2026-10-08',
              'open': '93.0',
              'high': '94.0',
              'low': '92.5',
              'close': '93.65',
              'volume': '1000',
            },
            {
              'datetime': '2026-10-09',
              'open': '94.27',
              'high': '94.85',
              'low': '93.79',
              'close': '94.29',
              'volume': '2000',
            },
          ],
        }),
        200,
      );
    });
    final td = Api(
      store: store,
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      client: client,
      twelveDataApiKey: 'td-key',
      twelveDataBaseUrl: 'https://td.test',
    );
    Future<Map<String, dynamic>> get(String path, String token) async {
      final res = await td.handler(
        Request('GET', Uri.parse('http://localhost$path'), headers: {'authorization': 'Bearer $token'}),
      );
      return (jsonDecode(await res.readAsString()) as Map).cast<String, dynamic>();
    }

    final anon = await td.handler(Request('POST', Uri.parse('http://localhost/v1/auth/anonymous')));
    final token = (jsonDecode(await anon.readAsString()) as Map)['token'] as String;
    final from = DateTime.utc(2021, 10, 10).millisecondsSinceEpoch ~/ 1000;
    final to = DateTime.utc(2026, 10, 10).millisecondsSinceEpoch ~/ 1000;
    final path = '/v1/market/stock/candle?symbol=NDAQ&resolution=D&from=$from&to=$to';
    final j = await get(path, token);
    expect(j['s'], 'ok');
    expect(j['c'], [93.65, 94.29]);
    expect(j['t'], [
      DateTime.utc(2026, 10, 8).millisecondsSinceEpoch ~/ 1000,
      DateTime.utc(2026, 10, 9).millisecondsSinceEpoch ~/ 1000,
    ]);
    expect(j['v'], [1000, 2000]);
    await get(path, token);
    expect(tdCalls, 1, reason: 'a második kérés a gyorsítótárból jön');
  });

  test('an unknown symbol at Twelve Data gives no_data instead of an error', () async {
    final client = MockClient((req) async => http.Response(jsonEncode({'status': 'error', 'code': 404}), 200));
    final td = Api(
      store: store,
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      client: client,
      twelveDataApiKey: 'td-key',
    );
    final anon = await td.handler(Request('POST', Uri.parse('http://localhost/v1/auth/anonymous')));
    final token = (jsonDecode(await anon.readAsString()) as Map)['token'] as String;
    final res = await td.handler(
      Request(
        'GET',
        Uri.parse('http://localhost/v1/market/stock/candle?symbol=XXXX&from=1&to=2'),
        headers: {'authorization': 'Bearer $token'},
      ),
    );
    expect(jsonDecode(await res.readAsString()), {'s': 'no_data'});
  });

  test('Twelve Data symbol variants: class shares with a dot, foreign tickers with their exchange', () {
    expect(Api.twelveDataSymbols('AAPL'), [
      {'symbol': 'AAPL'},
    ]);
    expect(Api.twelveDataSymbols('BRK-B'), [
      {'symbol': 'BRK-B'},
      {'symbol': 'BRK.B'},
    ]);
    expect(Api.twelveDataSymbols('1796.HK'), [
      {'symbol': '1796.HK'},
      {'symbol': '1796', 'exchange': 'HKEX'},
    ]);
    expect(Api.twelveDataSymbols('OTP.BD').last, {'symbol': 'OTP', 'exchange': 'BSE'});
  });

  test('BRK-B is found at Twelve Data as BRK.B', () async {
    final asked = <String>[];
    final client = MockClient((req) async {
      asked.add(req.url.queryParameters['symbol']!);
      if (req.url.queryParameters['symbol'] != 'BRK.B') {
        return http.Response(jsonEncode({'status': 'error', 'code': 404}), 200);
      }
      return http.Response(
        jsonEncode({
          'status': 'ok',
          'values': [
            {'datetime': '2026-10-15', 'close': '529.22'},
          ],
        }),
        200,
      );
    });
    final td = Api(
      store: store,
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      client: client,
      twelveDataApiKey: 'td-key',
    );
    final anon = await td.handler(Request('POST', Uri.parse('http://localhost/v1/auth/anonymous')));
    final token = (jsonDecode(await anon.readAsString()) as Map)['token'] as String;
    final res = await td.handler(
      Request(
        'GET',
        Uri.parse('http://localhost/v1/market/stock/candle?symbol=BRK-B&from=1&to=1800000000'),
        headers: {'authorization': 'Bearer $token'},
      ),
    );
    final j = jsonDecode(await res.readAsString()) as Map;
    expect(j['s'], 'ok');
    expect(j['c'], [529.22]);
    expect(asked, ['BRK-B', 'BRK.B']);
  });

  test('paid period rolls over on the server', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'android', 'product_id': 'whatstock.sub.normal', 'verification_data': 'r'},
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
    await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'whatstock.sub.normal', 'verification_data': 'r-deep'},
    );
    const deep = {'x-whatstock-depth': 'deep'};
    final ok = await call('POST', '/v1/analyze', token: token, body: {}, headers: deep);
    expect(ok['status'], 200);
    expect((await call('GET', '/v1/me', token: token))['body']['entitlements']['used'], 2);
    // A Normál 8 elemzéséből 7 elfogy, 1 marad.
    for (var i = 0; i < 5; i++) {
      await call('POST', '/v1/analyze', token: token, body: {});
    }
    final blocked = await call('POST', '/v1/analyze', token: token, body: {}, headers: deep);
    expect(blocked['status'], 402);
    expect(blocked['body'], {'error': 'insufficient_quota', 'needed': 2, 'available': 1});
    // Egy rövid még belefér.
    final brief = await call('POST', '/v1/analyze', token: token, body: {}, headers: {'x-whatstock-depth': 'brief'});
    expect(brief['status'], 200);
  });

  test('server caps max_tokens and web searches by plan and depth', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'whatstock.sub.normal', 'verification_data': 'r-n'},
    );
    final greedy = {
      'max_tokens': 64000,
      'tools': [
        {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': 50},
      ],
      'messages': [],
    };
    await call('POST', '/v1/analyze', token: token, body: greedy);
    expect(lastUpstream!['max_tokens'], 18000);
    expect((lastUpstream!['tools'] as List).first['max_uses'], 4); // Normál: 4
    await call('POST', '/v1/analyze', token: token, body: greedy, headers: {'x-whatstock-depth': 'deep'});
    expect(lastUpstream!['max_tokens'], 32000);
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

  test('trial analyses are brief and run on the cheaper model; bought extras get the full analysis', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    final greedy = {
      'max_tokens': 64000,
      'tools': [
        {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': 50},
      ],
      'messages': [],
    };
    const deep = {'x-whatstock-depth': 'deep'};
    await call('POST', '/v1/analyze', token: token, body: greedy, headers: deep);
    expect(lastUpstream!['model'], 'claude-sonnet-5-5');
    expect(lastUpstream!['max_tokens'], 12000); // rövid
    expect((lastUpstream!['tools'] as List).first['max_uses'], 4);
    // A részletes kérés is csak 1 elemzést fogyaszt, mert rövid lett.
    expect((await call('GET', '/v1/me', token: token))['body']['entitlements']['used'], 1);
    await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'whatstock.pack.5', 'verification_data': 'r-pack'},
    );
    await call('POST', '/v1/analyze', token: token, body: greedy);
    await call('POST', '/v1/analyze', token: token, body: greedy);
    expect(lastUpstream!['model'], 'claude-sonnet-5-5');
    // A próba-keret elfogyott: a megvett extra már a teljes értékű elemzés.
    await call('POST', '/v1/analyze', token: token, body: greedy, headers: deep);
    expect(lastUpstream!['model'], 'claude-opus-5-5');
    expect(lastUpstream!['max_tokens'], 32000);
    final me = (await call('GET', '/v1/me', token: token))['body']['entitlements'];
    expect(me['used'], 3);
    expect(me['extra'], 3);
  });

  test('analyze runs on the server model and keeps only the web tools', () async {
    final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
    await call(
      'POST',
      '/v1/purchases/verify',
      token: token,
      body: {'platform': 'ios', 'product_id': 'whatstock.sub.pro', 'verification_data': 'r-model'},
    );
    await call(
      'POST',
      '/v1/analyze',
      token: token,
      body: {
        'model': 'claude-fable-5-1',
        'max_tokens': 1000,
        'tools': [
          {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': 2},
          {'type': 'code_execution_20260120', 'name': 'code_execution'},
        ],
        'mcp_servers': [
          {'type': 'url', 'url': 'https://example.com'},
        ],
        'messages': [],
      },
    );
    expect(lastUpstream!['model'], 'claude-opus-5-5');
    expect((lastUpstream!['tools'] as List).map((t) => t['name']), ['web_search']);
    expect(lastUpstream!.containsKey('mcp_servers'), isFalse);
  });

  test('legal pages are served from markdown in the requested language, 404 until published', () async {
    final dir = Directory.systemTemp.createTempSync('legal');
    File('${dir.path}/terms.hu.md')
        .writeAsStringSync('# Felhasználási feltételek\n\n| A | B |\n| --- | --- |\n| 1 | 2 |');
    final legal = Api(
      store: store,
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      legalDir: dir.path,
    );
    Future<Response> get(String path, [Map<String, String> headers = const {}]) async =>
        legal.handler(Request('GET', Uri.parse('http://localhost$path'), headers: headers));
    final hu = await get('/legal/terms');
    expect(hu.statusCode, 200);
    expect(hu.headers['content-type'], startsWith('text/html'));
    final html = await hu.readAsString();
    expect(html, contains('Felhasználási feltételek</h1>'));
    expect(html, contains('<table>'));
    expect(html, contains('lang="hu"'));
    // Angolul kérve, angol változat híján a magyar jön.
    expect((await get('/legal/terms?lang=en')).statusCode, 200);
    File('${dir.path}/terms.en.md').writeAsStringSync('# Terms of Use');
    expect(
      await (await get('/legal/terms', {'accept-language': 'en-US,en;q=0.9'})).readAsString(),
      contains('Terms of Use'),
    );
    expect(await (await get('/legal/terms', {'accept-language': 'hu-HU'})).readAsString(), contains('Felhasználási'));
    expect((await get('/legal/privacy')).statusCode, 404);
    expect((await get('/legal/secret')).statusCode, 404);
    dir.deleteSync(recursive: true);
  });

  group('helper route (photo recognition, format repair)', () {
    Map<String, dynamic> recognition({String model = 'claude-opus-5-5', Object? content}) => {
      'model': model,
      'max_tokens': 4096,
      'output_config': {
        'effort': 'medium',
        'format': {'type': 'json_schema', 'schema': {}},
      },
      'messages': [
        {
          'role': 'user',
          'content':
              content ??
              [
                {
                  'type': 'image',
                  'source': {'type': 'base64', 'media_type': 'image/jpeg', 'data': 'AAAA'},
                },
                {'type': 'text', 'text': 'Which stock is this?'},
              ],
        },
      ],
    };

    test('is sanitised: server model, capped tokens and effort, no tools', () async {
      final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
      final r = await call(
        'POST',
        '/v1/anthropic/v1/messages',
        token: token,
        body: {
          ...recognition(model: 'claude-fable-5-1'),
          'max_tokens': 64000,
          'output_config': {
            'effort': 'max',
            'format': {'type': 'json_schema', 'schema': {}},
          },
          'tools': [
            {'type': 'web_search_20260209', 'name': 'web_search'},
          ],
          'thinking': {'type': 'enabled', 'budget_tokens': 50000},
        },
      );
      expect(r['status'], 200);
      expect(lastUpstream!['model'], 'claude-opus-5-5');
      expect(lastUpstream!['max_tokens'], Api.helperMaxTokens);
      expect(lastUpstream!['output_config'], {
        'effort': 'medium',
        'format': {'type': 'json_schema', 'schema': {}},
      });
      expect(lastUpstream!.keys, unorderedEquals(['model', 'max_tokens', 'messages', 'output_config']));
      // A normál felismerés változatlanul átmegy.
      await call('POST', '/v1/anthropic/v1/messages', token: token, body: recognition());
      expect(lastUpstream!['max_tokens'], 4096);
      expect((lastUpstream!['messages'] as List).single['content'], hasLength(2));
    });

    test('rejects unusual requests', () async {
      final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
      Future<int> status(Object body) async =>
          (await call('POST', '/v1/anthropic/v1/messages', token: token, body: body))['status'] as int;
      const image = {
        'type': 'image',
        'source': {'type': 'base64', 'media_type': 'image/jpeg', 'data': 'AAAA'},
      };
      expect(await status(recognition(content: [image, image])), 400); // két kép
      expect(
        await status(
          recognition(
            content: [
              {'type': 'tool_result', 'tool_use_id': 'x', 'content': 'y'},
            ],
          ),
        ),
        400,
      );
      expect(await status(recognition(content: 'x' * (Api.helperMaxTextChars + 1))), 400);
      expect(
        await status({
          'messages': [
            for (var i = 0; i < 3; i++) {'role': 'user', 'content': 'hi'},
          ],
        }),
        400,
      );
      expect(await status({'messages': []}), 400);
      expect(await status(recognition(content: 'x' * (Api.helperMaxBytes + 10))), 413);
      expect(upstreamCalls, 0);
      expect((await call('POST', '/v1/anthropic/v1/messages', body: recognition()))['status'], 401);
    });

    test('is rate limited per user per hour and per day', () async {
      final token = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
      final other = (await call('POST', '/v1/auth/anonymous'))['body']['token'] as String;
      Future<int> send(String t) async =>
          (await call('POST', '/v1/anthropic/v1/messages', token: t, body: recognition()))['status'] as int;
      for (var i = 0; i < Api.helperPerHour; i++) {
        expect(await send(token), 200);
      }
      final limited = await call('POST', '/v1/anthropic/v1/messages', token: token, body: recognition());
      expect(limited['status'], 429);
      expect(limited['body']['error'], 'rate_limited');
      expect(await send(other), 200); // másik felhasználót nem érinti
      // Egy óra múlva újra mehet, a napi keretig.
      var sent = Api.helperPerHour;
      while (sent < Api.helperPerDay) {
        now = now.add(const Duration(hours: 1, minutes: 1));
        for (var i = 0; i < Api.helperPerHour && sent < Api.helperPerDay; i++, sent++) {
          expect(await send(token), 200);
        }
      }
      now = now.add(const Duration(hours: 1, minutes: 1));
      expect(await send(token), 429); // napi keret
      now = now.add(const Duration(days: 1));
      expect(await send(token), 200);
    });
  });
}
