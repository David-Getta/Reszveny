import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
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

/// Elemzés kulcsszintekkel: 250 fölött ellenállás, 200 alatt támasz (a demó ár 231,45).
class _LevelsAnalyst implements StockAnalyst {
  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async => StockReport(
    symbol: details.symbol,
    headline: 'Levels',
    sections: const [
      ReportSection(kind: ReportSectionKind.outlook, title: 'Outlook', paragraphs: ['P']),
    ],
    generatedAt: DateTime.now(),
    outlook: const ReportOutlook(
      currentPrice: 231.45,
      currency: 'USD',
      scenarios: [
        Scenario(kind: ScenarioKind.bear, probability: 25, priceLow: 180, priceHigh: 205),
        Scenario(kind: ScenarioKind.base, probability: 50, priceLow: 220, priceHigh: 245),
        Scenario(kind: ScenarioKind.bull, probability: 25, priceLow: 250, priceHigh: 280),
      ],
      keyLevels: [
        KeyLevel(price: 250, kind: KeyLevelKind.resistance, label: 'high'),
        KeyLevel(price: 200, kind: KeyLevelKind.support, label: '200-day'),
      ],
    ),
  );
}

AppServices _services() {
  final ent = EntitlementService(
    initial: EntitlementState(
      tier: PlanTier.pro,
      periodStart: DateTime.now().subtract(const Duration(days: 1)),
      periodEnd: DateTime.now().add(const Duration(days: 29)),
    ),
  );
  return AppServices(
    alertNotifier: FakeNotifier(),
    config: const AppConfig(),
    capture: CaptureService(),
    recognizer: _NoRecognizer(),
    marketData: DemoMarketDataProvider(latency: Duration.zero),
    locale: LocaleController(),
    preferences: AppPreferences(),
    desktop: DesktopIntegration(),
    reports: ReportStore(analyst: _LevelsAnalyst(), entitlements: ent),
    entitlements: ent,
  );
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('a key level of the analysis sets a price alert in one tap', (tester) async {
    tester.view.physicalSize = const Size(1200, 3000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = _services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();

    expect(find.text('Tap a level to get an alert when the price reaches it.'), findsOneWidget);
    // Ellenállás a mostani ár fölött → „fölé megy” 250-nél.
    final resistance = find.byKey(const ValueKey('key-level-250.0'));
    await tester.ensureVisible(resistance);
    await tester.tap(resistance);
    await tester.pumpAndSettle();
    expect(find.text('Price alert · AAPL'), findsOneWidget);
    expect(find.widgetWithText(TextField, '250'), findsOneWidget);
    await tester.tap(find.text('Set alert'));
    await tester.pumpAndSettle();
    expect(find.text('Alert set for AAPL.'), findsOneWidget);

    // Támasz alatta → „alá esik” 200-nál.
    final support = find.byKey(const ValueKey('key-level-200.0'));
    await tester.ensureVisible(support);
    await tester.tap(support);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Set alert'));
    await tester.pumpAndSettle();

    final alerts = s.alerts.active;
    expect(alerts.map((a) => (a.kind, a.value, a.currency)), [
      (AlertKind.above, 250.0, 'USD'),
      (AlertKind.below, 200.0, 'USD'),
    ]);
  });
}
