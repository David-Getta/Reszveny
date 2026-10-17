import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/features/portfolio/annual_return.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('xirr: one year +10%, two years doubling, a loss, no solution', () {
    expect(
      xirr([(date: DateTime(2024, 1, 1), amount: -100), (date: DateTime(2025, 1, 1), amount: 110)]),
      closeTo(0.0997, 0.001),
    );
    expect(
      xirr([(date: DateTime(2023, 1, 1), amount: -100), (date: DateTime(2025, 1, 1), amount: 200)]),
      closeTo(0.414, 0.002),
    );
    expect(
      xirr([(date: DateTime(2024, 1, 1), amount: -100), (date: DateTime(2025, 1, 1), amount: 80)]),
      closeTo(-0.2, 0.002),
    );
    // Pénzsúlyozott: a második évben betett pénz csak egy évig dolgozott.
    final r = xirr([
      (date: DateTime(2023, 1, 1), amount: -100),
      (date: DateTime(2024, 1, 1), amount: -100),
      (date: DateTime(2025, 1, 1), amount: 231),
    ]);
    expect(r, closeTo(0.10, 0.002));
    expect(xirr([(date: DateTime(2024, 1, 1), amount: -100)]), isNull);
    expect(xirr([(date: DateTime(2024, 1, 1), amount: 100), (date: DateTime(2025, 1, 1), amount: 100)]), isNull);
  });

  group('snapshot', () {
    PortfolioSnapshot snap(List<PortfolioLot> lots, {double price = 120, DateTime? now}) {
      final p = Position(symbol: 'AAPL', currency: 'USD', lots: lots);
      return PortfolioSnapshot.compute(
        [p],
        quotes: {'AAPL': StockQuote(symbol: 'AAPL', price: price, change: 0)},
        rate: (_, _) => 2,
        currency: 'EUR',
        now: now ?? DateTime(2026, 1, 1),
      );
    }

    test('buy two years ago at 100, now 121: 10% a year', () {
      final s = snap([
        PortfolioLot(id: '1', symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD', date: DateTime(2024, 1, 1)),
      ], price: 121);
      expect(s.annualReturn, closeTo(0.10, 0.002));
    });

    test('sales count as money back', () {
      final s = snap([
        PortfolioLot(id: '1', symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD', date: DateTime(2024, 1, 1)),
        PortfolioLot(
          id: '2',
          symbol: 'AAPL',
          quantity: 5,
          price: 110,
          currency: 'USD',
          date: DateTime(2025, 1, 1),
          sell: true,
        ),
      ], price: 121);
      expect(s.annualReturn, closeTo(0.10, 0.002));
    });

    test('hidden under a year, without dates, or when a price is missing', () {
      final young = PortfolioLot(
        id: '1',
        symbol: 'AAPL',
        quantity: 10,
        price: 100,
        currency: 'USD',
        date: DateTime(2025, 6, 1),
      );
      expect(snap([young]).annualReturn, isNull);
      expect(
        snap([const PortfolioLot(id: '1', symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD')]).annualReturn,
        isNull,
      );
      final p = Position(
        symbol: 'AAPL',
        currency: 'USD',
        lots: [PortfolioLot(id: '1', symbol: 'AAPL', quantity: 1, price: 1, currency: 'USD', date: DateTime(2020))],
      );
      final s = PortfolioSnapshot.compute([p], quotes: const {}, rate: (_, _) => 1, currency: 'USD');
      expect(s.annualReturn, isNull);
    });
  });

  testWidgets('the portfolio summary shows the annual return with an explanation', (tester) async {
    tester.view.physicalSize = const Size(1200, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 50, currency: 'USD', date: DateTime(2020, 1, 2));
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    final stat = find.byKey(const ValueKey('portfolio-annual-return'));
    expect(stat, findsOneWidget);
    expect(find.descendant(of: stat, matching: find.textContaining('/ year')), findsOneWidget);
    await tester.tap(stat);
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.textContaining('XIRR'), findsOneWidget);
    await tester.pumpAndSettle(const Duration(seconds: 7));

    // A részvény oldalán, a „Pozícióm” kártyán is.
    await tester.tap(find.text('AAPL').last);
    await tester.pumpAndSettle();
    final position = find.byKey(const ValueKey('position-annual-return'));
    for (var i = 0; i < 20 && position.evaluate().isEmpty; i++) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    expect(find.descendant(of: position, matching: find.textContaining('/ year')), findsOneWidget);
  });
}
