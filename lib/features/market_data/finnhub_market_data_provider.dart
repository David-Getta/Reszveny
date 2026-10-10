import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/models/analyst_consensus.dart';
import '../../core/models/company_profile.dart';
import '../../core/models/financial_statements.dart';
import '../../core/models/news_item.dart';
import '../../core/models/price_history.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_metrics.dart';
import '../../core/models/stock_quote.dart';
import 'market_data_provider.dart';

/// Élő adatok a Finnhub REST API-ból (https://finnhub.io/docs/api).
/// Az ingyenes csomag elsősorban amerikai részvényeket fed le.
class FinnhubMarketDataProvider extends MarketDataProvider {
  FinnhubMarketDataProvider({required this.config, http.Client? client}) : _client = client ?? http.Client();

  final AppConfig config;
  final http.Client _client;

  @override
  String get name => 'Finnhub';

  Future<dynamic> _get(String path, Map<String, String> query) async {
    if (!config.hasFinnhubKey) {
      throw const MarketDataException(AppErrorCode.missingFinnhubKey);
    }
    final uri = Uri.parse('${config.effectiveFinnhubBaseUrl}$path').replace(queryParameters: query);
    final http.Response res;
    try {
      res = await _client
          .get(uri, headers: {if (config.finnhubApiKey.isNotEmpty) 'X-Finnhub-Token': config.finnhubApiKey})
          .timeout(const Duration(seconds: 20));
    } on Exception catch (e) {
      throw MarketDataException(AppErrorCode.marketUnreachable, cause: e);
    }
    if (res.statusCode == 429) {
      throw const MarketDataException(AppErrorCode.marketRateLimited);
    }
    if (res.statusCode == 403) {
      // Az ingyenes csomagban nem elérhető végpont (pl. árfolyam-történet).
      throw MarketDataException(AppErrorCode.marketHttp, detail: '403', cause: res.body);
    }
    if (res.statusCode != 200) {
      throw MarketDataException(AppErrorCode.marketHttp, detail: '${res.statusCode}', cause: res.body);
    }
    try {
      return jsonDecode(res.body);
    } on FormatException catch (e) {
      throw MarketDataException(AppErrorCode.marketBadResponse, cause: e);
    }
  }

  @override
  Future<StockQuote> quote(String symbol) async {
    final j = await _get('/quote', {'symbol': symbol}) as Map<String, dynamic>;
    return parseQuote(symbol, j);
  }

  @override
  Future<CompanyProfile> profile(String symbol) async {
    final j = await _get('/stock/profile2', {'symbol': symbol}) as Map<String, dynamic>;
    return parseProfile(symbol, j);
  }

  @override
  Future<StockMetrics> metrics(String symbol) async {
    final j = await _get('/stock/metric', {'symbol': symbol, 'metric': 'all'}) as Map<String, dynamic>;
    return parseMetrics(j);
  }

  @override
  Future<List<NewsItem>> news(String symbol, {int limit = 20}) async {
    final to = DateTime.now().toUtc();
    final from = to.subtract(const Duration(days: 30));
    String d(DateTime t) => t.toIso8601String().substring(0, 10);
    final j = await _get('/company-news', {'symbol': symbol, 'from': d(from), 'to': d(to)}) as List;
    return parseNews(j).take(limit).toList();
  }

  @override
  Future<AnalystConsensus?> consensus(String symbol) async {
    final j = await _get('/stock/recommendation', {'symbol': symbol}) as List;
    return parseConsensus(j);
  }

  @override
  Future<PriceHistory> history(String symbol, {int years = 5}) async {
    final to = DateTime.now().toUtc();
    final from = DateTime.utc(to.year - years, to.month, to.day);
    try {
      final j = await _get('/stock/candle', {
        'symbol': symbol,
        'resolution': 'D',
        'from': '${from.millisecondsSinceEpoch ~/ 1000}',
        'to': '${to.millisecondsSinceEpoch ~/ 1000}',
      }) as Map<String, dynamic>;
      return parseCandles(symbol, j);
    } on MarketDataException catch (e) {
      if (e.code == AppErrorCode.marketHttp && e.detail == '403') {
        throw const MarketDataException(AppErrorCode.chartUnavailable);
      }
      rethrow;
    }
  }

  @override
  Future<FinancialStatements> statements(String symbol) async {
    final j = await _get('/stock/financials-reported', {'symbol': symbol, 'freq': 'annual'}) as Map<String, dynamic>;
    final parsed = parseReportedFinancials(symbol, j);
    if (parsed.isEmpty) throw const MarketDataException(AppErrorCode.statementsUnavailable);
    return parsed;
  }

  @override
  Future<List<StockCandidate>> search(String query) async {
    final q = query.trim();
    if (q.isEmpty) return const [];
    final j = await _get('/search', {'q': q}) as Map<String, dynamic>;
    return parseSearch(q, j);
  }

  // ---- Parse-olás: tisztán a JSON-ból, hálózat nélkül tesztelhető. ----

  static StockQuote parseQuote(String symbol, Map<String, dynamic> j) {
    final price = _d(j['c']);
    if (price == null || price == 0) {
      throw MarketDataException(AppErrorCode.noQuote, detail: symbol);
    }
    final ts = _d(j['t']);
    return StockQuote(
      symbol: symbol,
      price: price,
      change: _d(j['d']),
      changePercent: _d(j['dp']),
      open: _d(j['o']),
      high: _d(j['h']),
      low: _d(j['l']),
      previousClose: _d(j['pc']),
      timestamp: ts == null ? null : DateTime.fromMillisecondsSinceEpoch((ts * 1000).round(), isUtc: true),
    );
  }

  static CompanyProfile parseProfile(String symbol, Map<String, dynamic> j) {
    if (j.isEmpty || (j['name'] as String?)?.isEmpty != false) {
      throw MarketDataException(AppErrorCode.noProfile, detail: symbol);
    }
    final capMillions = _d(j['marketCapitalization']);
    final sharesMillions = _d(j['shareOutstanding']);
    return CompanyProfile(
      symbol: symbol,
      name: j['name'] as String,
      exchange: _s(j['exchange']),
      currency: _s(j['currency']),
      country: _s(j['country']),
      industry: _s(j['finnhubIndustry']),
      isin: _s(j['isin']),
      website: _s(j['weburl']),
      logoUrl: _s(j['logo']),
      ipoDate: _date(j['ipo']),
      marketCap: capMillions == null ? null : capMillions * 1e6,
      sharesOutstanding: sharesMillions == null ? null : sharesMillions * 1e6,
    );
  }

  static StockMetrics parseMetrics(Map<String, dynamic> j) {
    final m = (j['metric'] as Map?)?.cast<String, dynamic>() ?? const {};
    return StockMetrics(
      peTrailing: _d(m['peTTM']) ?? _d(m['peBasicExclExtraTTM']),
      peForward: _d(m['forwardPE']),
      pb: _d(m['pbAnnual']) ?? _d(m['pbQuarterly']),
      ps: _d(m['psTTM']),
      evToEbitda: _d(m['currentEv/freeCashFlowTTM']),
      peg: _d(m['pegTTM']) ?? _d(m['pegAnnual']),
      eps: _d(m['epsTTM']) ?? _d(m['epsBasicExclExtraItemsTTM']),
      dividendYield: _d(m['dividendYieldIndicatedAnnual']) ?? _d(m['currentDividendYieldTTM']),
      dividendPerShare: _d(m['dividendPerShareTTM']) ?? _d(m['dividendPerShareAnnual']),
      payoutRatio: _d(m['payoutRatioTTM']) ?? _d(m['payoutRatioAnnual']),
      beta: _d(m['beta']),
      week52High: _d(m['52WeekHigh']),
      week52Low: _d(m['52WeekLow']),
      week52HighDate: _date(m['52WeekHighDate']),
      week52LowDate: _date(m['52WeekLowDate']),
      averageVolume10d: _d(m['10DayAverageTradingVolume']) == null ? null : _d(m['10DayAverageTradingVolume'])! * 1e6,
      revenueTtm: _d(m['revenueTTM']) == null ? null : _d(m['revenueTTM'])! * 1e6,
      netIncomeTtm: _d(m['netIncomeTTM']) == null ? null : _d(m['netIncomeTTM'])! * 1e6,
      grossMargin: _d(m['grossMarginTTM']),
      operatingMargin: _d(m['operatingMarginTTM']),
      netMargin: _d(m['netProfitMarginTTM']),
      roe: _d(m['roeTTM']),
      roa: _d(m['roaTTM']),
      debtToEquity: _d(m['totalDebt/totalEquityQuarterly']) ?? _d(m['totalDebt/totalEquityAnnual']),
      currentRatio: _d(m['currentRatioQuarterly']) ?? _d(m['currentRatioAnnual']),
      revenueGrowth: _d(m['revenueGrowthTTMYoy']),
      epsGrowth: _d(m['epsGrowthTTMYoy']),
    );
  }

  static List<NewsItem> parseNews(List j) {
    final items = <NewsItem>[];
    for (final raw in j) {
      final n = (raw as Map).cast<String, dynamic>();
      final headline = _s(n['headline']);
      final url = _s(n['url']);
      final ts = _d(n['datetime']);
      if (headline == null || url == null || ts == null) continue;
      items.add(
        NewsItem(
          headline: headline,
          url: url,
          publishedAt: DateTime.fromMillisecondsSinceEpoch((ts * 1000).round(), isUtc: true),
          source: _s(n['source']),
          summary: _s(n['summary']),
          imageUrl: _s(n['image']),
        ),
      );
    }
    items.sort((a, b) => b.publishedAt.compareTo(a.publishedAt));
    return items;
  }

  /// A Finnhub `/search` válasza. A pontos ticker-egyezés kerül előre, és a
  /// származtatott (opció, warrant) típusokat kihagyjuk.
  static List<StockCandidate> parseSearch(String query, Map<String, dynamic> j) {
    final upper = query.trim().toUpperCase();
    final out = <StockCandidate>[];
    for (final raw in (j['result'] as List?) ?? const []) {
      final r = (raw as Map).cast<String, dynamic>();
      final symbol = _s(r['symbol']);
      final name = _s(r['description']);
      final type = _s(r['type']) ?? '';
      if (symbol == null || name == null) continue;
      if (type.isNotEmpty && type != 'Common Stock' && type != 'ADR' && type != 'ETP' && type != 'REIT') continue;
      final exact = symbol.toUpperCase() == upper;
      final nameHit = name.toUpperCase().contains(upper);
      out.add(StockCandidate(symbol: symbol, companyName: name, confidence: exact ? 1 : (nameHit ? 0.8 : 0.6)));
    }
    out.sort((a, b) => b.confidence.compareTo(a.confidence));
    return out.take(10).toList();
  }

  /// Finnhub `/stock/candle`: párhuzamos tömbök (`t`, `c`, `o`, `h`, `l`, `v`).
  static PriceHistory parseCandles(String symbol, Map<String, dynamic> j) {
    if (j['s'] != 'ok') throw const MarketDataException(AppErrorCode.chartUnavailable);
    final t = (j['t'] as List?) ?? const [];
    final c = (j['c'] as List?) ?? const [];
    final o = (j['o'] as List?) ?? const [];
    final h = (j['h'] as List?) ?? const [];
    final l = (j['l'] as List?) ?? const [];
    final v = (j['v'] as List?) ?? const [];
    final points = <PricePoint>[];
    for (var i = 0; i < t.length && i < c.length; i++) {
      final close = _d(c[i]);
      final ts = _d(t[i]);
      if (close == null || ts == null) continue;
      points.add(
        PricePoint(
          time: DateTime.fromMillisecondsSinceEpoch((ts * 1000).round(), isUtc: true),
          close: close,
          open: i < o.length ? _d(o[i]) : null,
          high: i < h.length ? _d(h[i]) : null,
          low: i < l.length ? _d(l[i]) : null,
          volume: i < v.length ? _d(v[i]) : null,
        ),
      );
    }
    points.sort((a, b) => a.time.compareTo(b.time));
    if (points.isEmpty) throw const MarketDataException(AppErrorCode.chartUnavailable);
    return PriceHistory(symbol: symbol, points: points);
  }

  /// Finnhub `/stock/financials-reported`: XBRL-fogalmak szerint keressük a
  /// főbb tételeket (több lehetséges fogalomnév, az első találat nyer).
  static FinancialStatements parseReportedFinancials(String symbol, Map<String, dynamic> j) {
    const revenueConcepts = [
      'us-gaap_Revenues',
      'us-gaap_RevenueFromContractWithCustomerExcludingAssessedTax',
      'us-gaap_SalesRevenueNet',
      'us-gaap_RevenueFromContractWithCustomerIncludingAssessedTax',
      'ifrs-full_Revenue',
    ];
    const netIncomeConcepts = ['us-gaap_NetIncomeLoss', 'us-gaap_ProfitLoss', 'ifrs-full_ProfitLoss'];
    const assetsConcepts = ['us-gaap_Assets', 'ifrs-full_Assets'];
    const liabilitiesConcepts = ['us-gaap_Liabilities', 'ifrs-full_Liabilities'];
    const equityConcepts = [
      'us-gaap_StockholdersEquity',
      'us-gaap_StockholdersEquityIncludingPortionAttributableToNoncontrollingInterest',
      'ifrs-full_Equity',
    ];
    const ocfConcepts = [
      'us-gaap_NetCashProvidedByUsedInOperatingActivities',
      'us-gaap_NetCashProvidedByUsedInOperatingActivitiesContinuingOperations',
      'ifrs-full_CashFlowsFromUsedInOperatingActivities',
    ];

    double? pick(List rows, List<String> concepts) {
      for (final concept in concepts) {
        for (final raw in rows) {
          final r = (raw as Map).cast<String, dynamic>();
          if (r['concept'] == concept) return _d(r['value']);
        }
      }
      return null;
    }

    final years = <AnnualFinancials>[];
    for (final raw in (j['data'] as List?) ?? const []) {
      final d = (raw as Map).cast<String, dynamic>();
      final year = (d['year'] as num?)?.toInt();
      if (year == null) continue;
      final report = (d['report'] as Map?)?.cast<String, dynamic>() ?? const {};
      final ic = (report['ic'] as List?) ?? const [];
      final bs = (report['bs'] as List?) ?? const [];
      final cf = (report['cf'] as List?) ?? const [];
      final y = AnnualFinancials(
        fiscalYear: year,
        periodEnd: _date(d['endDate']),
        revenue: pick(ic, revenueConcepts),
        netIncome: pick(ic, netIncomeConcepts) ?? pick(cf, netIncomeConcepts),
        totalAssets: pick(bs, assetsConcepts),
        totalLiabilities: pick(bs, liabilitiesConcepts),
        equity: pick(bs, equityConcepts),
        operatingCashFlow: pick(cf, ocfConcepts),
      );
      if (!y.isEmpty) years.add(y);
    }
    years.sort((a, b) => b.fiscalYear.compareTo(a.fiscalYear));
    // Ugyanaz az év többször is szerepelhet (módosított jelentés): az első marad.
    final seen = <int>{};
    final unique = years.where((y) => seen.add(y.fiscalYear)).take(5).toList();
    return FinancialStatements(symbol: symbol, years: unique);
  }

  static AnalystConsensus? parseConsensus(List j) {
    if (j.isEmpty) return null;
    final latest = (j.first as Map).cast<String, dynamic>();
    return AnalystConsensus(
      period: _date(latest['period']) ?? DateTime.now(),
      strongBuy: (latest['strongBuy'] as num?)?.toInt() ?? 0,
      buy: (latest['buy'] as num?)?.toInt() ?? 0,
      hold: (latest['hold'] as num?)?.toInt() ?? 0,
      sell: (latest['sell'] as num?)?.toInt() ?? 0,
      strongSell: (latest['strongSell'] as num?)?.toInt() ?? 0,
    );
  }

  static double? _d(Object? v) {
    if (v == null) return null;
    if (v is num) return v.toDouble();
    if (v is String) return double.tryParse(v);
    return null;
  }

  static String? _s(Object? v) {
    if (v is! String) return null;
    final t = v.trim();
    return t.isEmpty ? null : t;
  }

  static DateTime? _date(Object? v) {
    final s = _s(v);
    if (s == null) return null;
    return DateTime.tryParse(s) ?? DateTime.tryParse(s.split(' ').first);
  }
}
