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
    expect(user, contains('URL: https://n'));
    expect(NewsExplainer.systemPrompt, contains('Never invent facts'));
    // Utánanéz: kevés webkeresés és a cikk megnyitása, és a forrás hitelességét is megítéli.
    expect(NewsExplainer.systemPrompt, contains('how reliable the source looks'));
    final tools = (body['tools'] as List).cast<Map>();
    expect(tools.map((t) => t['name']), ['web_search', 'web_fetch']);
    expect(tools.first['max_uses'], NewsExplainer.maxSearches);
  });

  testWidgets('"What does this mean?" on a news item: asked once, shown in a sheet', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    var calls = 0;
    final client = MockClient((req) async {
      calls++;
      // Az első kérésnél a fiók nem engedi az oldalmegnyitást: nélküle újrapróbálja.
      final tools = (jsonDecode(req.body) as Map)['tools'] as List;
      if (tools.any((t) => (t as Map)['name'] == 'web_fetch')) {
        return http.Response('{"error":{"message":"web_fetch is not enabled"}}', 400);
      }
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'server_tool_use', 'name': 'web_search'},
            {
              'type': 'web_search_tool_result',
              'content': [
                {'type': 'web_search_result', 'url': 'https://example.com/other', 'title': 'Other'},
              ],
            },
            {
              'type': 'text',
              'text': 'Nvidia did better than expected. ',
              'citations': [
                {'type': 'web_search_result_location', 'url': 'https://www.reuters.com/x', 'title': 'Reuters report'},
              ],
            },
            {'type': 'text', 'text': 'It may support the price.'},
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
    // A hivatkozott forrás linkként (a nem idézett keresési találat nem).
    expect(find.text('Reuters report · www.reuters.com'), findsOneWidget);
    expect(find.byKey(const ValueKey('news-source-1')), findsNothing);
    expect(calls, 2);
    // Másodszor a tárolt magyarázat jön.
    Navigator.of(tester.element(find.byKey(const ValueKey('news-explanation')))).pop();
    await tester.pumpAndSettle();
    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(calls, 2);
  });

  test('explanations are kept on the device for a week, so a restart does not ask again', () async {
    var calls = 0;
    final client = MockClient((req) async {
      calls++;
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {
              'type': 'text',
              'text': 'Explained $calls.',
              'citations': [
                {'url': 'https://www.reuters.com/a', 'title': 'Reuters'},
              ],
            },
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    const config = AppConfig(backendUrl: 'https://api.test');
    final news = WatchedNews(
      symbol: 'NVDA',
      item: NewsItem(headline: 'H', url: 'https://n/1', publishedAt: DateTime.utc(2026, 10, 15)),
    );
    var now = DateTime(2026, 10, 18, 9);
    NewsExplainer make() => NewsExplainer(config: config, client: client, clock: () => now);

    final first = await make().explain(news, language: 'Hungarian');
    expect(first.text, 'Explained 1.');
    // Új példány (újraindítás): a tárolt magyarázat jön, forrással együtt.
    final again = await make().explain(news, language: 'Hungarian');
    expect(again.text, 'Explained 1.');
    expect(again.sources.single.url, 'https://www.reuters.com/a');
    expect(calls, 1);
    // Más nyelven külön kérés.
    await make().explain(news, language: 'English');
    expect(calls, 2);
    // Egy hét után lejár.
    now = now.add(const Duration(days: 8));
    expect((await make().explain(news, language: 'Hungarian')).text, 'Explained 3.');
  });
}
