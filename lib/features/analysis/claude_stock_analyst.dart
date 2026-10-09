import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/models/stock_details.dart';
import '../../core/models/stock_report.dart';
import 'stock_analyst.dart';

/// Átfogó részvény-elemzés a Claude API-val.
///
/// A modell megkapja a letöltött adatokat (árfolyam, profil, mutatók, az
/// elmúlt 30 nap hírei, elemzői konszenzus), és – ha engedélyezett – a
/// beépített webkereséssel friss híreket, gyorsjelentéseket, kockázatokat is
/// megkeres. A válasz egy rögzített szerkezetű JSON, amit szekciókként
/// jelenítünk meg.
class ClaudeStockAnalyst implements StockAnalyst {
  ClaudeStockAnalyst({required this.config, http.Client? client}) : _client = client ?? http.Client();

  final AppConfig config;
  final http.Client _client;

  static const String anthropicVersion = '2023-06-01';

  /// Hány webkeresést engedünk egy elemzéshez.
  static const int maxWebSearches = 6;

  /// A szerveroldali eszköz-ciklus `pause_turn` után ennyiszer folytatjuk.
  static const int maxContinuations = 3;

  @override
  String get name => 'Claude';

  @override
  Future<StockReport> analyze(StockDetails details, {String outputLanguage = 'English'}) async {
    if (!config.hasAnthropicKey) throw const AnalysisException(AppErrorCode.aiNotConfigured);

    final userContent = buildUserMessage(details, outputLanguage: outputLanguage);
    final messages = <Map<String, dynamic>>[
      {'role': 'user', 'content': userContent},
    ];

    Map<String, dynamic> response = await _post(buildRequestBody(messages, webSearch: config.aiWebSearch));
    var continuations = 0;
    while (response['stop_reason'] == 'pause_turn' && continuations < maxContinuations) {
      continuations++;
      messages.add({'role': 'assistant', 'content': response['content']});
      response = await _post(buildRequestBody(messages, webSearch: config.aiWebSearch));
    }
    return parseResponse(details.symbol, response, language: outputLanguage);
  }

  Future<Map<String, dynamic>> _post(Map<String, dynamic> body) async {
    final http.Response res;
    try {
      res = await _client
          .post(
            Uri.parse('${config.anthropicBaseUrl}/v1/messages'),
            headers: {
              'content-type': 'application/json',
              'x-api-key': config.anthropicApiKey,
              'anthropic-version': anthropicVersion,
              'anthropic-beta': 'server-side-fallback-2026-07-01',
            },
            body: jsonEncode(body),
          )
          .timeout(const Duration(minutes: 4));
    } on Exception catch (e) {
      throw AnalysisException(AppErrorCode.aiUnreachable, cause: e);
    }
    if (res.statusCode != 200) {
      throw AnalysisException(AppErrorCode.aiHttp, detail: '${res.statusCode}', cause: res.body);
    }
    try {
      return jsonDecode(res.body) as Map<String, dynamic>;
    } on FormatException catch (e) {
      throw AnalysisException(AppErrorCode.aiBadResponse, cause: e);
    }
  }

  /// A Messages API kérés törzse. Webkereséssel a JSON-formátum kényszerítése
  /// nem elérhető, ezért akkor a promptban kérjük a tiszta JSON-t.
  Map<String, dynamic> buildRequestBody(List<Map<String, dynamic>> messages, {required bool webSearch}) => {
    'model': config.anthropicModel,
    'max_tokens': 16000,
    'system': systemPrompt,
    'output_config': {
      'effort': config.aiEffort,
      if (!webSearch) 'format': {'type': 'json_schema', 'schema': schema},
    },
    'fallbacks': 'default',
    if (webSearch)
      'tools': [
        {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': maxWebSearches},
      ],
    'messages': messages,
  };

  static const String systemPrompt = '''
You are a meticulous equity research analyst writing for a retail investor who photographed a stock and wants to understand everything about it: what the company does, how it makes money, what has happened recently, what is good, what is risky, what is easy to miss, how it is valued, and what to watch next.

Rules:
- Be concrete and specific: numbers, dates, names, percentages. Prefer facts over generic statements.
- Summarise the recent news (last few weeks) with dates and sources. When the web search tool is available, use it to find the latest news, earnings results, guidance changes, regulatory, legal or management events, insider and institutional activity, short interest, dilution or buybacks, debt maturities and anything material that a careful investor would want to know. Prefer primary or reputable financial sources.
- Explicitly cover hidden or less obvious factors: customer or supplier concentration, regulatory exposure, litigation, accounting quirks, share-based compensation, convertible debt, related-party issues, governance, dual-class shares, geopolitical exposure, currency risk, cyclicality.
- Never give personalised investment advice; describe facts and trade-offs. State uncertainty where data is missing.
- Write everything in the language requested in the user message. Keep tickers, company names and figures as they are.
- Return ONLY a single JSON object, no Markdown fences, no prose outside the JSON, matching exactly this shape:
{"headline": string (1-2 sentences), "sections": [{"kind": one of "summary","news","business","strengths","risks","financials","valuation","ownership","watch","other", "title": string in the requested language, "paragraphs": [string], "bullets": [string]}], "sources": [{"title": string, "url": string}]}
Include these sections in this order: summary, news, business, strengths, risks, financials, valuation, ownership, watch. Use bullets for news (one news item per bullet, starting with the date), strengths, risks and watch; paragraphs elsewhere. Aim for roughly 700-1100 words in total. List every source URL you relied on in "sources".''';

  /// A válasz sémája (csak webkeresés nélkül kényszeríthető).
  static const Map<String, dynamic> schema = {
    'type': 'object',
    'properties': {
      'headline': {'type': 'string'},
      'sections': {
        'type': 'array',
        'items': {
          'type': 'object',
          'properties': {
            'kind': {
              'type': 'string',
              'enum': [
                'summary',
                'news',
                'business',
                'strengths',
                'risks',
                'financials',
                'valuation',
                'ownership',
                'watch',
                'other',
              ],
            },
            'title': {'type': 'string'},
            'paragraphs': {
              'type': 'array',
              'items': {'type': 'string'},
            },
            'bullets': {
              'type': 'array',
              'items': {'type': 'string'},
            },
          },
          'required': ['kind', 'title', 'paragraphs', 'bullets'],
          'additionalProperties': false,
        },
      },
      'sources': {
        'type': 'array',
        'items': {
          'type': 'object',
          'properties': {
            'title': {'type': 'string'},
            'url': {'type': 'string'},
          },
          'required': ['title', 'url'],
          'additionalProperties': false,
        },
      },
    },
    'required': ['headline', 'sections', 'sources'],
    'additionalProperties': false,
  };

  /// A felhasználói üzenet: a letöltött adatok tömör, géppel olvasható formában.
  static String buildUserMessage(StockDetails d, {required String outputLanguage}) {
    final q = d.quote;
    final p = d.profile;
    final m = d.metrics;
    final c = d.consensus;
    final data = <String, dynamic>{
      'symbol': d.symbol,
      'as_of': (d.fetchedAt ?? DateTime.now()).toUtc().toIso8601String(),
      if (p != null)
        'profile': {
          'name': p.name,
          'exchange': p.exchange,
          'currency': p.currency,
          'country': p.country,
          'industry': p.industry,
          'sector': p.sector,
          'isin': p.isin,
          'website': p.website,
          'ipo_date': p.ipoDate?.toIso8601String().substring(0, 10),
          'market_cap': p.marketCap,
          'shares_outstanding': p.sharesOutstanding,
          'employees': p.employees,
          'ceo': p.ceo,
          'headquarters': p.headquarters,
          'description': p.description,
        },
      if (q != null)
        'quote': {
          'price': q.price,
          'change': q.change,
          'change_percent': q.changePercent,
          'open': q.open,
          'high': q.high,
          'low': q.low,
          'previous_close': q.previousClose,
        },
      if (m != null)
        'metrics': {
          'pe_trailing': m.peTrailing,
          'pe_forward': m.peForward,
          'pb': m.pb,
          'ps': m.ps,
          'peg': m.peg,
          'eps_ttm': m.eps,
          'dividend_yield_percent': m.dividendYield,
          'dividend_per_share': m.dividendPerShare,
          'payout_ratio_percent': m.payoutRatio,
          'beta': m.beta,
          'week52_high': m.week52High,
          'week52_low': m.week52Low,
          'avg_volume_10d': m.averageVolume10d,
          'revenue_ttm': m.revenueTtm,
          'net_income_ttm': m.netIncomeTtm,
          'gross_margin_percent': m.grossMargin,
          'operating_margin_percent': m.operatingMargin,
          'net_margin_percent': m.netMargin,
          'roe_percent': m.roe,
          'roa_percent': m.roa,
          'debt_to_equity': m.debtToEquity,
          'current_ratio': m.currentRatio,
          'revenue_growth_yoy_percent': m.revenueGrowth,
          'eps_growth_yoy_percent': m.epsGrowth,
        },
      if (c != null)
        'analyst_consensus': {
          'period': c.period.toIso8601String().substring(0, 10),
          'strong_buy': c.strongBuy,
          'buy': c.buy,
          'hold': c.hold,
          'sell': c.sell,
          'strong_sell': c.strongSell,
        },
      'recent_news': [
        for (final n in d.news.take(25))
          {
            'date': n.publishedAt.toUtc().toIso8601String().substring(0, 10),
            'source': n.source,
            'headline': n.headline,
            if (n.summary != null) 'summary': n.summary,
            'url': n.url,
          },
      ],
    };
    final cleaned = _stripNulls(data);
    return 'Write the full analysis in $outputLanguage for the stock below. '
        'Here is the data already collected (JSON):\n${const JsonEncoder.withIndent('  ').convert(cleaned)}';
  }

  static Object? _stripNulls(Object? v) {
    if (v is Map) {
      final out = <String, dynamic>{};
      v.forEach((k, val) {
        final s = _stripNulls(val);
        if (s != null) out[k as String] = s;
      });
      return out;
    }
    if (v is List) return v.map(_stripNulls).where((e) => e != null).toList();
    return v;
  }

  /// A Messages API válaszából kiolvassa az elemzést. A szöveget több
  /// `text` blokk is adhatja (webkeresés közben), ezeket összefűzzük, és a
  /// JSON-t az első `{` és az utolsó `}` között keressük.
  static StockReport parseResponse(String symbol, Map<String, dynamic> json, {String? language}) {
    final stop = json['stop_reason'];
    if (stop == 'refusal') throw const AnalysisException(AppErrorCode.aiRefused);

    final content = ((json['content'] as List?) ?? const []).cast<Map<String, dynamic>>();
    final text = content.where((b) => b['type'] == 'text').map((b) => b['text'] as String? ?? '').join();
    final payload = extractJsonObject(text);
    if (payload == null) throw const AnalysisException(AppErrorCode.aiBadResponse);

    final sections = ((payload['sections'] as List?) ?? const [])
        .map((s) => ReportSection.fromJson((s as Map).cast<String, dynamic>()))
        .where((s) => !s.isEmpty)
        .toList();
    if (sections.isEmpty) throw const AnalysisException(AppErrorCode.aiBadResponse);

    final sources = ((payload['sources'] as List?) ?? const [])
        .map((s) => ReportSource.fromJson((s as Map).cast<String, dynamic>()))
        .where((s) => s.url.startsWith('http'))
        .toList();

    // A webkeresés találatainak URL-jei is bekerülnek a forrásokba, ha a
    // modell nem sorolta fel őket.
    final seen = sources.map((s) => s.url).toSet();
    for (final block in content.where((b) => b['type'] == 'web_search_tool_result')) {
      final results = block['content'];
      if (results is! List) continue;
      for (final r in results.cast<Map<String, dynamic>>()) {
        final url = r['url'] as String?;
        if (url == null || !seen.add(url)) continue;
        sources.add(
          ReportSource(
            title: (r['title'] as String?)?.trim().isNotEmpty == true ? r['title'] as String : url,
            url: url,
          ),
        );
      }
    }

    return StockReport(
      symbol: symbol,
      headline: (payload['headline'] as String? ?? '').trim(),
      sections: sections,
      sources: sources,
      generatedAt: DateTime.now(),
      language: language,
    );
  }

  /// Kiszedi az első teljes JSON-objektumot a szövegből (tűri a ``` kerítést
  /// és a körülötte lévő prózát).
  static Map<String, dynamic>? extractJsonObject(String text) {
    final start = text.indexOf('{');
    final end = text.lastIndexOf('}');
    if (start < 0 || end <= start) return null;
    try {
      final v = jsonDecode(text.substring(start, end + 1));
      return v is Map<String, dynamic> ? v : null;
    } on FormatException {
      return null;
    }
  }
}
