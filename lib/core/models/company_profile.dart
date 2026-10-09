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
}
