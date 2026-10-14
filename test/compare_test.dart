import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/compare/compare_rows.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';

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

  test('the best value: lower multiples (losses excluded), higher growth; at least two values', () {
    expect(bestIndex([30, 18, 25], Better.lower), 1);
    expect(bestIndex([-5, 40, 25], Better.lower), 2, reason: 'a negative P/E is a loss, not cheap');
    expect(bestIndex([0.1, 0.3, null], Better.higher), 1);
    expect(bestIndex([12, null, null], Better.higher), isNull);
    expect(bestIndex([1.2, 0.9], Better.none), isNull);
  });

  test('rows from real details: values in each stock’s format and the winners', () async {
    final market = DemoMarketDataProvider(latency: Duration.zero);
    final stocks = [await market.details('AAPL'), await market.details('MSFT'), null];
    final rows = buildCompareRows(lookupAppLocalizations(const Locale('en')), Fmt('en'), stocks);
    final pe = rows.firstWhere((r) => r.label == 'P/E (trailing)');
    expect(pe.values[0], '35.20');
    expect(pe.values[2], isNull);
    final aPe = stocks[0]!.metrics!.peTrailing!, mPe = stocks[1]!.metrics!.peTrailing!;
    expect(pe.best, aPe < mPe ? 0 : 1);
    final price = rows.first;
    expect(price.values[0], '231.45 USD');
    expect(price.best, isNull);
  });

  testWidgets('compare from a stock page: pick a second stock, then remove one', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final services = AppServices(
      alertNotifier: FakeNotifier(),
      config: const AppConfig(),
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(favorites: const ['MSFT', 'NVDA']),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
      entitlements: EntitlementService(),
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('compare-open')));
    await tester.pumpAndSettle();

    // A második részvényt rögtön kéri; a kedvencek közül választunk.
    expect(find.text('Add a stock'), findsWidgets);
    await tester.tap(find.byKey(const ValueKey('compare-pick-MSFT')));
    await tester.pumpAndSettle();
    expect(find.text('Compare'), findsOneWidget);
    expect(find.text('Microsoft Corporation'), findsOneWidget);
    expect(find.text('P/E (trailing)'), findsOneWidget);
    expect(find.text('No analysis yet'), findsNWidgets(2));

    // Harmadik: beírt tickerrel.
    await tester.tap(find.byKey(const ValueKey('compare-add')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('compare-ticker')), 'nvda');
    await tester.tap(find.byKey(const ValueKey('compare-pick-ok')));
    await tester.pumpAndSettle();
    expect(find.text('NVIDIA Corporation'), findsOneWidget);
    expect(find.byKey(const ValueKey('compare-add')), findsNothing, reason: 'at most three');

    await tester.tap(find.byKey(const ValueKey('compare-remove-MSFT')));
    await tester.pumpAndSettle();
    expect(find.text('Microsoft Corporation'), findsNothing);
    expect(find.byKey(const ValueKey('compare-add')), findsOneWidget);
  });
}
