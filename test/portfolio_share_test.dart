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
