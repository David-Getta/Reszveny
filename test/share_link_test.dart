import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/stock_analyst.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/features/stock_detail/widgets/share_card.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';

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
  headline: 'Strong demand, high expectations.',
  sections: const [
    ReportSection(kind: ReportSectionKind.summary, title: 'Summary', paragraphs: ['P']),
  ],
  generatedAt: at ?? DateTime.utc(2026, 10, 14, 9, 30),
  outlook: const ReportOutlook(
    currentPrice: 231.45,
    currency: 'USD',
    marketMood: 1,
    scenarios: [
      Scenario(kind: ScenarioKind.bull, probability: 25, priceLow: 250, priceHigh: 280),
      Scenario(kind: ScenarioKind.base, probability: 50, priceLow: 220, priceHigh: 245),
      Scenario(kind: ScenarioKind.bear, probability: 25, priceLow: 180, priceHigh: 205),
    ],
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

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the public part of a shared analysis, in the reader’s language', () async {
    final p = sharePayload(
      _report('AAPL'),
      companyName: 'Apple Inc.',
      l10n: await lookupAppLocalizations(const Locale('en')),
      fmt: Fmt('en'),
      lang: 'en',
      image: Uint8List.fromList([1, 2, 3]),
    );
    expect(p['symbol'], 'AAPL');
    expect(p['company'], 'Apple Inc.');
    expect(p['price'], '231.45 USD');
    expect((p['mood'], p['mood_label']), (1, 'Optimistic'));
    expect((p['scenarios'] as List).map((s) => (s['label'], s['probability'], s['range'], s['likely'])), [
      ('Bull case', 25, '250.00–280.00 USD', false),
      ('Base case', 50, '220.00–245.00 USD', true),
      ('Bear case', 25, '180.00–205.00 USD', false),
    ]);
    expect((p['labels'] as Map)['likely'], 'Most likely');
    expect(p['image'], base64Encode([1, 2, 3]));
    expect(p.containsKey('analysis'), isFalse);
  });

  testWidgets('with a server, the shared text and picture carry a public link (made once)', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final texts = <String?>[];
    final origText = shareText, origImage = shareImage;
    shareText = (text, {subject, origin}) async => texts.add(text);
    shareImage = (png, {required fileName, text, subject, origin}) async => texts.add(text);
    addTearDown(() {
      shareText = origText;
      shareImage = origImage;
    });
    final shares = <Map<String, dynamic>>[];
    final backend = BackendClient(
      baseUrl: 'https://api.test',
      tokenLoader: () async => 'tok',
      inner: MockClient((req) async {
        if (req.url.path == '/v1/share') {
          shares.add((jsonDecode(req.body) as Map).cast<String, dynamic>());
          return http.Response(jsonEncode({'id': 'abc123XYZ', 'url': 'https://api.test/s/abc123XYZ'}), 200);
        }
        return http.Response('{}', 200);
      }),
    );
    final ent = EntitlementService(
      initial: EntitlementState(
        tier: PlanTier.pro,
        periodStart: DateTime.now().subtract(const Duration(days: 1)),
        periodEnd: DateTime.now().add(const Duration(days: 29)),
      ),
    );
    final services = AppServices(
      alertNotifier: FakeNotifier(),
      config: const AppConfig(backendUrl: 'https://api.test'),
      backend: backend,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(telemetryConsent: false),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: _Analyst(), entitlements: ent),
      entitlements: ent,
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('share-analysis')));
    await tester.pumpAndSettle();

    // A kép a valódi renderelőn készül, ezért valódi aszinkron időben.
    Future<void> tapAndWait(String key, int count) => tester.runAsync(() async {
      await tester.tap(find.byKey(ValueKey(key)));
      for (var i = 0; i < 100 && texts.length < count; i++) {
        await Future<void>.delayed(const Duration(milliseconds: 20));
      }
    });
    await tapAndWait('share-text', 1);
    await tester.pumpAndSettle();
    expect(texts.single, endsWith('\n\nhttps://api.test/s/abc123XYZ'));
    expect(texts.single, startsWith('Apple Inc. (AAPL)'));

    await tapAndWait('share-image', 2);
    await tester.pumpAndSettle();
    expect(texts.last, 'Strong demand, high expectations.\nhttps://api.test/s/abc123XYZ');

    expect(shares, hasLength(1));
    expect(shares.single['symbol'], 'AAPL');
    expect(shares.single['lang'], 'en');
    expect((shares.single['image'] as String).startsWith('iVBOR'), isTrue);
  });
}
