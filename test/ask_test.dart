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
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/features/analysis/analysis_chat.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/stock_analyst.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

StockReport _report(String symbol, {DateTime? at}) => StockReport(
  symbol: symbol,
  headline: 'Services growth offsets slower iPhone sales.',
  sections: const [
    ReportSection(
      kind: ReportSectionKind.risks,
      title: 'Risks',
      bullets: ['China demand', 'Regulation of the App Store'],
    ),
  ],
  generatedAt: at ?? DateTime.utc(2026, 10, 14, 9),
  outlook: const ReportOutlook(
    currentPrice: 231.45,
    currency: 'USD',
    scenarios: [Scenario(kind: ScenarioKind.base, probability: 60, priceLow: 220, priceHigh: 245)],
  ),
);

class _Analyst implements StockAnalyst {
  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async => _report(details.symbol, at: DateTime.now());
}

http.Response _answer(String text, {String? sourceUrl}) => http.Response(
  jsonEncode({
    'stop_reason': 'end_turn',
    'content': [
      {
        'type': 'text',
        'text': text,
        if (sourceUrl != null)
          'citations': [
            {'type': 'web_search_result_location', 'url': sourceUrl, 'title': 'China sales report'},
          ],
      },
    ],
  }),
  200,
  headers: {'content-type': 'application/json; charset=utf-8'},
);

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the prompt carries the analysis, the language and the rules', () {
    final p = AnalysisChat.systemPrompt(
      _report('AAPL'),
      companyName: 'Apple Inc.',
      language: 'Hungarian',
      today: DateTime.utc(2026, 10, 15),
    );
    expect(p, contains('Apple Inc. (AAPL)'));
    expect(p, contains('Answer in Hungarian'));
    expect(p, contains('Today: 2026-10-15'));
    expect(p, contains('- Regulation of the App Store'));
    expect(p, contains('"current_price":231.45'));
    expect(p, contains('Do not tell the reader to buy or sell'));
  });

  test('the prompt for the portfolio review speaks of the portfolio, not a company', () {
    final p = AnalysisChat.systemPrompt(
      _report(AnalysisChat.portfolioSymbol),
      companyName: '',
      language: 'English',
      today: DateTime.utc(2026, 10, 15),
    );
    expect(p, contains('your review of their whole stock portfolio'));
    expect(p, contains('unrelated to investing or this portfolio'));
    expect(p, isNot(contains('(PORTFOLIO)')));
  });

  test('a conversation: history is sent, answers kept, a failed question can be asked again', () async {
    final sent = <Map<String, dynamic>>[];
    var fail = false;
    final chat = AnalysisChat(
      config: const AppConfig(backendUrl: 'https://api.test'),
      client: MockClient((req) async {
        expect(req.url.toString(), 'https://api.test/v1/ask');
        sent.add((jsonDecode(req.body) as Map).cast<String, dynamic>());
        if (fail) return http.Response(jsonEncode({'error': 'ask_limit'}), 429);
        return _answer('Answer ${sent.length}');
      }),
    );
    final r = _report('AAPL');
    await chat.ask(r, 'First?', companyName: 'Apple', language: 'English');
    await chat.ask(r, 'Second?', companyName: 'Apple', language: 'English');
    expect(chat.thread(r).map((m) => (m.fromUser, m.text)), [
      (true, 'First?'),
      (false, 'Answer 1'),
      (true, 'Second?'),
      (false, 'Answer 2'),
    ]);
    expect((sent.last['messages'] as List).map((m) => m['role']), ['user', 'assistant', 'user']);
    expect(((sent.last['system'] as List).single as Map)['cache_control'], {'type': 'ephemeral'});
    // Újabb vagy hiányzó tényekhez legfeljebb két webkeresés.
    expect(sent.last['tools'], [
      {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': AnalysisChat.maxSearches},
    ]);
    expect(chat.questionsLeft(r), AnalysisChat.maxQuestions - 2);

    fail = true;
    await expectLater(
      chat.ask(r, 'Third?', companyName: 'Apple', language: 'English'),
      throwsA(isA<AppException>().having((e) => e.code, 'code', AppErrorCode.askLimit)),
    );
    expect(chat.thread(r), hasLength(4));
    expect(chat.isBusy(r), isFalse);
  });

  testWidgets('ask about the analysis: a suggested question, then a typed one', (tester) async {
    tester.view.physicalSize = const Size(430, 932);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final ent = EntitlementService(
      initial: EntitlementState(
        tier: PlanTier.pro,
        periodStart: DateTime.now().subtract(const Duration(days: 1)),
        periodEnd: DateTime.now().add(const Duration(days: 29)),
      ),
    );
    final questions = <String>[];
    const config = AppConfig(backendUrl: 'https://api.test');
    final services = AppServices(
      alertNotifier: FakeNotifier(),
      config: config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(telemetryConsent: false),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: _Analyst(), entitlements: ent),
      entitlements: ent,
      chat: AnalysisChat(
        config: config,
        client: MockClient((req) async {
          final msgs = (jsonDecode(req.body) as Map)['messages'] as List;
          questions.add(msgs.last['content'] as String);
          return _answer(
            'China demand is the biggest risk: about a fifth of revenue.',
            sourceUrl: 'https://www.ft.com/china',
          );
        }),
      ),
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    final open = find.byKey(const ValueKey('ask-open'));
    await tester.scrollUntilVisible(open, 300, scrollable: find.byType(Scrollable).first);
    await tester.tap(open);
    await tester.pumpAndSettle();

    expect(find.text('Questions about AAPL'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('ask-suggest-0')));
    await tester.pumpAndSettle();
    expect(questions, ['What is the biggest risk?']);
    expect(find.text('China demand is the biggest risk: about a fifth of revenue.'), findsOneWidget);
    expect(find.text('China sales report · www.ft.com'), findsOneWidget);
    expect(find.byKey(const ValueKey('ask-suggest-0')), findsNothing);

    await tester.enterText(find.byKey(const ValueKey('ask-input')), 'And regulation?');
    await tester.tap(find.byKey(const ValueKey('ask-send')));
    await tester.pumpAndSettle();
    expect(questions.last, 'And regulation?');
    expect(find.text('And regulation?'), findsOneWidget);
  });
}
