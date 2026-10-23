import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/stock_candidate.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/events/events_service.dart';
import 'package:reszveny/features/home/candidate_sheet.dart';
import 'package:reszveny/features/home/history_section.dart';
import 'package:reszveny/features/home/home_page.dart';
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

const _config = AppConfig();

AppServices _services({AppPreferences? preferences}) => AppServices(
  alertNotifier: FakeNotifier(),
  config: _config,
  capture: CaptureService(),
  recognizer: _NoRecognizer(),
  marketData: DemoMarketDataProvider(latency: Duration.zero),
  locale: LocaleController(),
  preferences: preferences ?? AppPreferences(),
  desktop: DesktopIntegration(),
  reports: ReportStore(analyst: ClaudeStockAnalyst(config: _config)),
  entitlements: EntitlementService(),
);

/// Egy kódátnézés kezdőképernyő-hibáinak ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('two remembered descriptions of the same stock give one suggestion, without a crash', (tester) async {
    tester.view.physicalSize = const Size(1200, 2000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final prefs = AppPreferences();
    await prefs.rememberResolved('gold etf', symbol: 'GLD', name: 'SPDR Gold');
    await prefs.rememberResolved('gold fund', symbol: 'GLD', name: 'SPDR Gold');
    await tester.pumpWidget(WhatStockApp(services: _services(preferences: prefs)));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'gold');
    await tester.pump();
    expect(tester.takeException(), isNull);
    expect(find.byKey(const ValueKey('suggestion-GLD')), findsOneWidget);
    await tester.pumpAndSettle();
  });

  testWidgets('the candidate sheet lays out with very large text on a narrow phone', (tester) async {
    tester.view.physicalSize = const Size(320, 800);
    tester.view.devicePixelRatio = 1;
    tester.platformDispatcher.textScaleFactorTestValue = 2.0;
    addTearDown(tester.view.reset);
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    await tester.pumpWidget(WhatStockApp(services: _services()));
    await tester.pumpAndSettle();
    showCandidateSheet(
      tester.element(find.byType(HomePage)),
      const RecognitionResult(
        candidates: [
          StockCandidate(symbol: 'AAPL', companyName: 'Apple Inc.', confidence: 0.95),
          StockCandidate(symbol: 'OTP.BD', companyName: 'OTP Bank Nyrt.', confidence: 0.4),
        ],
        summary: 'A broker screen with two tickers.',
      ),
    );
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    expect(find.text('A broker screen with two tickers.'), findsOneWidget);
  });

  testWidgets('home follows the layout after the window narrows', (tester) async {
    tester.view.physicalSize = const Size(1200, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final prefs = AppPreferences();
    await prefs.addRecent('AAPL');
    await tester.pumpWidget(WhatStockApp(services: _services(preferences: prefs)));
    await tester.pumpAndSettle();
    expect(find.byType(RecentChips), findsNothing);
    tester.view.physicalSize = const Size(390, 844);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('phone-nav')), findsOneWidget);
    expect(find.byType(RecentChips), findsOneWidget);
  });

  testWidgets('a portfolio notification on a phone opens the Portfolio tab', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = _services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    s.openNotification('portfolio-goal');
    // Asztali gépen az ablak előtérbe hozása (időkorláttal) előzi meg.
    await tester.pump(const Duration(seconds: 7));
    await tester.pumpAndSettle();
    expect(tester.widget<NavigationBar>(find.byKey(const ValueKey('phone-nav'))).selectedIndex, 1);
    expect(find.byType(PortfolioPage), findsOneWidget);
  });

  test('the events follow favourite changes', () async {
    final prefs = AppPreferences(favorites: const ['AAPL', 'MSFT']);
    final events = EventsService(
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      preferences: prefs,
      portfolio: PortfolioStore(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: _config)),
    );
    await events.refresh();
    expect(events.events.map((e) => e.symbol), contains('MSFT'));
    await prefs.toggleFavorite('MSFT');
    await pumpEventQueue();
    expect(events.events.map((e) => e.symbol), isNot(contains('MSFT')));
  });
}
