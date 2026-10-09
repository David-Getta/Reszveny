import '../../core/models/analyst_consensus.dart';
import '../../core/models/company_profile.dart';
import '../../core/models/financial_statements.dart';
import '../../core/models/news_item.dart';
import '../../core/models/price_history.dart';
import '../../core/models/stock_details.dart';
import '../../core/models/stock_metrics.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_quote.dart';

/// Ticker → adatok. A konkrét adatforrás (Finnhub, demó, később saját
/// backend) cserélhető; a felület csak ezt ismeri.
abstract class MarketDataProvider {
  String get name;

  Future<StockQuote> quote(String symbol);
  Future<CompanyProfile> profile(String symbol);
  Future<StockMetrics> metrics(String symbol);
  Future<List<NewsItem>> news(String symbol, {int limit = 20});
  Future<AnalystConsensus?> consensus(String symbol);

  /// Napi árfolyam-történet, legfeljebb [years] évre visszamenőleg.
  Future<PriceHistory> history(String symbol, {int years = 5});

  /// Jelentett éves pénzügyi kimutatások főbb tételei.
  Future<FinancialStatements> statements(String symbol);

  /// Ticker vagy cégnév keresése; a találatok megbízhatóság szerint.
  Future<List<StockCandidate>> search(String query);

  /// Minden szekciót párhuzamosan tölt le; egy szekció hibája nem dönti be
  /// a többit, hanem a [StockDetails.errors] térképbe kerül.
  Future<StockDetails> details(String symbol) async {
    final errors = <DetailSection, Object>{};

    Future<T?> guard<T>(DetailSection section, Future<T> Function() f) async {
      try {
        return await f();
      } catch (e) {
        errors[section] = e;
        return null;
      }
    }

    final results = await Future.wait<dynamic>([
      guard(DetailSection.quote, () => quote(symbol)),
      guard(DetailSection.profile, () => profile(symbol)),
      guard(DetailSection.metrics, () => metrics(symbol)),
      guard(DetailSection.news, () => news(symbol)),
      guard(DetailSection.consensus, () => consensus(symbol)),
      guard(DetailSection.chart, () => history(symbol)),
      guard(DetailSection.statements, () => statements(symbol)),
    ]);

    return StockDetails(
      symbol: symbol,
      quote: results[0] as StockQuote?,
      profile: results[1] as CompanyProfile?,
      metrics: results[2] as StockMetrics?,
      news: (results[3] as List<NewsItem>?) ?? const [],
      consensus: results[4] as AnalystConsensus?,
      history: results[5] as PriceHistory?,
      statements: results[6] as FinancialStatements?,
      errors: errors,
      fetchedAt: DateTime.now(),
    );
  }
}
