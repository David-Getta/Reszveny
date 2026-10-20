import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/testing.dart';
import 'package:http/http.dart' as http;
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
import 'package:reszveny/features/news/research_follow_up.dart';
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
    // Az 1 éves hozam az árfolyam-történetből; a magasabb nyer.
    final ret = rows.firstWhere((r) => r.label == '1-year return');
    expect(ret.values[0], startsWith('+'));
    expect(ret.best, isNotNull);
    final fromHigh = rows.firstWhere((r) => r.label == 'From 52-week high');
    expect(fromHigh.values[0], '-2.44%'); // 231,45 / 237,23 − 1
    // Gyorsjelentés-adatokkal két sor több: a meglepetés (a nagyobb nyer) és a következő nap.
    expect(rows.any((r) => r.label == 'Next report'), isFalse);
    final withEarnings = buildCompareRows(
      lookupAppLocalizations(const Locale('en')),
      Fmt('en'),
      stocks,
      earnings: [await market.earnings('AAPL'), await market.earnings('MSFT'), null],
    );
    final surprise = withEarnings.firstWhere((r) => r.label == 'Last quarter EPS vs. expected');
    expect(surprise.values[0], '+2.7%');
    expect(surprise.values[2], isNull);
    expect(surprise.best, isNotNull);
    expect(withEarnings.firstWhere((r) => r.label == 'Next report').values[0], isNotNull);
    // Szövegként az AI-kérdéshez: oszlopok és soronként az értékek.
    final text = compareRowsAsText(['AAPL', 'MSFT', 'X'], rows);
    expect(text, startsWith('Columns: AAPL | MSFT | X\n'));
    expect(text, contains('P/E (trailing): 35.20 | '));
    expect(text, contains(' | -\n'));
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
    // Gyorsjelentések: az utolsó negyedév meglepetése és a következő jelentés napja.
    expect(find.text('Last quarter EPS vs. expected'), findsOneWidget);
    expect(find.text('Next report'), findsOneWidget);
    expect(find.text('+2.7%'), findsWidgets); // a demó: 1,15 a várt 1,12 helyett

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

  testWidgets('a question about the comparison: the table goes to the AI as text, the answer shows up', (tester) async {
    tester.view.physicalSize = const Size(1200, 3000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    const config = AppConfig(backendUrl: 'https://api.test');
    final asked = <String>[];
    final client = MockClient((req) async {
      asked.add((((jsonDecode(req.body) as Map)['messages'] as List).single as Map)['content'] as String);
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': 'Microsoft trades at a lower trailing P/E, but Apple grew faster last year.'},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    final services = AppServices(
      alertNotifier: FakeNotifier(),
      config: config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(favorites: const ['MSFT']),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: config)),
      entitlements: EntitlementService(),
      researchFollowUp: ResearchFollowUp(config: config, client: client),
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('compare-open')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('compare-pick-MSFT')));
    await tester.pumpAndSettle();
    final panel = find.byKey(const ValueKey('compare-followup'));
    await tester.scrollUntilVisible(panel, 300, scrollable: find.byType(Scrollable).first);
    await tester.enterText(find.byKey(const ValueKey('followup-field')), 'Which one is cheaper?');
    await tester.tap(find.byKey(const ValueKey('followup-send')));
    await tester.pumpAndSettle();
    expect(find.text('Microsoft trades at a lower trailing P/E, but Apple grew faster last year.'), findsOneWidget);
    expect(asked.single, contains('Subject: AAPL vs MSFT'));
    expect(asked.single, contains('Columns: AAPL | MSFT'));
    expect(asked.single, contains('P/E (trailing): 35.20 | 37.90'));
  });

  testWidgets('similar companies on a stock page: open one, or compare them all', (tester) async {
    tester.view.physicalSize = const Size(1200, 5000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final services = AppServices(
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
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.text('Similar companies'), findsOneWidget);
    expect(find.byKey(const ValueKey('peer-MSFT')), findsOneWidget);
    expect(find.byKey(const ValueKey('peer-NVDA')), findsOneWidget);
    expect(find.byKey(const ValueKey('peer-AAPL')), findsNothing);

    await tester.tap(find.byKey(const ValueKey('peers-compare')));
    await tester.pumpAndSettle();
    expect(find.text('Compare'), findsOneWidget);
    expect(find.text('Microsoft Corporation'), findsOneWidget);
    expect(find.text('NVIDIA Corporation'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey('peer-MSFT')));
    await tester.pumpAndSettle();
    expect(find.text('Microsoft Corporation'), findsWidgets);
    expect(services.preferences.recent.first, 'MSFT');
  });
}
