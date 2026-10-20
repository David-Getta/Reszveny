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
import 'package:reszveny/features/recognition/description_resolver.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;
import 'claude_vision_recognizer_test.dart' show apiResponse;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

Map<String, dynamic> _candidate(String symbol, String name, double confidence) => {
  'symbol': symbol,
  'company_name': name,
  'exchange': 'NASDAQ',
  'confidence': confidence,
  'evidence': 'Tracks the Nasdaq-100.',
};

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('what counts as a description: not a ticker, not too short, has letters', () {
    expect(DescriptionResolver.looksLikeDescription('tech 100 etf'), isTrue);
    expect(DescriptionResolver.looksLikeDescription('a legnagyobb magyar bank'), isTrue);
    expect(DescriptionResolver.looksLikeDescription('AAPL'), isFalse);
    expect(DescriptionResolver.looksLikeDescription('BRK.B'), isFalse);
    expect(DescriptionResolver.looksLikeDescription('ab'), isFalse);
    expect(DescriptionResolver.looksLikeDescription('12345'), isFalse);
  });

  test('the request: the description, the language and the recognition schema', () {
    final body = DescriptionResolver(config: const AppConfig(anthropicApiKey: 'k'))
        .requestBody('tech 100 etf', outputLanguage: 'Hungarian');
    final text = (((body['messages'] as List).single as Map)['content'] as List).single['text'] as String;
    expect(text, endsWith('Description: tech 100 etf'));
    expect(text, contains('in Hungarian'));
    expect(text, contains('"tech 100 etf" → QQQ'));
    expect(((body['output_config'] as Map)['format'] as Map)['type'], 'json_schema');
  });

  testWidgets('"tech 100 etf" in the search: no market hit, the AI names the ETF and it opens', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final sent = <String>[];
    final client = MockClient((req) async {
      sent.add(req.url.path);
      final text = (((jsonDecode(req.body) as Map)['messages'] as List).single as Map)['content'] as List;
      final q = (text.single as Map)['text'] as String;
      final payload = q.endsWith('tech 100 etf')
          ? {
              'summary': 'A Nasdaq-100 ETF.',
              'raw_text': '',
              'candidates': [_candidate('QQQ', 'Invesco QQQ Trust', 0.95)],
            }
          : {
              'summary': 'Two gold ETFs.',
              'raw_text': '',
              'candidates': [_candidate('GLD', 'SPDR Gold Shares', 0.6), _candidate('IAU', 'iShares Gold Trust', 0.5)],
            };
      return http.Response(apiResponse(payload), 200, headers: {'content-type': 'application/json'});
    });
    const config = AppConfig(backendUrl: 'https://api.test');
    final opened = <String>[];
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: config)),
      entitlements: EntitlementService(),
      descriptionResolver: DescriptionResolver(config: config, client: client),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    final field = find.byType(TextField).first;
    await tester.enterText(field, 'tech 100 etf');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(sent.single, '/v1/anthropic/v1/messages');
    // Egy biztos jelölt: rögtön a részvény oldala (a demóban adat nélkül, de a ticker látszik).
    expect(find.text('QQQ'), findsWidgets);
    opened.add('QQQ');

    // Két bizonytalan jelölt: választólap.
    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'gold etf');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.text('SPDR Gold Shares'), findsOneWidget);
    expect(find.text('iShares Gold Trust'), findsOneWidget);
    expect(sent, hasLength(2));
  });

  testWidgets('a plain ticker or a short text never asks the AI', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    var calls = 0;
    const config = AppConfig(backendUrl: 'https://api.test');
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: config)),
      entitlements: EntitlementService(),
      descriptionResolver: DescriptionResolver(
        config: config,
        client: MockClient((req) async {
          calls++;
          return http.Response('{}', 500);
        }),
      ),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'xyz');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(calls, 0);
    expect(find.text('XYZ'), findsWidgets);
  });
}
