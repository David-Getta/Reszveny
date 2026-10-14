import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/plans.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

void main() {
  final sent = <Map<String, dynamic>>[];
  var fetchEnabled = true;

  Api api() => Api(
    store: Store.inMemory(),
    anthropicApiKey: 'sk-test',
    finnhubApiKey: 'fh-test',
    verifier: const DevVerifier(),
    client: MockClient((req) async {
      final body = (jsonDecode(req.body) as Map).cast<String, dynamic>();
      sent.add(body);
      final tools = (body['tools'] as List?) ?? const [];
      if (!fetchEnabled && tools.any((t) => (t as Map)['type'].toString().startsWith('web_fetch'))) {
        return http.Response(
          jsonEncode({
            'type': 'error',
            'error': {'type': 'invalid_request_error', 'message': 'web_fetch is not enabled for this organization'},
          }),
          400,
        );
      }
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': '{}'},
          ],
          'usage': {'input_tokens': 1, 'output_tokens': 1},
        }),
        200,
      );
    }),
  );

  setUp(() {
    sent.clear();
    fetchEnabled = true;
  });

  Future<int> analyze(Api a, Map<String, dynamic> body, {String depth = 'standard'}) async {
    final anon = await a.handler(Request('POST', Uri.parse('http://localhost/v1/auth/anonymous')));
    final token = (jsonDecode(await anon.readAsString()) as Map)['token'] as String;
    final res = await a.handler(
      Request(
        'POST',
        Uri.parse('http://localhost/v1/analyze'),
        headers: {'authorization': 'Bearer $token', 'x-whatstock-depth': depth},
        body: jsonEncode(body),
      ),
    );
    return res.statusCode;
  }

  final greedy = {
    'max_tokens': 1000,
    'tools': [
      {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': 2},
      {
        'type': 'web_fetch_20260209',
        'name': 'web_fetch',
        'max_uses': 50,
        'max_content_tokens': 500000,
        'allowed_callers': ['code_execution_20260120'],
      },
    ],
    'messages': [],
  };

  test('page fetching is kept but capped by depth and page size; unknown fields are dropped', () {
    for (final (depth, uses) in [(Depth.brief, 1), (Depth.standard, 2), (Depth.deep, 4)]) {
      final body = jsonDecode(Api.limitRequest(jsonEncode(greedy), depth: depth, tier: 'pro')) as Map;
      final fetch = (body['tools'] as List).last as Map;
      expect(fetch, {
        'type': 'web_fetch_20260209',
        'name': 'web_fetch',
        'max_uses': uses,
        'max_content_tokens': Depth.maxFetchTokens,
      });
    }
  });

  test('if the account does not allow page fetching, the analysis runs without it', () async {
    fetchEnabled = false;
    // A próbaidő rövid elemzés: 1 oldal.
    expect(await analyze(api(), greedy), 200);
    expect(sent, hasLength(2));
    expect((sent.first['tools'] as List).map((t) => t['name']), ['web_search', 'web_fetch']);
    expect((sent.last['tools'] as List).map((t) => t['name']), ['web_search']);
  });

  test('with page fetching allowed there is no second request', () async {
    expect(await analyze(api(), greedy), 200);
    expect(sent, hasLength(1));
  });
}
