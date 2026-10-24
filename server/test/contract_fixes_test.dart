import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

/// A kliens és a szerver közti szerződés kódátnézésének javításai.
void main() {
  late Store store;
  late List<String> upstream;
  late int finnhubStatus;

  setUp(() {
    store = Store.inMemory();
    upstream = [];
    finnhubStatus = 429;
  });

  Api api() => Api(
    store: store,
    anthropicApiKey: 'sk-test',
    finnhubApiKey: 'fh-test',
    verifier: const DevVerifier(),
    twelveDataApiKey: 'td-key',
    twelveDataBaseUrl: 'https://td.test',
    client: MockClient((req) async {
      upstream.add(req.url.host);
      if (req.url.host == 'td.test') {
        return http.Response(
          jsonEncode({
            'close': '28450',
            'change': '120',
            'percent_change': '0.42',
            'previous_close': '28330',
            'timestamp': DateTime.utc(2026, 10, 22).millisecondsSinceEpoch ~/ 1000,
            'last_quote_at': DateTime.utc(2026, 10, 22, 13, 30).millisecondsSinceEpoch ~/ 1000,
          }),
          200,
        );
      }
      if (req.url.host.contains('anthropic')) {
        return http.Response(jsonEncode({'content': [], 'usage': {}}), 200);
      }
      return http.Response('{"error":"limit"}', finnhubStatus);
    }),
  );

  Future<String> token(Api a) async {
    final res = await a.handler(Request('POST', Uri.parse('http://localhost/v1/auth/anonymous')));
    return (jsonDecode(await res.readAsString()) as Map)['token'] as String;
  }

  test('a fallback price is delivered as a normal answer even when Finnhub refused, with its real time', () async {
    final a = api();
    final t = await token(a);
    for (final status in [429, 403]) {
      finnhubStatus = status;
      final res = await a.handler(
        Request(
          'GET',
          Uri.parse('http://localhost/v1/market/quote?symbol=OTP$status.BD'),
          headers: {'authorization': 'Bearer $t'},
        ),
      );
      expect(res.statusCode, 200, reason: 'Finnhub $status');
      final j = jsonDecode(await res.readAsString()) as Map;
      expect(j['c'], 28450);
      expect(j['t'], DateTime.utc(2026, 10, 22, 13, 30).millisecondsSinceEpoch ~/ 1000);
    }
  });

  test('the format repair right after the last paid analysis is not refused', () async {
    final a = api();
    final t = await token(a);
    final uid = store.userIdForToken(t)!;
    // Az utolsó extra elemzés elfogyott, élő csomag nincs; az elemzés most készült.
    store.save(
      store.entitlement(uid)
        ..tier = null
        ..trialStartedAt = DateTime.utc(2020)
        ..extra = 0,
    );
    store.logUsage(uid, 'AAPL', 1000, 1000);
    final res = await a.handler(
      Request(
        'POST',
        Uri.parse('http://localhost/v1/anthropic/v1/messages'),
        headers: {'authorization': 'Bearer $t', 'content-type': 'application/json'},
        body: jsonEncode({
          'model': 'x',
          'max_tokens': 1000,
          'messages': [
            {'role': 'user', 'content': 'Fix this JSON'},
          ],
        }),
      ),
    );
    expect(res.statusCode, isNot(402));
    expect(upstream.where((h) => h.contains('anthropic')), hasLength(1));
  });
}
