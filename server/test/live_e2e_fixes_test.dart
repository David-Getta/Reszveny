import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/invites.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

/// A valódi HTTP-n futtatott szerver-végigjátszás (56. kör) javításai.
void main() {
  late Store store;
  late ConsoleMailer mailer;

  setUp(() {
    store = Store.inMemory();
    mailer = ConsoleMailer(redact: true);
    Api.trustProxy = true;
  });

  Api build({http.Client? upstream, InviteBook invites = const InviteBook()}) => Api(
    store: store,
    anthropicApiKey: 'k',
    finnhubApiKey: 'k',
    verifier: const DevVerifier(),
    mailer: mailer,
    invites: invites,
    client: upstream ?? MockClient((_) async => http.Response('{}', 404)),
  );

  Future<({int status, dynamic body, Map<String, String> headers})> call(
    Api api,
    String method,
    String path, {
    String? token,
    Object? body,
    String? ip,
    Map<String, String>? headers,
  }) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {
          'content-type': 'application/json',
          'origin': 'http://localhost:5000',
          'authorization': ?(token == null ? null : 'Bearer $token'),
          'x-forwarded-for': ?ip,
          ...?headers,
        },
        body: body == null ? null : jsonEncode(body),
      ),
    );
    final text = await res.readAsString();
    Object? decoded;
    try {
      decoded = text.isEmpty ? null : jsonDecode(text);
    } catch (_) {
      decoded = text;
    }
    return (status: res.statusCode, body: decoded, headers: res.headers);
  }

  test('an unreachable upstream gives a JSON 502 with the CORS and no-store headers, not a bare 500', () async {
    final api = build(upstream: MockClient((_) async => throw const HandshakeException('tls reset')));
    final anon = (await call(api, 'POST', '/v1/auth/anonymous', ip: '81.0.0.1')).body as Map;
    final res = await call(
      api,
      'POST',
      '/v1/anthropic/v1/messages',
      token: anon['token'] as String,
      ip: '81.0.0.1',
      body: {
        'model': 'claude',
        'max_tokens': 100,
        'messages': [
          {'role': 'user', 'content': 'hi'},
        ],
      },
      headers: {'x-whatstock-depth': 'brief'},
    );
    expect(res.status, 502);
    expect((res.body as Map)['error'], 'upstream_unavailable');
    expect(res.headers['access-control-allow-origin'], isNotNull);
    expect(Api.isUpstreamFailure(const SocketException('down')), isTrue);
    expect(Api.isUpstreamFailure(StateError('bug')), isFalse);
  });

  test('strangers on many IPs cannot lock the owner out of signing in', () async {
    final api = build();
    const email = 'olga@example.com';
    // 4 idegen IP egyenként 3 kódot kér, és mindegyikre 5 rossz kódot ír (60 hiba).
    for (var n = 1; n <= 4; n++) {
      final ip = '203.0.113.$n';
      for (var k = 0; k < 3; k++) {
        expect((await call(api, 'POST', '/v1/auth/email/start', ip: ip, body: {'email': email})).status, 200);
        for (var g = 0; g < 5; g++) {
          await call(api, 'POST', '/v1/auth/email/verify', ip: ip, body: {'email': email, 'code': '000000'});
        }
      }
    }
    // A gazda a saját IP-jéről kér kódot, és a helyeset írja be.
    expect((await call(api, 'POST', '/v1/auth/email/start', ip: '81.2.3.4', body: {'email': email})).status, 200);
    final code = mailer.sent[email]!;
    final ok = await call(api, 'POST', '/v1/auth/email/verify', ip: '81.2.3.4', body: {'email': email, 'code': code});
    expect(ok.status, 200);
  });

  test('after the daily failure cap only a code asked for from the same IP works (no free guessing)', () {
    const email = 'cap@example.com';
    final victim = store.createLoginCode(email, requester: 'victim');
    store.createLoginCode(email, requester: 'stranger');
    // A hibakeret kimerítése (új kódokkal, mert egy kód 5 próba után elvész).
    for (var i = 0; i < Store.maxDailyLoginFailures; i++) {
      if (i % 5 == 0) store.createLoginCode(email, requester: 'stranger');
      store.verifyLoginCode(email, '000000', requester: 'stranger');
    }
    final fresh = store.createLoginCode(email, requester: 'victim');
    expect(victim, isNot(fresh));
    expect(store.verifyLoginCode(email, fresh, requester: 'stranger'), isFalse);
    expect(store.verifyLoginCode(email, fresh, requester: 'victim'), isTrue);
  });

  test("a stranger's code request does not cancel the code the owner just received", () {
    const email = 'owner@example.com';
    final mine = store.createLoginCode(email, requester: 'owner');
    store.createLoginCode(email, requester: 'stranger');
    expect(store.verifyLoginCode(email, mine, requester: 'owner'), isTrue);
  });

  test('a few IPs exhausting the daily code allowance still leave the owner one code', () async {
    final api = build();
    const email = 'flood@example.com';
    for (var n = 1; n <= 8; n++) {
      for (var k = 0; k < 5; k++) {
        await call(api, 'POST', '/v1/auth/email/start', ip: '198.51.100.$n', body: {'email': email});
      }
    }
    expect(store.recentCodeCount(email, within: const Duration(days: 1)), Api.codesPerAddressPerDay);
    // Egy már kérő IP nem kap többet; a gazda (ma még nem kért) egyet igen.
    expect((await call(api, 'POST', '/v1/auth/email/start', ip: '198.51.100.1', body: {'email': email})).status, 429);
    expect((await call(api, 'POST', '/v1/auth/email/start', ip: '81.9.9.9', body: {'email': email})).status, 200);
    expect((await call(api, 'POST', '/v1/auth/email/start', ip: '81.9.9.9', body: {'email': email})).status, 429);
  });

  test('IPv4 addresses wrapped in IPv6 are told apart, and an untrusted forwarded header is ignored', () {
    expect(Api.ipKeyForTest('::ffff:192.0.2.1'), Api.ipKeyForTest('192.0.2.1'));
    expect(Api.ipKeyForTest('::ffff:192.0.2.1'), isNot(Api.ipKeyForTest('::ffff:192.0.2.2')));
    final req = Request(
      'GET',
      Uri.parse('http://localhost/healthz'),
      headers: {'x-forwarded-for': '::ffff:203.0.113.7'},
    );
    expect(Api.clientIpForTest(req), '203.0.113.7');
    Api.trustProxy = false;
    expect(Api.clientIpForTest(req), isNull, reason: 'no socket in a test request, and the header is not trusted');
    Api.trustProxy = true;
  });

  test('the Bearer scheme is case-insensitive', () async {
    final api = build();
    final anon = (await call(api, 'POST', '/v1/auth/anonymous', ip: '81.0.0.2')).body as Map;
    final res = await call(api, 'GET', '/v1/me', ip: '81.0.0.2', headers: {'authorization': 'bearer ${anon['token']}'});
    expect(res.status, 200);
  });

  test('an app repeating one revoked invite code does not lock the shared IP out', () async {
    final api = build(invites: InviteBook.parse('BETA123:Team'));
    for (var i = 0; i < 40; i++) {
      await call(api, 'POST', '/v1/auth/anonymous', ip: '81.5.5.5', headers: {'x-whatstock-invite': 'OLDCODE'});
    }
    final ok = await call(
      api,
      'POST',
      '/v1/auth/anonymous',
      ip: '81.5.5.5',
      headers: {'x-whatstock-invite': 'BETA123'},
    );
    expect(ok.status, 200);
  });

  test("a deleted account's other devices are told it was deleted (not just signed out)", () async {
    final api = build();
    const email = 'gone@example.com';
    // Két eszköz ugyanabban a fiókban.
    final a = (await call(api, 'POST', '/v1/auth/anonymous', ip: '81.7.7.1')).body as Map;
    await call(api, 'POST', '/v1/auth/email/start', ip: '81.7.7.1', body: {'email': email});
    final signedA = await call(
      api,
      'POST',
      '/v1/auth/email/verify',
      ip: '81.7.7.1',
      token: a['token'] as String,
      body: {'email': email, 'code': mailer.sent[email]},
    );
    final tokenA = (signedA.body as Map)['token'] as String;
    final b = (await call(api, 'POST', '/v1/auth/anonymous', ip: '81.7.7.2')).body as Map;
    await call(api, 'POST', '/v1/auth/email/start', ip: '81.7.7.2', body: {'email': email});
    final signedB = await call(
      api,
      'POST',
      '/v1/auth/email/verify',
      ip: '81.7.7.2',
      token: b['token'] as String,
      body: {'email': email, 'code': mailer.sent[email]},
    );
    final tokenB = (signedB.body as Map)['token'] as String;
    expect((await call(api, 'DELETE', '/v1/account', ip: '81.7.7.1', token: tokenA)).status, 200);
    final onB = await call(api, 'GET', '/v1/sync', ip: '81.7.7.2', token: tokenB);
    expect(onB.status, 401);
    expect((onB.body as Map)['error'], 'account_deleted');
    // Egy ismeretlen token csak „unauthorized”.
    final random = await call(api, 'GET', '/v1/sync', ip: '81.7.7.2', token: 'tok_nope');
    expect((random.body as Map)['error'], 'unauthorized');
    // A lenyomat 30 nap után kikerül.
    store.clock = () => DateTime.now().add(Store.deletedSessionKept + const Duration(days: 1));
    store.purgeExpired();
    expect(store.isDeletedSession(tokenB), isFalse);
  });

  test('abandoned anonymous accounts are cleaned up; paid, signed-in and recently used ones stay', () {
    var now = DateTime.utc(2026, 1, 1);
    store.clock = () => now;
    final (idle, idleToken) = store.createAnonymousUser(null);
    final (used, usedToken) = store.createAnonymousUser(null);
    final (credits, _) = store.createAnonymousUser(null);
    store.save(store.entitlement(credits)..extra = 5);
    final (signed, _) = store.createAnonymousUser(null);
    store.setEmail(signed, 'kept@example.com');
    now = now.add(const Duration(days: 300));
    expect(store.userIdForToken(usedToken), used);
    now = now.add(Store.anonymousIdle - const Duration(days: 299));
    store.purgeExpired();
    expect(store.userExists(idle), isFalse);
    expect(store.userExists(used), isTrue, reason: 'used 101 days ago');
    expect(store.userExists(credits), isTrue, reason: 'bought analyses stay');
    expect(store.userExists(signed), isTrue, reason: 'accounts with an e-mail are never auto-deleted');
    // Egy visszatérő eszköz nem kap „account_deleted”-et (a helyi adatai maradnak): új névtelen fiókot nyit.
    expect(store.isDeletedSession(idleToken), isFalse);
  });
}
