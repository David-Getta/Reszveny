import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/share/share_text.dart';
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

    test('a broken or zero record is skipped when parsing', () {
      final parsed = PortfolioStore.parseDividends(
        '[{"id":"x","symbol":"AAPL","amount":1.5,"currency":"USD","date":"2026-01-02"},'
        '{"symbol":"MSFT","amount":0},{"symbol":"","amount":3},"junk"]',
      );
      expect(parsed.map((d) => (d.id, d.symbol, d.amount, d.date)), [('x', 'AAPL', 1.5, DateTime(2026, 1, 2))]);
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
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();

    final card = find.byKey(const ValueKey('portfolio-dividends-received'));
    await tester.ensureVisible(card);
    await tester.pumpAndSettle();
    expect(find.text('Dividends received'), findsOneWidget);
    expect(find.text('2.50 USD'), findsNWidgets(2), reason: 'a tétel és az összes');

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

    // A részvény oldalán „A pozícióm” kártyán a kapott osztalék.
    final tile = find.ancestor(of: find.byKey(const ValueKey('position-menu-AAPL')), matching: find.byType(InkWell));
    await tester.ensureVisible(tile.first);
    await tester.tap(tile.first);
    await tester.pumpAndSettle();
    final figure = find.byKey(const ValueKey('position-dividends'));
    await tester.ensureVisible(figure);
    expect(find.descendant(of: figure, matching: find.text('5.60 USD')), findsOneWidget);
  });
}
