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
import 'package:reszveny/features/portfolio/portfolio_page.dart';
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

AppServices _services(List<PortfolioLot> lots) => AppServices(
  alertNotifier: FakeNotifier(),
  config: const AppConfig(),
  capture: CaptureService(),
  recognizer: _NoRecognizer(),
  marketData: DemoMarketDataProvider(latency: Duration.zero),
  locale: LocaleController(),
  preferences: AppPreferences(),
  desktop: DesktopIntegration(),
  reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
  entitlements: EntitlementService(),
  portfolio: PortfolioStore(lots: lots),
);

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('a position without a price (e.g. a non-US stock): named on the home card and the page', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    // A demó nem ismeri az 1796.HK-t: nincs ára; az AAPL-nek van.
    final s = _services([
      PortfolioLot(id: 'h', symbol: '1796.HK', quantity: 100, price: 12.5, currency: 'HKD', date: DateTime(2026, 5, 2)),
      PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 2, price: 200, currency: 'USD', date: DateTime(2026, 5, 2)),
    ]);
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('portfolio-no-price')), findsOneWidget);
    expect(find.text('No current price for 1796.HK.'), findsOneWidget);
    // Az árral rendelkező pozíció értéke és változása látszik.
    expect(find.textContaining('Gain/loss'), findsOneWidget);

    await tester.tap(find.descendant(of: find.byType(PortfolioSummaryCard), matching: find.text('Portfolio')));
    await tester.pumpAndSettle();
    expect(
      find.text('Positions without a price or exchange rate are left out of the totals. No current price for 1796.HK.'),
      findsOneWidget,
    );
    // Friss negyedéves eredmény a pozíció alatt (a demó: 1,15 a várt 1,12 helyett).
    expect(find.byKey(const ValueKey('position-result-AAPL')), findsOneWidget);
    expect(find.text('EPS +2.7%'), findsOneWidget);
    expect(find.byKey(const ValueKey('position-result-1796.HK')), findsNothing);
  });

  testWidgets('only unpriced positions: no "today" and "gain" lines, just the note', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = _services([
      PortfolioLot(id: 'h', symbol: '1796.HK', quantity: 100, price: 12.5, currency: 'HKD', date: DateTime(2026, 5, 2)),
    ]);
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    expect(find.text('No current price for 1796.HK.'), findsOneWidget);
    expect(find.textContaining('Gain/loss'), findsNothing);
  });
}
