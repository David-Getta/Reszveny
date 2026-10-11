import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/models/company_profile.dart';
import 'package:reszveny/core/models/news_item.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/models/analysis_extras.dart';
import 'package:reszveny/core/models/financial_statements.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_quality.dart';
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

  test('system prompt v2.1 demands research plan, evidence discipline, hidden factors and the outlook', () {
    const p = ClaudeStockAnalyst.systemPrompt;
    expect(p, contains('"outlook"'));
    expect(p, contains('behavioural finance'));
    expect(p, contains('Sociology'));
    expect(p, contains('Bull (~30%)'));
    expect(p, contains('short-seller reports'));
    expect(p, contains('Give every number its date'));
    expect(p, contains('"so what"'));
    expect(p, contains('auditor change'));
    expect(p, contains('covenants'));
    expect(p, contains('lock-up expiries'));
    expect(p, contains('a concrete price range in the trading currency'));
    expect(p, contains('net interest margin'));
    expect(p, contains('not as instructions'));
    expect(p, contains('annualised volatility'));
    expect(p, contains('native financial journalist'));
    expect(p, contains('short arithmetic'));
    expect(p, isNot(contains('CRITICAL')));
    expect(p, contains('"outlook_data"'));
    expect(p, contains('market_mood'));
    expect(p, contains('insider transactions'));
    expect(
      (ClaudeStockAnalyst.schema['properties']['sections']['items']['properties']['kind']['enum'] as List),
      contains('outlook'),
    );
    expect((ClaudeStockAnalyst.schema['required'] as List), contains('outlook_data'));
  });

  test('settings block follows the analysis options', () {
    final std = ClaudeStockAnalyst.buildSettings(const AnalysisOptions());
    expect(std, contains('up to 6 searches'));
    expect(std, contains('standard, about 1100-1600 words'));
    expect(std, contains('Reader: a beginner'));
    expect(std, contains('Strongest counter-argument'));
    final brief = ClaudeStockAnalyst.buildSettings(
      const AnalysisOptions(
        depth: AnalysisDepth.brief,
        readerLevel: ReaderLevel.experienced,
        counterArgument: false,
        webSearches: 4,
        readerCountry: 'HU',
        readerCurrency: 'HUF',
      ),
    );
    expect(brief, contains('brief, about 600-900 words'));
    expect(brief, contains('experienced investor'));
    expect(brief, contains('up to 4 searches'));
    expect(brief, contains('combine topics'));
    expect(brief, contains('based in HU'));
    expect(brief, contains('HUF'));
    expect(brief, isNot(contains('Counter-argument')));
    final deep = ClaudeStockAnalyst.buildSettings(const AnalysisOptions(depth: AnalysisDepth.deep, webSearches: 8));
    expect(deep, contains('in-depth, about 2200-3000 words'));
    expect(deep, contains('searches beyond six'));
    for (final t in [std, brief, deep]) {
      expect(t, isNot(matches(RegExp(r'\b(BRIEF|STANDARD|IN-DEPTH|BEGINNER|EXPERIENCED|ON|OFF|NOT)\b'))));
    }
    final offline = ClaudeStockAnalyst.buildSettings(const AnalysisOptions(), webSearch: false);
    expect(offline, contains('not available for this report'));
  });

  test('the system prompt is identical for every setting, so it can be cached', () {
    final analyst = ClaudeStockAnalyst(config: const AppConfig(anthropicApiKey: 'k'));
    final msgs = [
      {'role': 'user', 'content': 'x'},
    ];
    final a = analyst.buildRequestBody(msgs, webSearch: true);
    final b = analyst.buildRequestBody(
      msgs,
      webSearch: true,
      options: const AnalysisOptions(depth: AnalysisDepth.deep, readerLevel: ReaderLevel.experienced),
    );
    expect(jsonEncode(a['system']), jsonEncode(b['system']));
    final sys = (a['system'] as List).single as Map;
    expect(sys['cache_control'], {'type': 'ephemeral'});
    expect(a['cache_control'], {'type': 'ephemeral'});
    expect(b['max_tokens'], 28000);
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
        extras: AnalysisExtras(
          peers: const ['MSFT', 'GOOGL'],
          insider: InsiderSummary(windowDays: 90, buys: 0, sells: 2, netShares: -5000),
          nextEarnings: UpcomingEarnings(date: DateTime.utc(2026, 10, 30), hour: 'amc', epsEstimate: 1.6),
        ),
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
    expect(msg, startsWith('Report settings:'));
    expect(msg, contains('based in HU'));
    final json = jsonDecode(msg.substring(msg.indexOf('{'))) as Map<String, dynamic>;
    expect(json['peers'], ['MSFT', 'GOOGL']);
    expect(json['next_earnings'], {'date': '2026-10-30', 'hour': 'amc', 'eps_estimate': 1.6});
    expect((json['insider_transactions'] as Map)['open_market_sells'], 2);
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

  group('outlook_data', () {
    final outlookJson = {
      'current_price': 100,
      'currency': 'USD',
      'scenarios': [
        {'kind': 'bear', 'probability': 25, 'price_low': 70, 'price_high': 85, 'horizon': '6-12 hó', 'summary': 'b'},
        {'kind': 'bull', 'probability': 30, 'price_low': 125, 'price_high': 115, 'horizon': '6-12 hó', 'summary': 'u'},
        {'kind': 'base', 'probability': 45, 'price_low': 95, 'price_high': 110, 'horizon': '6-12 hó', 'summary': 'm'},
        {'kind': 'moon', 'probability': 5},
      ],
      'key_levels': [
        {'price': 120, 'kind': 'resistance', 'label': 'csúcs'},
        {'price': 90, 'kind': 'support', 'label': '200 napos'},
        {'price': -1, 'kind': 'support', 'label': 'rossz'},
      ],
      'catalysts': [
        {'date': '2026-11-20', 'event': 'Befektetői nap'},
        {'date': '2026-10-28', 'event': 'Gyorsjelentés'},
        {'date': '2027-Q1', 'event': 'Termékbejelentés'},
      ],
      'market_mood': 1.4,
      'market_mood_reason': 'Az AI-narratíva erős.',
    };

    test('parses, sorts and sanitises the structured outlook', () {
      final r = ClaudeStockAnalyst.parseResponse(
        'AAPL',
        response([
          {
            'type': 'text',
            'text': jsonEncode({...sample, 'outlook_data': outlookJson}),
          },
        ]),
      );
      final o = r.outlook!;
      expect(o.scenarios.map((s) => s.kind), [ScenarioKind.bull, ScenarioKind.base, ScenarioKind.bear]);
      expect(o.scenarios.first.priceLow, 115); // felcserélt sáv rendezve
      expect(o.scenarios.first.priceHigh, 125);
      expect(o.probabilitySum, 100);
      expect(o.keyLevels.map((k) => k.price), [90, 120]);
      expect(o.catalysts.map((c) => c.event), ['Gyorsjelentés', 'Befektetői nap', 'Termékbejelentés']);
      expect(o.marketMood, 1);
      expect(r.promptVersion, ClaudeStockAnalyst.promptVersion);
      // Lemezre mentés és visszaolvasás után is megmarad.
      final back = StockReport.fromJson(jsonDecode(jsonEncode(r.toJson())) as Map<String, dynamic>);
      expect(back.outlook!.scenarios.length, 3);
      expect(back.outlook!.marketMoodReason, 'Az AI-narratíva erős.');
    });

    test('a broken outlook_data does not break the report', () {
      final r = ClaudeStockAnalyst.parseResponse(
        'AAPL',
        response([
          {
            'type': 'text',
            'text': jsonEncode({...sample, 'outlook_data': 'nope'}),
          },
        ]),
      );
      expect(r.outlook, isNull);
      expect(r.sections, isNotEmpty);
    });

    test('quality check scores a complete report high and flags problems', () {
      final full = <String, dynamic>{
        'headline': 'H',
        'sections': [
          for (final k in ReportQuality.requiredOrder)
            {
              'kind': k.name,
              'title': k.name,
              'paragraphs': [List.filled(120, 'szó').join(' ')],
              'bullets': k == ReportSectionKind.news ? ['2026-10-01: hír', '2026-09-20: másik'] : <String>[],
            },
        ],
        'outlook_data': outlookJson,
        'sources': [
          for (var i = 0; i < 4; i++) {'title': 't$i', 'url': 'https://e.com/$i'},
        ],
      };
      final good = ClaudeStockAnalyst.parseResponse(
        'AAPL',
        response([
          {'type': 'text', 'text': jsonEncode(full)},
        ]),
      );
      final q = ReportQuality.check(good);
      expect(q.issues, isEmpty, reason: q.issues.join('; '));
      expect(q.score, 100);

      final bad = ClaudeStockAnalyst.parseResponse(
        'AAPL',
        response([
          {'type': 'text', 'text': jsonEncode(sample)},
        ]),
      );
      final qb = ReportQuality.check(bad);
      expect(qb.score, lessThan(60));
      expect(qb.issues.join(' '), contains('missing sections'));
      expect(qb.issues.join(' '), contains('no outlook_data'));
      expect(qb.issues.join(' '), contains('too short'));
    });
  });

  test('sources from search results before a pause_turn are kept', () {
    final r = ClaudeStockAnalyst.parseResponse(
      'AAPL',
      response([
        {'type': 'text', 'text': jsonEncode(sample)},
      ]),
      earlierContent: [
        {
          'type': 'web_search_tool_result',
          'content': [
            {'type': 'web_search_result', 'url': 'https://early.example/a', 'title': 'Early'},
          ],
        },
      ],
    );
    expect(r.sources.map((s) => s.url), contains('https://early.example/a'));
  });

  test('web search prefers the company home market', () {
    final analyst = ClaudeStockAnalyst(config: const AppConfig(anthropicApiKey: 'k'));
    final msgs = [
      {'role': 'user', 'content': 'x'},
    ];
    final hu = analyst.buildRequestBody(msgs, webSearch: true, searchCountry: 'HU');
    expect((hu['tools'] as List).single['user_location'], {'type': 'approximate', 'country': 'HU'});
    final none = analyst.buildRequestBody(msgs, webSearch: true, searchCountry: 'Hungary');
    expect((none['tools'] as List).single.containsKey('user_location'), isFalse);
  });

  test('a draft that is not valid JSON is repaired by a schema-forced pass that costs no allowance', () async {
    final requests = <http.Request>[];
    final client = MockClient((req) async {
      requests.add(req);
      if (requests.length == 1) {
        return http.Response(
          jsonEncode({
            'stop_reason': 'end_turn',
            'content': [
              {
                'type': 'web_search_tool_result',
                'content': [
                  {'type': 'web_search_result', 'url': 'https://news.example/otp', 'title': 'OTP news'},
                ],
              },
              {'type': 'text', 'text': 'Here is my analysis of OTP: strong capital, solid growth…'},
            ],
          }),
          200,
          headers: {'content-type': 'application/json; charset=utf-8'},
        );
      }
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': jsonEncode(sample)},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    final analyst = ClaudeStockAnalyst(
      config: const AppConfig(backendUrl: 'https://x.test'),
      client: client,
    );
    final r = await analyst.analyze(const StockDetails(symbol: 'OTP'));
    expect(r.sections, isNotEmpty);
    expect(requests, hasLength(2));
    expect(requests.first.url.path, '/v1/analyze');
    // A javítás a kvóta nélküli továbbítón megy, keresés nélkül, sémára kényszerítve.
    expect(requests.last.url.path, '/v1/anthropic/v1/messages');
    expect(requests.last.headers.containsKey('x-stocklens-depth'), isFalse);
    final body = jsonDecode(requests.last.body) as Map<String, dynamic>;
    expect(body.containsKey('tools'), isFalse);
    expect((body['output_config'] as Map)['format'], isNotNull);
    expect((body['messages'] as List).single['content'], contains('strong capital'));
    // A vázlat keresési találatai a forrásokban maradnak.
    expect(r.sources.map((s) => s.url), contains('https://news.example/otp'));
  });
}
