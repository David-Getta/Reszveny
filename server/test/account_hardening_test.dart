import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/invites.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/telemetry.dart';

/// Egy kódátnézés fiók-, belépés- és meghívóhibáinak ellenőrzése.
void main() {
  late Store store;
  late Api api;
  late ConsoleMailer mailer;
  late DateTime now;

  Api build({InviteBook invites = const InviteBook()}) => Api(
    store: store,
    anthropicApiKey: 'sk-test',
    finnhubApiKey: 'fh-test',
    verifier: const DevVerifier(),
    mailer: mailer,
    invites: invites,
    client: MockClient((req) async => http.Response('{}', 200)),
  );

  setUp(() {
    now = DateTime.utc(2026, 10, 20, 12);
    store = Store.inMemory()..clock = () => now;
    mailer = ConsoleMailer();
    api = build();
  });

  Future<({int status, Map<String, dynamic>? body})> call(
    String method,
    String path, {
    String? token,
    Object? body,
    String? ip,
    String? invite,
  }) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {
          'content-type': 'application/json',
          if (token != null) 'authorization': 'Bearer $token',
          'x-forwarded-for': ?ip,
          'x-whatstock-invite': ?invite,
        },
        body: body == null ? null : jsonEncode(body),
      ),
    );
    final text = await res.readAsString();
    return (
      status: res.statusCode,
      body: text.startsWith('{') ? (jsonDecode(text) as Map).cast<String, dynamic>() : null,
    );
  }

  Future<String> anonymous({String? invite}) async {
    final r = await call('POST', '/v1/auth/anonymous', invite: invite, body: {'device_id': 'd'});
    expect(r.status, 200, reason: '${r.body}');
    return r.body!['token'] as String;
  }

  /// Belépés e-mail + kód úton a [token] eszközről; az új (vagy ugyanaz) token.
  Future<String> login(String token, String email, {String? invite}) async {
    expect((await call('POST', '/v1/auth/email/start', body: {'email': email}, invite: invite)).status, 200);
    final r = await call(
      'POST',
      '/v1/auth/email/verify',
      token: token,
      invite: invite,
      body: {'email': email, 'code': mailer.sent[email]},
    );
    expect(r.status, 200, reason: '${r.body}');
    return r.body!['token'] as String;
  }

  test('after redeeming a referral code the account can still upload its sync data', () async {
    final friend = await login(await anonymous(), 'friend@example.com');
    final code = (await call('GET', '/v1/referral', token: friend)).body!['code'] as String;
    final me = await login(await anonymous(), 'me@example.com');
    expect((await call('PUT', '/v1/sync', token: me, body: {'data': {}})).status, 200);
    expect((await call('POST', '/v1/referral/redeem', token: me, body: {'code': code})).status, 200);
    expect((await call('PUT', '/v1/sync', token: me, body: {'data': {}})).status, 200);
  });

  test('signing out revokes the token of the device the account started on', () async {
    final token = await anonymous();
    final same = await login(token, 'a@example.com');
    expect(same, token);
    expect((await call('POST', '/v1/auth/logout', token: token)).status, 200);
    expect((await call('GET', '/v1/me', token: token)).status, 401);
  });

  test('signing in and out on one device does not use up the invite\'s device slots', () async {
    api = build(invites: InviteBook.parse('PREVIEW1:Test:2026-12-31:3'));
    var token = await anonymous(invite: 'PREVIEW1');
    expect((await call('GET', '/v1/me', token: token, invite: 'PREVIEW1')).status, 200);
    for (var i = 0; i < 5; i++) {
      final signedIn = await login(token, 'tester@example.com', invite: 'PREVIEW1');
      expect((await call('GET', '/v1/me', token: signedIn, invite: 'PREVIEW1')).status, 200);
      expect((await call('POST', '/v1/auth/logout', token: signedIn, invite: 'PREVIEW1')).status, 200);
      token = await anonymous(invite: 'PREVIEW1');
      expect(
        (await call('GET', '/v1/me', token: token, invite: 'PREVIEW1')).status,
        200,
        reason: 'round $i',
      );
    }
  });

  test('a deleted account cannot claim the referral bonus again with the same mailbox', () async {
    final friend = await login(await anonymous(), 'friend@example.com');
    final code = (await call('GET', '/v1/referral', token: friend)).body!['code'] as String;
    final me = await login(await anonymous(), 'me@example.com');
    expect((await call('POST', '/v1/referral/redeem', token: me, body: {'code': code})).status, 200);
    expect((await call('DELETE', '/v1/account', token: me)).status, 200);
    final again = await login(await anonymous(), 'me+2@example.com');
    final r = await call('POST', '/v1/referral/redeem', token: again, body: {'code': code});
    expect(r.status, 409);
    expect(r.body!['error'], 'already_redeemed');
  });

  test('requests from another IP cannot block sign-in codes for someone else\'s address', () async {
    for (var i = 0; i < 10; i++) {
      now = now.add(const Duration(minutes: 13));
      await call('POST', '/v1/auth/email/start', body: {'email': 'victim@example.com'}, ip: '203.0.113.7');
    }
    final attacker = await call(
      'POST',
      '/v1/auth/email/start',
      body: {'email': 'victim@example.com'},
      ip: '203.0.113.7',
    );
    expect(attacker.status, 429);
    final owner = await call(
      'POST',
      '/v1/auth/email/start',
      body: {'email': 'victim@example.com'},
      ip: '198.51.100.20',
    );
    expect(owner.status, 200);
  });

  test('guessing referral and tester codes is rate limited', () async {
    final me = await anonymous();
    final statuses = <int>[
      for (var i = 0; i < 15; i++)
        (await call('POST', '/v1/referral/redeem', token: me, body: {'code': 'GUESS-$i'})).status,
    ];
    expect(statuses.take(10), everyElement(404));
    expect(statuses.last, 429);
  });

  test('the server counts the portfolio image share and the bulk stop-loss events', () {
    expect(TelemetryStore.knownEvents, containsAll(['portfolio_share_image', 'bulk_stops']));
  });
}
