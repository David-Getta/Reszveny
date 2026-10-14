import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

void main() {
  late Store store;
  late Api api;

  setUp(() {
    store = Store.inMemory();
    api = Api(
      store: store,
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      referralMax: 2,
      client: MockClient(
        (req) async => http.Response(
          jsonEncode({
            'stop_reason': 'end_turn',
            'content': [
              {'type': 'text', 'text': '{}'},
            ],
            'usage': {'input_tokens': 1, 'output_tokens': 1},
          }),
          200,
        ),
      ),
    );
  });

  Future<({int status, Map<String, dynamic> body})> call(
    String method,
    String path, {
    String? token,
    Object? body,
  }) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token'},
        body: body == null ? null : jsonEncode(body),
      ),
    );
    return (status: res.statusCode, body: (jsonDecode(await res.readAsString()) as Map).cast<String, dynamic>());
  }

  Future<String> newUser() async => (await call('POST', '/v1/auth/anonymous')).body['token'] as String;

  Future<int> extra(String token) async =>
      (await call('GET', '/v1/me', token: token)).body['entitlements']['extra'] as int;

  Future<void> analyze(String token) async {
    final r = await call(
      'POST',
      '/v1/analyze',
      token: token,
      body: {
        'max_tokens': 100,
        'messages': [
          {'role': 'user', 'content': 'AAPL'},
        ],
      },
    );
    expect(r.status, 200);
  }

  test('everyone has a stable code; a friend redeems it and gets 5 extra analyses at once', () async {
    final alice = await newUser();
    final info = (await call('GET', '/v1/referral', token: alice)).body;
    expect(info['code'], matches(RegExp(r'^WS-[A-Z2-9]{6}$')));
    expect((await call('GET', '/v1/referral', token: alice)).body['code'], info['code']);
    expect(info['bonus'], 5);

    final bob = await newUser();
    // Kisbetűvel, előtag nélkül is beváltható.
    final code = (info['code'] as String).substring(3).toLowerCase();
    final r = await call('POST', '/v1/referral/redeem', token: bob, body: {'code': code});
    expect(r.status, 200);
    expect(r.body['entitlements']['extra'], 5);
    expect(r.body['bonus'], 5);
    // Az ajánló még nem kapott semmit: csak a meghívott első elemzése után.
    expect(await extra(alice), 0);
    expect((await call('GET', '/v1/referral', token: alice)).body['invited'], 1);
  });

  test('the referrer is rewarded after the friend’s first analysis, once, and only up to the limit', () async {
    final alice = await newUser();
    final code = (await call('GET', '/v1/referral', token: alice)).body['code'];
    for (var i = 0; i < 3; i++) {
      final friend = await newUser();
      await call('POST', '/v1/referral/redeem', token: friend, body: {'code': code});
      await analyze(friend);
      await analyze(friend);
    }
    // Felső határ: 2 meghívott után jár jutalom (2 × 5).
    expect(await extra(alice), 10);
    final stats = (await call('GET', '/v1/referral', token: alice)).body;
    expect(stats['invited'], 3);
    expect(stats['rewarded'], 3);
  });

  test('a code can be redeemed once per account, never your own, and must exist', () async {
    final alice = await newUser();
    final code = (await call('GET', '/v1/referral', token: alice)).body['code'];
    expect((await call('POST', '/v1/referral/redeem', token: alice, body: {'code': code})).body['error'], 'own_code');
    expect(
      (await call('POST', '/v1/referral/redeem', token: alice, body: {'code': 'WS-XXXXXX'})).body['error'],
      'unknown_code',
    );
    final bob = await newUser();
    expect((await call('POST', '/v1/referral/redeem', token: bob, body: {'code': code})).status, 200);
    final carol = await newUser();
    final carolCode = (await call('GET', '/v1/referral', token: carol)).body['code'];
    final again = await call('POST', '/v1/referral/redeem', token: bob, body: {'code': carolCode});
    expect(again.status, 409);
    expect(again.body['error'], 'already_redeemed');
    expect((await call('GET', '/v1/referral', token: bob)).body['redeemed'], isTrue);
  });
}
