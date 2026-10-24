import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

/// Az AI-válaszok jelentése az appból (Google Play AI-tartalom szabály).
void main() {
  late Store store;
  late Api api;
  late DateTime now;

  setUp(() {
    now = DateTime.utc(2026, 10, 24, 12);
    store = Store.inMemory()..clock = () => now;
    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: const DevVerifier(),
      adminToken: 'admin-secret',
      client: MockClient((_) async => http.Response('{}', 404)),
    );
  });

  Future<({int status, dynamic body})> call(String method, String path, {String? token, Object? body}) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token'},
        body: body == null ? null : jsonEncode(body),
      ),
    );
    final text = await res.readAsString();
    return (status: res.statusCode, body: text.isEmpty ? null : jsonDecode(text));
  }

  Future<String> token() async => ((await call('POST', '/v1/auth/anonymous')).body as Map)['token'] as String;

  test('a report is stored without the account, and the admin sees it', () async {
    final t = await token();
    expect((await call('POST', '/v1/report', body: {'kind': 'ask', 'reason': 'harmful', 'text': 'x'})).status, 401);
    final ok = await call(
      'POST',
      '/v1/report',
      token: t,
      body: {
        'kind': 'research',
        'reason': 'inaccurate',
        'text': 'NVDA fell 40% today.',
        'note': 'It did not',
        'symbol': 'NVDA',
        'platform': 'android',
        'version': '0.2.301',
      },
    );
    expect(ok.status, 200);
    final stats = await call('GET', '/admin/stats.json', token: 'admin-secret');
    final reports = (stats.body as Map)['reports'] as List;
    expect(reports.single, containsPair('excerpt', 'NVDA fell 40% today.'));
    expect(reports.single, containsPair('note', 'It did not'));
    expect(reports.single, containsPair('symbol', 'NVDA'));
    final columns = store.database.select('PRAGMA table_info(ai_reports)').map((r) => r['name']);
    expect(columns, isNot(contains('user_id')));
  });

  test('unknown kinds, reasons and empty texts are refused; a user can send only so many a day', () async {
    final t = await token();
    for (final bad in [
      {'kind': 'nope', 'reason': 'harmful', 'text': 'x'},
      {'kind': 'ask', 'reason': 'spam', 'text': 'x'},
      {'kind': 'ask', 'reason': 'other', 'text': '  '},
    ]) {
      expect((await call('POST', '/v1/report', token: t, body: bad)).status, 400);
    }
    for (var i = 0; i < 20; i++) {
      expect(
        (await call('POST', '/v1/report', token: t, body: {'kind': 'ask', 'reason': 'other', 'text': '$i'})).status,
        200,
      );
    }
    expect(
      (await call('POST', '/v1/report', token: t, body: {'kind': 'ask', 'reason': 'other', 'text': 'x'})).status,
      429,
    );
  });

  test('reports are kept for 180 days', () async {
    final t = await token();
    await call('POST', '/v1/report', token: t, body: {'kind': 'brief', 'reason': 'other', 'text': 'old'});
    now = now.add(const Duration(days: 181));
    api.housekeeping();
    expect(api.reports.recent(), isEmpty);
  });
}
