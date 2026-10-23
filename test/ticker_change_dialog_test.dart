import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('from the transactions sheet: invalid or same ticker refused, then moved and confirmed', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 3, price: 150, currency: 'USD', date: DateTime(2024, 1, 2));
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('position-menu-AAPL')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('position-ticker-change')));
    await tester.pumpAndSettle();
    expect(find.text('Ticker change · AAPL'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('ticker-change-new')), 'aapl');
    await tester.tap(find.byKey(const ValueKey('ticker-change-save')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots.single.symbol, 'AAPL', reason: 'ugyanaz a ticker nem váltás');
    await tester.enterText(find.byKey(const ValueKey('ticker-change-new')), 'msft');
    await tester.tap(find.byKey(const ValueKey('ticker-change-save')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots.single.symbol, 'MSFT');
    expect(find.text('Moved to MSFT'), findsOneWidget);
    expect(find.byKey(const ValueKey('position-menu-MSFT')), findsOneWidget);
    expect(find.byKey(const ValueKey('position-menu-AAPL')), findsNothing);
  });
}
