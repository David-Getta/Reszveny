import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/portfolio/portfolio_page.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';
import 'package:reszveny/features/stock_detail/stock_detail_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget_test.dart' show services;

/// A böngészős végigjátszás (valódi Chromium) javításai.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('on a wide screen the sidebar is visible to screen readers', (tester) async {
    tester.view.physicalSize = const Size(1280, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final handle = tester.ensureSemantics();
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    expect(find.bySemanticsLabel(RegExp('Settings')), findsWidgets);
    expect(find.bySemanticsLabel(RegExp('Portfolio')), findsWidgets);
    handle.dispose();
  });

  testWidgets('a word that only looks like a ticker but has no price does not open a broken stock page', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(430, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'amazon');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.byType(StockDetailPage), findsNothing);
    // Egy valódi (a demóban árazott) ticker továbbra is megnyílik.
    await tester.enterText(find.byType(TextField).first, 'nvda');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.byType(StockDetailPage), findsOneWidget);
  });

  test("a position bought today: 'today' in % is its own gain, not the stock's daily change", () {
    final now = DateTime.now();
    final row = PositionValue(
      position: Position(
        symbol: 'AAPL',
        currency: 'USD',
        lots: [PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD', date: now)],
      ),
      price: 231.45,
      dayChange: 2.15, // a részvény ma +0,94%
      quoteTime: now.toUtc(),
    );
    // Ma vett 200-on, most 231,45: +314,50 USD, a 2000 USD-hez képest +15,7%.
    expect(row.dayGain, closeTo(314.5, 0.01));
    expect(row.dayGainPercent, closeTo(15.72, 0.01));
  });

  testWidgets('each Subscribe button names its plan for screen readers', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final handle = tester.ensureSemantics();
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('View plans').first);
    await tester.pumpAndSettle();
    expect(find.bySemanticsLabel(RegExp(r'^Subscribe · Ultra$')), findsOneWidget);
    handle.dispose();
  });

  testWidgets('an open bottom sheet covers the tab bar: a tap there does not switch the tab behind it', (tester) async {
    tester.view.physicalSize = const Size(430, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.byIcon(Icons.translate_rounded), 300);
    await tester.tap(find.byIcon(Icons.translate_rounded));
    await tester.pumpAndSettle();
    expect(find.byType(BottomSheet), findsOneWidget);
    // A menüsor a lap (és a takarása) alatt van: a lap a gyökérnavigátoron nyílik.
    await tester.tap(find.text('Portfolio'), warnIfMissed: false);
    await tester.pumpAndSettle();
    expect(find.byType(PortfolioPage), findsNothing);
  });

  test('every bottom sheet opens on the root navigator (above the tab bar and the sidebar)', () {
    final missing = <String>[];
    for (final f in Directory('lib').listSync(recursive: true).whereType<File>()) {
      if (!f.path.endsWith('.dart')) continue;
      final src = f.readAsStringSync();
      for (final m in RegExp(r'showModalBottomSheet<[^>]*>\(').allMatches(src)) {
        final call = src.substring(m.end, (m.end + 200).clamp(0, src.length));
        if (!call.contains('useRootNavigator: true')) missing.add(f.path);
      }
    }
    expect(missing, isEmpty);
  });

  testWidgets('Esc on a wide screen steps back from a stock page', (tester) async {
    tester.view.physicalSize = const Size(1280, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'nvda');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.byType(StockDetailPage), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(find.byType(StockDetailPage), findsNothing);
  });

  testWidgets('settings offer no update check or auto-install switch where nothing can be checked', (tester) async {
    tester.view.physicalSize = const Size(430, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.byIcon(Icons.info_outline_rounded), 400);
    expect(find.text('Check for updates'), findsNothing);
    expect(find.text('Install updates automatically'), findsNothing);
    expect(find.text('You’re on the latest version.'), findsNothing);
  });

  test('the same exact-half ratio rounds the same way whichever way it was computed', () {
    final fmt = Fmt('en_US');
    // 449,20 / 1600 = 28,075% – két úton számolva a lebegőpontos alak hol alatta, hol fölötte van.
    const a = 449.2 / 1600 * 100;
    const b = 449.2 / (2049.2 - 449.2) * 100;
    expect(fmt.percent(a), fmt.percent(b));
    expect(fmt.percent(28.075), '28.08%');
    expect(fmt.percent(-28.075), '-28.08%');
    expect(fmt.percent(-0.001), '0.00%');
    expect(fmt.percent(28.074), '28.07%');
  });
}
