import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/models/company_profile.dart';
import 'package:reszveny/core/models/news_item.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/models/financial_statements.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/billing/plan.dart';

Map<String, dynamic> response(List<Map<String, dynamic>> content, {String stop = 'end_turn'}) => {
  'id': 'msg',
  'stop_reason': stop,
  'content': content,
};

const sample = {
  'headline': 'Apple is a cash machine with a slowing iPhone cycle.',
  'sections': [
    {
      'kind': 'summary',
      'title': 'Összefoglaló',
      'paragraphs': ['A', 'B'],
      'bullets': [],
    },
    {
      'kind': 'news',
      'title': 'Hírek',
      'paragraphs': [],
      'bullets': ['2026-10-01: X', '2026-10-05: Y'],
    },
    {
      'kind': 'outlook',
      'title': 'Kilátások',
      'paragraphs': ['P'],
      'bullets': ['Bull (~30%): x', 'Base (~45%): y', 'Bear (~25%): z'],
    },
    {
      'kind': 'weird',
      'title': 'Egyéb',
      'paragraphs': ['C'],
      'bullets': [],
    },
    {'kind': 'risks', 'title': 'Üres', 'paragraphs': [], 'bullets': []},
  ],
  'sources': [
    {'title': 'Apple IR', 'url': 'https://investor.apple.com'},
    {'title': 'bad', 'url': 'not a url'},
  ],
};

void main() {
  test('parseResponse builds a report, drops empty sections and bad sources', () {
    final r = ClaudeStockAnalyst.parseResponse(
      'AAPL',
      response([
        {'type': 'text', 'text': jsonEncode(sample)},
      ]),
      language: 'Hungarian',
    );
    expect(r.headline, startsWith('Apple'));
    expect(r.sections.map((s) => s.kind), [
      ReportSectionKind.summary,
      ReportSectionKind.news,
      ReportSectionKind.outlook,
      ReportSectionKind.other,
    ]);
    expect(r.sections[1].bullets, hasLength(2));
    expect(r.sources.map((s) => s.url), ['https://investor.apple.com']);
    expect(r.language, 'Hungarian');
  });

  test('parseResponse tolerates prose and fences around the JSON and merges web search sources', () {
    final text = 'Here is the analysis:\n```json\n${jsonEncode(sample)}\n```\nDone.';
    final r = ClaudeStockAnalyst.parseResponse(
      'AAPL',
      response([
        {
          'type': 'server_tool_use',
          'id': 's1',
          'name': 'web_search',
          'input': {'query': 'Apple news'},
        },
        {
          'type': 'web_search_tool_result',
          'tool_use_id': 's1',
          'content': [
            {'type': 'web_search_result', 'url': 'https://example.com/a', 'title': 'Article A'},
            {'type': 'web_search_result', 'url': 'https://investor.apple.com', 'title': 'dup'},
          ],
        },
        {'type': 'text', 'text': text},
      ]),
    );
    expect(r.sources.map((s) => s.url), ['https://investor.apple.com', 'https://example.com/a']);
    expect(r.sources.last.title, 'Article A');
  });

  test('parseResponse errors are typed', () {
    expect(
      () => ClaudeStockAnalyst.parseResponse('AAPL', response([], stop: 'refusal')),
      throwsA(isA<AnalysisException>().having((e) => e.code, 'code', AppErrorCode.aiRefused)),
    );
    expect(
      () => ClaudeStockAnalyst.parseResponse(
        'AAPL',
        response([
          {'type': 'text', 'text': 'no json here'},
        ]),
      ),
      throwsA(isA<AnalysisException>().having((e) => e.code, 'code', AppErrorCode.aiBadResponse)),
    );
  });

  test('system prompt v2 demands research plan, evidence discipline, hidden factors and the outlook', () {
    final p = ClaudeStockAnalyst.buildSystemPrompt(const AnalysisOptions());
    expect(p, contains('"outlook"'));
    expect(p, contains('behavioural finance'));
    expect(p, contains('Sociology'));
    expect(p, contains('Bull (~30%)'));
    expect(p, contains('at most 6 searches'));
    expect(p, contains('short-seller reports'));
    expect(p, contains('Every number carries its date'));
    expect(p, contains('"so what"'));
    expect(p, contains('auditor change'));
    expect(p, contains('covenants'));
    expect(p, contains('lock-up expiries'));
    expect(p, contains('concrete indicative price range'));
    expect(p, contains('1100-1600 words'));
    expect(p, contains('BEGINNER'));
    expect(p, contains('Strongest counter-argument'));
    expect(
      (ClaudeStockAnalyst.schema['properties']['sections']['items']['properties']['kind']['enum'] as List),
      contains('outlook'),
    );
  });

  test('system prompt follows the analysis options', () {
    final brief = ClaudeStockAnalyst.buildSystemPrompt(
      const AnalysisOptions(
        depth: AnalysisDepth.brief,
        readerLevel: ReaderLevel.experienced,
        counterArgument: false,
        webSearches: 4,
        readerCountry: 'HU',
        readerCurrency: 'HUF',
      ),
    );
    expect(brief, contains('BRIEF'));
    expect(brief, contains('600-900 words'));
    expect(brief, contains('EXPERIENCED'));
    expect(brief, contains('at most 4 searches'));
    expect(brief, contains('combine topics'));
    expect(brief, contains('based in HU'));
    expect(brief, contains('HUF'));
    expect(brief, isNot(contains('Strongest counter-argument')));
    final deep = ClaudeStockAnalyst.buildSystemPrompt(const AnalysisOptions(depth: AnalysisDepth.deep, webSearches: 8));
    expect(deep, contains('IN-DEPTH'));
    expect(deep, contains('2200-3000 words'));
    expect(deep, contains('extra searches'));
    final offline = ClaudeStockAnalyst.buildSystemPrompt(const AnalysisOptions(), webSearch: false);
    expect(offline, contains('Web search is not available'));
  });

  test('analysis options: cost, tokens and web searches by plan', () {
    expect(const AnalysisOptions(depth: AnalysisDepth.deep).cost, 2);
    expect(const AnalysisOptions(depth: AnalysisDepth.brief).cost, 1);
    expect(AnalysisOptions.searchesFor(PlanTier.normal, AnalysisDepth.standard), 4);
    expect(AnalysisOptions.searchesFor(PlanTier.normal, AnalysisDepth.brief), 2);
    expect(AnalysisOptions.searchesFor(PlanTier.ultra, AnalysisDepth.deep), 12);
    expect(AnalysisOptions.searchesFor(null, AnalysisDepth.standard), 6);
  });

  test('user message carries price statistics, statements, reader and today', () {
    final points = [
      for (var i = 0; i < 400; i++)
        PricePoint(
          time: DateTime.utc(2025, 9, 1).add(Duration(days: i)),
          close: 100 + i * 0.1,
          volume: 1000,
        ),
    ];
    final msg = ClaudeStockAnalyst.buildUserMessage(
      StockDetails(
        symbol: 'AAPL',
        history: PriceHistory(symbol: 'AAPL', points: points),
        statements: const FinancialStatements(
          symbol: 'AAPL',
          years: [
            AnnualFinancials(fiscalYear: 2025, revenue: 120, netIncome: 30),
            AnnualFinancials(fiscalYear: 2024, revenue: 100, netIncome: 20),
          ],
        ),
        news: [
          NewsItem(
            headline: 'H',
            source: 'S',
            url: 'https://x',
            publishedAt: DateTime.utc(2026, 10, 1),
            summary: 'y' * 1000,
          ),
        ],
      ),
      outputLanguage: 'Hungarian',
      options: const AnalysisOptions(readerCountry: 'HU', readerCurrency: 'HUF'),
      now: DateTime.utc(2026, 10, 10),
    );
    final json = jsonDecode(msg.substring(msg.indexOf('{'))) as Map<String, dynamic>;
    expect(json['today'], '2026-10-10');
    expect(json['reader'], {'language': 'Hungarian', 'level': 'beginner', 'country': 'HU', 'currency': 'HUF'});
    final stats = json['price_statistics'] as Map<String, dynamic>;
    expect(stats['return_1y_percent'], greaterThan(0));
    expect(stats.containsKey('sma_200'), isTrue);
    expect((stats['largest_daily_moves_30d'] as List).length, 3);
    final fs = json['financial_statements_annual'] as List;
    expect(fs.first['revenue_growth_percent'], 20.0);
    expect(fs.first['net_margin_percent'], 25.0);
    expect((json['recent_news'] as List).first['summary'].length, 300);
  });

  test('request body enables web search without forced JSON format, and the reverse', () {
    final analyst = ClaudeStockAnalyst(
      config: const AppConfig(anthropicApiKey: 'k', aiEffort: 'high'),
    );
    final msgs = [
      {'role': 'user', 'content': 'x'},
    ];
    final withSearch = analyst.buildRequestBody(msgs, webSearch: true);
    expect((withSearch['tools'] as List).first['type'], 'web_search_20260209');
    expect((withSearch['output_config'] as Map).containsKey('format'), isFalse);
    expect((withSearch['output_config'] as Map)['effort'], 'high');
    expect(withSearch['fallbacks'], 'default');

    final noSearch = analyst.buildRequestBody(msgs, webSearch: false);
    expect(noSearch.containsKey('tools'), isFalse);
    expect(((noSearch['output_config'] as Map)['format'] as Map)['type'], 'json_schema');
  });

  test('user message carries the collected data and the output language', () {
    final details = StockDetails(
      symbol: 'AAPL',
      quote: const StockQuote(symbol: 'AAPL', price: 231.45, change: 2.15, changePercent: 0.94),
      profile: const CompanyProfile(symbol: 'AAPL', name: 'Apple Inc.', currency: 'USD'),
      news: [
        NewsItem(
          headline: 'Apple launches',
          url: 'https://x',
          publishedAt: DateTime.utc(2026, 10, 1),
          source: 'Reuters',
        ),
      ],
    );
    final msg = ClaudeStockAnalyst.buildUserMessage(details, outputLanguage: 'Hungarian');
    expect(msg, contains('in Hungarian'));
    expect(msg, contains('"price": 231.45'));
    expect(msg, contains('"headline": "Apple launches"'));
    expect(msg, isNot(contains('null')));
  });

  test('StockReport survives a JSON round trip (disk cache)', () {
    final r = ClaudeStockAnalyst.parseResponse(
      'AAPL',
      response([
        {'type': 'text', 'text': jsonEncode(sample)},
      ]),
    );
    final back = StockReport.fromJson(jsonDecode(jsonEncode(r.toJson())) as Map<String, dynamic>);
    expect(back.sections.length, r.sections.length);
    expect(back.headline, r.headline);
  });
}
