import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/testers.dart';

void main() {
  late Store store;
  late Api api;
  var now = DateTime.utc(2026, 10, 16, 12);

  setUp(() {
    now = DateTime.utc(2026, 10, 16, 12);
    store = Store.inMemory()..clock = () => now;
    api = Api(
      store: store,
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      testers: TesterBook.parse('DAVID-TESZT:Dávid:max:30:2, PRO-TESZT:Gábor:pro'),
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

  Future<int> analyze(String token) async => (await call(
    'POST',
    '/v1/analyze',
    token: token,
    body: {
      'max_tokens': 100,
      'messages': [
        {'role': 'user', 'content': 'AAPL'},
      ],
    },
  )).status;

  test('parsing: tier, days and accounts with defaults; bad entries are skipped', () {
    final warnings = <String>[];
    final b = TesterBook.parse('ABCDEF:Anna, SHORT, XYZXYZ:Béla:gold, OWNER1:Me:ultra:365:1', onWarning: warnings.add);
    expect(b.length, 2);
    expect(b.find('abcdef')!.tier, 'max');
    expect(b.find('abcdef')!.days, 90);
    expect(b.find('OWNER1')!.maxAccounts, 1);
    expect(warnings, hasLength(2));
  });

  test('an expired trial account gets the tester plan through the friend-code field and can analyse', () async {
    final me = await newUser();
    // A próbaidő lejár.
    now = now.add(const Duration(days: 10));
    expect(await analyze(me), 402);

    final r = await call('POST', '/v1/referral/redeem', token: me, body: {'code': ' david-teszt '});
    expect(r.status, 200);
    expect(r.body['tester'], 'Dávid');
    expect(r.body['entitlements']['tier'], 'max');
    expect(await analyze(me), 200);
    expect((await call('GET', '/v1/me', token: me)).body['entitlements']['used'], 1);

    // Ugyanaz a fiók újra beválthatja; egy harmadik fiók már nem (2 fiók).
    expect((await call('POST', '/v1/referral/redeem', token: me, body: {'code': 'DAVID-TESZT'})).status, 200);
    final second = await newUser();
    expect((await call('POST', '/v1/referral/redeem', token: second, body: {'code': 'DAVID-TESZT'})).status, 200);
    final third = await newUser();
    final full = await call('POST', '/v1/referral/redeem', token: third, body: {'code': 'DAVID-TESZT'});
    expect(full.body['error'], 'tester_code_full');

    // A 30 nap után a csomag megszűnik.
    now = now.add(const Duration(days: 31));
    expect((await call('GET', '/v1/me', token: me)).body['entitlements']['tier'], isNull);
    expect(await analyze(me), 402);
  });

  test('a removed code ends the plan at the next request', () async {
    final me = await newUser();
    await call('POST', '/v1/referral/redeem', token: me, body: {'code': 'PRO-TESZT'});
    expect((await call('GET', '/v1/me', token: me)).body['entitlements']['tier'], 'pro');
    api = Api(store: store, anthropicApiKey: 'sk-test', finnhubApiKey: 'fh-test', verifier: const DevVerifier());
    expect((await call('GET', '/v1/me', token: me)).body['entitlements']['tier'], isNull);
  });
}
