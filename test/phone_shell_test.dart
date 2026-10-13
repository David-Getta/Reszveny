import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/stock_analyst.dart';

import 'app_widget_test.dart' show services;

/// Telefonméretű képernyő (a keskeny elrendezés alsó navigációs sávval).
void _phone(WidgetTester tester) {
  tester.view.physicalSize = const Size(390, 844);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
}

Finder _nav(String label) => find.descendant(of: find.byKey(const ValueKey('phone-nav')), matching: find.text(label));

Future<void> _search(WidgetTester tester, String query) async {
  await tester.enterText(find.byType(TextField), query);
  await tester.testTextInput.receiveAction(TextInputAction.search);
  await tester.pumpAndSettle();
}

/// Az Android vissza gombja (a rendszer „pop route” üzenete).
Future<void> _systemBack(WidgetTester tester) async {
  await tester.binding.handlePopRoute();
  await tester.pumpAndSettle();
}

class _DatedAnalyst implements StockAnalyst {
  DateTime now = DateTime(2026, 1, 1);

  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async {
    now = now.add(const Duration(minutes: 1));
    return StockReport(symbol: details.symbol, headline: 'H ${details.symbol}', sections: const [], generatedAt: now);
  }
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('phone: the bottom bar switches between search, portfolio, alerts and settings', (tester) async {
    _phone(tester);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('phone-nav')), findsOneWidget);
    expect(find.text('Which stock shall we look at?'), findsOneWidget);

    await tester.tap(_nav('Portfolio'));
    await tester.pumpAndSettle();
    expect(find.text('Which stock shall we look at?'), findsNothing);

    await tester.tap(_nav('Settings'));
    await tester.pumpAndSettle();
    expect(find.text('View plans'), findsWidgets);

    await tester.tap(_nav('Alerts'));
    await tester.pumpAndSettle();
    expect(find.text('View plans'), findsNothing);

    await tester.tap(_nav('Search'));
    await tester.pumpAndSettle();
    expect(find.text('Which stock shall we look at?'), findsOneWidget);
  });

  testWidgets('phone: the system back button closes the stock page, then returns to the search tab', (tester) async {
    _phone(tester);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await _search(tester, 'AAPL');
    expect(find.text('AI analysis'), findsOneWidget);

    await _systemBack(tester);
    expect(find.text('AI analysis'), findsNothing);
    expect(find.text('Which stock shall we look at?'), findsOneWidget);
    // A keresőmező megnyitás után kiürül, nem kell kitörölni.
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text, isEmpty);

    await tester.tap(_nav('Settings'));
    await tester.pumpAndSettle();
    expect(find.text('View plans'), findsWidgets);
    await _systemBack(tester);
    expect(find.text('Which stock shall we look at?'), findsOneWidget);
  });

  testWidgets('phone: recent searches and saved analyses are listed on the home screen and open again', (tester) async {
    _phone(tester);
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-analyses')), findsNothing);

    await _search(tester, 'AAPL');
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();
    await _search(tester, 'NVDA');
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();

    final recent = find.byKey(const ValueKey('home-recent'));
    expect(recent, findsOneWidget);
    expect(find.descendant(of: recent, matching: find.text('NVDA')), findsOneWidget);
    expect(find.descendant(of: recent, matching: find.text('AAPL')), findsOneWidget);

    final saved = find.byKey(const ValueKey('analysis-AAPL'));
    await tester.scrollUntilVisible(saved, 200, scrollable: find.byType(Scrollable).first);
    expect(find.text('My analyses'), findsOneWidget);
    expect(find.byKey(const ValueKey('analysis-NVDA')), findsNothing);
    await tester.tap(saved);
    await tester.pumpAndSettle();
    expect(find.text('Test headline'), findsOneWidget);
    expect(find.text('Regenerate'), findsOneWidget);
  });

  testWidgets('a saved analysis is still listed and opens after a restart (older than 12 hours too)', (tester) async {
    _phone(tester);
    final old = StockReport(
      symbol: 'MSFT',
      headline: 'Old but saved',
      sections: const [],
      generatedAt: DateTime.now().subtract(const Duration(days: 3)),
    );
    SharedPreferences.setMockInitialValues({'report_MSFT': jsonEncode(old.toJson())});
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    final saved = find.byKey(const ValueKey('analysis-MSFT'));
    await tester.scrollUntilVisible(saved, 200, scrollable: find.byType(Scrollable).first);
    expect(find.text('Old but saved'), findsOneWidget);
    await tester.tap(saved);
    await tester.pumpAndSettle();
    expect(find.text('Microsoft Corporation'), findsWidgets);
    expect(find.text('Old but saved'), findsOneWidget);
  });

  testWidgets('the share button sends the analysis text to the system share sheet', (tester) async {
    _phone(tester);
    final shared = <({String text, String? subject})>[];
    final original = shareText;
    shareText = (text, {subject, origin}) async => shared.add((text: text, subject: subject));
    addTearDown(() => shareText = original);

    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await _search(tester, 'AAPL');
    expect(find.byKey(const ValueKey('share-analysis')), findsNothing);
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('share-analysis')));
    await tester.pumpAndSettle();

    expect(shared, hasLength(1));
    expect(shared.single.subject, 'AAPL · WhatStock');
    final text = shared.single.text;
    expect(text, startsWith('Apple Inc. (AAPL) · WhatStock'));
    expect(text, contains('Test headline'));
    expect(text, contains('Para'));
    expect(text, isNot(contains('News bullet')));
  });

  group('ReportStore saved analyses', () {
    test('newest first, other languages filtered out, at most 50 kept on the device', () async {
      final analyst = _DatedAnalyst();
      final store = ReportStore(analyst: analyst);
      final german = StockReport(
        symbol: 'SAP',
        headline: 'De',
        sections: const [],
        generatedAt: DateTime(2025, 6, 1),
        language: 'German',
      );
      SharedPreferences.setMockInitialValues({'report_SAP': jsonEncode(german.toJson())});

      for (var i = 0; i < ReportStore.maxSaved + 3; i++) {
        await store.generate(StockDetails(symbol: 'S$i'), outputLanguage: 'English');
      }
      final prefs = await SharedPreferences.getInstance();
      final keys = prefs.getKeys().where((k) => k.startsWith('report_')).toSet();
      expect(keys, hasLength(ReportStore.maxSaved));
      // A legrégebbiek (a német és az első kettő) törlődtek a lemezről.
      expect(keys.containsAll(['report_SAP', 'report_S0', 'report_S1', 'report_S2']), isFalse);

      final english = await ReportStore(analyst: analyst).savedReports(language: 'English');
      expect(english.first.symbol, 'S${ReportStore.maxSaved + 2}');
      expect(english, hasLength(ReportStore.maxSaved));
      expect(english.every((r) => r.language == null || r.language == 'English'), isTrue);
    });

    test('a report in another language is not listed for the current language', () async {
      final german = StockReport(
        symbol: 'SAP',
        headline: 'De',
        sections: const [],
        generatedAt: DateTime(2025, 6, 1),
        language: 'German',
      );
      SharedPreferences.setMockInitialValues({'report_SAP': jsonEncode(german.toJson())});
      final store = ReportStore(analyst: _DatedAnalyst());
      expect(await store.savedReports(language: 'English'), isEmpty);
      expect((await store.savedReports(language: 'German')).single.headline, 'De');
      expect(await store.savedReports(), hasLength(1));
    });
  });
}
