import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/features/portfolio/portfolio_share_card.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('largest positions: weights of the stocks only (cash left out), largest first, at most five', () {
    final store = PortfolioStore(
      lots: [
        for (final (i, sym) in ['A', 'B', 'C', 'D', 'E', 'F'].indexed)
          PortfolioLot(id: sym, symbol: sym, quantity: 1, price: 10, currency: 'USD', date: DateTime(2025, 1, i + 1)),
      ],
    );
    final s = PortfolioSnapshot.compute(
      store.positions,
      quotes: {
        for (final (i, sym) in ['A', 'B', 'C', 'D', 'E', 'F'].indexed)
          sym: StockQuote(symbol: sym, price: 10.0 * (i + 1), change: 0),
      },
      rate: (_, _) => 1,
      currency: 'USD',
      cash: const {'USD': 1000},
    );
    final top = topHoldings(s);
    expect(top.map((h) => h.symbol), ['F', 'E', 'D', 'C', 'B']);
    // F: 60 a 210-ből (a készpénz nem számít).
    expect(top.first.weight, closeTo(60 / 210, 1e-9));
  });

  test('moved most today: the largest changes by amount in the display currency; nothing with one mover', () {
    final store = PortfolioStore(
      lots: [
        for (final (sym, q) in [('A', 10.0), ('B', 1.0), ('C', 100.0), ('D', 5.0)])
          PortfolioLot(id: sym, symbol: sym, quantity: q, price: 10, currency: sym == 'C' ? 'EUR' : 'USD'),
      ],
    );
    PortfolioSnapshot snap(Map<String, double> change) => PortfolioSnapshot.compute(
      store.positions,
      quotes: {
        for (final sym in ['A', 'B', 'C', 'D']) sym: StockQuote(symbol: sym, price: 10, change: change[sym] ?? 0),
      },
      rate: (from, _) => from == 'EUR' ? 2 : 1,
      currency: 'USD',
    );
    // A: +10, B: −30, C: −0,1 × 100 × 2 = −20, D: nem mozdult.
    final m = topDayMovers(snap({'A': 1, 'B': -30, 'C': -0.1}));
    expect(m.map((e) => e.symbol), ['B', 'C']);
    expect(m.last.amount, closeTo(-20, 1e-9));
    expect(topDayMovers(snap({'A': 1})), isEmpty);
  });

  test('weight before and after a trade: new money for a buy, less value after a sale', () {
    final store = PortfolioStore(
      lots: [
        PortfolioLot(id: 'a', symbol: 'A', quantity: 10, price: 10, currency: 'USD'),
        PortfolioLot(id: 'b', symbol: 'B', quantity: 30, price: 10, currency: 'USD'),
      ],
    );
    final s = PortfolioSnapshot.compute(
      store.positions,
      quotes: const {
        'A': StockQuote(symbol: 'A', price: 10, change: 0),
        'B': StockQuote(symbol: 'B', price: 10, change: 0),
      },
      rate: (_, _) => 1,
      currency: 'USD',
    );
    // A: 100 a 400-ból (25%); +20 darab (200 új pénz): 300 a 600-ból.
    var w = weightChange(s, 'A', 20, sell: false, currency: 'USD')!;
    expect((w.before, w.after), (25.0, 50.0));
    // Eladás: −5 darab (50): 50 a 350-ből.
    w = weightChange(s, 'A', 5, sell: true, currency: 'USD')!;
    expect(w.after, closeTo(50 / 350 * 100, 1e-9));
    // Új pozíció a megadott áron: 0-ról 100 az 500-ból.
    w = weightChange(s, 'C', 10, sell: false, price: 10, currency: 'USD')!;
    expect((w.before, w.after), (0.0, 20.0));
    // Ismeretlen pénznem árfolyam nélkül: nincs mit mondani.
    expect(weightChange(s, 'D', 1, sell: false, price: 10, currency: 'JPY'), isNull);
  });

  testWidgets('share the performance from the portfolio page: image and text, no amounts', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    String? text;
    Uint8List? png;
    final previousText = shareText, previousImage = shareImage;
    shareText = (t, {subject, origin}) async => text = t;
    shareImage = (bytes, {required fileName, text, subject, origin}) async => png = bytes;
    addTearDown(() {
      shareText = previousText;
      shareImage = previousImage;
    });
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD', date: DateTime(2024, 1, 2));
    await s.portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD', date: DateTime(2024, 1, 2));
    await s.preferences.setDisplayCurrency('USD');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-share')));
    await tester.pumpAndSettle();
    expect(find.text('My portfolio'), findsOneWidget);
    expect(find.text('Only percentages are shared, no amounts.'), findsOneWidget);
    expect(find.text('2 positions'), findsOneWidget);
    // A kártyán nincs pénzösszeg.
    expect(find.descendant(of: find.byType(PortfolioShareCard), matching: find.textContaining('USD')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('portfolio-share-text')));
    await tester.pumpAndSettle();
    expect(text, startsWith('My portfolio · Made with WhatStock\n'));
    expect(text, contains('Largest positions: AAPL'));
    expect(text, isNot(contains('USD')));
    await tester.runAsync(() async {
      // A kép a valódi renderelőn készül, ezért valódi aszinkron időben.
      await tester.tap(find.byKey(const ValueKey('portfolio-share-image')));
      for (var i = 0; i < 50 && png == null; i++) {
        await Future<void>.delayed(const Duration(milliseconds: 20));
      }
    });
    await tester.pumpAndSettle();
    expect(png, isNotNull);
  });
}
