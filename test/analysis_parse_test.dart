import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/models/company_profile.dart';
import 'package:reszveny/core/models/news_item.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';

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
    expect(r.sections.map((s) => s.kind), [ReportSectionKind.summary, ReportSectionKind.news, ReportSectionKind.other]);
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
