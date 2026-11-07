import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/models/news_item.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/analysis/analysis_chat.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/home/away_summary.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/news/watch_news.dart';
import 'package:reszveny/features/stock_detail/widgets/outlook_view.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';
import 'package:reszveny/widgets/fit_text.dart';
import 'package:reszveny/widgets/source_links.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget_test.dart' show services;

/// A 65. kódátnézés (a 0.2.316–0.2.321 változásainak hibavadászata, találatonként két
/// szkeptikus ellenőrzővel) javításai.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  StockReport report({List<String> outlookBullets = const ['x'], int scenarios = 3}) => StockReport(
    symbol: 'AAPL',
    headline: 'Steady',
    generatedAt: DateTime.utc(2026, 11, 7),
    sections: [ReportSection(kind: ReportSectionKind.outlook, title: 'Outlook', bullets: outlookBullets)],
    outlook: ReportOutlook(
      scenarios: [for (final k in ScenarioKind.values.take(scenarios)) Scenario(kind: k, probability: 100 / scenarios)],
    ),
  );

  test(
    'after a restart the question count is known before the first question, and a blocked question is kept',
    () async {
      var calls = 0;
      http.Response answer() => http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': 'Yes.'},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
      AnalysisChat chat() => AnalysisChat(
        config: const AppConfig(backendUrl: 'https://api.test'),
        client: MockClient((_) async {
          calls++;
          return answer();
        }),
      );
      final r = report();
      final first = chat();
      for (var i = 0; i < AnalysisChat.maxQuestions; i++) {
        expect(await first.ask(r, 'Q$i?', companyName: 'Apple', language: 'English'), isTrue);
      }
      expect(calls, AnalysisChat.maxQuestions);
      // Újraindítás: a mentett szám már az első olvasás után (betöltve) megvan, kérdés nélkül.
      final again = chat();
      again.questionsLeft(r); // elindítja a betöltést
      await again.load();
      expect(again.questionsLeft(r), 0);
      // Egy mégis elküldött kérdés nem megy el, és ezt a hívó megtudja (a szöveg megmarad).
      expect(await again.ask(r, 'One more?', companyName: 'Apple', language: 'English'), isFalse);
      expect(calls, AnalysisChat.maxQuestions);
      // Kijelentkezés közben befejeződő betöltés nem tölti vissza a régi számokat.
      final third = chat();
      final loading = third.load();
      third.clear();
      await loading;
      expect(third.questionsLeft(r), AnalysisChat.maxQuestions);
    },
  );

  test('forgetting the away summary during a check drops the previous account\'s report and snapshot', () async {
    final s = services();
    await s.preferences.setFavorites(['AAPL']);
    SharedPreferences.setMockInitialValues({
      AwaySummary.storeKey: jsonEncode({
        'at': DateTime.now().subtract(const Duration(days: 2)).toIso8601String(),
        'prices': {'AAPL': 100.0},
      }),
    });
    // Ellenőrzés: a régi pillanatképhez mérve lenne jelentés…
    final control = services();
    await control.preferences.setFavorites(['AAPL']);
    await control.away.check();
    expect(control.away.report, isNotNull);
    // …de ha közben a fiók adatai törlődnek, se jelentés, se új pillanatkép az előző fiókról.
    SharedPreferences.setMockInitialValues({
      AwaySummary.storeKey: jsonEncode({
        'at': DateTime.now().subtract(const Duration(days: 2)).toIso8601String(),
        'prices': {'AAPL': 100.0},
      }),
    });
    final running = s.away.check();
    s.away.forget();
    await running;
    expect(s.away.report, isNull);
    // Új pillanatkép nem íródott (a régit a személyes adatok törlése külön veszi ki).
    final stored = jsonDecode((await SharedPreferences.getInstance()).getString(AwaySummary.storeKey)!) as Map;
    expect((stored['prices'] as Map)['AAPL'], 100.0);
    expect(DateTime.parse(stored['at'] as String).isBefore(DateTime.now().subtract(const Duration(days: 1))), isTrue);
  });

  test('PNG text and EXIF chunks after the image data are found and cut out', () {
    Uint8List chunk(String kind, List<int> data) => Uint8List.fromList([
      (data.length >> 24) & 0xFF, (data.length >> 16) & 0xFF, (data.length >> 8) & 0xFF, data.length & 0xFF, //
      ...kind.codeUnits, ...data, 0, 0, 0, 0,
    ]);
    final png = Uint8List.fromList([
      0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, //
      ...chunk('IHDR', List.filled(13, 0)),
      ...chunk('IDAT', [1, 2, 3]),
      ...chunk('tEXt', 'date:create\u0000 2024-05-01'.codeUnits),
      ...chunk('eXIf', 'GPS'.codeUnits),
      ...chunk('IEND', const []),
    ]);
    expect(CaptureService.hasMetadata(png), isTrue);
    final clean = CaptureService.stripMetadata(png)!;
    final text = String.fromCharCodes(clean);
    expect(text, isNot(contains('date:create')));
    expect(text, isNot(contains('GPS')));
    expect(text, contains('IDAT'));
    expect(CaptureService.hasMetadata(clean), isFalse);
  });

  test('the position fallback never takes a key-level bullet; it matches the cost with its currency', () {
    const position = PositionContext(quantity: 10, averageCost: 150, currency: 'USD');
    final bullets = [
      'Bull: 215–240 if guidance beats.',
      'Base: 175–205.',
      'Bear: 130–160.',
      'Most likely: base.',
      'Key levels: support 150, resistance 185.',
    ];
    final r = report(outlookBullets: bullets);
    expect(ClaudeStockAnalyst.separatePosition(r, position), same(r));
    final withCost = report(outlookBullets: [...bullets, 'Against your average cost of 150 USD: +43% / +17% / -13%']);
    expect(ClaudeStockAnalyst.separatePosition(withCost, position).positionNote, contains('average cost'));
    expect(ClaudeStockAnalyst.separatePosition(withCost, position).sections.single.bullets, bullets);
    final fixed = report(outlookBullets: [...bullets, 'Versus 150.00: the base case is +17%.']);
    expect(ClaudeStockAnalyst.separatePosition(fixed, position).positionNote, contains('150.00'));
    const half = PositionContext(quantity: 10, averageCost: 150.5, currency: 'USD');
    final short = report(outlookBullets: [...bullets, 'From your 150.5 entry the bear case is -14%.']);
    expect(ClaudeStockAnalyst.separatePosition(short, half).positionNote, contains('150.5'));
  });

  test('forgetting the watched news during a refresh drops the result; the next refresh is fresh', () async {
    final s = services();
    await s.preferences.setFavorites(['AAPL']);
    final slow = _SlowNews();
    final news = WatchNewsService(marketData: slow, preferences: s.preferences, portfolio: s.portfolio);
    final running = news.refresh();
    news.forget();
    slow.release();
    await running;
    expect(news.news, isEmpty);
    expect(news.newsOf('AAPL'), isEmpty);
    // A következő frissítés nem a régire vár: friss híreket hoz.
    slow.immediate = true;
    await news.refresh();
    expect(news.news, isNotEmpty);
  });

  test('a number and its no-break-space percent sign are measured as one unbreakable run', () {
    const style = TextStyle(fontSize: 14);
    double w(String s) => WordFitText.widestWord(s, style, TextDirection.ltr, TextScaler.noScaling);
    expect(w('+123,45 %'), greaterThan(w('+123,45')));
    expect(w('1 234,5 %'), greaterThan(w('1 234,5')));
    // Sima szóköznél a hosszabb szó számít, nem az egész.
    expect(w('ab cdefgh'), lessThan(w('abcdefgh ')));
    expect(w('ab cdefgh'), w('cdefgh'));
  });

  testWidgets('a timeline with only past events takes no space at all', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.build(Brightness.light),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: const [Locale('en')],
        home: Scaffold(
          body: Column(
            children: [
              CatalystTimeline(
                catalysts: const [Catalyst(date: '2026-10-01', event: 'Past')],
                fmt: Fmt('en'),
                now: DateTime(2026, 11, 7),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(tester.getSize(find.byType(CatalystTimeline)), Size.zero);
  });

  testWidgets('a source that does not open says so under its own row, for a while', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.build(Brightness.light),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: const [Locale('en')],
        home: const Scaffold(body: SourceLinks(sources: [(title: 'Odd', url: 'httpx://example.com/x')])),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('source-0')));
    await tester.pump();
    expect(find.byKey(const ValueKey('source-0-failed')), findsOneWidget);
    expect(find.text('Could not open the link.'), findsOneWidget);
    await tester.pump(SourceLinks.failedShownFor + const Duration(milliseconds: 10));
    expect(find.byKey(const ValueKey('source-0-failed')), findsNothing);
  });
}

/// Hírek, amelyek csak kérésre érkeznek meg (a törlés közbeni frissítéshez).
class _SlowNews extends DemoMarketDataProvider {
  _SlowNews() : super(latency: Duration.zero);

  final _gate = Completer<void>();
  bool immediate = false;

  void release() => _gate.complete();

  @override
  Future<List<NewsItem>> news(String symbol, {int limit = 20}) async {
    if (!immediate) await _gate.future;
    return super.news(symbol, limit: limit);
  }
}
