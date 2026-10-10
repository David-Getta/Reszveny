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
import 'package:reszveny/features/billing/demo_billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

AppServices services({Locale? locale}) {
  final ent = _entitlements();
  return AppServices(
    config: const AppConfig(),
    capture: CaptureService(),
    recognizer: _NoRecognizer(),
    marketData: DemoMarketDataProvider(latency: Duration.zero),
    locale: LocaleController(initial: locale),
    preferences: AppPreferences(),
    desktop: DesktopIntegration(),
    reports: ReportStore(analyst: _FakeAnalyst(), entitlements: ent),
    entitlements: ent,
    billing: DemoBillingService(latency: Duration.zero),
  );
}

EntitlementService _entitlements() => EntitlementService(
  initial: EntitlementState(
    tier: PlanTier.pro,
    periodStart: DateTime.now().subtract(const Duration(days: 3)),
    periodEnd: DateTime.now().add(const Duration(days: 27)),
    usedInPeriod: 5,
  ),
);

class _FakeAnalyst implements StockAnalyst {
  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async => StockReport(
    symbol: details.symbol,
    headline: 'Test headline',
    sections: const [
      ReportSection(kind: ReportSectionKind.summary, title: 'Summary', paragraphs: ['Para']),
    ],
    generatedAt: DateTime.now(),
  );
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));
  testWidgets('manual ticker lookup shows the detail page with all sections', (tester) async {
    await tester.pumpWidget(StockLensApp(services: services()));
    await tester.pumpAndSettle();

    expect(find.text('Which stock shall we look at?'), findsOneWidget);
    expect(find.textContaining('Demo mode'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'aapl');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();

    expect(find.text('Apple Inc.'), findsOneWidget);
    expect(find.text('AI analysis'), findsOneWidget);
    expect(find.text('Generate analysis'), findsOneWidget);
    for (final section in [
      'Price chart',
      'Price',
      'Valuation',
      'Financials',
      'Financial statements (annual)',
      'Dividend',
      'Company profile',
      'Analyst ratings',
      'News',
    ]) {
      await tester.scrollUntilVisible(find.text(section), 200, scrollable: find.byType(Scrollable).first);
      expect(find.text(section), findsOneWidget);
    }
  });

  testWidgets('company name search lists matches and opens the chosen one', (tester) async {
    await tester.pumpWidget(StockLensApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'micro');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    // Egyetlen találat → közvetlenül a részletek nyílnak meg.
    expect(find.text('Microsoft Corporation'), findsOneWidget);
    expect(find.text('AI analysis'), findsOneWidget);
  });

  testWidgets('AI analysis renders the generated report', (tester) async {
    await tester.pumpWidget(StockLensApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    expect(find.text('Test headline'), findsOneWidget);
    expect(find.text('Summary'), findsOneWidget);
    expect(find.text('Regenerate'), findsOneWidget);
  });

  testWidgets('star adds a favorite that shows on the home screen with a price', (tester) async {
    await tester.pumpWidget(StockLensApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Add to favorites'));
    await tester.pumpAndSettle();
    expect(find.byTooltip('Remove from favorites'), findsOneWidget);
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();
    expect(find.text('Favorites'), findsOneWidget);
    expect(find.textContaining('231.45'), findsOneWidget);
  });

  testWidgets('paywall lists the four plans and a demo purchase upgrades the plan', (tester) async {
    tester.view.physicalSize = const Size(1200, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(StockLensApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('View plans').first);
    await tester.pumpAndSettle();
    expect(find.text('Normal'), findsOneWidget);
    expect(find.text('Ultra'), findsOneWidget);
    expect(find.text('150 analyses per month'), findsOneWidget);
    expect(find.text('Current plan'), findsWidgets);
    // A Max csomag megvétele a demó boltban azonnal aktiválódik.
    final subscribeButtons = find.widgetWithText(FilledButton, 'Subscribe');
    expect(subscribeButtons, findsNWidgets(3));
    await tester.tap(subscribeButtons.at(1));
    await tester.pumpAndSettle();
    expect(
      s.entitlements.plan?.tier,
      PlanTier.max,
      reason: 'event=${s.billingController.lastEvent?.status} products=${s.billingController.products.length}',
    );
    expect(find.text('Thanks! Your purchase is active.'), findsOneWidget);
  });

  testWidgets('analysis is blocked when the allowance is used up and offers the plans', (tester) async {
    final s = services();
    for (var i = 0; i < 20; i++) {
      await s.entitlements.consume();
    }
    await tester.pumpWidget(StockLensApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    expect(find.textContaining('no analyses left'), findsOneWidget);
    expect(find.text('View plans'), findsOneWidget);
    expect(find.text('Test headline'), findsNothing);
  });

  testWidgets('language picker opens on tap, filters by search and switches the language', (tester) async {
    tester.view.physicalSize = const Size(1200, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(StockLensApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    // A lista zárva: a 44 nyelv nem látszik, csak az aktuális.
    expect(find.text('Magyar'), findsNothing);
    await tester.scrollUntilVisible(find.text('System default'), 200, scrollable: find.byType(Scrollable).last);
    await tester.tap(find.text('System default'));
    await tester.pumpAndSettle();
    expect(find.text('English'), findsWidgets);
    expect(find.text('Deutsch'), findsNothing); // a lista lusta: csak a látható elemek épülnek fel
    await tester.enterText(find.widgetWithText(TextField, 'Search languages…'), 'magy');
    await tester.pumpAndSettle();
    expect(find.text('Magyar'), findsOneWidget);
    expect(find.text('Deutsch'), findsNothing);
    await tester.tap(find.text('Magyar'));
    await tester.pumpAndSettle();
    expect(s.locale.override, const Locale('hu'));
    expect(find.text('Beállítások'), findsWidgets);
  });

  testWidgets('recent searches appear in the sidebar on wide screens', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(StockLensApp(services: services()));
    await tester.pumpAndSettle();
    expect(find.text('New search'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.text('NVIDIA Corporation'), findsOneWidget);
    expect(find.widgetWithText(InkWell, 'NVDA'), findsWidgets);
  });

  testWidgets('hungarian locale renders translated strings', (tester) async {
    await tester.pumpWidget(StockLensApp(services: services(locale: const Locale('hu'))));
    await tester.pumpAndSettle();
    expect(find.text('Which stock shall we look at?'), findsNothing);
    expect(find.byType(TextField), findsOneWidget);
  });

  testWidgets('a locale without built-in Material strings still renders (fallback delegate)', (tester) async {
    await tester.pumpWidget(StockLensApp(services: services(locale: const Locale('jv'))));
    await tester.pumpAndSettle();
    expect(find.byType(TextField), findsOneWidget);
    expect(Localizations.localeOf(tester.element(find.byType(TextField))), const Locale('jv'));
  });

  testWidgets('right-to-left locale flips the text direction', (tester) async {
    await tester.pumpWidget(StockLensApp(services: services(locale: const Locale('ar'))));
    await tester.pumpAndSettle();
    expect(Directionality.of(tester.element(find.byType(TextField))), TextDirection.rtl);
  });

  testWidgets('AI analysis settings: length shows its cost, reader level and counter-argument persist', (tester) async {
    tester.view.physicalSize = const Size(1200, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(StockLensApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    expect(find.text('AI ANALYSIS'), findsOneWidget);
    expect(find.textContaining('uses 1 analysis'), findsOneWidget);
    await tester.tap(find.text('In-depth'));
    await tester.pumpAndSettle();
    expect(s.preferences.analysisDepth, AnalysisDepth.deep);
    expect(find.textContaining('uses 2 analyses'), findsOneWidget);
    // Pro csomag: 6 + 2 webkeresés a részletes elemzéshez.
    expect(find.text('Up to 8 web searches per analysis with your plan'), findsOneWidget);
    await tester.tap(find.text('Experienced'));
    await tester.pumpAndSettle();
    expect(s.preferences.readerLevel, ReaderLevel.experienced);
    await tester.tap(find.text('Strongest counter-argument'));
    await tester.pumpAndSettle();
    expect(s.preferences.counterArgument, isFalse);
    final o = s.analysisOptions();
    expect(o.cost, 2);
    expect(o.webSearches, 8);
    expect(o.readerLevel, ReaderLevel.experienced);
    expect(o.counterArgument, isFalse);
  });
}
