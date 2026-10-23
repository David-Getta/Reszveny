import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

/// Egy kódátnézés nyilvános weboldal-hibáinak ellenőrzése.
void main() {
  late List<String> finnhub;
  var finnhubDown = false;

  Api build({String publicUrl = 'https://ws.example'}) => Api(
    store: Store.inMemory(),
    anthropicApiKey: 'sk-test',
    finnhubApiKey: 'fh-test',
    verifier: const DevVerifier(),
    publicUrl: publicUrl,
    adminToken: 'admin-secret-1234567890',
    client: MockClient((req) async {
      finnhub.add(req.url.path);
      if (finnhubDown) return http.Response('{"error":"limit"}', 429);
      if (req.url.path.endsWith('/stock/profile2')) return http.Response(jsonEncode({'name': 'Apple Inc'}), 200);
      if (req.url.path.endsWith('/quote')) return http.Response(jsonEncode({'c': 231.45}), 200);
      return http.Response('{}', 200);
    }),
  );

  setUp(() {
    finnhub = [];
    finnhubDown = false;
  });

  Future<Response> get(Api api, String path, {Map<String, String> headers = const {}, String method = 'GET'}) async =>
      await api.handler(Request(method, Uri.parse('http://localhost$path'), headers: headers));

  test('a public URL with a trailing slash still gives working links', () async {
    final api = build(publicUrl: 'https://ws.example/');
    expect(api.publicUrl, 'https://ws.example');
    final robots = await (await get(api, '/robots.txt')).readAsString();
    expect(robots, isNot(contains('//sitemap')));
  });

  test('language-dependent public pages tell caches that they vary by language', () async {
    final api = build();
    for (final path in ['/', '/pricing', '/glossary', '/sample', '/stocks', '/stocks/AAPL']) {
      final res = await get(api, path, headers: {'accept-language': 'hu-HU'});
      expect(res.headers['vary'], 'Accept-Language', reason: path);
    }
  });

  test('the admin JSON endpoint has the same guessing limit as the form, and is not cached', () async {
    final api = build();
    final statuses = <int>[
      for (var i = 0; i < 12; i++)
        (await get(api, '/admin/stats.json', headers: {'authorization': 'Bearer wrong-$i'})).statusCode,
    ];
    expect(statuses.take(10), everyElement(403));
    expect(statuses.last, 429);
    final ok = await build().handler(
      Request(
        'GET',
        Uri.parse('http://localhost/admin/stats.json'),
        headers: {'authorization': 'Bearer admin-secret-1234567890'},
      ),
    );
    expect(ok.statusCode, 200);
    expect(ok.headers['cache-control'], 'no-store');
  });

  test('a malformed admin form is a wrong key, not a server error', () async {
    final api = build();
    final res = await api.handler(
      Request(
        'POST',
        Uri.parse('http://localhost/admin'),
        headers: {'content-type': 'application/x-www-form-urlencoded'},
        body: 'key=100%',
      ),
    );
    expect(res.statusCode, 403);
  });

  test('returning from the subscription portal does not claim a payment', () async {
    final api = build();
    final res = await get(api, '/billing/return');
    expect(res.statusCode, 200);
    expect(await res.readAsString(), isNot(contains('Payment complete')));
  });

  test('the request log leaves out unsubscribe tokens and share ids', () {
    expect(Api.logPath('u/d51f8c23f2082c187ec7db6b2f7c329d'), 'u/…');
    expect(Api.logPath('s/YvPHyQn87D'), 's/…');
    expect(Api.logPath('s/YvPHyQn87D/image.png'), 's/…/image.png');
    expect(Api.logPath('v1/me'), 'v1/me');
  });

  test('when the data source fails, the stock page is not publicly cached and is not fetched again at once', () async {
    finnhubDown = true;
    final api = build();
    final res = await get(api, '/stocks/AAPL');
    expect(res.statusCode, 200);
    expect(res.headers['cache-control'], 'no-store');
    final calls = finnhub.length;
    await get(api, '/stocks/AAPL');
    expect(finnhub.length, calls);
  });

  test('the landing page keeps its language in og:url, and indexed pages have a canonical link', () async {
    final api = build();
    final hu = await (await get(api, '/?lang=hu')).readAsString();
    expect(hu, contains('<meta property="og:url" content="https://ws.example/?lang=hu">'));
    expect(hu, contains('<link rel="canonical" href="https://ws.example/?lang=hu">'));
  });

  test('an unknown stock page says so, not that a shared analysis expired', () async {
    final api = build();
    final res = await get(api, '/stocks/FOO');
    expect(res.statusCode, 404);
    final body = await res.readAsString();
    expect(body, isNot(contains('shared analysis')));
    expect(body, contains('/stocks'));
  });
}
