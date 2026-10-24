import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

/// Hibás kérések: 400 (nem 500), és a szolgáltatói hiba nem fogyasztja a keretet.
void main() {
  late Store store;
  late Api api;
  var upstreamStatus = 529;

  setUp(() {
    store = Store.inMemory();
    upstreamStatus = 529;
    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: const DevVerifier(),
      client: MockClient(
        (req) async => http.Response(
          upstreamStatus == 200 ? jsonEncode({'content': [], 'stop_reason': 'end_turn'}) : '{"error":"overloaded"}',
          upstreamStatus,
        ),
      ),
    );
  });

  Future<int> call(String method, String path, {String? token, Object? body, List<int>? bytes}) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token'},
        body: bytes ?? (body is String ? body : (body == null ? null : jsonEncode(body))),
      ),
    );
    await res.readAsString();
    return res.statusCode;
  }

  Future<(String, String)> newUser() async {
    final res = await api.handler(Request('POST', Uri.parse('http://localhost/v1/auth/anonymous')));
    final b = jsonDecode(await res.readAsString()) as Map;
    return (b['token'] as String, b['user_id'] as String);
  }

  test('fields of the wrong type are a bad request, not a server error', () async {
    final (token, _) = await newUser();
    for (final (path, body) in [
      ('/v1/referral/redeem', {'code': 123}),
      ('/v1/billing/checkout', {'product_id': 7}),
      ('/v1/purchases/verify', {'platform': 1, 'product_id': 'whatstock.sub.pro', 'verification_data': 'x'}),
      ('/v1/auth/email/start', {'email': 42}),
    ]) {
      final status = await call('POST', path, token: token, body: body);
      // (A fizetés itt nincs beállítva: arra 503, nem 500.)
      expect(status, isNot(500), reason: path);
    }
  });

  test('a body that is not UTF-8 is a bad request', () async {
    expect(await call('POST', '/v1/auth/email/start', bytes: [0x7b, 0xc3, 0x28, 0x7d]), 400);
    final (token, uid) = await newUser();
    store.setEmail(uid, 'dave@example.com');
    expect(await call('PUT', '/v1/sync', token: token, bytes: [0x7b, 0xc3, 0x28, 0x7d]), 400);
  });

  test('a synced number too large for JSON is refused, not stored', () async {
    final (token, uid) = await newUser();
    store.setEmail(uid, 'dave@example.com');
    expect(await call('PUT', '/v1/sync', token: token, body: '{"data":{"lots":[{"quantity":1e309}]}}'), 400);
    expect(store.syncData(uid), isNull);
  });

  test('an over-long address or one with an invisible character is not an e-mail', () async {
    expect(await call('POST', '/v1/auth/email/start', body: {'email': '${'a' * 250}@example.com'}), 400);
    expect(await call('POST', '/v1/auth/email/start', body: {'email': 'dave​@example.com'}), 400);
  });

  test('helper calls that fail upstream do not use up the hourly limit', () async {
    final (token, _) = await newUser();
    final request = {
      'max_tokens': 100,
      'messages': [
        {'role': 'user', 'content': 'hi'},
      ],
    };
    for (var i = 0; i < Api.helperPerHour + 2; i++) {
      expect(
        await call('POST', '/v1/anthropic/v1/messages', token: token, body: request),
        529,
        reason: 'call $i',
      );
    }
    upstreamStatus = 200;
    expect(await call('POST', '/v1/anthropic/v1/messages', token: token, body: request), 200);
  });
}
