import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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

  testWidgets('suggestions while typing: own symbols at once, market results after a pause', (tester) async {
    tester.view.physicalSize = const Size(1200, 2000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final prefs = AppPreferences(recent: const ['MSFT']);
    await tester.pumpWidget(
      WhatStockApp(
        services: AppServices(
          alertNotifier: FakeNotifier(),
          config: const AppConfig(),
          capture: CaptureService(),
          recognizer: _NoRecognizer(),
          marketData: DemoMarketDataProvider(latency: Duration.zero),
          locale: LocaleController(),
          preferences: prefs,
          desktop: DesktopIntegration(),
          reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
          entitlements: EntitlementService(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    final field = find.byType(TextField).first;

    // Egy betűre még nincs javaslat.
    await tester.enterText(field, 'm');
    await tester.pump();
    expect(find.byKey(const ValueKey('search-suggestions')), findsNothing);

    // A legutóbbi MSFT azonnal, a cégnév a piaci keresés után.
    await tester.enterText(field, 'ms');
    await tester.pump();
    expect(find.byKey(const ValueKey('suggestion-MSFT')), findsOneWidget);
    expect(find.text('Microsoft Corporation'), findsNothing);
    await tester.pump(const Duration(milliseconds: 450));
    await tester.pump();
    expect(find.text('Microsoft Corporation'), findsOneWidget);

    // Cégnévre is talál; koppintásra megnyílik, a mező és a lista kiürül.
    await tester.enterText(field, 'nvid');
    await tester.pump(const Duration(milliseconds: 450));
    await tester.pump();
    expect(find.byKey(const ValueKey('suggestion-NVDA')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('suggestion-NVDA')));
    await tester.pumpAndSettle();
    expect(find.text('NVIDIA Corporation'), findsWidgets);
    expect(find.byKey(const ValueKey('search-suggestions')), findsNothing);
  });
}
