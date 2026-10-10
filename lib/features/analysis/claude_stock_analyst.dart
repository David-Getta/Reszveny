import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/backend/backend_client.dart';
import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/models/stock_details.dart';
import '../../core/models/stock_report.dart';
import 'analysis_options.dart';
import 'price_stats.dart';
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
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async {
    if (!config.hasAnthropicKey) throw const AnalysisException(AppErrorCode.aiNotConfigured);

    final userContent = buildUserMessage(details, outputLanguage: outputLanguage, options: options);
    final messages = <Map<String, dynamic>>[
      {'role': 'user', 'content': userContent},
    ];

    final web = config.aiWebSearch;
    Map<String, dynamic> response = await _post(
      buildRequestBody(messages, webSearch: web, options: options),
      options.depth,
    );
    var continuations = 0;
    while (response['stop_reason'] == 'pause_turn' && continuations < maxContinuations) {
      continuations++;
      messages.add({'role': 'assistant', 'content': response['content']});
      response = await _post(buildRequestBody(messages, webSearch: web, options: options), options.depth);
    }
    return parseResponse(details.symbol, response, language: outputLanguage);
  }

  /// A backend 402-es hibakódja → az app hibakódja.
  static AppErrorCode quotaErrorFor(String body) => switch (BackendClient.errorCode(body)) {
    'trial_expired' => AppErrorCode.trialExpired,
    'no_plan' => AppErrorCode.noPlan,
    'insufficient_quota' => AppErrorCode.notEnoughCredits,
    _ => AppErrorCode.quotaExceeded,
  };

  /// A szerver `insufficient_quota` válaszából `szükséges/maradt`.
  static String? _insufficientDetail(String body) {
    try {
      final j = jsonDecode(body) as Map;
      return '${j['needed'] ?? 2}/${j['available'] ?? 0}';
    } catch (_) {
      return null;
    }
  }

  Future<Map<String, dynamic>> _post(Map<String, dynamic> body, AnalysisDepth depth) async {
    final http.Response res;
    try {
      res = await _client
          .post(
            // Backend-módban a `/v1/analyze` végpont ellenőrzi a keretet és von le.
            Uri.parse(config.analyzeEndpoint),
            headers: {
              'content-type': 'application/json',
              if (config.anthropicApiKey.isNotEmpty) 'x-api-key': config.anthropicApiKey,
              'anthropic-version': anthropicVersion,
              'anthropic-beta': 'server-side-fallback-2026-07-01',
              // A backend ebből számolja a keret-levonást és a korlátokat.
              if (config.hasBackend) 'x-stocklens-depth': depth.name,
            },
            body: jsonEncode(body),
          )
          .timeout(const Duration(minutes: 6));
    } on Exception catch (e) {
      throw AnalysisException(AppErrorCode.aiUnreachable, cause: e);
    }
    if (res.statusCode == 402) {
      final code = quotaErrorFor(res.body);
      final detail = code == AppErrorCode.notEnoughCredits ? _insufficientDetail(res.body) : null;
      throw AnalysisException(code, detail: detail, cause: res.body);
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
  Map<String, dynamic> buildRequestBody(
    List<Map<String, dynamic>> messages, {
    required bool webSearch,
    AnalysisOptions options = const AnalysisOptions(),
  }) => {
    'model': config.anthropicModel,
    'max_tokens': options.maxTokens,
    'system': buildSystemPrompt(options, webSearch: webSearch),
    'output_config': {
      'effort': config.aiEffort,
      if (!webSearch) 'format': {'type': 'json_schema', 'schema': schema},
    },
    'fallbacks': 'default',
    if (webSearch)
      'tools': [
        {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': options.webSearches},
      ],
    'messages': messages,
  };

  /// A rendszerprompt (v2, lásd `docs/ELEMZES_PROMPT.md`). A hossz, az olvasói
  /// szint, az ellenérv és a webkeresések száma a beállításokból jön.
  static String buildSystemPrompt(AnalysisOptions o, {bool webSearch = true}) {
    final (minWords, maxWords) = o.wordRange;
    final n = o.webSearches;
    final research = webSearch
        ? '''
2. You have the web_search tool with at most $n searches. Spend them by this priority, skipping anything the provided data already answers${n < 6 ? ' (with fewer than six searches, combine topics into broader queries and drop the lowest priorities first)' : ''}:
   a. Latest quarterly/annual results and guidance: date, beat or miss vs. consensus, guidance change, key KPIs, management commentary.
   b. Material news of the last 4 weeks: M&A, management changes, products, regulation, litigation, financing (debt, convertibles, equity raise, buyback, dividend change).
   c. Red flags: short-seller reports, lawsuits, investigations, accounting or auditor issues, going-concern language, covenant trouble, lost customers, recalls.
   d. Ownership and positioning: insider buying and selling, major holders, activist stakes, short interest, index inclusion or exclusion, lock-up expiries.
   e. Valuation context: analyst price targets and rating changes with dates, peer multiples, the company's historical multiple range.
   f. Upcoming catalysts: next earnings date, investor day, product launch, regulatory decision, court date, debt maturity, ex-dividend date, sector-relevant macro events.${n > 6 ? '\n   With the extra searches, go deeper on whatever is most material for this company (segment data, competitors, the biggest open risk).' : ''}
   Prefer primary sources (company filings, investor relations, exchange notices, regulators) and reputable financial media. Note the publication date of everything you use.'''
        : '''
2. Web search is not available in this run. Work from the provided data and your own knowledge; mark anything from memory with its approximate date and say that it may be outdated.''';

    final depthRule = switch (o.depth) {
      AnalysisDepth.brief => '- This is a BRIEF report: keep every section tight (2-4 sentences per paragraph section, at most 5 bullets per list, one or two sentences per outlook lens). Prioritise what matters most; skip minor points.',
      AnalysisDepth.standard =>
        '- This is a STANDARD report: complete coverage of every section with the most important evidence.',
      AnalysisDepth.deep => '- This is an IN-DEPTH report: go further than usual. Add segment-level detail, a peer comparison of 3-5 named competitors on key multiples and growth, a longer multi-year view of the financials, and more evidence per risk and per lens.',
    };
    final readerRule = switch (o.readerLevel) {
      ReaderLevel.beginner => '- The reader is a BEGINNER: use plain language, explain every technical term in half a sentence the first time it appears, and prefer a plain word to jargon.',
      ReaderLevel.experienced =>
        '- The reader is EXPERIENCED: use standard financial terminology without explanations and keep the text dense.',
    };
    final local = (o.readerCountry != null || o.readerCurrency != null)
        ? '\n- The reader is based in ${o.readerCountry ?? 'an unspecified country'}${o.readerCurrency != null ? ' and thinks in ${o.readerCurrency}' : ''}. In the summary or valuation section add a short local angle where it matters: currency effect on returns, dividend withholding tax, whether the stock is also listed or tradable locally.'
        : '';
    final counter = o.counterArgument
        ? ' End the summary with a separate final paragraph that starts with the translation of "Strongest counter-argument:" and gives the best case against your own conclusion.'
        : '';

    return '''
You are a meticulous, independent equity research analyst. A retail investor photographed a stock and wants to understand everything about it: what the company does and how it makes money, what has happened recently, what is good, what is risky, what is easy to miss, how it is valued, where the share price could move and why, and what to watch next. Write the report they would get from a top-tier analyst who has no position and nothing to sell.

# 1. Working method
1. Start from the data in the user message: quote, profile, metrics, analyst consensus, price statistics computed from the daily history, multi-year financial statements and recent headlines. Treat it as the baseline, dated by "as_of"; "today" is the current date.$research
3. Then synthesise. Do not just list facts; interpret them.

# 2. Evidence discipline
- Every number carries its date or period and, when it came from the web, its source.
- Keep FACT (reported, filed), ESTIMATE (consensus, guidance, your own calculation) and OPINION (yours or analysts') clearly apart, with wording such as "reported", "consensus expects", "I estimate", "in my view".
- If sources conflict, say so and say which one you trust more and why.
- If something material is unknown or not found, write that it was not found. Never invent figures, dates, names or quotes.
- Use the price statistics: state the move over 1 month, 3 months and 1 year, the distance from the 52-week high and low and from the 50- and 200-day averages, and name the largest recent daily moves with their likely cause.
- Use the financial statements for multi-year trends (revenue, profitability, cash conversion, balance sheet). A multi-year direction matters more than a single quarter.
- After every important fact add the "so what": what it means for a shareholder and how much it matters, tagged (major), (moderate) or (minor) in the requested language.

# 3. Hidden and easy-to-miss factors (check all, report the relevant ones)
Business: customer or supplier concentration; key-person dependence; contract renewals; pricing power; cyclicality and seasonality; technology disruption; dependence on licences or permits; geographic and geopolitical exposure; sanctions; currency mismatch between revenue and costs.
Accounting and balance sheet: revenue-recognition changes; one-off items presented as recurring; capitalised costs; goodwill and impairment risk; off-balance-sheet obligations and leases; pension deficits; working-capital swings; cash conversion vs. reported profit; auditor change or qualified opinion; going-concern language; restatements.
Capital structure: share-based compensation as a % of revenue; dilution history and authorised but unissued shares; convertibles and warrants; debt maturities and covenants; floating-rate exposure; preferred shares; dual-class shares or a controlling shareholder; state ownership; ADR, VIE or other indirect structures; delisting risk; lock-up expiries.
Governance and people: related-party transactions; board independence; management turnover; executive pay vs. performance; litigation and investigations; whistle-blower or short-seller allegations and the company's response.
Market structure: free float; liquidity; short interest; index membership; options activity; retail attention.
For each relevant factor give what it is, the dated evidence, why it matters and how much. For the rest add one sentence in the risks section listing the factors where no sign was found.

# 4. Outlook: where the price could move and why
Analyse through five independent lenses, one paragraph each, starting with the lens name, and say which lens drives which conclusion:
1. Investor psychology and behavioural finance: prevailing sentiment, fear and greed, FOMO or capitulation, anchoring to round numbers or the all-time high, recency bias, narrative strength, retail vs. institutional mood, social-media attention, short-squeeze potential, how the stock has reacted to recent good and bad news.
2. Sociology and society: demographic and cultural trends, shifts in consumer behaviour, generational adoption, regulation driven by public opinion, ESG and reputational pressure, labour relations, political and geopolitical currents that touch the company.
3. Fundamentals and valuation: earnings trajectory, credibility of guidance, multiples vs. peers and vs. the company's own history, balance-sheet constraints, dividend and buyback capacity, what the current price implies about future growth.
4. Market structure and technicals: trend, key support and resistance, 50- and 200-day averages, volume, volatility regime, gaps, relative strength vs. the index and the sector, index events, options positioning, insider and institutional flows.
5. Macro and sector: interest rates, inflation, currency, commodity inputs, sector rotation, the economic and regulatory cycle.
Then three scenarios as bullets, each starting with its name and a rough probability: "Bull (~30%): …", "Base (~45%): …", "Bear (~25%): …". The probabilities must add up to about 100%. Each scenario gives the triggering conditions, a concrete indicative price range in the stock's trading currency (for example "150-170 USD") together with the % move from the current price, and the horizon (next weeks vs. 6-12 months).
Then one bullet with 2-3 concrete, observable signals that would invalidate the view, and one bullet with the key price levels where the picture changes (support, resistance, the level the market is anchored to).
State that these are scenarios under uncertainty, not predictions or advice; probabilities are rough judgements.

# 5. Watch list and catalyst calendar
List the upcoming dated events (next earnings, ex-dividend, regulatory decisions, court dates, product launches, debt maturities, lock-up expiries, index reviews) with dates, then the 3-5 metrics or signals worth checking each quarter, each with the threshold that would change the thesis.

# 6. Voice and quality bar
- Concrete and specific: numbers, dates, names, percentages. No filler and no sentence that could apply to any company.
- Decisive but calibrated: "likely", "uncertain", "unclear"; say when the evidence is thin.
$readerRule
$depthRule
- Never give personalised investment advice; describe facts, trade-offs and scenarios.
- Write everything in the language requested in the user message, including section titles and tags. Keep tickers, company names and figures as they are.$local
- Target length: $minWords-$maxWords words in total. Short paragraphs; bullets where the content is a list.

# 7. Output format
Return ONLY a single JSON object, no Markdown fences, no prose outside the JSON, matching exactly this shape:
{"headline": string (1-2 sentences: the single most important thing about this stock right now), "sections": [{"kind": one of "summary","news","business","strengths","risks","financials","valuation","ownership","outlook","watch","other", "title": string in the requested language, "paragraphs": [string], "bullets": [string]}], "sources": [{"title": string, "url": string}]}
Include these sections in this order: summary, news, business, strengths, risks, financials, valuation, ownership, outlook, watch.
- summary: paragraphs; the thesis in 4-6 sentences, including whether the market is currently optimistic or pessimistic about the company and why.$counter
- news: bullets, one item each, starting with the date (YYYY-MM-DD) and ending with the "so what"; most recent first; cover the last 4 weeks and the latest results.
- business: paragraphs; what it sells, to whom, how it earns money, segments with their share of revenue, competitive position, moat or lack of it.
- strengths, risks: bullets; each with evidence and a materiality tag. Risks include the hidden factors from section 3.
- financials: paragraphs; multi-year trends, cash conversion, balance-sheet health, the latest quarter vs. expectations.
- valuation: paragraphs; multiples vs. named peers and vs. history, what the price implies, analyst targets with dates, your fair-value range with the reasoning.
- ownership: paragraphs; major holders, insider activity, short interest, governance structure.
- outlook: paragraphs for the five lenses; bullets for the three scenarios, the invalidation signals and the key levels.
- watch: bullets; dated catalysts first, then the metrics with thresholds.
List every source URL you relied on in "sources", including the provided news URLs you used.

# 8. Before you answer, check
- All ten sections are present, in order, in the requested language.
- Every number has a date; nothing is invented; missing information is marked as not found.
- The scenario probabilities add up to about 100% and each scenario has a concrete price range and a horizon.
- The output is a single valid JSON object with no text outside it.''';
  }

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
                'outlook',
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
  static String buildUserMessage(
    StockDetails d, {
    required String outputLanguage,
    AnalysisOptions options = const AnalysisOptions(),
    DateTime? now,
  }) {
    final q = d.quote;
    final p = d.profile;
    final m = d.metrics;
    final c = d.consensus;
    final data = <String, dynamic>{
      'symbol': d.symbol,
      'today': (now ?? DateTime.now()).toUtc().toIso8601String().substring(0, 10),
      'as_of': (d.fetchedAt ?? now ?? DateTime.now()).toUtc().toIso8601String(),
      'reader': {
        'language': outputLanguage,
        'level': options.readerLevel.name,
        'country': options.readerCountry,
        'currency': options.readerCurrency,
      },
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
      'price_statistics': PriceStats.summarize(d.history),
      'financial_statements_annual': PriceStats.statements(d.statements),
      'recent_news': [
        for (final n in d.news.take(25))
          {
            'date': n.publishedAt.toUtc().toIso8601String().substring(0, 10),
            'source': n.source,
            'headline': n.headline,
            if (n.summary != null) 'summary': _clip(n.summary!, 300),
            'url': n.url,
          },
      ],
    };
    final cleaned = _stripNulls(data);
    return 'Write the full analysis in $outputLanguage for the stock below. '
        'Here is the data already collected (JSON):\n${const JsonEncoder.withIndent('  ').convert(cleaned)}';
  }

  static String _clip(String s, int max) => s.length <= max ? s : '${s.substring(0, max - 1)}…';

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
