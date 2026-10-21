import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('cash per currency: set, update, remove with zero, kept across a reload, cleared with the rest', () async {
    final store = PortfolioStore();
    await store.setCash('usd', 1000);
    await store.setCash('HUF', 250000);
    await store.setCash('USD', 1200);
    expect(store.cash, {'USD': 1200.0, 'HUF': 250000.0});
    final again = await PortfolioStore.load();
    expect(again.cash, {'USD': 1200.0, 'HUF': 250000.0});
    await again.setCash('HUF', 0);
    expect(again.cash, {'USD': 1200.0});
    await again.clear();
    expect(again.cash, isEmpty);
    expect(PortfolioStore.parseCashMap({'USD': 5, 'x': 'bad', 'EUR': -1, 'HUF': 10.5}), {'USD': 5.0, 'HUF': 10.5});
  });

  test('the snapshot: cash converted into the total value and the allocation, not into the gain', () {
    final store = PortfolioStore();
    final p = Position(
      symbol: 'AAPL',
      currency: 'USD',
      lots: const [PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD')],
    );
    final s = PortfolioSnapshot.compute(
      [p],
      quotes: {'AAPL': const StockQuote(symbol: 'AAPL', price: 150)},
      rate: (from, to) => from == 'USD' ? 1 : (from == 'EUR' ? 1.1 : null),
      currency: 'USD',
      cash: {'USD': 500, 'EUR': 100, 'XXX': 7},
    );
    expect(s.value, 1500);
    expect(s.cash, closeTo(610, 1e-9), reason: 'USD 500 + EUR 100 × 1,1; XXX árfolyam nélkül kimarad');
    expect(s.totalValue, closeTo(2110, 1e-9));
    expect(s.gain, 500, reason: 'a készpénz nem nyereség');
    expect(s.rows.single.weight, closeTo(1500 / 2110, 1e-9));
    store.dispose();
  });

  test('the shared snapshot (home card, tray) counts the cash too', () async {
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await s.portfolio.setCash('USD', 1000);
    final snap = await s.portfolioSnapshot();
    expect(snap.value, closeTo(2314.5, 0.01));
    expect(snap.totalValue, closeTo(3314.5, 0.01));
  });

  testWidgets('set the cash balance from the portfolio menu: total and the cash figure follow', (tester) async {
    tester.view.physicalSize = const Size(1200, 2600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD', date: DateTime(2025, 5, 2));
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('portfolio-cash')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-cash-edit')));
    await tester.pumpAndSettle();
    expect(find.text('Cash balance'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('cash-amount')), '1 000');
    await tester.tap(find.byKey(const ValueKey('cash-submit')));
    await tester.pumpAndSettle();
    expect(s.portfolio.cash, {'USD': 1000.0});
    // AAPL 10 × 231,45 = 2 314,50 + 1 000 készpénz.
    expect(find.byKey(const ValueKey('portfolio-cash')), findsOneWidget);
    expect(find.text('3,314.50 USD'), findsOneWidget);
    expect(find.text('1,000.00 USD'), findsWidgets);
  });
}
