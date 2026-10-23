import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/models/stock_candidate.dart';
import 'package:reszveny/features/home/quick_bar.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  Future<List<StockCandidate>> pump(WidgetTester tester) async {
    final opened = <StockCandidate>[];
    final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    // Nincs kép a vágólapon, csak szöveg.
    messenger.setMockMethodCallHandler(const MethodChannel('pasteboard'), (call) async => null);
    messenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async => call.method == 'Clipboard.getData' ? {'text': 'AAPL\n'} : null,
    );
    addTearDown(() {
      messenger.setMockMethodCallHandler(const MethodChannel('pasteboard'), null);
      messenger.setMockMethodCallHandler(SystemChannels.platform, null);
    });
    await tester.pumpWidget(
      AppServicesScope(
        services: services(),
        child: MaterialApp(
          theme: AppTheme.build(Brightness.light),
          localizationsDelegates: WhatStockApp.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: QuickBar(onOpenSymbol: opened.add, onOpenWindow: () {}),
        ),
      ),
    );
    await tester.pumpAndSettle();
    return opened;
  }

  testWidgets('Ctrl+V without an image pastes the text into the field', (tester) async {
    await pump(tester);
    await tester.sendKeyDownEvent(LogicalKeyboardKey.controlLeft);
    await tester.sendKeyEvent(LogicalKeyboardKey.keyV);
    await tester.sendKeyUpEvent(LogicalKeyboardKey.controlLeft);
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text, 'AAPL ');
  });

  testWidgets('a description nobody can place is not opened as a ticker', (tester) async {
    final opened = await pump(tester);
    await tester.enterText(find.byType(TextField), 'the biggest hungarian bank');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(opened, isEmpty);
    expect(find.textContaining('the biggest hungarian bank'), findsWidgets);

    await tester.enterText(find.byType(TextField), r'$nvda');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(opened.single.symbol, 'NVDA');
  });
}
