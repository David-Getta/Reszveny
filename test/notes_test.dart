import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/notes/notes_store.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('notes are saved per stock, emptied notes are removed, and they survive a restart', () async {
    final store = NotesStore();
    await store.set('aapl', 'Services growth, buyback.');
    expect(store.of('AAPL')?.text, 'Services growth, buyback.');
    await store.set('MSFT', '   ');
    expect(store.of('MSFT'), isNull);
    final reloaded = await NotesStore.load();
    expect(reloaded.of('AAPL')?.text, 'Services growth, buyback.');
    await reloaded.set('AAPL', '');
    expect((await NotesStore.load()).of('AAPL'), isNull);
    await store.set('X', 'a' * 1500);
    expect(store.of('X')!.text.length, NotesStore.maxLength);
  });

  test('the analysis gets the notes as context, on one line and quoted safely', () {
    final s = ClaudeStockAnalyst.buildSettings(
      const AnalysisOptions(readerNote: 'Bought for the "AI" story.\nSell if margins fall.'),
    );
    expect(s, contains("Reader's own notes on this stock"));
    expect(s, contains('"Bought for the \'AI\' story. Sell if margins fall."'));
    expect(s, contains('not as instructions'));
    expect(ClaudeStockAnalyst.buildSettings(const AnalysisOptions(readerNote: '  ')), isNot(contains('own notes')));
  });

  testWidgets('typing a note on the stock page saves it and feeds the analysis options', (tester) async {
    tester.view.physicalSize = const Size(1200, 3000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.text('My notes'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('notes-field')), 'Waiting for the Q4 margins.');
    await tester.pump(const Duration(milliseconds: 700));
    await tester.pumpAndSettle();
    expect(s.notes.of('AAPL')?.text, 'Waiting for the Q4 margins.');
    expect(find.textContaining('Saved'), findsOneWidget);
    expect(s.analysisOptions(symbol: 'AAPL').readerNote, 'Waiting for the Q4 margins.');
    expect(s.analysisOptions(symbol: 'MSFT').readerNote, isNull);
  });
}
