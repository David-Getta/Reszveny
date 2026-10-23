import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/features/alerts/price_alert.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('a trailing stop on every position at once; positions that already have one are skipped', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await s.portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD');
    await s.alerts.add(symbol: 'MSFT', kind: AlertKind.trailing, value: 10, currency: 'USD');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-stops')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('stops-20.0')));
    await tester.tap(find.byKey(const ValueKey('stops-save')));
    await tester.pumpAndSettle();
    expect(find.text('1 trailing stop set'), findsOneWidget);
    final aapl = s.alerts.forSymbol('AAPL').single;
    expect((aapl.kind, aapl.value, aapl.currency), (AlertKind.trailing, 20.0, 'USD'));
    expect(s.alerts.forSymbol('MSFT'), hasLength(1), reason: 'a meglévő marad, nem duplázódik');
    // Ismét: már mindenen van.
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-stops')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('stops-save')));
    await tester.pumpAndSettle();
    expect(find.text('Every position already has a trailing stop'), findsOneWidget);
  });
}
