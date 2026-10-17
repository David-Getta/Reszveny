import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/app_preferences.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the stored goal is read back; a broken one is ignored', () async {
    expect(AppPreferences.parseGoal('10000000.0|HUF'), (amount: 10000000.0, currency: 'HUF'));
    expect(AppPreferences.parseGoal('x|HUF'), isNull);
    expect(AppPreferences.parseGoal('-5|USD'), isNull);
    expect(AppPreferences.parseGoal(null), isNull);
    final prefs = await AppPreferences.load();
    await prefs.setPortfolioGoal((amount: 5000, currency: 'USD'));
    expect((await AppPreferences.load()).portfolioGoal, (amount: 5000.0, currency: 'USD'));
  });

  testWidgets('set a goal, see the progress, then remove it', (tester) async {
    tester.view.physicalSize = const Size(1200, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD');
    await s.preferences.setDisplayCurrency('USD');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey('goal-set')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('goal-amount')), '4 000');
    await tester.tap(find.byKey(const ValueKey('goal-save')));
    await tester.pumpAndSettle();
    expect(s.preferences.portfolioGoal, (amount: 4000.0, currency: 'USD'));
    expect(find.byKey(const ValueKey('goal-bar')), findsOneWidget);
    expect(find.textContaining(RegExp(r'^\d+% of your 4,000.00 USD goal$')), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('goal-bar')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('goal-remove')));
    await tester.pumpAndSettle();
    expect(s.preferences.portfolioGoal, isNull);
    expect(find.byKey(const ValueKey('goal-set')), findsOneWidget);
  });
}
