import 'dart:convert';

import 'package:test/test.dart';
import 'package:whatstock_server/src/alert_watcher.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/mailer.dart';

void main() {
  late Store store;
  late ConsoleMailer mailer;
  late Map<String, ({double price, double? changePercent})> quotes;
  late List<String> asked;

  setUp(() {
    store = Store.inMemory();
    mailer = ConsoleMailer();
    quotes = {};
    asked = [];
  });

  AlertWatcher watcher() => AlertWatcher(
    store: store,
    mailer: mailer,
    quote: (s) async {
      asked.add(s);
      return quotes[s];
    },
    clock: () => DateTime.utc(2026, 10, 15, 14),
  );

  String account(String email, Map<String, dynamic> data) {
    final (id, _) = store.createAnonymousUser(null);
    store
      ..setEmail(id, email)
      ..saveSyncData(id, jsonEncode(data));
    return id;
  }

  Map<String, dynamic> alert(String id, String symbol, String kind, num value, {String? triggeredAt}) => {
    'id': id,
    'symbol': symbol,
    'kind': kind,
    'value': value,
    'currency': kind == 'move' ? null : 'USD',
    'created_at': '2026-10-01T00:00:00Z',
    'triggered_at': ?triggeredAt,
  };

  test('triggered alerts are marked in the synced data and e-mailed once, in the reader’s language', () async {
    final dave = account('dave@example.com', {
      'lang': 'hu',
      'alerts': [
        alert('a1', 'AAPL', 'above', 250),
        alert('a2', 'MSFT', 'below', 400),
        alert('a3', 'NVDA', 'move', 5),
        alert('a4', 'AAPL', 'below', 100, triggeredAt: '2026-10-02T00:00:00Z'),
      ],
    });
    account('off@example.com', {
      'email_alerts': false,
      'alerts': [alert('b1', 'AAPL', 'above', 1)],
    });
    quotes = {
      'AAPL': (price: 251.2, changePercent: 1.1),
      'MSFT': (price: 410.0, changePercent: -0.4),
      'NVDA': (price: 190.0, changePercent: -6.2),
    };
    final w = watcher();
    expect(await w.checkOnce(), 1);
    expect(asked..sort(), ['AAPL', 'MSFT', 'NVDA'], reason: 'the opted-out account is not checked');

    final mail = mailer.messages.single;
    expect(mail.to, 'dave@example.com');
    expect(mail.subject, 'WhatStock: 2 riasztás teljesült');
    expect(mail.text, contains('AAPL: 251.20 USD – a 250 USD szint fölé ment.'));
    expect(mail.text, contains('NVDA: -6.20% ma'));
    expect(mail.text, isNot(contains('MSFT')));

    final saved = (jsonDecode(store.syncData(dave)!.data) as Map)['alerts'] as List;
    expect(saved.map((a) => (a['id'], a['triggered_at'] != null)), [
      ('a1', true),
      ('a2', false),
      ('a3', true),
      ('a4', true),
    ]);
    expect(saved.first['triggered_price'], 251.2);

    // Újra: semmi nem megy ki kétszer.
    expect(await w.checkOnce(), 0);
    expect(mailer.messages, hasLength(1));
  });

  test('English e-mail for one alert; unknown prices and accounts without e-mail are skipped', () async {
    account('ann@example.com', {
      'lang': 'en',
      'alerts': [alert('c1', 'TSLA', 'below', 300), alert('c2', 'ZZZZ', 'above', 1)],
    });
    final (anon, _) = store.createAnonymousUser(null);
    store.saveSyncData(
      anon,
      jsonEncode({
        'alerts': [alert('d1', 'TSLA', 'below', 999)],
      }),
    );
    quotes = {'TSLA': (price: 280.0, changePercent: -3.0)};
    expect(await watcher().checkOnce(), 1);
    final mail = mailer.messages.single;
    expect(mail.subject, 'WhatStock alert: TSLA');
    expect(mail.text, contains('TSLA: 280 USD – fell below 300 USD.'));
  });
}
