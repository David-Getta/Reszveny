import 'dart:convert';

import 'package:test/test.dart';
import 'package:whatstock_server/src/alert_watcher.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/mailer.dart';

void main() {
  late Store store;
  late ConsoleMailer mailer;
  late Map<String, Quote> quotes;
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
    quotePause: Duration.zero,
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
      'AAPL': (price: 251.2, changePercent: 1.1, time: null),
      'MSFT': (price: 410.0, changePercent: -0.4, time: null),
      'NVDA': (price: 190.0, changePercent: -6.2, time: null),
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

  test('an upload while the prices are fetched is not lost; the marks land on the fresh data', () async {
    final dave = account('dave@example.com', {
      'alerts': [alert('a1', 'AAPL', 'above', 250), alert('a2', 'MSFT', 'above', 500)],
    });
    quotes = {
      'AAPL': (price: 251.2, changePercent: 1.1, time: null),
      'MSFT': (price: 410.0, changePercent: 0.2, time: null),
    };
    var uploaded = false;
    final w = AlertWatcher(
      store: store,
      mailer: mailer,
      quotePause: Duration.zero,
      quote: (s) async {
        // Egy készülék épp most tölt fel: új tétel, és az MSFT-riasztást törölte.
        if (!uploaded) {
          uploaded = true;
          store.saveSyncData(
            dave,
            jsonEncode({
              'lots': [
                {'id': 'l1', 'symbol': 'OTP', 'quantity': 1, 'price': 30000, 'currency': 'HUF'},
              ],
              'alerts': [alert('a1', 'AAPL', 'above', 250)],
            }),
          );
        }
        return quotes[s];
      },
      clock: () => DateTime.utc(2026, 10, 15, 14),
    );
    expect(await w.checkOnce(), 1);
    final saved = jsonDecode(store.syncData(dave)!.data) as Map;
    expect((saved['lots'] as List).single['id'], 'l1', reason: 'a közbeni feltöltés megmaradt');
    expect((saved['alerts'] as List).map((a) => (a['id'], a['triggered_at'] != null)), [('a1', true)]);
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
    quotes = {'TSLA': (price: 280.0, changePercent: -3.0, time: null)};
    expect(await watcher().checkOnce(), 1);
    final mail = mailer.messages.single;
    expect(mail.subject, 'WhatStock alert: TSLA');
    expect(mail.text, contains('TSLA: 280 USD – fell below 300 USD.'));
  });

  test('trailing stop: the peak follows the price up (saved without an e-mail), fires on the drop', () async {
    final id = account('tom@example.com', {
      'lang': 'en',
      'alerts': [
        {...alert('t1', 'AMD', 'trailing', 10), 'peak': 100},
      ],
    });
    List alerts() => (jsonDecode(store.syncData(id)!.data) as Map)['alerts'] as List;

    quotes = {'AMD': (price: 120.0, changePercent: 2.0, time: null)};
    expect(await watcher().checkOnce(), 0);
    expect(alerts().single['peak'], 120);

    // 120 × 0,9 = 108: a 110 még nem, a 107 már szól.
    quotes = {'AMD': (price: 110.0, changePercent: -8.0, time: null)};
    expect(await watcher().checkOnce(), 0);
    quotes = {'AMD': (price: 107.0, changePercent: -2.7, time: null)};
    expect(await watcher().checkOnce(), 1);
    expect(mailer.messages.single.text, contains('AMD: 107 USD – fell 10% from its 120 USD peak.'));
    expect(alerts().single['triggered_at'], isNotNull);
  });

  test('more symbols than one round takes: the next round continues, so every symbol gets its turn', () async {
    final n = AlertWatcher.maxSymbolsPerRound + 1;
    account('eve@example.com', {
      'alerts': [for (var i = 0; i < n; i++) alert('a$i', 'S${i.toString().padLeft(3, '0')}', 'above', 1000)],
    });
    final w = watcher();
    await w.checkOnce();
    expect(asked, hasLength(AlertWatcher.maxSymbolsPerRound));
    final last = 'S${(n - 1).toString().padLeft(3, '0')}';
    expect(asked, isNot(contains(last)));
    asked.clear();
    await w.checkOnce();
    expect(asked.first, last, reason: 'a második kör az elsőből kimaradttal kezd');
  });

  test('a daily move from before the alert was set (weekend, before the open) does not fire', () async {
    final id = account('fay@example.com', {
      'alerts': [
        {...alert('m1', 'NVDA', 'move', 5), 'created_at': '2026-10-17T10:00:00.000Z'},
      ],
    });
    // Szombat: a pénteki (az élesítés előtti) kötés −6,2%-a.
    quotes = {'NVDA': (price: 190.0, changePercent: -6.2, time: DateTime.utc(2026, 10, 16, 20))};
    expect(await watcher().checkOnce(), 0);
    // Hétfő: egy új kötés után már szól.
    quotes = {'NVDA': (price: 178.0, changePercent: -6.3, time: DateTime.utc(2026, 10, 19, 14))};
    expect(await watcher().checkOnce(), 1);
    expect(((jsonDecode(store.syncData(id)!.data) as Map)['alerts'] as List).single['triggered_at'], isNotNull);
  });
}
