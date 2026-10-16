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
import 'package:reszveny/features/news/daily_brief.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the request carries each stock with its move and headlines, and the rules', () {
    final body = DailyBrief.requestBody(
      stocks: [
        (symbol: 'NVDA', changePercent: 2.984, price: 187.6, currency: 'USD', headlines: ['Nvidia beats']),
        (symbol: 'OTP', changePercent: null, price: null, currency: null, headlines: const <String>[]),
      ],
      language: 'Hungarian',
      today: DateTime(2026, 10, 16),
    );
    final user = ((body['messages'] as List).single as Map)['content'] as String;
    expect(user, contains('Language: Hungarian'));
    expect(user, contains('"symbol":"NVDA","change_today_pct":2.98,"price":187.6,"currency":"USD"'));
    expect(user, contains('"headlines":["Nvidia beats"]'));
    expect(user, contains('{"symbol":"OTP","headlines":[]}'));
    expect(DailyBrief.systemPrompt, contains('Never invent news'));
  });

  testWidgets('the home card makes today\'s brief through the ask endpoint and keeps it', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final sent = <Map<String, dynamic>>[];
    final client = MockClient((req) async {
      sent.add({'url': req.url.toString(), 'body': jsonDecode(req.body)});
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': 'A quiet day overall.\n- NVDA +3.0%: results beat estimates.'},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    const config = AppConfig(backendUrl: 'https://api.test');
    final market = DemoMarketDataProvider(latency: Duration.zero);
    final services = AppServices(
      alertNotifier: FakeNotifier(),
      config: config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: market,
      locale: LocaleController(),
      preferences: AppPreferences(favorites: const ['NVDA']),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: config)),
      entitlements: EntitlementService(),
      // Az összefoglaló a teszt utánzott kliensével.
      dailyBrief: (news) => DailyBrief(config: config, marketData: market, news: news, client: client),
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    expect(find.text('Today with your stocks'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('daily-brief-run')));
    await tester.pumpAndSettle();
    expect(find.textContaining('NVDA +3.0%: results beat estimates.'), findsOneWidget);
    expect(sent.single['url'], 'https://api.test/v1/ask');
    expect(find.byKey(const ValueKey('daily-brief-refresh')), findsOneWidget);

    // Újraindítás után a mai összefoglaló megmarad.
    final again = DailyBrief(config: config, marketData: market, news: services.news, client: client);
    await tester.runAsync(again.load);
    expect(again.isToday, isTrue);
    expect(again.last!.text, startsWith('A quiet day overall.'));
  });
}
