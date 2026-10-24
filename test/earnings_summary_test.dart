import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/features/portfolio/portfolio_page.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/analysis_extras.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/market_data/market_data_provider.dart';
import 'package:reszveny/features/news/earnings_summarizer.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/features/stock_detail/stock_detail_page.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

/// Az utolsó ismert negyedév fél éve zárult: nincs friss jelentés.
class _OldEarnings extends DemoMarketDataProvider {
  _OldEarnings() : super(latency: Duration.zero);

  @override
  Future<EarningsOverview> earnings(String symbol) async => EarningsOverview(
    history: [EarningsSurprise(period: DateTime.now().subtract(const Duration(days: 200)), actual: 1.2, estimate: 1.1)],
  );
}

http.Response _answer(String text, {String url = 'https://investor.apple.com/q3', String title = 'Apple Q3 results'}) =>
    http.Response(
      jsonEncode({
        'stop_reason': 'end_turn',
        'content': [
          {
            'type': 'text',
            'text': text,
            'citations': [
              {'type': 'web_search_result_location', 'url': url, 'title': title},
            ],
          },
        ],
      }),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    );

const _config = AppConfig(backendUrl: 'https://api.test');

AppServices _services(MarketDataProvider market, http.Client client) => AppServices(
  alertNotifier: FakeNotifier(),
  config: _config,
  capture: CaptureService(),
  recognizer: _NoRecognizer(),
  marketData: market,
  locale: LocaleController(),
  preferences: AppPreferences(),
  desktop: DesktopIntegration(),
  reports: ReportStore(analyst: ClaudeStockAnalyst(config: _config)),
  entitlements: EntitlementService(),
  earningsSummarizer: EarningsSummarizer(config: _config, client: client),
);

Future<void> _openAapl(WidgetTester tester, AppServices services) async {
  tester.view.physicalSize = const Size(1200, 9000);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(WhatStockApp(services: services));
  await tester.pumpAndSettle();
  await tester.enterText(find.byType(TextField).first, 'AAPL');
  await tester.testTextInput.receiveAction(TextInputAction.search);
  await tester.pumpAndSettle();
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the request: web search and page reading, the stock, the language and the last quarter', () {
    final body = EarningsSummarizer.requestBody(
      symbol: 'AAPL',
      companyName: 'Apple Inc.',
      language: 'Hungarian',
      today: DateTime(2026, 10, 18),
      lastPeriod: DateTime(2026, 9, 30),
    );
    final tools = body['tools'] as List;
    expect(tools.map((t) => (t as Map)['name']), ['web_search', 'web_fetch']);
    expect((tools.first as Map)['max_uses'], EarningsSummarizer.maxSearches);
    final user = ((body['messages'] as List).single as Map)['content'] as String;
    expect(user, contains('Language: Hungarian'));
    expect(user, contains('Stock: Apple Inc. (AAPL)'));
    expect(user, contains('Last quarter in our data ended: 2026-09-30'));
    // A szerver megosztott tára: cég, negyedév és nyelv.
    expect(body['shared_cache'], 'earnings|AAPL|2026-09-30|Hungarian');
    final system = ((body['system'] as List).single as Map)['text'] as String;
    expect(system, contains('press release'));
    expect(system, contains('Never invent facts'));
  });

  test('summaries are kept per stock, language and quarter, also across restarts', () async {
    var calls = 0;
    final client = MockClient((req) async => _answer('Summary ${++calls}.'));
    EarningsSummarizer make() => EarningsSummarizer(config: _config, client: client);
    Future<String> ask(String language, DateTime period) async => (await make().summarize(
      symbol: 'AAPL',
      companyName: 'Apple Inc.',
      language: language,
      lastPeriod: period,
    )).text;

    expect(await ask('English', DateTime(2026, 6, 30)), 'Summary 1.');
    expect(await ask('English', DateTime(2026, 6, 30)), 'Summary 1.');
    expect(calls, 1);
    // Új negyedév vagy más nyelv: új kérés.
    expect(await ask('English', DateTime(2026, 9, 30)), 'Summary 2.');
    expect(await ask('Hungarian', DateTime(2026, 9, 30)), 'Summary 3.');
  });

  testWidgets('"What was in the latest report?" on the earnings card: a summary with its sources', (tester) async {
    var calls = 0;
    final client = MockClient((req) async {
      calls++;
      expect((req.body), contains('Apple Inc. (AAPL)'));
      return _answer('Apple beat expectations: revenue grew 8%.');
    });
    final s = _services(DemoMarketDataProvider(latency: Duration.zero), client);
    await _openAapl(tester, s);
    final button = find.byKey(const ValueKey('earnings-summary'));
    expect(button, findsOneWidget);
    expect(find.text('What was in the latest report?'), findsOneWidget);
    await tester.ensureVisible(button);
    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('earnings-summary-sheet')), findsOneWidget);
    expect(find.text('Apple beat expectations: revenue grew 8%.'), findsOneWidget);
    expect(find.text('investor.apple.com'), findsOneWidget);
    expect(find.text('Apple Q3 results'), findsOneWidget);
    // Az `investor.` gépnév bárkié lehet: ismert webhely nélkül nincs „Hivatalos” címke.
    expect(find.byKey(const ValueKey('source-tag-official')), findsNothing);
    expect(calls, 1);
    // Megosztás szövegként: cím, szöveg, források, megjegyzés.
    final shared = <String>[];
    final original = shareText;
    shareText = (text, {subject, origin}) async => shared.add('$subject\n$text');
    addTearDown(() => shareText = original);
    await tester.tap(find.byKey(const ValueKey('research-share')));
    await tester.pumpAndSettle();
    expect(shared.single, startsWith('AAPL · Apple Inc. · What was in the latest report?\n'));
    expect(shared.single, contains('Apple beat expectations: revenue grew 8%.'));
    expect(shared.single, contains('Apple Q3 results: https://investor.apple.com/q3'));
    expect(shared.single, contains('Not investment advice.'));
    // Mentés a jegyzetbe: dátum, cím, szöveg, források; másodszor nem menthető.
    await tester.tap(find.byKey(const ValueKey('research-save-note')));
    await tester.pumpAndSettle();
    final note = s.notes.of('AAPL')!.text;
    expect(note, contains('What was in the latest report?\nApple beat expectations: revenue grew 8%.'));
    expect(note, contains('https://investor.apple.com/q3'));
    expect(find.text('Saved to your notes'), findsOneWidget);
    expect(tester.widget<TextButton>(find.byKey(const ValueKey('research-save-note'))).onPressed, isNull);
    // A részvény oldalán a jegyzet mezője azonnal mutatja a mentett szöveget.
    Navigator.of(tester.element(find.byKey(const ValueKey('earnings-summary-sheet')))).pop();
    await tester.pumpAndSettle();
    final field = find.byKey(const ValueKey('notes-field'));
    for (var i = 0; i < 30 && field.evaluate().isEmpty; i++) {
      await tester.drag(
        find.descendant(of: find.byType(StockDetailPage), matching: find.byType(Scrollable)).first,
        const Offset(0, -400),
      );
      await tester.pumpAndSettle();
    }
    expect(tester.widget<TextField>(field).controller!.text, contains('Apple beat expectations: revenue grew 8%.'));
  });

  testWidgets('tapping the "beat/missed" notification opens the stock with the summary sheet', (tester) async {
    final client = MockClient((req) async => _answer('Apple beat expectations.'));
    final s = _services(DemoMarketDataProvider(latency: Duration.zero), client);
    // Ablakkezelő nincs a tesztben: az értesítés csak az appon belül nyit.
    DesktopIntegration.debugSupportedOverride = false;
    addTearDown(() => DesktopIntegration.debugSupportedOverride = null);
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    s.openNotification('result-AAPL-2026-10-15');
    await tester.pumpAndSettle();
    expect(find.text('Apple Inc.'), findsWidgets);
    expect(find.byKey(const ValueKey('earnings-summary-sheet')), findsOneWidget);
    expect(find.text('Apple beat expectations.'), findsOneWidget);
    // Egy másik értesítés (emlékeztető) csak a részvényt nyitja.
    Navigator.of(tester.element(find.byKey(const ValueKey('earnings-summary-sheet')))).pop();
    await tester.pumpAndSettle();
    s.openNotification('earnings-MSFT-2026-10-20');
    await tester.pumpAndSettle();
    expect(find.text('Microsoft Corporation'), findsWidgets);
    expect(find.byKey(const ValueKey('earnings-summary-sheet')), findsNothing);
    // Osztalék-emlékeztető: a részvény; portfólió-értesítés: a portfólió oldala.
    s.openNotification('dividend-NVDA-USD-2026-10-23');
    await tester.pumpAndSettle();
    expect(find.text('NVIDIA Corporation'), findsWidgets);
    s.openNotification('portfolio-goal');
    await tester.pumpAndSettle();
    expect(find.byType(PortfolioPage), findsOneWidget);
    s.openNotification('brief-2026-10-23');
    await tester.pumpAndSettle();
    expect(find.byType(PortfolioPage), findsNothing);
  });

  testWidgets('no recent quarter: no summary button', (tester) async {
    await _openAapl(tester, _services(_OldEarnings(), MockClient((_) async => _answer('x'))));
    expect(find.byKey(const ValueKey('earnings-card')), findsOneWidget);
    expect(find.byKey(const ValueKey('earnings-summary')), findsNothing);
  });
}
