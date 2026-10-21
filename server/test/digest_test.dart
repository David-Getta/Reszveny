import 'dart:convert';

import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/digest.dart';
import 'package:whatstock_server/src/mailer.dart';

void main() {
  late Store store;
  late ConsoleMailer mailer;
  late DateTime now;
  late List<String> asked;
  late List<String> newsAsked;

  // Hétfő, 2026. október 19., 7:00 UTC.
  final monday = DateTime.utc(2026, 10, 19, 7);

  setUp(() {
    store = Store.inMemory();
    mailer = ConsoleMailer();
    now = monday;
    asked = [];
    newsAsked = [];
    store.clock = () => now;
  });

  final moves = <String, WeekMove>{
    'AAPL': (price: 231.45, weekChange: -1.24, currency: 'USD', closes: const []),
    'NVDA': (price: 182.1, weekChange: 6.08, currency: 'USD', closes: const []),
    'MSFT': (price: 430.1, weekChange: 0.4, currency: 'USD', closes: const []),
    'OTP': (price: 31250, weekChange: null, currency: null, closes: const []),
  };

  DigestSender sender() => DigestSender(
    store: store,
    mailer: mailer,
    week: (s) async {
      asked.add(s);
      return moves[s];
    },
    earnings: (s, from, to) async => s == 'MSFT' ? DateTime.utc(2026, 10, 28) : null,
    results: (s, since) async => s == 'AAPL' ? (actual: 1.15, estimate: 1.12, period: DateTime.utc(2026, 9, 30)) : null,
    headline: (s, from, to) async {
      newsAsked.add(s);
      return s == 'NVDA' ? (title: 'Nvidia beats estimates', url: 'https://news.test/nvda') : null;
    },
    clock: () => now,
  );

  String account(String email, Map<String, dynamic> data) {
    final (id, _) = store.createAnonymousUser(null);
    store
      ..setEmail(id, email)
      ..saveSyncData(id, jsonEncode(data));
    return id;
  }

  Map<String, dynamic> lot(String symbol, String currency) => {
    'id': 'l$symbol',
    'symbol': symbol,
    'quantity': 1,
    'price': 1,
    'currency': currency,
  };

  test('Monday morning: only subscribers get it, once a week, in their language', () async {
    account('dave@example.com', {
      'lang': 'hu',
      'weekly_digest': true,
      'favorites': ['MSFT', 'AAPL'],
      'lots': [lot('AAPL', 'USD'), lot('NVDA', 'USD'), lot('OTP', 'HUF')],
    });
    account('off@example.com', {
      'favorites': ['AAPL'],
    });
    account('empty@example.com', {'weekly_digest': true});

    // Nem hétfő, illetve hétfő hajnal: nincs küldés.
    now = DateTime.utc(2026, 10, 18, 9);
    expect(await sender().sendDue(), 0);
    now = DateTime.utc(2026, 10, 19, 5);
    expect(await sender().sendDue(), 0);

    now = monday;
    expect(await sender().sendDue(), 1);
    final mail = mailer.messages.single;
    expect(mail.to, 'dave@example.com');
    expect(mail.subject, 'WhatStock heti összefoglaló: NVDA +6,1%');
    expect(
      mail.text,
      contains('Portfólió\n  NVDA   182.10 USD   +6,1%\n  AAPL   231.45 USD   −1,2%\n  OTP    31250.00 HUF\n'),
    );
    expect(mail.text, contains('Kedvencek\n  MSFT   430.10 USD   +0,4%\n'));
    expect(mail.text, contains('Gyorsjelentés a következő két hétben:\n  MSFT – okt. 28.'));
    expect(mail.text, contains('Friss gyorsjelentések:\n  AAPL – EPS 1.15 (várt 1.12, +2,7%) – a várt felett'));
    expect(mail.text, contains('a heti adat nem volt elérhető'));
    expect(asked.toSet(), {'AAPL', 'NVDA', 'OTP', 'MSFT'});
    // Hír csak a heti változással rendelkező, legnagyobb mozgásokhoz (az OTP-nek nincs).
    expect(newsAsked.toSet(), {'NVDA', 'AAPL', 'MSFT'});
    expect(
      mail.text,
      contains('Hírek a legnagyobb mozgásokhoz:\n  NVDA – Nvidia beats estimates\n    https://news.test/nvda\n'),
    );

    // Egy órával később már nem megy ki újra.
    now = monday.add(const Duration(hours: 1));
    expect(await sender().sendDue(), 0);
    // A következő hétfőn igen.
    now = monday.add(const Duration(days: 7));
    expect(await sender().sendDue(), 1);
  });

  test('technical signals from the closes: RSI extremes, a cross of the 200-day average this week', () {
    final falling = [for (var i = 0; i < 220; i++) 100.0, for (var i = 1; i <= 10; i++) 100.0 - i * 0.3];
    expect(signalOf(falling)?.kind, DigestSignalKind.rsiOversold);
    final rising = [for (var i = 0; i < 220; i++) 100.0, for (var i = 1; i <= 10; i++) 100.0 + i * 0.3];
    expect(signalOf(rising)?.kind, DigestSignalKind.rsiOverbought);
    // Oldalazás az átlag felett, aztán négy napja alá esett: átlépés a héten.
    final cross = [for (var i = 0; i < 200; i++) 100.0, 105.0, 105.0, 95.0, 95.0, 95.0, 95.0];
    expect(signalOf(cross)?.kind, DigestSignalKind.crossedBelow200);
    // Oldalazás jóval az átlag felett: nincs jelzés.
    expect(
      signalOf([for (var i = 0; i < 200; i++) 100.0, for (var i = 0; i < 30; i++) 110.0 + (i.isEven ? 0.5 : -0.5)]),
      isNull,
    );
    expect(signalOf(const []), isNull);
  });

  test('the English e-mail', () {
    final (subject, text) = DigestSender.digestEmail(
      [
        DigestLine(
          'AAPL',
          231.45,
          -2.5,
          'USD',
          DateTime.utc(2026, 10, 30),
          result: (actual: 1.15, estimate: 1.12, period: DateTime.utc(2026, 9, 30)),
          signal: (kind: DigestSignalKind.rsiOversold, value: 27.4),
        ),
      ],
      const [],
      hu: false,
      dividends: [(symbol: 'AAPL', amount: 2.5, currency: 'USD', date: DateTime.utc(2026, 10, 14))],
    );
    expect(subject, 'WhatStock weekly summary: AAPL −2.5%');
    expect(text, contains('Dividends received this week:\n  AAPL – 2.50 USD (Oct 14)'));
    expect(text, contains('Technical signals:\n  AAPL – RSI 27 (oversold)'));
    expect(text, contains('Portfolio\n  AAPL   231.45 USD   −2.5%'));
    expect(text, contains('Results due in the next two weeks:\n  AAPL – Oct 30'));
    expect(text, contains('Fresh quarterly results:\n  AAPL – EPS 1.15 (expected 1.12, +2.7%) – above expectations'));
    expect(text, isNot(contains('Favorites')));
    expect(text, contains('turn off the weekly summary in the app, in Settings'));
  });

  test('dividends of the past week from the synced package, in date order; older and broken rows skipped', () {
    final now = DateTime.utc(2026, 10, 19, 7);
    final ds = DigestSender.dividendsOf({
      'dividends': [
        {'symbol': 'msft', 'amount': 0.83, 'currency': 'USD', 'date': '2026-10-16'},
        {'symbol': 'AAPL', 'amount': 2.5, 'currency': 'USD', 'date': '2026-10-14'},
        {'symbol': 'OTP', 'amount': 24000, 'currency': 'HUF', 'date': '2026-10-01'},
        {'symbol': 'NVDA', 'amount': 0, 'date': '2026-10-15'},
        {'symbol': 'X', 'amount': 1},
        'junk',
      ],
    }, now: now);
    expect(ds.map((d) => (d.symbol, d.amount, d.currency)), [('AAPL', 2.5, 'USD'), ('MSFT', 0.83, 'USD')]);
    expect(DigestSender.dividendsOf({}, now: now), isEmpty);
  });

  test('symbols: portfolio first, favorites without duplicates, at most 15', () {
    final s = DigestSender.symbolsOf({
      'lots': [
        lot('aapl', 'USD'),
        lot('AAPL', 'USD'),
        lot('OTP', 'HUF'),
        // A teljesen eladott TSLA már nem része a portfóliónak.
        lot('TSLA', 'USD'),
        {...lot('TSLA', 'USD'), 'side': 'sell'},
      ],
      'favorites': ['AAPL', 'MSFT', for (var i = 0; i < 20; i++) 'X$i'],
    });
    expect(s.portfolio, ['AAPL', 'OTP']);
    expect(s.favorites.first, 'MSFT');
    expect(s.portfolio.length + s.favorites.length, DigestSender.maxSymbols);
    expect(s.currencies['OTP'], 'HUF');
  });

  test('weekly change from a Twelve Data time series (newest first)', () {
    final m = Api.weekMoveFromTimeSeries({
      'status': 'ok',
      'meta': {'currency': 'USD'},
      'values': [
        {'datetime': '2026-10-16', 'close': '110'},
        {'datetime': '2026-10-15', 'close': '108'},
        {'datetime': '2026-10-12', 'close': '104'},
        {'datetime': '2026-10-09', 'close': '100'},
        {'datetime': '2026-10-08', 'close': '90'},
      ],
    });
    expect(m!.price, 110);
    expect(m.weekChange, closeTo(10, 1e-9));
    expect(m.closes, [90, 100, 104, 108, 110], reason: 'időrendben');
    expect(m.currency, 'USD');
    expect(Api.weekMoveFromTimeSeries({'status': 'error'}), isNull);
  });

  test('the newest headline from a Finnhub company-news list', () {
    expect(
      Api.latestHeadline([
        {'headline': 'Old', 'url': 'https://a', 'datetime': 100},
        {'headline': ' New ', 'url': 'https://b', 'datetime': 200},
        {'headline': '', 'url': 'https://c', 'datetime': 300},
      ]),
      (title: 'New', url: 'https://b'),
    );
    expect(Api.latestHeadline({'error': 'x'}), isNull);
  });
}
