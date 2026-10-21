import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('the glossary page from settings: every figure, searchable', (tester) async {
    tester.view.physicalSize = const Size(1200, 3000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    final tile = find.byKey(const ValueKey('settings-glossary'));
    await tester.scrollUntilVisible(tile, 300, scrollable: find.byType(Scrollable).first);
    await tester.tap(tile);
    await tester.pumpAndSettle();
    expect(find.text('Glossary'), findsWidgets);
    expect(find.byKey(const ValueKey('glossary-P/E (trailing)')), findsOneWidget);
    expect(find.byKey(const ValueKey('glossary-RSI (14 days)')), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('glossary-search')), 'rsi');
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('glossary-RSI (14 days)')), findsOneWidget);
    expect(find.byKey(const ValueKey('glossary-P/E (trailing)')), findsNothing);
  });
}
