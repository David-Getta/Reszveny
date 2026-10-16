import 'dart:async';

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

/// Az elemzés csak akkor készül el, amikor a teszt engedi.
class _GatedAnalyst implements StockAnalyst {
  Completer<void> gate = Completer<void>();

  @override
  String get name => 'gated';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async {
    await gate.future;
    return StockReport(symbol: details.symbol, headline: 'Ready now', sections: const [], generatedAt: DateTime.now());
  }
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('an analysis that finishes while the user is elsewhere is announced with an Open button', (tester) async {
    tester.view.physicalSize = const Size(1200, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final ent = EntitlementService(
      initial: EntitlementState(
        tier: PlanTier.pro,
        periodStart: DateTime.now().subtract(const Duration(days: 1)),
        periodEnd: DateTime.now().add(const Duration(days: 29)),
      ),
    );
    final analyst = _GatedAnalyst();
    final services = AppServices(
      alertNotifier: FakeNotifier(),
      config: const AppConfig(),
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: analyst, entitlements: ent),
      entitlements: ent,
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    // Ha a részvény oldalán marad, nincs külön jelzés.
    await tester.enterText(find.byType(TextField).first, 'MSFT');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pump();
    analyst.gate.complete();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.textContaining('your analysis is ready'), findsNothing);
    expect(find.text('Ready now'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();
    analyst.gate = Completer<void>();
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();

    await tester.tap(find.text('Generate analysis'));
    await tester.pump();
    expect(find.byKey(const ValueKey('analysis-elapsed')), findsOneWidget);

    // A felhasználó visszamegy a kezdőképernyőre, közben elkészül az elemzés.
    await tester.pageBack();
    await tester.pump(const Duration(seconds: 1));
    analyst.gate.complete();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('AAPL: your analysis is ready.'), findsOneWidget);
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(find.text('Ready now'), findsOneWidget);
  });
}
