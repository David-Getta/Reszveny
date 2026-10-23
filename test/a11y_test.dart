import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';

import 'app_widget_test.dart' show services;

/// Akadálymentesség: a fő oldalakon minden koppintható elemnek van neve a
/// képernyőolvasónak (pl. az ikon-gomboknak tooltip).
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('every tappable element on the main pages has a label for screen readers', (tester) async {
    tester.view.physicalSize = const Size(430, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final handle = tester.ensureSemantics();
    final s = services();
    await s.portfolio.loadSample();
    await s.preferences.setFavorites(['AAPL', 'MSFT']);
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline), reason: 'kezdőlap');
    for (final page in ['Portfolio', 'Alerts', 'Settings']) {
      await tester.tap(find.text(page).last);
      await tester.pumpAndSettle();
      await expectLater(tester, meetsGuideline(labeledTapTargetGuideline), reason: page);
    }
    await tester.tap(find.text('Search').last);
    await tester.pumpAndSettle();
    final all = find.byKey(const ValueKey('favorites-see-all'));
    await tester.ensureVisible(all);
    await tester.pumpAndSettle();
    await tester.tap(all);
    await tester.pumpAndSettle();
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline), reason: 'kedvencek');
    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline), reason: 'részvény oldal');
    handle.dispose();
    await tester.pump(const Duration(minutes: 1));
  });
}
