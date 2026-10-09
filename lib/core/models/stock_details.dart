import 'analyst_consensus.dart';
import 'company_profile.dart';
import 'news_item.dart';
import 'stock_metrics.dart';
import 'stock_quote.dart';

/// Egy részvény összes megjelenítendő adata. A szekciók egymástól
/// függetlenül tölthetők, ezért bármelyik hiányozhat.
class StockDetails {
  const StockDetails({
    required this.symbol,
    this.quote,
    this.profile,
    this.metrics,
    this.news = const [],
    this.consensus,
    this.errors = const {},
    this.fetchedAt,
  });

  final String symbol;
  final StockQuote? quote;
  final CompanyProfile? profile;
  final StockMetrics? metrics;
  final List<NewsItem> news;
  final AnalystConsensus? consensus;

  /// Szekciónkénti hibák; a felület fordítja üzenetre.
  final Map<DetailSection, Object> errors;
  final DateTime? fetchedAt;

  String get displayName => profile?.name ?? symbol;
  String? get currency => profile?.currency;
}

/// A részletes nézet egymástól függetlenül töltődő szekciói.
enum DetailSection { quote, profile, metrics, news, consensus }
