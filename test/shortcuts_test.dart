import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/features/alerts/alerts_view.dart';
import 'package:reszveny/features/portfolio/portfolio_page.dart';
import 'package:reszveny/features/settings/settings_page.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  Future<void> press(WidgetTester tester, LogicalKeyboardKey key) async {
    await tester.sendKeyDownEvent(LogicalKeyboardKey.controlLeft);
    await tester.sendKeyEvent(key);
    await tester.sendKeyUpEvent(LogicalKeyboardKey.controlLeft);
    await tester.pumpAndSettle();
  }

  testWidgets('desktop shortcuts: Ctrl+2 portfolio, Ctrl+3 alerts, Ctrl+, settings, Ctrl+K back to search', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1200, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();

    await press(tester, LogicalKeyboardKey.digit2);
    expect(find.byType(PortfolioPage), findsOneWidget);
    await press(tester, LogicalKeyboardKey.digit3);
    expect(find.byType(PortfolioPage), findsNothing);
    expect(find.byType(AlertsPage), findsOneWidget);
    await press(tester, LogicalKeyboardKey.comma);
    expect(find.byType(SettingsPage), findsOneWidget);

    await press(tester, LogicalKeyboardKey.keyK);
    expect(find.byType(SettingsPage), findsNothing);
    final field = tester.widget<EditableText>(find.byType(EditableText).first);
    expect(field.focusNode.hasFocus, isTrue);
  });
}
