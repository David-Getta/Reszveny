import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/news/earnings_summarizer.dart';
import 'package:reszveny/features/news/follow_up_store.dart';
import 'package:reszveny/features/news/research_follow_up.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/widgets/research_sheet.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

http.Response _text(String text) => http.Response(
  jsonEncode({
    'stop_reason': 'end_turn',
    'content': [
      {'type': 'text', 'text': text},
    ],
  }),
  200,
  headers: {'content-type': 'application/json; charset=utf-8'},
);

const _config = AppConfig(backendUrl: 'https://api.test');

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the request: the note, the question (capped), the language and one web search', () {
    final body = ResearchFollowUp.requestBody(
      note: 'Apple beat expectations.',
      question: 'Why did the stock fall anyway?',
      language: 'Hungarian',
      subject: 'AAPL · Apple Inc.',
    );
    final user = ((body['messages'] as List).single as Map)['content'] as String;
    expect(user, contains('Language: Hungarian'));
    expect(user, contains('Subject: AAPL · Apple Inc.'));
    expect(user, contains('Question: Why did the stock fall anyway?'));
    expect(user, endsWith('Note:\nApple beat expectations.'));
    expect(((body['tools'] as List).single as Map)['max_uses'], ResearchFollowUp.maxSearches);
    expect(ResearchFollowUp.systemPrompt, contains('Never invent facts'));
  });

  testWidgets('a follow-up question under the earnings summary: asked through the ask endpoint, answered', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1200, 5000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final asked = <String>[];
    final client = MockClient((req) async {
      final user = (((jsonDecode(req.body) as Map)['messages'] as List).single as Map)['content'] as String;
      asked.add(user);
      if (user.contains('Question:')) return _text('Because guidance for the holiday quarter was cautious.');
      return _text('Apple beat expectations: revenue grew 8%.');
    });
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: _config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: _config)),
      entitlements: EntitlementService(),
      earningsSummarizer: EarningsSummarizer(config: _config, client: client),
      researchFollowUp: ResearchFollowUp(config: _config, client: client),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final button = find.byKey(const ValueKey('earnings-summary'));
    await tester.ensureVisible(button);
    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(find.text('Apple beat expectations: revenue grew 8%.'), findsOneWidget);

    await tester.enterText(find.byKey(const ValueKey('followup-field')), 'Why did the stock fall anyway?');
    await tester.tap(find.byKey(const ValueKey('followup-send')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('followup-q-0')), findsOneWidget);
    expect(find.text('Because guidance for the holiday quarter was cautious.'), findsOneWidget);
    // A kérdés a kész szöveggel együtt ment; a mező kiürült.
    expect(asked.last, contains('Note:\nApple beat expectations: revenue grew 8%.'));
    expect(asked.last, contains('Subject: AAPL · Apple Inc.'));
    expect(tester.widget<TextField>(find.byKey(const ValueKey('followup-field'))).controller!.text, isEmpty);
    expect(asked, hasLength(2));

    // A lapot bezárva és újranyitva a kérdés és a válasz megmarad (nem kérdez újra).
    Navigator.of(tester.element(find.byKey(const ValueKey('earnings-summary-sheet')))).pop();
    await tester.pumpAndSettle();
    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('followup-q-0')), findsOneWidget);
    expect(find.text('Because guidance for the holiday quarter was cautious.'), findsOneWidget);
    expect(asked, hasLength(2));

    // „Újraindítás” után (a futás alatti memória ürül) a készülékről jön vissza.
    Navigator.of(tester.element(find.byKey(const ValueKey('earnings-summary-sheet')))).pop();
    await tester.pumpAndSettle();
    ResearchFollowUpPanel.debugForgetSession();
    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('followup-q-0')), findsOneWidget);
    expect(find.text('Because guidance for the holiday quarter was cautious.'), findsOneWidget);
    expect(asked, hasLength(2));
  });

  group('FollowUpStore', () {
    test('append and load; the key is stable across runs', () async {
      final store = FollowUpStore(storeKey: 'fu_test');
      final key = FollowUpStore.keyFor('AAPL · Apple Inc.', 'Apple beat expectations.');
      expect(key, FollowUpStore.keyFor('AAPL · Apple Inc.', 'Apple beat expectations.'));
      expect(await store.load(key), isEmpty);
      await store.append(key, 'Why?', (text: 'Guidance.', sources: const [(title: 'Reuters', url: 'https://r.ex/a')]));
      await store.append(key, 'And then?', (text: 'Buybacks.', sources: const []));
      final turns = await FollowUpStore(storeKey: 'fu_test').load(key);
      expect(turns.map((t) => t.question), ['Why?', 'And then?']);
      expect(turns.first.answer.sources.single.url, 'https://r.ex/a');
      expect(await store.load('other'), isEmpty);
    });

    test('old notes expire, and only the newest notes are kept', () async {
      var now = DateTime(2026, 10, 1);
      final store = FollowUpStore(storeKey: 'fu_test2', maxNotes: 2, clock: () => now);
      await store.append('a', 'q', (text: 'a', sources: const []));
      now = DateTime(2026, 10, 2);
      await store.append('b', 'q', (text: 'b', sources: const []));
      now = DateTime(2026, 10, 3);
      await store.append('c', 'q', (text: 'c', sources: const []));
      expect(await store.load('a'), isEmpty, reason: 'a harmadik jegyzet kiszorította');
      expect(await store.load('b'), hasLength(1));
      now = DateTime(2026, 10, 9, 1);
      expect(await store.load('b'), isEmpty, reason: '7 napnál régebbi');
      expect(await store.load('c'), hasLength(1));
    });
  });
}
