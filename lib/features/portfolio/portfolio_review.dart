import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/models/company_profile.dart';
import '../../core/models/stock_metrics.dart';
import '../../core/models/stock_report.dart';
import '../analysis/analysis_chat.dart';
import '../analysis/claude_stock_analyst.dart';
import '../market_data/market_data_provider.dart';
import 'portfolio_valuation.dart';

/// Egy pozíció adatai a portfólióelemzéshez.
class ReviewHolding {
  const ReviewHolding({
    required this.symbol,
    required this.weight,
    required this.currency,
    this.name,
    this.sector,
    this.country,
    this.gainPercent,
    this.peTrailing,
    this.dividendYield,
    this.beta,
  });

  final String symbol;
  final String? name;
  final String? sector;
  final String? country;
  final String currency;

  /// Súly a portfólióban (%).
  final double weight;
  final double? gainPercent;
  final double? peTrailing;
  final double? dividendYield;
  final double? beta;

  Map<String, dynamic> toJson() => {
    'symbol': symbol,
    'name': ?name,
    'sector': ?sector,
    // Cégprofil nélkül (ETF, alap, letéti jegy): a modell kosárként kezelje.
    if (name == null && sector == null) 'note': 'no company profile – probably an ETF, a fund or a depositary receipt',
    'country': ?country,
    'currency': currency,
    'weight_pct': double.parse(weight.toStringAsFixed(1)),
    if (gainPercent != null) 'gain_pct': double.parse(gainPercent!.toStringAsFixed(1)),
    'pe_ttm': ?peTrailing,
    'dividend_yield_pct': ?dividendYield,
    'beta': ?beta,
  };
}

/// AI-portfólióelemzés: az egész portfólió (koncentráció, szektor- és
/// devizakitettség, közös kockázatok, osztalék) egy elemzésnyi keretért. A
/// legutóbbi eredményt a készüléken őrzi.
class PortfolioReviewer {
  PortfolioReviewer({required this.config, required this.marketData, http.Client? client, DateTime Function()? clock})
    : _client = client ?? http.Client(),
      _clock = clock ?? DateTime.now;

  final AppConfig config;
  final MarketDataProvider marketData;
  final http.Client _client;
  final DateTime Function() _clock;

  static const _key = 'portfolio_review';

  static Future<StockReport?> loadLast() async {
    try {
      final raw = (await SharedPreferences.getInstance()).getString(_key);
      return raw == null ? null : StockReport.fromJson(jsonDecode(raw) as Map<String, dynamic>);
    } catch (_) {
      return null;
    }
  }

  static Future<void> clearLast() async {
    try {
      await (await SharedPreferences.getInstance()).remove(_key);
    } catch (_) {}
  }

  /// A pozíciók adatai: a pillanatképből a súly és a hozam, a piaci adatból a
  /// cégnév, szektor, ország és néhány mutató (ami nem érhető el, kimarad).
  Future<List<ReviewHolding>> holdings(PortfolioSnapshot s) async {
    final rows = s.rows.where((r) => r.inTotal).toList();
    return Future.wait([
      for (final r in rows)
        () async {
          final sym = r.position.symbol;
          final profile = await marketData.profile(sym).then<CompanyProfile?>((p) => p, onError: (Object _) => null);
          final metrics = await marketData.metrics(sym).then<StockMetrics?>((m) => m, onError: (Object _) => null);
          return ReviewHolding(
            symbol: sym,
            name: profile?.name,
            sector: profile?.industry ?? profile?.sector,
            country: profile?.country,
            currency: r.position.currency,
            weight: r.weight * 100,
            gainPercent: r.gainPercent,
            peTrailing: metrics?.peTrailing,
            dividendYield: metrics?.dividendYield,
            beta: metrics?.beta,
          );
        }(),
    ]);
  }

  static const systemPrompt = '''
You are an independent portfolio analyst. The reader holds the stocks listed in the data and wants to understand their portfolio as a whole the way a professional would: how concentrated it is, which sectors, countries and currencies it really depends on, which positions share the same underlying risk, how much it relies on a few names, what it earns in dividends, and what a sensible investor would think about next. You hold no position and have nothing to sell.

Work only from the provided data and your general knowledge (no web access); give anything from memory its approximate date. Be concrete: name the stocks, use the weights and numbers given, and compute shares of the total where useful (sector weights, top-3 weight, currency split). Describe trade-offs and scenarios rather than telling the reader what to buy or sell, because you do not know their situation, goals or tax position; where a change could make sense, say what it would depend on.

Write in the requested language the way a native financial journalist would, plainly and without jargon (explain a term the first time you use it). Sections, in this order (kind: content):
- summary: 2-3 sentences on the overall picture and the single most important point.
- diversification: concentration (largest positions, top-3 weight), sector and country spread, and what is missing. A holding marked with a "note" has no company profile: it is probably an ETF or a fund – treat it as a basket (the index or theme it tracks, from its ticker and your knowledge), count its exposure in the sector and country spread accordingly, and say what you assumed.
- currency: the currency split and what a move in the main currencies would do to the reader's home-currency value.
- risks: risks shared by several positions (same theme, supplier, rate sensitivity, valuation level, beta), and the biggest single point of failure.
- income: dividend yield of the portfolio and of the main payers; skip the section only if no position pays.
- consider: 3-5 bullets of things worth considering, each with the reason and what it depends on (not instructions).

Return one JSON object: {"headline": string (one sentence: the most decision-relevant point), "sections": [{"kind": string, "title": string (in the requested language), "paragraphs": [string], "bullets": [string]}]}. Keep it to about 450-700 words in total.''';

  static Map<String, dynamic> requestBody({
    required List<ReviewHolding> holdings,
    required String currency,
    required double totalValue,
    required double invested,
    double? dividendYield,
    required String language,
    required DateTime today,
    String model = '',
  }) => {
    'model': model,
    'max_tokens': 6000,
    'system': [
      {
        'type': 'text',
        'text': systemPrompt,
        'cache_control': {'type': 'ephemeral'},
      },
    ],
    'messages': [
      {
        'role': 'user',
        'content':
            'Language: $language\nToday: ${today.toIso8601String().substring(0, 10)}\n'
            'Portfolio data (JSON): ${jsonEncode({
              'currency': currency,
              'total_value': totalValue.round(),
              'invested': invested.round(),
              'dividend_yield_pct': ?dividendYield == null ? null : double.parse(dividendYield.toStringAsFixed(2)),
              'positions': [for (final h in holdings) h.toJson()],
            })}',
      },
    ],
    'output_config': {
      'effort': 'medium',
      'format': {
        'type': 'json_schema',
        'schema': {
          'type': 'object',
          'additionalProperties': false,
          'properties': {
            'headline': {'type': 'string'},
            'sections': {
              'type': 'array',
              'items': {
                'type': 'object',
                'additionalProperties': false,
                'properties': {
                  'kind': {'type': 'string'},
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
              },
            },
          },
          'required': ['headline', 'sections'],
        },
      },
    },
  };

  /// Az elemzés elkészítése és elmentése.
  Future<StockReport> review(PortfolioSnapshot snapshot, {required String language}) async {
    if (!config.hasAnthropicKey) throw const AnalysisException(AppErrorCode.aiNotConfigured);
    final body = requestBody(
      holdings: await holdings(snapshot),
      currency: snapshot.currency,
      totalValue: snapshot.value,
      invested: snapshot.cost,
      dividendYield: snapshot.dividendYield,
      language: language,
      today: _clock(),
      model: config.anthropicModel,
    );
    final http.Response res;
    try {
      res = await _client
          .post(
            Uri.parse(config.analyzeEndpoint),
            headers: {
              'content-type': 'application/json',
              if (config.anthropicApiKey.isNotEmpty) 'x-api-key': config.anthropicApiKey,
              'anthropic-version': ClaudeStockAnalyst.anthropicVersion,
              // Egy rövid elemzésnyi keret.
              if (config.hasBackend) 'x-whatstock-depth': 'brief',
            },
            body: jsonEncode(body),
          )
          .timeout(const Duration(minutes: 4));
    } on Exception catch (e) {
      throw AnalysisException(AppErrorCode.aiUnreachable, cause: e);
    }
    if (res.statusCode == 402) throw AnalysisException(ClaudeStockAnalyst.quotaErrorFor(res.body), cause: res.body);
    if (res.statusCode != 200) {
      throw AnalysisException(AppErrorCode.aiHttp, detail: '${res.statusCode}', cause: res.body);
    }
    final StockReport report;
    try {
      final j = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
      if (j['stop_reason'] == 'refusal') throw const AnalysisException(AppErrorCode.aiRefused);
      final text = [
        for (final b in (j['content'] as List? ?? const []))
          if (b is Map && b['type'] == 'text') b['text'] as String? ?? '',
      ].join();
      final payload = jsonDecode(text) as Map<String, dynamic>;
      report = StockReport(
        symbol: AnalysisChat.portfolioSymbol,
        headline: (payload['headline'] as String? ?? '').trim(),
        sections: [
          for (final s in (payload['sections'] as List? ?? const []))
            if (s is Map) ReportSection.fromJson(s.cast<String, dynamic>()),
        ].where((s) => !s.isEmpty).toList(),
        generatedAt: _clock(),
        language: language,
      );
    } on AppException {
      rethrow;
    } catch (e) {
      throw AnalysisException(AppErrorCode.aiBadResponse, cause: e);
    }
    if (report.sections.isEmpty) throw const AnalysisException(AppErrorCode.aiBadResponse);
    try {
      await (await SharedPreferences.getInstance()).setString(_key, jsonEncode(report.toJson()));
    } catch (_) {}
    return report;
  }
}
