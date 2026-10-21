import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/features/portfolio/dividend_forecast.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  group('PortfolioStore dividends', () {
    test('kept separately from the lots, newest first, per stock; survive a reload; cleared with the rest', () async {
      final store = PortfolioStore();
      await store.add(symbol: 'AAPL', quantity: 10, price: 150, currency: 'USD');
      await store.addDividend(symbol: 'aapl', amount: 2.4, currency: 'usd', date: DateTime(2026, 2, 13));
      await store.addDividend(symbol: 'OTP', amount: 24000, currency: 'HUF', date: DateTime(2026, 6, 2));
      final noDate = await store.addDividend(symbol: 'AAPL', amount: 2.5, currency: 'USD');
      expect(store.dividends.map((d) => (d.symbol, d.amount, d.currency)), [
        ('OTP', 24000.0, 'HUF'),
        ('AAPL', 2.4, 'USD'),
        ('AAPL', 2.5, 'USD'),
      ]);
      expect(store.dividendsOf('aapl').map((d) => d.amount), [2.4, 2.5]);
      expect(store.lots, hasLength(1), reason: 'az osztalék nem tranzakció');
      expect(store.positionOf('AAPL')!.quantity, 10);

      final again = await PortfolioStore.load();
      expect(again.dividends, hasLength(3));
      expect(again.dividends.first.date, DateTime(2026, 6, 2));

      await again.removeDividend(noDate.id);
      expect(again.dividends, hasLength(2));
      await again.restoreDividend(noDate);
      await again.restoreDividend(noDate);
      expect(again.dividends, hasLength(3), reason: 'visszaállítás egyszer');
      await again.clear();
      expect(again.dividends, isEmpty);
      expect((await PortfolioStore.load()).dividends, isEmpty);
    });

    test('a corrupt dividends store does not lose the lots (and vice versa)', () async {
      SharedPreferences.setMockInitialValues({
        'portfolio_lots': '[{"id":"a","symbol":"AAPL","quantity":2,"price":100,"currency":"USD"}]',
        'portfolio_dividends': '{not json',
      });
      final store = await PortfolioStore.load();
      expect(store.lots.single.symbol, 'AAPL');
      expect(store.dividends, isEmpty);
      SharedPreferences.setMockInitialValues({
        'portfolio_lots': 'garbage',
        'portfolio_dividends': '[{"id":"d","symbol":"AAPL","amount":1,"currency":"USD"}]',
      });
      final again = await PortfolioStore.load();
      expect(again.lots, isEmpty);
      expect(again.dividends.single.amount, 1);
    });

    test('a broken or zero record is skipped when parsing', () {
      final parsed = PortfolioStore.parseDividends(
        '[{"id":"x","symbol":"AAPL","amount":1.5,"currency":"USD","date":"2026-01-02"},'
        '{"symbol":"MSFT","amount":0},{"symbol":"","amount":3},"junk"]',
      );
      expect(parsed.map((d) => (d.id, d.symbol, d.amount, d.date)), [('x', 'AAPL', 1.5, DateTime(2026, 1, 2))]);
    });
  });

  group('expectedDividends', () {
    DividendRecord rec(String sym, DateTime date, double amount, {String currency = 'USD'}) => DividendRecord(
      id: '$sym-${date.toIso8601String()}-$amount',
      symbol: sym,
      amount: amount,
      currency: currency,
      date: date,
    );
    final now = DateTime(2026, 10, 21);

    test(
      'quarterly rhythm from the recorded payments: the next one is the last plus a quarter, with the last amount',
      () {
        final out = expectedDividends(
          [
            rec('AAPL', DateTime(2026, 2, 12), 2.4),
            rec('AAPL', DateTime(2026, 5, 14), 2.5),
            rec('AAPL', DateTime(2026, 8, 13), 2.6),
            // Ugyanazon a napon két tétel (két bróker): egy kifizetés, együtt.
            rec('AAPL', DateTime(2026, 8, 13), 0.4),
          ],
          ['AAPL'],
          now: now,
        );
        expect(out, hasLength(1));
        expect(out.single.symbol, 'AAPL');
        expect(out.single.date, DateTime(2026, 8, 13 + 91), reason: 'naptári nap, nem 91 × 24 óra');
        expect(out.single.amount, closeTo(3.0, 1e-9));
        expect(out.single.periodDays, 91);
      },
    );

    test('monthly, half-yearly and yearly rhythms; irregular or too sparse series give nothing', () {
      expect(periodDaysFor(31), 30);
      expect(periodDaysFor(182), 182);
      expect(periodDaysFor(365), 365);
      expect(periodDaysFor(10), isNull, reason: 'túl sűrű: nem rendszeres osztalék');
      expect(periodDaysFor(700), isNull);
      final monthly = expectedDividends(
        [for (var m = 6; m <= 9; m++) rec('O', DateTime(2026, m, 15), 0.26)],
        ['O'],
        now: now,
      );
      expect(monthly.single.date, DateTime(2026, 9, 15 + 30));
    });

    test('only held stocks, at least two dated payments, nothing long overdue or too far away; sorted by date', () {
      final out = expectedDividends(
        [
          // Már nem birtokolt: kimarad.
          rec('MSFT', DateTime(2026, 6, 11), 0.83),
          rec('MSFT', DateTime(2026, 9, 10), 0.83),
          // Egyetlen tétel: nincs ritmus.
          rec('KO', DateTime(2026, 10, 1), 0.5),
          // Régen esedékes lett volna (2026. jan. + 91 nap): valószínűleg nem lett rögzítve.
          rec('XOM', DateTime(2025, 10, 10), 0.99),
          rec('XOM', DateTime(2026, 1, 9), 0.99),
          // Éves, 180 napon túl: még nem látszik.
          rec('SAP', DateTime(2025, 5, 20), 20),
          rec('SAP', DateTime(2026, 5, 19), 22),
          rec('JNJ', DateTime(2026, 6, 9), 1.24),
          rec('JNJ', DateTime(2026, 9, 8), 1.24),
          rec('PEP', DateTime(2026, 6, 30), 1.42),
          rec('PEP', DateTime(2026, 9, 30), 1.42),
        ],
        ['KO', 'XOM', 'SAP', 'JNJ', 'PEP'],
        now: now,
      );
      expect(out.map((x) => x.symbol), ['JNJ', 'PEP']);
    });

    test('yield on cost: the last 12 months of dividends against the open cost; nothing without dated items', () {
      final ds = [
        rec('KO', DateTime(2026, 9, 1), 5),
        rec('KO', DateTime(2026, 3, 1), 5),
        rec('KO', DateTime(2025, 9, 1), 5, currency: 'USD'),
        // Egy évnél régebbi: kimarad.
        rec('KO', DateTime(2025, 10, 1), 100),
      ];
      expect(yieldOnCost(ds, 1000, now: DateTime(2026, 10, 21)), closeTo(1.0, 1e-9));
      expect(yieldOnCost(ds, 0, now: DateTime(2026, 10, 21)), isNull);
      expect(yieldOnCost(const [], 1000, now: DateTime(2026, 10, 21)), isNull);
    });

    testWidgets('portfolio-level yield on cost: only the stocks still held, against their converted cost', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(1200, 2600);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final s = services();
      await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD', date: DateTime(2025, 5, 2));
      // KO: vétel és teljes eladás – az osztaléka nem számít a hozamba.
      await s.portfolio.add(symbol: 'KO', quantity: 10, price: 60, currency: 'USD', date: DateTime(2025, 5, 2));
      await s.portfolio.add(
        symbol: 'KO',
        quantity: 10,
        price: 65,
        currency: 'USD',
        date: DateTime(2026, 9, 1),
        sell: true,
      );
      final recent = DateTime.now().subtract(const Duration(days: 30));
      await s.portfolio.addDividend(symbol: 'AAPL', amount: 20, currency: 'USD', date: recent);
      await s.portfolio.addDividend(symbol: 'KO', amount: 400, currency: 'USD', date: recent);
      await tester.pumpWidget(WhatStockApp(services: s));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Portfolio').first);
      await tester.pumpAndSettle();
      final yoc = find.byKey(const ValueKey('dividends-yield-on-cost'));
      await tester.ensureVisible(yoc);
      // 20 / 2 000 = 1,00 % (nem 420 / 2 000).
      expect(find.descendant(of: yoc, matching: find.text('1.00%')), findsOneWidget);
      // ⓘ: a fogalomtár magyarázata párbeszédben.
      await tester.tap(find.byKey(const ValueKey('hint-Yield on cost')));
      await tester.pumpAndSettle();
      expect(find.textContaining('Dividends received in the last 12 months divided by'), findsOneWidget);
    });

    testWidgets('a position whose dividends are recorded in another currency still shows the expected next one', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(1200, 2600);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final s = services();
      await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD', date: DateTime(2025, 5, 2));
      final q = DateTime.now().subtract(const Duration(days: 40));
      await s.portfolio.addDividend(symbol: 'AAPL', amount: 900, currency: 'HUF', date: q);
      await s.portfolio.addDividend(
        symbol: 'AAPL',
        amount: 880,
        currency: 'HUF',
        date: q.subtract(const Duration(days: 91)),
      );
      await tester.pumpWidget(WhatStockApp(services: s));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField).first, 'AAPL');
      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pumpAndSettle();
      // USD-ben nincs kapott osztalék (nincs összeg és hozam), de a HUF-sorozat várható következője látszik.
      expect(find.byKey(const ValueKey('position-dividends')), findsNothing);
      final next = find.byKey(const ValueKey('position-dividend-next'));
      expect(next, findsOneWidget);
      expect(find.descendant(of: next, matching: find.textContaining('HUF')), findsOneWidget);
    });

    test('two currencies for one stock (two brokers) are separate series, never summed together', () {
      final out = expectedDividends(
        [
          rec('AAPL', DateTime(2026, 5, 14), 2.5),
          rec('AAPL', DateTime(2026, 8, 13), 2.6),
          rec('AAPL', DateTime(2026, 8, 13), 900, currency: 'HUF'),
        ],
        ['AAPL'],
        now: now,
      );
      expect(out.map((x) => (x.currency, x.amount)), [('USD', 2.6)], reason: 'a HUF-sorozatnak csak egy tétele van');
    });
  });

  testWidgets('dividends on the portfolio page: add by hand, totals, delete with undo; the stock page shows them', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1200, 2600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD', date: DateTime(2025, 5, 2));
    await s.portfolio.addDividend(symbol: 'AAPL', amount: 2.5, currency: 'USD', date: DateTime(2025, 11, 13));
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    // A főoldali portfólió-kártyán az idei osztalék (a 2025-ös tétel nem idei).
    expect(find.byKey(const ValueKey('home-dividends')), findsNothing);
    await s.portfolio.addDividend(symbol: 'AAPL', amount: 1.5, currency: 'USD', date: DateTime.now());
    await tester.pumpAndSettle();
    expect(find.text('Dividends this year: 1.50 USD'), findsOneWidget);
    await s.portfolio.removeDividend(s.portfolio.dividends.firstWhere((d) => d.amount == 1.5).id);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();

    final card = find.byKey(const ValueKey('portfolio-dividends-received'));
    await tester.ensureVisible(card);
    await tester.pumpAndSettle();
    expect(find.text('Dividends received'), findsOneWidget);
    expect(find.text('2.50 USD'), findsNWidgets(2), reason: 'a tétel és az összes');
    // Bekerülési osztalékhozam a kártyán: 2,50 USD az elmúlt 12 hónapból a 2 000 USD vételi értékhez.
    final cardYoc = find.byKey(const ValueKey('dividends-yield-on-cost'));
    expect(find.descendant(of: cardYoc, matching: find.text('0.13%')), findsOneWidget);
    // Egy tételből nincs várható következő; két negyedéves tételből van.
    expect(find.byKey(const ValueKey('dividend-expected-AAPL')), findsNothing);
    final q = DateTime.now().subtract(const Duration(days: 40));
    await s.portfolio.addDividend(symbol: 'AAPL', amount: 2.6, currency: 'USD', date: q);
    await s.portfolio.addDividend(
      symbol: 'AAPL',
      amount: 2.5,
      currency: 'USD',
      date: q.subtract(const Duration(days: 91)),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('dividend-expected-AAPL')), findsOneWidget);
    expect(find.text('Expected next'), findsOneWidget);
    expect(find.textContaining('~ 2.60 USD'), findsOneWidget);
    await s.portfolio.removeDividend(s.portfolio.dividends.firstWhere((d) => d.amount == 2.6).id);
    await s.portfolio.removeDividend(
      s.portfolio.dividends.firstWhere((d) => d.amount == 2.5 && d.date == q.subtract(const Duration(days: 91))).id,
    );
    await tester.pumpAndSettle();

    // Kézi felvétel: az idei összeg és az összes is nő.
    await tester.tap(find.byKey(const ValueKey('dividend-add')));
    await tester.pumpAndSettle();
    expect(find.text('Add dividend'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('dividend-submit')));
    await tester.pumpAndSettle();
    expect(find.text('Enter a number greater than zero.'), findsOneWidget, reason: 'üres összeg');
    await tester.enterText(find.byKey(const ValueKey('dividend-symbol')), 'aapl');
    await tester.enterText(find.byKey(const ValueKey('dividend-amount')), '3,10');
    await tester.tap(find.byKey(const ValueKey('dividend-submit')));
    await tester.pumpAndSettle();
    expect(s.portfolio.dividends, hasLength(2));
    expect(s.portfolio.dividends.first.amount, 3.1);
    expect(s.portfolio.dividends.first.symbol, 'AAPL');
    expect(s.portfolio.dividends.first.date?.year, DateTime.now().year);
    final year = find.descendant(
      of: find.byKey(const ValueKey('dividends-this-year')),
      matching: find.text('3.10 USD'),
    );
    expect(year, findsOneWidget);
    expect(
      find.descendant(of: find.byKey(const ValueKey('dividends-all-time')), matching: find.text('5.60 USD')),
      findsOneWidget,
    );
    // Két évből van tétel: évenkénti sorok is.
    expect(
      find.descendant(of: find.byKey(const ValueKey('dividends-year-2025')), matching: find.text('2.50 USD')),
      findsOneWidget,
    );
    expect(find.byKey(ValueKey('dividends-year-${DateTime.now().year}')), findsOneWidget);

    // Törlés visszavonással.
    final old = s.portfolio.dividends.last;
    await tester.tap(find.byKey(ValueKey('dividend-delete-${old.id}')));
    await tester.pumpAndSettle();
    expect(s.portfolio.dividends, hasLength(1));
    expect(find.text('Dividend deleted'), findsOneWidget);
    await tester.tap(find.text('Undo'));
    await tester.pumpAndSettle();
    expect(s.portfolio.dividends.map((d) => d.id), contains(old.id));

    // A menüben az osztalékok exportja is ott van.
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    final shared = <String>[];
    final previousShare = shareText;
    shareText = (text, {subject, origin}) async => shared.add(text);
    addTearDown(() => shareText = previousShare);
    await tester.tap(find.byKey(const ValueKey('portfolio-export-dividends')));
    await tester.pumpAndSettle();
    expect(shared.single, startsWith('date,symbol,amount,currency\n'));
    expect(shared.single, contains('AAPL,3.1,USD'));

    // A pozíció tranzakciós lapján: osztalék felvétele kitöltött tickerrel, és az összeg.
    await tester.tap(find.byKey(const ValueKey('position-menu-AAPL')));
    await tester.pumpAndSettle();
    expect(find.textContaining('Dividends received: 5.60 USD'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('position-dividend')));
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byKey(const ValueKey('dividend-symbol'))).controller!.text, 'AAPL');
    await tester.enterText(find.byKey(const ValueKey('dividend-amount')), '1');
    await tester.tap(find.byKey(const ValueKey('dividend-submit')));
    await tester.pumpAndSettle();
    expect(s.portfolio.dividendsOf('AAPL'), hasLength(3));
    expect(find.textContaining('Dividends received: 6.60 USD'), findsOneWidget);
    await tester.tapAt(const Offset(600, 40));
    await tester.pumpAndSettle();

    // A részvény oldalán „A pozícióm” kártyán a kapott osztalék.
    final tile = find.ancestor(of: find.byKey(const ValueKey('position-menu-AAPL')), matching: find.byType(InkWell));
    await tester.ensureVisible(tile.first);
    await tester.tap(tile.first);
    await tester.pumpAndSettle();
    final figure = find.byKey(const ValueKey('position-dividends'));
    await tester.ensureVisible(figure);
    expect(find.descendant(of: figure, matching: find.text('6.60 USD')), findsOneWidget);
    // Két tételből (tavaly november, ma) éves ritmus, a következő fél éven túl: nincs várható sor.
    expect(find.byKey(const ValueKey('position-dividend-next')), findsNothing);
    // Negyedéves ritmusú tételek után a várható következő is látszik.
    await s.portfolio.addDividend(symbol: 'AAPL', amount: 2.6, currency: 'USD', date: q);
    await s.portfolio.addDividend(
      symbol: 'AAPL',
      amount: 2.5,
      currency: 'USD',
      date: q.subtract(const Duration(days: 91)),
    );
    await tester.pumpAndSettle();
    final next = find.byKey(const ValueKey('position-dividend-next'));
    await tester.ensureVisible(next);
    // Bekerülési osztalékhozam: az utolsó 12 hónap osztaléka a 2 000 USD vételi értékhez mérve.
    final yoc = find.byKey(const ValueKey('position-yield-on-cost'));
    expect(find.descendant(of: yoc, matching: find.textContaining(RegExp(r'^\d+\.\d+%$'))), findsOneWidget);
    expect(find.descendant(of: yoc, matching: find.byKey(const ValueKey('hint-Yield on cost'))), findsOneWidget);
    // „around <dátum> · ~<összeg> USD”
    expect(
      find.descendant(of: next, matching: find.textContaining(RegExp(r'^around .* · ~ [\d.,]+ USD$'))),
      findsOneWidget,
    );
  });
}
