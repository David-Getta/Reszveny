import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

/// Névtelen fiók beolvadása egy meglévőbe: az ajánlókód és a jobb csomag sem vész el.
void main() {
  late Store store;
  late Api api;
  late ConsoleMailer mailer;
  final now = DateTime.utc(2026, 10, 24, 12);

  setUp(() {
    store = Store.inMemory()..clock = () => now;
    mailer = ConsoleMailer();
    api = Api(
      store: store,
      anthropicApiKey: 'sk',
      finnhubApiKey: 'fh',
      verifier: const DevVerifier(),
      mailer: mailer,
      client: MockClient((_) async => http.Response('{}', 404)),
    );
  });

  Future<Map<String, dynamic>> call(String method, String path, {String? token, Object? body}) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {if (token != null) 'authorization': 'Bearer $token', 'content-type': 'application/json'},
        body: body == null ? null : jsonEncode(body),
      ),
    );
    return (jsonDecode(await res.readAsString()) as Map).cast<String, dynamic>();
  }

  Future<Map<String, dynamic>> anon() => call('POST', '/v1/auth/anonymous');

  Future<Map<String, dynamic>> login(String email, {String? token}) async {
    await call('POST', '/v1/auth/email/start', body: {'email': email});
    return call('POST', '/v1/auth/email/verify', token: token, body: {'email': email, 'code': mailer.sent[email]});
  }

  test('a code shared before signing in now rewards the account, not the vanished anonymous user', () async {
    final account = await login('dave@example.com', token: (await anon())['token'] as String);
    final device = await anon();
    final code = (await call('GET', '/v1/referral', token: device['token'] as String))['code'] as String;
    final friend = await login('friend@example.com', token: (await anon())['token'] as String);
    store.addReferral(refereeId: friend['user_id'] as String, referrerId: device['user_id'] as String);
    // A készülék belép a meglévő fiókba: a névtelen fiók beleolvad.
    await login('dave@example.com', token: device['token'] as String);
    expect(store.userIdForReferralCode(code), account['user_id']);
    expect(store.database.select('SELECT referrer_id FROM referrals').single['referrer_id'], account['user_id']);
  });

  test('a higher plan bought before signing in is kept when the account has a lower one', () async {
    final account = await login('dave@example.com', token: (await anon())['token'] as String);
    final device = await anon();
    final through = now.add(const Duration(days: 30));
    store
      ..save(
        store.entitlement(account['user_id'] as String)
          ..tier = 'normal'
          ..paidThrough = through,
      )
      ..save(
        store.entitlement(device['user_id'] as String)
          ..tier = 'max'
          ..paidThrough = through,
      );
    await login('dave@example.com', token: device['token'] as String);
    expect(store.entitlement(account['user_id'] as String).tier, 'max');
    // Fordítva (a fiókban a magasabb) a fiók csomagja marad.
    final other = await anon();
    store.save(
      store.entitlement(other['user_id'] as String)
        ..tier = 'normal'
        ..paidThrough = through,
    );
    await login('dave@example.com', token: other['token'] as String);
    expect(store.entitlement(account['user_id'] as String).tier, 'max');
  });
}
