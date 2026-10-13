import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/invites.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

void main() {
  late Store store;
  late Api api;
  late DateTime now;

  setUp(() {
    now = DateTime.utc(2026, 10, 20, 9);
    store = Store.inMemory()..clock = () => now;
    final upstream = MockClient(
      (req) async => http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': '{}'},
          ],
          'usage': {'input_tokens': 10, 'output_tokens': 5},
        }),
        200,
      ),
    );
    api = Api(
      store: store,
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      client: upstream,
      invites: InviteBook.parse('GABOR-7K2Q:Schulz Gábor:2026-11-30:2:2, david-x9p4m:Getta Dávid'),
    );
  });

  Future<({int status, Map<String, dynamic>? body})> call(
    String method,
    String path, {
    String? invite,
    String? token,
    Object? body,
  }) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {
          'content-type': 'application/json',
          'x-whatstock-invite': ?invite,
          if (token != null) 'authorization': 'Bearer $token',
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

  Future<String> signUp(String invite) async {
    final r = await call('POST', '/v1/auth/anonymous', invite: invite, body: {'device_id': 'd'});
    expect(r.status, 200, reason: '${r.body}');
    return r.body!['token'] as String;
  }

  test('parsing: label, expiry through the end of the day, device and daily limits, case-insensitive codes', () {
    final book = InviteBook.parse('abc123:Teszt Elek:2026-11-30:4:9\nSHORT:x, BADDATE1:y:30.11.2026');
    expect(book.length, 1);
    final i = book.find(' ABC123 ')!;
    expect(i.label, 'Teszt Elek');
    expect(i.maxDevices, 4);
    expect(i.dailyAnalyses, 9);
    expect(i.isExpired(DateTime.utc(2026, 11, 30, 23, 59)), isFalse);
    expect(i.isExpired(DateTime.utc(2026, 12, 1)), isTrue);
    expect(i.toJson(), {'label': 'Teszt Elek', 'expires': '2026-11-30'});
    expect(const InviteBook().enabled, isFalse);
  });

  test('without a valid code the API is closed, the health check and legal pages stay open', () async {
    expect((await call('POST', '/v1/auth/anonymous')).body!['error'], 'invite_required');
    expect((await call('POST', '/v1/auth/anonymous', invite: 'NOPE-123')).body!['error'], 'invite_invalid');
    expect((await call('GET', '/v1/market/quote?symbol=AAPL')).status, 403);
    expect((await call('GET', '/healthz')).status, 200);
  });

  test('a valid code works and /me tells the app whose preview it is', () async {
    final token = await signUp('gabor-7k2q');
    final me = await call('GET', '/v1/me', invite: 'GABOR-7K2Q', token: token);
    expect(me.status, 200);
    expect(me.body!['invite'], {'label': 'Schulz Gábor', 'expires': '2026-11-30'});
    // A token önmagában nem elég: a kód nélkül zárva.
    expect((await call('GET', '/v1/me', token: token)).status, 403);
  });

  test('a code expires after its last day', () async {
    final token = await signUp('GABOR-7K2Q');
    now = DateTime.utc(2026, 12, 1, 0, 1);
    final r = await call('GET', '/v1/me', invite: 'GABOR-7K2Q', token: token);
    expect(r.status, 403);
    expect(r.body!['error'], 'invite_expired');
  });

  test('a forwarded code stops at the device limit, known devices keep working', () async {
    final first = await signUp('GABOR-7K2Q');
    await signUp('GABOR-7K2Q');
    final third = await call('POST', '/v1/auth/anonymous', invite: 'GABOR-7K2Q', body: {'device_id': 'x'});
    expect(third.status, 403);
    expect(third.body!['error'], 'invite_device_limit');
    expect((await call('GET', '/v1/me', invite: 'GABOR-7K2Q', token: first)).status, 200);
    // Egy másik kód fiókja sem csúszhat be ezzel a kóddal.
    final other = await signUp('DAVID-X9P4M');
    expect((await call('GET', '/v1/me', invite: 'GABOR-7K2Q', token: other)).body!['error'], 'invite_device_limit');
  });

  test('each code has a daily analysis limit that resets the next day', () async {
    final token = await signUp('GABOR-7K2Q');
    await call(
      'POST',
      '/v1/purchases/verify',
      invite: 'GABOR-7K2Q',
      token: token,
      body: {'platform': 'android', 'product_id': 'whatstock.sub.ultra', 'verification_data': 'dev'},
    );
    Future<int> analyze() async => (await call(
      'POST',
      '/v1/analyze',
      invite: 'GABOR-7K2Q',
      token: token,
      body: {
        'model': 'x',
        'max_tokens': 100,
        'messages': [
          {'role': 'user', 'content': 'AAPL'},
        ],
      },
    )).status;
    expect(await analyze(), 200);
    expect(await analyze(), 200);
    final blocked = await call('POST', '/v1/analyze', invite: 'GABOR-7K2Q', token: token, body: {'messages': []});
    expect(blocked.status, 402);
    expect(blocked.body!['error'], 'invite_daily_limit');
    now = now.add(const Duration(days: 1));
    expect(await analyze(), 200);
  });

  test('without INVITE_CODES the server stays open', () async {
    final open = Api(store: Store.inMemory(), anthropicApiKey: 'a', finnhubApiKey: 'b', verifier: const DevVerifier());
    final res = await open.handler(Request('POST', Uri.parse('http://localhost/v1/auth/anonymous')));
    expect(res.statusCode, 200);
  });
}
