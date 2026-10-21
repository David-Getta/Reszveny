import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/l10n/supported_locales.dart';
import 'package:reszveny/features/stock_detail/metric_glossary.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('every language explains every metric, under its own label', () {
    for (final lang in SupportedLocales.all) {
      final l10n = lookupAppLocalizations(lang.locale);
      final g = metricGlossary(l10n);
      expect(g.length, 29, reason: '${lang.locale}: labels must be distinct');
      expect(g.values.every((v) => v.trim().isNotEmpty), isTrue, reason: '${lang.locale}');
    }
  });

  testWidgets('tapping the info icon next to P/E explains it', (tester) async {
    tester.view.physicalSize = const Size(1200, 4200);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final pe = find.byKey(const ValueKey('hint-P/E (trailing)'));
    await tester.scrollUntilVisible(pe, 300, scrollable: find.byType(Scrollable).first);
    await tester.tap(pe);
    await tester.pumpAndSettle();
    expect(find.textContaining('how many years of current profit you pay for'), findsOneWidget);
    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();
    expect(find.textContaining('how many years of current profit you pay for'), findsNothing);
  });
}
