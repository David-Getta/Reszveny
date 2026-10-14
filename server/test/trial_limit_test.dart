import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

void main() {
  late Store store;
  late Api api;
  var now = DateTime.utc(2026, 10, 15, 8);

  setUp(() {
    now = DateTime.utc(2026, 10, 15, 8);
    store = Store.inMemory()..clock = () => now;
    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: const DevVerifier(),
      trialPerIpPerDay: 3,
    );
  });

  Future<String?> tierFor(String ip) async {
    final res = await api.handler(
      Request(
        'POST',
        Uri.parse('http://localhost/v1/auth/anonymous'),
        headers: {'content-type': 'application/json', 'x-forwarded-for': '$ip, 10.0.0.1'},
        body: '{}',
      ),
    );
    return (jsonDecode(await res.readAsString())['entitlements'] as Map)['tier'] as String?;
  }

  test('only a few new trials per IP address and day; others and later days are not affected', () async {
    for (var i = 0; i < 3; i++) {
      expect(await tierFor('203.0.113.7'), 'trial');
    }
    expect(await tierFor('203.0.113.7'), isNull, reason: 'the fourth account starts without a trial');
    expect(await tierFor('198.51.100.2'), 'trial');

    now = now.add(const Duration(hours: 25));
    expect(await tierFor('203.0.113.7'), 'trial');
  });

  test('the address is stored only as a hash, and the limit can be switched off', () async {
    await tierFor('203.0.113.7');
    final hashes = store.database.select('SELECT ip_hash FROM trial_grants').map((r) => r['ip_hash'] as String);
    expect(hashes.single, isNot(contains('203.0.113.7')));

    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: const DevVerifier(),
      trialPerIpPerDay: 0,
    );
    for (var i = 0; i < 5; i++) {
      expect(await tierFor('203.0.113.7'), 'trial');
    }
  });
}
