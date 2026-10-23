import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:test/test.dart';
import 'package:whatstock_server/src/alert_watcher.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/rate_limit.dart';

/// Az első [failures] küldés hibát ad (pl. a levelező 429-e), utána sikerül.
class _FlakyMailer extends ConsoleMailer {
  _FlakyMailer(this.failures);

  int failures;

  @override
  Future<void> send(String email, {required String subject, required String text, Map<String, String>? headers}) {
    if (failures > 0) {
      failures--;
      throw const HttpException('Resend 429');
    }
    return super.send(email, subject: subject, text: text, headers: headers);
  }
}

/// Egy kódátnézés szerveroldali (riasztás, levél, indítás) hibáinak ellenőrzése.
void main() {
  late Store store;
  late DateTime now;

  setUp(() {
    now = DateTime.utc(2026, 10, 15, 14);
    store = Store.inMemory()..clock = () => now;
  });

  String account(String email, Map<String, dynamic> data) {
    final (id, _) = store.createAnonymousUser(null);
    store
      ..setEmail(id, email)
      ..saveSyncData(id, jsonEncode(data));
    return id;
  }

  Map<String, dynamic> above(String id, String symbol, num value) => {
    'id': id,
    'symbol': symbol,
    'kind': 'above',
    'value': value,
    'currency': 'USD',
    'created_at': '2026-10-01T00:00:00Z',
  };

  AlertWatcher watcher(Mailer mailer, Future<Quote?> Function(String) quote) => AlertWatcher(
    store: store,
    mailer: mailer,
    quote: quote,
    quotePause: Duration.zero,
    sendPause: Duration.zero,
    unsubscribeBase: 'https://ws.example/u',
    clock: () => now,
  );

  test('a malformed upload during a round does not stop the round for the other accounts', () async {
    final bad = account('bad@example.com', {
      'alerts': [above('a', 'AAPL', 1)],
    });
    account('good@example.com', {
      'alerts': [above('b', 'AAPL', 1)],
    });
    final mailer = ConsoleMailer();
    final w = watcher(mailer, (s) async {
      // Az árlekérés közben az egyik fiók hibás csomagot tölt fel.
      store.saveSyncData(
        bad,
        jsonEncode({
          'alerts': {'x': 1},
        }),
      );
      return (price: 10.0, changePercent: 1.0, time: null);
    });
    expect(await w.checkOnce(), 1);
    expect(mailer.messages.single.to, 'good@example.com');
  });

  test('an alert e-mail that fails to send is retried in the next round, and sent once', () async {
    account('dave@example.com', {
      'alerts': [above('a', 'AAPL', 100)],
    });
    final mailer = _FlakyMailer(1);
    final w = watcher(mailer, (s) async => (price: 120.0, changePercent: 2.0, time: null));
    expect(await w.checkOnce(), 0);
    expect(await w.checkOnce(), 1);
    expect(await w.checkOnce(), 0);
    expect(mailer.messages, hasLength(1));
    expect(store.pendingAlertMails(), isEmpty);
  });

  test('alert e-mails can be unsubscribed from with one click', () async {
    final dave = account('dave@example.com', {
      'alerts': [above('a', 'AAPL', 100)],
    });
    final mailer = ConsoleMailer();
    await watcher(mailer, (s) async => (price: 120.0, changePercent: 2.0, time: null)).checkOnce();
    final link = RegExp(r'<(.+)>').firstMatch(mailer.messages.single.headers['List-Unsubscribe']!)![1]!;
    expect(link, contains('kind=alerts'));
    expect(mailer.messages.single.headers['List-Unsubscribe-Post'], 'List-Unsubscribe=One-Click');
    final api = Api(store: store, anthropicApiKey: 'k', finnhubApiKey: 'f', verifier: const DevVerifier());
    final res = await api.handler(
      Request('POST', Uri.parse(link.replaceFirst('https://ws.example', 'http://localhost'))),
    );
    expect(res.statusCode, 200);
    final data = jsonDecode(store.syncData(dave)!.data) as Map;
    expect(data['email_alerts'], false);
    expect(data['weekly_digest'], isNot(false));
    expect((data['switches_at'] as Map)['email_alerts'], isNotNull);
  });

  test('alerts on stocks priced by Twelve Data (not Finnhub) fire too', () async {
    account('dave@example.com', {
      'alerts': [above('a', 'OTP.BD', 31000)],
    });
    final mailer = ConsoleMailer();
    final api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'f',
      twelveDataApiKey: 'td',
      verifier: const DevVerifier(),
      mailer: mailer,
      client: MockClient((req) async {
        if (req.url.path.endsWith('/quote') && req.url.host.contains('finnhub')) {
          return http.Response(jsonEncode({'c': 0, 'dp': null, 't': 0}), 200);
        }
        if (req.url.path.endsWith('/quote')) {
          return http.Response(jsonEncode({'close': '31500', 'percent_change': '1.2', 'timestamp': 1}), 200);
        }
        return http.Response('{}', 404);
      }),
    );
    expect(await api.alertWatcher.checkOnce(), 1);
  });

  test('a chunked request body through the real HTTP server is accepted', () async {
    final api = Api(store: store, anthropicApiKey: 'k', finnhubApiKey: 'f', verifier: const DevVerifier());
    final server = await io.serve(api.handler, InternetAddress.loopbackIPv4, 0);
    addTearDown(() => server.close(force: true));
    final client = HttpClient();
    addTearDown(client.close);
    final req = await client.post('127.0.0.1', server.port, '/v1/auth/anonymous');
    req.headers.contentType = ContentType.json;
    req.write(jsonEncode({'device_id': 'd'}));
    final res = await req.close();
    expect(res.statusCode, 200, reason: await res.transform(utf8.decoder).join());
  });

  test('the rate limiter forgets old failures and keys', () {
    var t = DateTime.utc(2026, 10, 1);
    final limiter = RateLimiter(3, const Duration(hours: 1), clock: () => t);
    for (var i = 0; i < 1000; i++) {
      limiter.hit('ip|user$i@example.com');
    }
    expect(limiter.blocked('ip|user1@example.com'), isFalse);
    t = t.add(const Duration(hours: 2));
    expect(limiter.blocked('ip|user1@example.com'), isFalse);
    for (var i = 0; i < 20000; i++) {
      limiter.hit('k$i');
    }
    expect(limiter.keyCount, lessThan(21000));
  });

  test('old sign-in codes are purged', () {
    store.createLoginCode('old@example.com');
    now = now.add(const Duration(days: 3));
    store.createLoginCode('new@example.com');
    expect(store.recentCodeCount('old@example.com', within: const Duration(days: 30)), 0);
    expect(store.recentCodeCount('new@example.com'), 1);
  });
}
