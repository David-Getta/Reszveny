import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/rate_limit.dart';

/// Webes biztonság és skálázás (az ötvenegyedik kódátnézés).
void main() {
  late Store store;
  late Api api;

  setUp(() {
    store = Store.inMemory();
    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: const DevVerifier(),
      adminToken: 'admin-secret-1234567890',
      publicUrl: 'https://ws.example',
      bodyIdleTimeout: const Duration(milliseconds: 200),
      client: MockClient((_) async => http.Response('{}', 404)),
    );
  });

  test('HTML pages cannot be framed or run scripts; every answer is nosniff; API JSON is not cached', () async {
    final page = await api.handler(Request('GET', Uri.parse('https://ws.example/account/delete')));
    expect(page.headers['x-frame-options'], 'DENY');
    expect(page.headers['content-security-policy'], contains("frame-ancestors 'none'"));
    expect(page.headers['x-content-type-options'], 'nosniff');
    expect(page.headers['strict-transport-security'], startsWith('max-age='));
    final me = await api.handler(Request('POST', Uri.parse('https://ws.example/v1/auth/anonymous')));
    expect(me.headers['cache-control'], 'no-store');
    expect(me.headers['x-frame-options'], isNull);
  });

  test('a body that stops arriving is cut off (408) instead of holding the connection', () async {
    final stalled = StreamController<List<int>>();
    stalled.add(utf8.encode('step=start&email='));
    final res = await Future.value(
      api.handler(
        Request(
          'POST',
          Uri.parse('https://ws.example/v1/auth/email/start'),
          headers: {'content-type': 'application/json', 'content-length': '1000'},
          body: stalled.stream,
        ),
      ),
    ).timeout(const Duration(seconds: 5));
    expect(res.statusCode, anyOf(408, 400));
    unawaited(stalled.close());
  });

  test('a form posted from another site does not start a deletion or an admin login', () async {
    Future<Response> post(String path, Map<String, String> headers) async => api.handler(
      Request(
        'POST',
        Uri.parse('https://ws.example$path'),
        headers: {'content-type': 'application/x-www-form-urlencoded', ...headers},
        body: 'step=start&email=a%40b.c&key=admin-secret-1234567890',
      ),
    );
    expect((await post('/account/delete', {'sec-fetch-site': 'cross-site'})).statusCode, 403);
    expect((await post('/account/delete', {'origin': 'https://evil.example'})).statusCode, 403);
    expect((await post('/admin', {'origin': 'https://evil.example'})).statusCode, 403);
    // Ugyanarról az oldalról (és fejléc nélkül) működik.
    expect((await post('/account/delete', {'origin': 'https://ws.example'})).statusCode, 200);
    expect((await post('/admin', {})).statusCode, 200);
  });

  test('a short admin key turns the admin page off', () async {
    final weak = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: const DevVerifier(),
      adminToken: 'x',
      client: MockClient((_) async => http.Response('{}', 404)),
    );
    expect((await weak.handler(Request('GET', Uri.parse('http://localhost/admin')))).statusCode, 404);
  });

  test('only a stock the account has analysed can be shared', () async {
    final anon = jsonDecode(
      await (await api.handler(Request('POST', Uri.parse('https://ws.example/v1/auth/anonymous')))).readAsString(),
    ) as Map;
    final token = anon['token'] as String;
    Future<int> share(String symbol) async => (await api.handler(
      Request(
        'POST',
        Uri.parse('https://ws.example/v1/share'),
        headers: {'authorization': 'Bearer $token', 'content-type': 'application/json'},
        body: jsonEncode({'symbol': symbol, 'headline': 'Fake news', 'labels': {}}),
      ),
    )).statusCode;
    expect(await share('TINY'), 403);
    store.logUsage(anon['user_id'] as String, 'TINY', 1, 1);
    expect(await share('tiny'), 200);
  });

  test('the database runs in WAL mode and vacuums only once, not on every start', () {
    final dir = Directory.systemTemp.createTempSync('ws_db');
    addTearDown(() => dir.deleteSync(recursive: true));
    final path = '${dir.path}/db.sqlite';
    var s = Store.open(path);
    expect(s.database.select('PRAGMA journal_mode').first.values.first, 'wal');
    expect(s.database.select('PRAGMA user_version').first.values.first, 1);
    final (uid, _) = s.createAnonymousUser(null);
    s.deleteUser(uid);
    s.database.close();
    s = Store.open(path);
    expect(s.database.select('PRAGMA user_version').first.values.first, 1);
    s.database.close();
  });

  test('the rate limiter stays fast with many live keys', () {
    final limiter = RateLimiter(5, const Duration(days: 1));
    final watch = Stopwatch()..start();
    for (var i = 0; i < 30000; i++) {
      limiter.allow('k$i');
    }
    expect(watch.elapsed, lessThan(const Duration(seconds: 3)));
  });
}
