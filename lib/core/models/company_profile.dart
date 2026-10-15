/// Cégprofil: azonosító és leíró adatok.
class CompanyProfile {
  const CompanyProfile({
    required this.symbol,
    required this.name,
    this.exchange,
    this.currency,
    this.country,
    this.industry,
    this.sector,
    this.isin,
    this.website,
    this.logoUrl,
    this.description,
    this.ipoDate,
    this.marketCap,
    this.sharesOutstanding,
    this.employees,
    this.ceo,
    this.headquarters,
  });

  final String symbol;
  final String name;
  final String? exchange;
  final String? currency;
  final String? country;
  final String? industry;
  final String? sector;
  final String? isin;
  final String? website;
  final String? logoUrl;
  final String? description;
  final DateTime? ipoDate;

  /// Piaci kapitalizáció a [currency] devizában (teljes összeg, nem millió).
  final double? marketCap;

  /// Kibocsátott részvények száma (darab).
  final double? sharesOutstanding;
  final int? employees;
  final String? ceo;
  final String? headquarters;

  /// Gyorsítótárhoz (offline megjelenítés).
  Map<String, dynamic> toJson() => {
    'symbol': symbol,
    'name': name,
    'exchange': ?exchange,
    'currency': ?currency,
    'country': ?country,
    'industry': ?industry,
    'sector': ?sector,
    'isin': ?isin,
    'website': ?website,
    'logoUrl': ?logoUrl,
    'description': ?description,
    if (ipoDate != null) 'ipoDate': ipoDate!.toIso8601String(),
    'marketCap': ?marketCap,
    'sharesOutstanding': ?sharesOutstanding,
    'employees': ?employees,
    'ceo': ?ceo,
    'headquarters': ?headquarters,
  };

  factory CompanyProfile.fromJson(Map<String, dynamic> j) => CompanyProfile(
    symbol: j['symbol'] as String,
    name: j['name'] as String,
    exchange: j['exchange'] as String?,
    currency: j['currency'] as String?,
    country: j['country'] as String?,
    industry: j['industry'] as String?,
    sector: j['sector'] as String?,
    isin: j['isin'] as String?,
    website: j['website'] as String?,
    logoUrl: j['logoUrl'] as String?,
    description: j['description'] as String?,
    ipoDate: DateTime.tryParse(j['ipoDate'] as String? ?? ''),
    marketCap: (j['marketCap'] as num?)?.toDouble(),
    sharesOutstanding: (j['sharesOutstanding'] as num?)?.toDouble(),
    employees: (j['employees'] as num?)?.toInt(),
    ceo: j['ceo'] as String?,
    headquarters: j['headquarters'] as String?,
  );
}
