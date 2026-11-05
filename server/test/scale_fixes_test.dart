import 'dart:convert';

import 'package:test/test.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/digest.dart';
import 'package:whatstock_server/src/mailer.dart';

/// Skálázás: a csomagok kapcsolói oszlopban, a heti levél heti gyorsítótára és pótlása.
void main() {
  late Store store;
  late DateTime now;

  setUp(() {
    now = DateTime.utc(2026, 10, 19, 7); // hétfő
    store = Store.inMemory()..clock = () => now;
  });

  String account(String email, Map<String, dynamic> data) {
    final (id, _) = store.createAnonymousUser(null);
    store
      ..setEmail(id, email)
      ..saveSyncData(id, jsonEncode(data));
    return id;
  }

  Map<String, dynamic> alert(String symbol, {String? triggeredAt}) => {
    'id': symbol,
    'symbol': symbol,
    'kind': 'above',
    'value': 1,
    'triggered_at': ?triggeredAt,
  };

  test('the flags are worked out when the package is saved, so the watchers need not read it', () {
    final a = account('a@x.io', {
      'alerts': [alert('nvda'), alert('AAPL', triggeredAt: '2026-10-01T00:00:00Z'), alert('msft')],
    });
    account('b@x.io', {
      'email_alerts': false,
      'alerts': [alert('TSLA')],
    });
    account('c@x.io', {'weekly_digest': true});
    final alerts = store.alertAccounts();
    expect(alerts.single.userId, a);
    expect(alerts.single.symbols, ['MSFT', 'NVDA']);
    expect(store.digestAccounts().map((d) => d.email), ['c@x.io']);
    expect(store.emailAlertsOn(a), isTrue);
    expect(store.emailAlertsOn(store.alertAccounts().single.userId), isTrue);
    expect(Store.syncFlags('not json').alertSymbols, '');
  });

  test('packages saved by an older version get their flags once at startup', () {
    final id = account('old@x.io', {
      'weekly_digest': true,
      'alerts': [alert('KO')],
    });
    // A régi változat: az oszlopok még üresek.
    store.database.execute('UPDATE user_sync SET alert_symbols = NULL, digest_on = 0');
    final reopened = Store(store.database);
    expect(reopened.alertAccounts().single.symbols, ['KO']);
    expect(reopened.digestAccounts().single.userId, id);
  });

  test('the alert mail queue is read a round at a time', () {
    final id = account('q@x.io', {});
    for (var i = 0; i < 5; i++) {
      store.enqueueAlertMail(id, subject: 's$i', body: 'b');
    }
    expect(store.pendingAlertMails(limit: 2).map((m) => m.subject), ['s0', 's1']);
  });

  test('the weekly digest reaches everyone: fetched stocks are reused, Tuesday catches up', () async {
    final mailer = ConsoleMailer();
    final asked = <String>[];
    DigestSender sender() => DigestSender(
      store: store,
      mailer: mailer,
      sendPause: Duration.zero,
      week: (s) async {
        asked.add(s);
        return (price: 10.0, weekChange: 1.0, currency: 'USD', closes: const <double>[]);
      },
      earnings: (s, from, to) async => null,
      clock: () => now,
    );
    // Sok fiók, sok különböző papírral: egy kör kerete (150 papír) nem fér el mindenkinek.
    for (var i = 0; i < 40; i++) {
      account('u$i@x.io', {
        'weekly_digest': true,
        'favorites': [for (var j = 0; j < 10; j++) 'S${i * 5 + j}'],
      });
    }
    final digest = sender();
    final first = await digest.sendDue();
    expect(first, inInclusiveRange(1, 39));
    final askedFirst = asked.length;
    now = now.add(const Duration(hours: 1));
    final second = await digest.sendDue();
    // A már lekért papírokat nem kéri újra.
    expect(asked.toSet().length, asked.length);
    expect(asked.length, greaterThan(askedFirst));
    var sent = first + second;
    // Kedden pótol, szerdán nem küld.
    now = DateTime.utc(2026, 10, 20, 3);
    for (var round = 0; round < 10 && sent < 40; round++) {
      sent += await digest.sendDue();
    }
    expect(sent, 40);
    now = DateTime.utc(2026, 10, 21, 9);
    expect(await digest.sendDue(), 0);
  });
}
