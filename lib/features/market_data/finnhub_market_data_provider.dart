import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/models/analyst_consensus.dart';
import '../../core/models/company_profile.dart';
import '../../core/models/news_item.dart';
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
    final uri = Uri.parse('${config.finnhubBaseUrl}$path').replace(queryParameters: query);
    final http.Response res;
    try {
      res = await _client
          .get(uri, headers: {'X-Finnhub-Token': config.finnhubApiKey})
          .timeout(const Duration(seconds: 20));
    } on Exception catch (e) {
      throw MarketDataException(AppErrorCode.marketUnreachable, cause: e);
    }
    if (res.statusCode == 429) {
      throw const MarketDataException(AppErrorCode.marketRateLimited);
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
    return DateTime.tryParse(s);
  }
}
