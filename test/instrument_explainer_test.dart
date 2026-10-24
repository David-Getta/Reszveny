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
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/news/instrument_explainer.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

/// A demó, de a QQQ-hoz csak árfolyam van, cégprofil nincs (mint egy ETF-nél).
class _EtfMarket extends DemoMarketDataProvider {
  _EtfMarket() : super(latency: Duration.zero);

  @override
  Future<StockDetails> details(String symbol) async {
    if (symbol != 'QQQ') return super.details(symbol);
    return StockDetails(
      symbol: 'QQQ',
      quote: StockQuote(symbol: 'QQQ', price: 512.3, change: 1.2, changePercent: 0.23, timestamp: DateTime.now()),
    );
  }
}

http.Response _answer(String text) => http.Response(
  jsonEncode({
    'stop_reason': 'end_turn',
    'content': [
      {
        'type': 'text',
        'text': text,
        'citations': [
          {'url': 'https://www.invesco.com/qqq-etf/en/home.html', 'title': 'Invesco QQQ'},
        ],
      },
    ],
  }),
  200,
  headers: {'content-type': 'application/json; charset=utf-8'},
);

const _config = AppConfig(backendUrl: 'https://api.test');

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the request: web tools, the ticker, the language and the shared cache key', () {
    final body = InstrumentExplainer.requestBody(
      symbol: 'qqq',
      name: 'Invesco QQQ Trust',
      language: 'Hungarian',
      today: DateTime(2026, 10, 20),
      exchange: 'NASDAQ',
    );
    expect((body['tools'] as List).map((t) => (t as Map)['name']), ['web_search', 'web_fetch']);
    final user = ((body['messages'] as List).single as Map)['content'] as String;
    expect(user, contains('Ticker: QQQ (Invesco QQQ Trust)'));
    expect(user, contains('Exchange: NASDAQ'));
    expect(user, contains('Language: Hungarian'));
    expect(body['shared_cache'], 'instrument|QQQ|Hungarian');
    expect(InstrumentExplainer.systemPrompt, contains('expense ratio'));
    // Ha a név csak a ticker, nem ismételjük.
    final bare = InstrumentExplainer.requestBody(
      symbol: 'QQQ',
      name: 'QQQ',
      language: 'English',
      today: DateTime(2026),
    );
    expect(((bare['messages'] as List).single as Map)['content'], contains('Ticker: QQQ\n'));
  });

  test('explanations are asked once per instrument and language, also across restarts', () async {
    var calls = 0;
    final client = MockClient((req) async => _answer('Note ${++calls}.'));
    InstrumentExplainer make() => InstrumentExplainer(config: _config, client: client);
    Future<String> ask(String language) async =>
        (await make().explain(symbol: 'QQQ', name: 'Invesco QQQ', language: language)).text;
    expect(await ask('English'), 'Note 1.');
    expect(await ask('English'), 'Note 1.');
    expect(calls, 1);
    expect(await ask('Hungarian'), 'Note 2.');
  });

  testWidgets('a ticker without a company profile: the "What is this?" card and the AI sheet', (tester) async {
    tester.view.physicalSize = const Size(1200, 4000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    var calls = 0;
    final client = MockClient((req) async {
      calls++;
      return _answer('QQQ tracks the Nasdaq-100: the 100 largest non-financial companies on the Nasdaq.');
    });
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: _config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: _EtfMarket(),
      locale: LocaleController(),
      preferences: AppPreferences(),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: _config)),
      entitlements: EntitlementService(),
      instrumentExplainer: InstrumentExplainer(config: _config, client: client),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'QQQ');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('instrument-card')), findsOneWidget);
    expect(find.text('About this instrument'), findsOneWidget);
    // Az üres cégspecifikus kártyák (értékelés, pénzügyek, kimutatások, elemzők) kimaradnak.
    expect(find.text('Valuation'), findsNothing);
    expect(find.text('Financials'), findsNothing);
    expect(find.text('Financial statements (annual)'), findsNothing);
    expect(find.text('Analyst ratings'), findsNothing);
    final button = find.byKey(const ValueKey('instrument-ask'));
    await tester.ensureVisible(button);
    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('instrument-sheet')), findsOneWidget);
    expect(find.textContaining('QQQ tracks the Nasdaq-100'), findsOneWidget);
    expect(find.text('invesco.com'), findsOneWidget);
    expect(find.text('Invesco QQQ'), findsWidgets);
    expect(calls, 1);
  });

  testWidgets('a company with a profile: no such card', (tester) async {
    tester.view.physicalSize = const Size(1200, 4000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: _config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: _EtfMarket(),
      locale: LocaleController(),
      preferences: AppPreferences(),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: _config)),
      entitlements: EntitlementService(),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.text('Apple Inc.'), findsWidgets);
    expect(find.byKey(const ValueKey('instrument-card')), findsNothing);
    // A cégspecifikus kártyák megvannak (a lista lusta: az elsőt nézzük).
    expect(find.text('Valuation'), findsOneWidget);
  });
}
