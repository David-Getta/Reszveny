import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/features/alerts/alerts_view.dart';
import 'package:reszveny/features/alerts/price_alert.dart';

import 'app_widget_test.dart' show services;

/// Keskeny telefon nagy betűvel: a fő oldalakon semmi nem lóghat ki.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  Future<void> scrollThrough(WidgetTester tester) async {
    for (var i = 0; i < 25; i++) {
      final scrollables = find.byType(Scrollable);
      if (scrollables.evaluate().isEmpty) return;
      await tester.drag(scrollables.first, const Offset(0, -400), warnIfMissed: false);
      await tester.pumpAndSettle();
    }
  }

  for (final lang in const ['en', 'de', 'ar']) {
    testWidgets('home, stock page, portfolio, alerts and settings on a 340 px phone with 1.4× text ($lang)', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(340, 740);
      tester.view.devicePixelRatio = 1;
      tester.platformDispatcher.textScaleFactorTestValue = 1.4;
      addTearDown(tester.view.reset);
      addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
      final s = services(locale: Locale(lang));
      await s.preferences.setFavorites(['AAPL', 'MSFT', 'NVDA']);
      await s.portfolio.add(symbol: 'AAPL', quantity: 120, price: 180, currency: 'USD');
      await s.portfolio.add(symbol: 'MSFT', quantity: 3, price: 400, currency: 'USD');
      await s.alerts.add(symbol: 'AAPL', kind: AlertKind.trailing, value: 10, currency: 'USD', peak: 240);
      await tester.pumpWidget(WhatStockApp(services: s));
      await tester.pumpAndSettle();

      await scrollThrough(tester);

      await tester.enterText(find.byType(TextField).first, 'AAPL');
      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pumpAndSettle();

      await scrollThrough(tester);
      // Rendszer-vissza gomb (a nyelvtől független).
      await tester.binding.handlePopRoute();
      await tester.pumpAndSettle();

      // A fülek sorrendben (nyelvtől függetlenül, a menüsor ikonjaival).
      for (final icon in [Icons.pie_chart_outline_rounded, Icons.notifications_none_rounded, Icons.tune_rounded]) {
        final t = find.descendant(of: find.byKey(const ValueKey('phone-nav')), matching: find.byIcon(icon));
        if (t.evaluate().isEmpty) continue;
        await tester.tap(t.first);
        await tester.pumpAndSettle();

        await scrollThrough(tester);
      }
    });
  }

  testWidgets('favorites, events, plans and the alert dialog on a 340 px phone with 1.4× text (de)', (tester) async {
    tester.view.physicalSize = const Size(340, 740);
    tester.view.devicePixelRatio = 1;
    tester.platformDispatcher.textScaleFactorTestValue = 1.4;
    addTearDown(tester.view.reset);
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    final s = services(locale: const Locale('de'));
    await s.preferences.setFavorites(['AAPL', 'MSFT', 'NVDA']);
    await s.preferences.addWatchList('Technologie');
    await s.preferences.addWatchList('Dividendenwerte');
    await s.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: 300, currency: 'USD');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    Future<void> open(String key) async {
      final f = find.byKey(ValueKey(key));
      for (var i = 0; i < 20 && f.evaluate().isEmpty; i++) {
        await tester.drag(find.byType(Scrollable).first, const Offset(0, -300), warnIfMissed: false);
        await tester.pumpAndSettle();
      }
      await tester.ensureVisible(f);
      await tester.pumpAndSettle();
      await tester.tap(f);
      await tester.pumpAndSettle();
    }

    await open('favorites-see-all');
    await scrollThrough(tester);
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    await tester.drag(find.byType(Scrollable).first, const Offset(0, 3000), warnIfMissed: false);
    await tester.pumpAndSettle();
    await open('events-see-all');
    await scrollThrough(tester);
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();

    // Az összehasonlítás és a riasztás ablaka a részvény oldaláról, minden típussal.
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.byType(AlertBellButton));
    await tester.pumpAndSettle();
    expect(find.byType(ChoiceChip), findsNWidgets(AlertKind.values.length));
    for (final chip in find.byType(ChoiceChip).evaluate().toList()) {
      await tester.tap(find.byWidget(chip.widget), warnIfMissed: false);
      await tester.pumpAndSettle();
    }
    Navigator.of(tester.element(find.byType(ChoiceChip).first)).pop();
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('compare-open')));
    await tester.pumpAndSettle();
    await scrollThrough(tester);
  });
}
