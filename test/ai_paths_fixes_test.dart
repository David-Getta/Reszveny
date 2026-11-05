import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/core/util/ai_text.dart';
import 'package:reszveny/features/analysis/analysis_chat.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_ai.dart';
import 'package:reszveny/features/stock_detail/widgets/outlook_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Az AI sikeres útjainak böngészős végigjátszása (csonk-szerverrel) nyomán.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  StockReport report({required List<String> outlookBullets, int scenarios = 3}) => StockReport(
    symbol: 'AAPL',
    headline: 'Steady',
    generatedAt: DateTime.utc(2026, 11, 5),
    sections: [ReportSection(kind: ReportSectionKind.outlook, title: 'Outlook', bullets: outlookBullets)],
    outlook: ReportOutlook(
      scenarios: [for (final k in ScenarioKind.values.take(scenarios)) Scenario(kind: k, probability: 100 / scenarios)],
    ),
  );

  const position = PositionContext(quantity: 10, averageCost: 150, currency: 'USD');

  test('the bullet measured against the average cost is kept apart, even when the scenario bullets were merged', () {
    // Rövid elemzés: a modell egy pontba vonta a három forgatókönyvet, utána a pozíció.
    final merged = report(
      outlookBullets: ['Bull 260, base 240, bear 180.', 'Against your average cost of 150.00 USD: +73% / +60% / +20%'],
    );
    final r = ClaudeStockAnalyst.separatePosition(merged, position);
    expect(r.positionNote, contains('150.00'));
    expect(r.sections.single.bullets, ['Bull 260, base 240, bear 180.']);
    final shared = reportShareText(r, companyName: 'Apple', generatedLine: 'g', disclaimer: 'd');
    expect(shared, isNot(contains('average cost')));
    // A hibajelentés szövegébe sem kerül.
    expect(reportPlainText(r), isNot(contains('average cost')));
    // Mentve és visszatöltve is megmarad (a kártya a kilátások végén mutatja).
    expect(
      StockReport.fromJson(jsonDecode(jsonEncode(r.toJson())) as Map<String, dynamic>).positionNote,
      r.positionNote,
    );
    // Pozíció nélkül semmi nem változik.
    expect(ClaudeStockAnalyst.separatePosition(merged, null), same(merged));
  });

  test('AI text loses its Markdown marks but keeps plain arithmetic', () {
    expect(plainAiText('**Strongest counter-argument:** margins'), 'Strongest counter-argument: margins');
    expect(plainAiText('See [the filing](javascript:alert(1)) now'), 'See the filing now');
    expect(plainAiText('## Outlook\n`AAPL` is *cheap*'), 'Outlook\nAAPL is cheap');
    expect(plainAiText('2 * 3 * 4 = 24'), '2 * 3 * 4 = 24');
    expect(plainAiText('snake__case__name'), 'snake__case__name');
  });

  test('past events are not listed as upcoming; month-only dates sort in their month', () {
    final now = DateTime(2026, 11, 5);
    final shown = CatalystTimeline.upcoming(const [
      Catalyst(date: '2026-12-01', event: 'Dividend'),
      Catalyst(date: '2026-10-01', event: 'Past event'),
      Catalyst(date: '2026-10', event: 'Last month'),
      Catalyst(date: '2026-11', event: 'This month'),
      Catalyst(date: '2026-11-05', event: 'Today'),
      Catalyst(date: 'Early 2027', event: 'Undated'),
    ], now);
    expect(shown.map((c) => c.event), ['This month', 'Today', 'Dividend', 'Undated']);
  });

  test('scenario odds are brought back to 100% and a far-off key level is dropped', () {
    final o = ReportOutlook.fromJson({
      'current_price': 200,
      'scenarios': [
        {'kind': 'bull', 'probability': 60},
        {'kind': 'base', 'probability': 40},
        {'kind': 'bear', 'probability': 20},
      ],
      'key_levels': [
        {'price': 190, 'kind': 'support'},
        {'price': 1234567, 'kind': 'resistance'},
      ],
    });
    expect(o.scenarios.fold(0.0, (a, s) => a + s.probability), closeTo(100, 1e-9));
    expect(o.keyLevels.map((k) => k.price), [190]);
  });

  test('a source that is not a web address does not become a link', () {
    final r = ClaudeStockAnalyst.parseResponse('AAPL', {
      'stop_reason': 'end_turn',
      'content': [
        {
          'type': 'text',
          'text': jsonEncode({
            'headline': 'h',
            'sections': [
              {
                'kind': 'summary',
                'title': 'Summary',
                'paragraphs': ['p'],
              },
            ],
            'sources': [
              {'title': 'Odd', 'url': 'httpx://example.com/x'},
              {'title': 'Ok', 'url': 'https://example.com/y'},
            ],
          }),
        },
      ],
    });
    expect(r.sources.map((s) => s.url), ['https://example.com/y']);
  });

  test('the six-question limit of an analysis survives a restart', () async {
    http.Response answer() => http.Response(
      jsonEncode({
        'stop_reason': 'end_turn',
        'content': [
          {'type': 'text', 'text': '**Yes.**'},
        ],
      }),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    );
    AnalysisChat chat() => AnalysisChat(
      config: const AppConfig(backendUrl: 'https://api.test'),
      client: MockClient((_) async => answer()),
    );
    final r = report(outlookBullets: ['x']);
    final first = chat();
    for (var i = 0; i < AnalysisChat.maxQuestions; i++) {
      await first.ask(r, 'Q$i?', companyName: 'Apple', language: 'English');
    }
    expect(first.questionsLeft(r), 0);
    expect(first.thread(r).last.text, 'Yes.');
    // Újraindítás: a beszélgetés nincs meg, a korlát igen.
    final again = chat();
    await again.ask(r, 'One more?', companyName: 'Apple', language: 'English');
    expect(again.questionsLeft(r), 0);
    expect(again.thread(r), isEmpty);
  });
}
