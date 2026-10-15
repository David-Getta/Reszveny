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
import 'package:reszveny/features/portfolio/portfolio_review.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
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

  test('the request carries the holdings, the language and a JSON schema, without tools', () {
    final body = PortfolioReviewer.requestBody(
      holdings: const [
        ReviewHolding(symbol: 'AAPL', weight: 62.5, currency: 'USD', sector: 'Technology', dividendYield: 0.45),
        ReviewHolding(symbol: 'OTP', weight: 37.5, currency: 'HUF', country: 'HU'),
      ],
      currency: 'HUF',
      totalValue: 5319150.4,
      invested: 4278402,
      dividendYield: 1.31,
      language: 'Hungarian',
      today: DateTime(2026, 10, 15),
    );
    final user = ((body['messages'] as List).single as Map)['content'] as String;
    expect(user, contains('Language: Hungarian'));
    expect(user, contains('Today: 2026-10-15'));
    expect(user, contains('"total_value":5319150'));
    expect(user, contains('"symbol":"AAPL","sector":"Technology","currency":"USD","weight_pct":62.5'));
    expect(body.containsKey('tools'), isFalse);
    expect((body['output_config'] as Map)['format'], isNotNull);
    expect(PortfolioReviewer.systemPrompt, contains('rather than telling the reader what to buy or sell'));
  });

  testWidgets('review the portfolio: one analysis is used, the sections show, the result is kept', (tester) async {
    tester.view.physicalSize = const Size(1200, 4000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final sent = <Map<String, dynamic>>[];
    final client = MockClient((req) async {
      sent.add({'headers': req.headers, 'body': jsonDecode(req.body)});
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {
              'type': 'text',
              'text': jsonEncode({
                'headline': 'Two thirds of the value rides on US tech.',
                'sections': [
                  {
                    'kind': 'summary',
                    'title': 'Overall picture',
                    'paragraphs': ['Concentrated but profitable.'],
                    'bullets': [],
                  },
                  {
                    'kind': 'consider',
                    'title': 'Worth considering',
                    'paragraphs': [],
                    'bullets': ['A second currency would cut the dollar risk.'],
                  },
                ],
              }),
            },
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    const config = AppConfig(backendUrl: 'https://api.test');
    final market = DemoMarketDataProvider(latency: Duration.zero);
    final portfolio = PortfolioStore();
    await portfolio.add(symbol: 'AAPL', quantity: 10, price: 180, currency: 'USD');
    await portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD');
    final services = AppServices(
      alertNotifier: FakeNotifier(),
      config: config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: market,
      locale: LocaleController(),
      preferences: AppPreferences(),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: config)),
      entitlements: EntitlementService(),
      portfolio: portfolio,
      portfolioReviewer: PortfolioReviewer(config: config, marketData: market, client: client),
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    expect(find.text('AI portfolio review'), findsOneWidget);
    // Az értékalakulás alatt az S&P 500-összevetés.
    expect(find.byKey(const ValueKey('portfolio-benchmark')), findsOneWidget);
    expect(find.text('Same amounts in the S&P 500'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('portfolio-review-run')));
    await tester.pumpAndSettle();

    expect(find.text('Two thirds of the value rides on US tech.'), findsOneWidget);
    expect(find.text('Worth considering'), findsOneWidget);
    expect(find.text('A second currency would cut the dollar risk.'), findsOneWidget);
    expect(find.text('Review again'), findsOneWidget);
    expect((sent.single['headers'] as Map)['x-whatstock-depth'], 'brief');
    final user = (((sent.single['body'] as Map)['messages'] as List).single as Map)['content'] as String;
    expect(user, contains('"symbol":"AAPL","name":"Apple Inc."'));
    expect((await PortfolioReviewer.loadLast())?.headline, 'Two thirds of the value rides on US tech.');
  });
}
