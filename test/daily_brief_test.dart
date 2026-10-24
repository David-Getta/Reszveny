import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/analysis_extras.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/news/daily_brief.dart';
import 'package:reszveny/features/events/events_service.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/news/research_follow_up.dart';
import 'package:reszveny/features/news/watch_news.dart';
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

  test('the request carries each stock with its move and headlines, and the rules', () {
    final body = DailyBrief.requestBody(
      stocks: [
        (
          symbol: 'NVDA',
          changePercent: 2.984,
          price: 187.6,
          currency: 'USD',
          headlines: ['Nvidia beats'],
          reportsInDays: null,
          reported: EarningsSurprise(period: DateTime(2026, 9, 30), actual: 1.05, estimate: 0.98),
        ),
        (
          symbol: 'OTP',
          changePercent: null,
          price: null,
          currency: null,
          headlines: const <String>[],
          reportsInDays: 1,
          reported: null,
        ),
      ],
      language: 'Hungarian',
      today: DateTime(2026, 10, 16),
      homeCurrency: (pair: 'USD/HUF', rate: 361.0, changePercent: 0.2778),
    );
    final user = ((body['messages'] as List).single as Map)['content'] as String;
    expect(user, contains('Language: Hungarian'));
    expect(user, contains('Home currency (JSON): {"pair":"USD/HUF","rate":361.0,"change_today_pct":0.28}'));
    expect(DailyBrief.systemPrompt, contains('"home_currency"'));
    expect(user, contains('"symbol":"NVDA","change_today_pct":2.98,"price":187.6,"currency":"USD"'));
    expect(user, contains('"headlines":["Nvidia beats"]'));
    expect(user, contains('{"symbol":"OTP","headlines":[],"reports_in_days":1}'));
    // A friss gyorsjelentés számai és a közeli jelentés napja is az adatok között.
    expect(user, contains('"reported":{"eps":1.05,"expected_eps":0.98,"beat":true}'));
    expect(DailyBrief.systemPrompt, contains('Never invent news'));
    expect(DailyBrief.systemPrompt, contains('"reported"'));
  });

  testWidgets('the home card makes today\'s brief through the ask endpoint and keeps it', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final sent = <Map<String, dynamic>>[];
    final client = MockClient((req) async {
      sent.add({'url': req.url.toString(), 'body': jsonDecode(req.body)});
      final question = req.body.contains('Question:');
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {
              'type': 'text',
              'text': question
                  ? 'Because the data-centre guidance was raised.'
                  : 'A quiet day overall.\n- NVDA +3.0%: results beat estimates.',
            },
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    const config = AppConfig(backendUrl: 'https://api.test');
    final market = DemoMarketDataProvider(latency: Duration.zero);
    final services = AppServices(
      alertNotifier: FakeNotifier(),
      config: config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: market,
      locale: LocaleController(),
      preferences: AppPreferences(favorites: const ['NVDA']),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: config)),
      entitlements: EntitlementService(),
      // Az összefoglaló a teszt utánzott kliensével.
      dailyBrief: (news) => DailyBrief(config: config, marketData: market, news: news, client: client),
      researchFollowUp: ResearchFollowUp(config: config, client: client),
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    expect(find.text('Today with your stocks'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('daily-brief-run')));
    await tester.pumpAndSettle();
    expect(find.textContaining('NVDA +3.0%: results beat estimates.'), findsOneWidget);
    expect(sent.single['url'], 'https://api.test/v1/ask');
    // A demóban az NVDA 18 nap múlva jelent: ez még nem kerül az adatok közé, friss eredmény sincs.
    final user = (((sent.single['body'] as Map)['messages'] as List).single as Map)['content'] as String;
    expect(user, isNot(contains('reports_in_days')));
    expect(user, isNot(contains('"reported"')));
    expect(find.byKey(const ValueKey('daily-brief-refresh')), findsOneWidget);
    // Kérdés az összefoglalóról: a kártya alján, a szöveggel együtt megy a kérdés.
    await tester.enterText(find.byKey(const ValueKey('followup-field')), 'Why did NVDA rise?');
    await tester.tap(find.byKey(const ValueKey('followup-send')));
    await tester.pumpAndSettle();
    expect(find.text('Because the data-centre guidance was raised.'), findsOneWidget);
    final asked = ((sent.last['body'] as Map)['messages'] as List).single as Map;
    expect(asked['content'], contains('Subject: Today with your stocks'));
    expect(asked['content'], contains('Note:\nA quiet day overall.'));

    // Újraindítás után a mai összefoglaló megmarad.
    final again = DailyBrief(config: config, marketData: market, news: services.news, client: client);
    await tester.runAsync(again.load);
    expect(again.isToday, isTrue);
    expect(again.last!.text, startsWith('A quiet day overall.'));
  });

  test('a stock that reported yesterday: the result goes into the data; one reporting soon: the day', () async {
    final sent = <String>[];
    final client = MockClient((req) async {
      sent.add((((jsonDecode(req.body) as Map)['messages'] as List).single as Map)['content'] as String);
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': 'Brief.'},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    const config = AppConfig(backendUrl: 'https://api.test');
    final market = DemoMarketDataProvider(latency: Duration.zero);
    final prefs = AppPreferences(favorites: const ['AAPL', 'MSFT']);
    // Délelőtt New Yorkban (a helyi és a New York-i nap ugyanaz), a zárás előtt.
    final n = DateTime.now();
    final now = DateTime.utc(n.year, n.month, n.day, 15);
    final today = DateTime(now.year, now.month, now.day);
    final brief =
        DailyBrief(
            config: config,
            marketData: market,
            news: WatchNewsService(marketData: market, preferences: prefs, portfolio: PortfolioStore()),
            client: client,
            clock: () => now,
          )
          ..fx = () async {
            return [
              FxRate(from: 'USD', to: 'HUF', rate: 360, date: DateTime(2026, 10, 19)),
              FxRate(from: 'USD', to: 'HUF', rate: 361.8, date: DateTime(2026, 10, 20)),
            ];
          }
          ..upcoming = () => [
            UpcomingEvent(
              symbol: 'AAPL',
              date: today.subtract(const Duration(days: 1)),
              kind: UpcomingEventKind.earnings,
            ),
            UpcomingEvent(symbol: 'MSFT', date: today.add(const Duration(days: 3)), kind: UpcomingEventKind.earnings),
            // Ma zárás után jelent: az előző negyedév számai még nem „friss eredmény”.
            UpcomingEvent(symbol: 'GOOG', date: today, kind: UpcomingEventKind.earnings, hour: 'amc'),
          ];
    await brief.generate(symbols: ['AAPL', 'MSFT', 'GOOG'], language: 'English');
    final user = sent.single;
    // A saját devizapár napi mozgása is az adatok között (+0,5%).
    expect(user, contains('"pair":"USD/HUF","rate":361.8,"change_today_pct":0.5'));
    // A demó utolsó negyedéve: 1,15 a várt 1,12 helyett.
    expect(user, contains('"reported":{"eps":1.15,"expected_eps":1.12,"beat":true}'));
    expect('"reported"'.allMatches(user), hasLength(1));
    expect(user, contains('"symbol":"MSFT"'));
    expect(user, contains('"reports_in_days":3'));
    expect(user, contains('"reports_in_days":0'));
    expect(user.indexOf('"reported"'), lessThan(user.indexOf('"symbol":"MSFT"')));
    expect(user, contains('Last US trading session: '));
  });

  test('an answer keeps only the text after the last search, not the model’s “I’ll look it up” note', () async {
    final client = MockClient(
      (req) async => http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': "I'll look up the latest news."},
            {'type': 'server_tool_use', 'name': 'web_search'},
            {
              'type': 'web_search_tool_result',
              'content': [
                {'type': 'web_search_result', 'url': 'https://news.example/a', 'title': 'A'},
              ],
            },
            {'type': 'text', 'text': 'Apple rose 3% '},
            {'type': 'text', 'text': 'after results.'},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      ),
    );
    final r = await askWithSources(const AppConfig(backendUrl: 'https://x.test'), client, const {'messages': []});
    expect(r.text, 'Apple rose 3% after results.');
  });
}
