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
import 'package:reszveny/core/models/news_item.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/news/news_explainer.dart';
import 'package:reszveny/features/news/watch_news.dart';
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

  test('the request: the stock, the headline and its summary, the language and the rules', () {
    final body = NewsExplainer.requestBody(
      WatchedNews(
        symbol: 'NVDA',
        item: NewsItem(
          headline: 'Nvidia beats estimates',
          url: 'https://n',
          publishedAt: DateTime.utc(2026, 10, 15),
          source: 'Wire',
          summary: 'Revenue rose 50%.',
        ),
      ),
      language: 'Hungarian',
    );
    final user = ((body['messages'] as List).single as Map)['content'] as String;
    expect(user, contains('Language: Hungarian'));
    expect(user, contains('Stock: NVDA'));
    expect(user, contains('Headline: Nvidia beats estimates'));
    expect(user, contains('Summary: Revenue rose 50%.'));
    expect(NewsExplainer.systemPrompt, contains('Never invent facts'));
  });

  testWidgets('"What does this mean?" on a news item: asked once, shown in a sheet', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    var calls = 0;
    final client = MockClient((req) async {
      calls++;
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': 'Nvidia did better than expected. It may support the price.'},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    const config = AppConfig(backendUrl: 'https://api.test');
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(favorites: const ['NVDA']),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: config)),
      entitlements: EntitlementService(),
      newsExplainer: NewsExplainer(config: config, client: client),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    final button = find.byTooltip('What does this mean?').first;
    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('news-explanation')), findsOneWidget);
    expect(find.text('Nvidia did better than expected. It may support the price.'), findsOneWidget);
    // Másodszor a tárolt magyarázat jön.
    Navigator.of(tester.element(find.byKey(const ValueKey('news-explanation')))).pop();
    await tester.pumpAndSettle();
    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(calls, 1);
  });
}
