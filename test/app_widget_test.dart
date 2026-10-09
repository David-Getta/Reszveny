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
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/stock_analyst.dart';
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

AppServices services({Locale? locale}) => AppServices(
  config: const AppConfig(),
  capture: CaptureService(),
  recognizer: _NoRecognizer(),
  marketData: DemoMarketDataProvider(latency: Duration.zero),
  locale: LocaleController(initial: locale),
  preferences: AppPreferences(),
  desktop: DesktopIntegration(),
  reports: ReportStore(analyst: _FakeAnalyst()),
);

class _FakeAnalyst implements StockAnalyst {
  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(StockDetails details, {String outputLanguage = 'English'}) async => StockReport(
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
    await tester.pumpWidget(ReszvenyApp(services: services()));
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
    await tester.pumpWidget(ReszvenyApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'micro');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    // Egyetlen találat → közvetlenül a részletek nyílnak meg.
    expect(find.text('Microsoft Corporation'), findsOneWidget);
    expect(find.text('AI analysis'), findsOneWidget);
  });

  testWidgets('AI analysis renders the generated report', (tester) async {
    await tester.pumpWidget(ReszvenyApp(services: services()));
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

  testWidgets('recent searches appear in the sidebar on wide screens', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(ReszvenyApp(services: services()));
    await tester.pumpAndSettle();
    expect(find.text('New search'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.text('NVIDIA Corporation'), findsOneWidget);
    expect(find.widgetWithText(InkWell, 'NVDA'), findsWidgets);
  });

  testWidgets('hungarian locale renders translated strings', (tester) async {
    await tester.pumpWidget(ReszvenyApp(services: services(locale: const Locale('hu'))));
    await tester.pumpAndSettle();
    expect(find.text('Which stock shall we look at?'), findsNothing);
    expect(find.byType(TextField), findsOneWidget);
  });

  testWidgets('a locale without built-in Material strings still renders (fallback delegate)', (tester) async {
    await tester.pumpWidget(ReszvenyApp(services: services(locale: const Locale('jv'))));
    await tester.pumpAndSettle();
    expect(find.byType(TextField), findsOneWidget);
    expect(Localizations.localeOf(tester.element(find.byType(TextField))), const Locale('jv'));
  });

  testWidgets('right-to-left locale flips the text direction', (tester) async {
    await tester.pumpWidget(ReszvenyApp(services: services(locale: const Locale('ar'))));
    await tester.pumpAndSettle();
    expect(Directionality.of(tester.element(find.byType(TextField))), TextDirection.rtl);
  });
}
