import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/alert_watcher.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/digest.dart';
import 'package:whatstock_server/src/mailer.dart';

/// Az első [down] küldés egy levelezőkimaradást (500) vagy a keret betelését (429) játssza.
class _DownMailer extends ConsoleMailer {
  _DownMailer(this.down, {this.rateLimited = false});

  int down;
  final bool rateLimited;
  int calls = 0;

  @override
  Future<void> send(
    String email, {
    required String subject,
    required String text,
    Map<String, String>? headers,
    String? idempotencyKey,
  }) {
    calls++;
    if (down > 0) {
      down--;
      if (rateLimited) throw const MailRateLimited();
      throw Exception('Resend 500');
    }
    return super.send(email, subject: subject, text: text, headers: headers, idempotencyKey: idempotencyKey);
  }
}

/// A szerver leveleinek javításai (az ötvenedik kódátnézés).
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

  Map<String, dynamic> alert(String id, String symbol, String kind, num value) => {
    'id': id,
    'symbol': symbol,
    'kind': kind,
    'value': value,
    'currency': 'USD',
    'created_at': '2026-10-01T00:00:00Z',
  };

  AlertWatcher watcher(Mailer mailer, {double price = 120, double change = 2}) => AlertWatcher(
    store: store,
    mailer: mailer,
    quote: (s) async => (price: price, changePercent: change, time: null),
    quotePause: Duration.zero,
    sendPause: Duration.zero,
    clock: () => now,
  );

  test('a short mail outage does not swallow the alert: it is retried until it goes out', () async {
    account('dave@example.com', {
      'alerts': [alert('a', 'AAPL', 'above', 100)],
    });
    final mailer = _DownMailer(6);
    final w = watcher(mailer);
    for (var round = 0; round < 7; round++) {
      await w.checkOnce();
      now = now.add(const Duration(minutes: 10));
    }
    expect(mailer.messages, hasLength(1));
    expect(store.pendingAlertMails(), isEmpty);
  });

  test('a full mail quota stops the round without using up attempts', () async {
    account('a@example.com', {
      'alerts': [alert('a', 'AAPL', 'above', 100)],
    });
    account('b@example.com', {
      'alerts': [alert('b', 'AAPL', 'above', 100)],
    });
    final mailer = _DownMailer(1, rateLimited: true);
    final w = watcher(mailer);
    await w.checkOnce();
    expect(mailer.calls, 1, reason: 'a 429 után a kör megáll');
    expect(store.pendingAlertMails().map((m) => m.attempts), everyElement(0));
    await w.checkOnce();
    expect(mailer.messages, hasLength(2));
  });

  test('each alert and digest mail carries an idempotency key, sent to Resend as a header', () async {
    account('dave@example.com', {
      'alerts': [alert('a', 'AAPL', 'above', 100)],
    });
    final mailer = ConsoleMailer();
    await watcher(mailer).checkOnce();
    expect(mailer.messages.single.idempotencyKey, startsWith('alert-'));

    final requests = <http.Request>[];
    final resend = ResendMailer(
      apiKey: 'k',
      from: 'x@y.z',
      client: MockClient((req) async {
        requests.add(req);
        return http.Response('{"id":"1"}', 200);
      }),
    );
    await resend.send('a@b.c', subject: 'Hi\r\nBcc: evil@x.io', text: 't', idempotencyKey: 'alert-1-2');
    expect(requests.single.headers['Idempotency-Key'], 'alert-1-2');
    expect((jsonDecode(requests.single.body) as Map)['subject'], isNot(contains('\n')));
  });

  test('Resend: a 429 is retried once, a second 429 tells the caller to stop', () async {
    var calls = 0;
    final resend = ResendMailer(
      apiKey: 'k',
      from: 'x@y.z',
      client: MockClient((req) async => ++calls == 1 ? http.Response('{}', 429) : http.Response('{"id":"1"}', 200)),
    );
    await resend.sendLoginCode('a@b.c', '123456');
    expect(calls, 2);
    final always = ResendMailer(apiKey: 'k', from: 'x@y.z', client: MockClient((_) async => http.Response('{}', 429)));
    await expectLater(always.send('a@b.c', subject: 's', text: 't'), throwsA(isA<MailRateLimited>()));
  });

  test('alert percentages read naturally, Hungarian uses a decimal comma', () {
    final (_, en) = AlertWatcher.alertEmail([
      {'symbol': 'KO', 'kind': 'move', 'value': 0.5, 'triggered_price': 0.735, 'triggered_change': -0.73},
    ], hu: false);
    expect(en, contains('KO: -0.73% today (your alert was set for a 0.5% move), price: 0.735.'));
    final (_, hu) = AlertWatcher.alertEmail([
      {'symbol': 'KO', 'kind': 'trailing', 'value': 7.5, 'triggered_price': 61.2, 'peak': 66.1, 'currency': 'USD'},
    ], hu: true);
    expect(hu, contains('KO: 61,20 USD – 7,5%-ot esett a 66,10 USD csúcsról.'));
  });

  test('a loss-making company that lost less than expected is a positive surprise', () {
    final (_, text) = DigestSender.digestEmail(
      [
        DigestLine(
          'LOSS',
          2.0,
          1.0,
          'USD',
          null,
          result: (actual: -0.05, estimate: -0.10, period: DateTime.utc(2026, 9, 30)),
        ),
      ],
      const [],
      hu: false,
    );
    expect(text, contains('LOSS – EPS -0.05 (expected -0.10, +50.0%) – above expectations'));
  });
}
