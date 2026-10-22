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
    // Teljesült cél: a sáv értéke (akadálymentesen is) legfeljebb 100%.
    await tester.tap(find.byKey(const ValueKey('goal-bar')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('goal-amount')), '100');
    await tester.tap(find.byKey(const ValueKey('goal-save')));
    await tester.pumpAndSettle();
    expect(find.text('Goal of 100.00 USD reached'), findsOneWidget);
    expect(tester.takeException(), isNull);

    await tester.tap(find.byKey(const ValueKey('goal-bar')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('goal-remove')));
    await tester.pumpAndSettle();
    expect(s.preferences.portfolioGoal, isNull);
    expect(find.byKey(const ValueKey('goal-set')), findsOneWidget);
  });

  testWidgets('monthly dividend goal: the expected monthly dividend at current yields against it', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    // 10 AAPL × 1,04 USD évi osztalék (demó) = 10,40 USD évente, kb. 0,87 USD havonta.
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD');
    await s.preferences.setDisplayCurrency('USD');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();

    final set = find.byKey(const ValueKey('dividend-goal-set'));
    await tester.ensureVisible(set);
    await tester.pumpAndSettle();
    await tester.tap(set);
    await tester.pumpAndSettle();
    expect(find.text('Monthly dividend goal'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('goal-amount')), '2');
    await tester.tap(find.byKey(const ValueKey('goal-save')));
    await tester.pumpAndSettle();
    expect(s.preferences.dividendGoal, (amount: 2.0, currency: 'USD'));
    expect(s.preferences.portfolioGoal, isNull, reason: 'a két cél független');
    expect(find.text("About 0.87 USD a month at today's yields: 43% of your 2.00 USD goal"), findsOneWidget);

    // Elérhető cél: teljesült.
    await tester.tap(find.byKey(const ValueKey('dividend-goal-bar')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('goal-amount')), '0.5');
    await tester.tap(find.byKey(const ValueKey('goal-save')));
    await tester.pumpAndSettle();
    expect(find.text("About 0.87 USD a month at today's yields: your 0.50 USD goal is reached"), findsOneWidget);
    expect((await AppPreferences.load()).dividendGoal, (amount: 0.5, currency: 'USD'));

    await tester.tap(find.byKey(const ValueKey('dividend-goal-bar')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('goal-remove')));
    await tester.pumpAndSettle();
    expect(s.preferences.dividendGoal, isNull);
    expect(find.byKey(const ValueKey('dividend-goal-set')), findsOneWidget);
  });
}
