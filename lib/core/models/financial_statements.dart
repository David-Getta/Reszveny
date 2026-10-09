/// Egy pénzügyi év jelentett főbb tételei (a cég devizájában, teljes összeg).
class AnnualFinancials {
  const AnnualFinancials({
    required this.fiscalYear,
    this.periodEnd,
    this.revenue,
    this.netIncome,
    this.totalAssets,
    this.totalLiabilities,
    this.equity,
    this.operatingCashFlow,
  });

  final int fiscalYear;
  final DateTime? periodEnd;
  final double? revenue;
  final double? netIncome;
  final double? totalAssets;
  final double? totalLiabilities;
  final double? equity;
  final double? operatingCashFlow;

  bool get isEmpty =>
      revenue == null &&
      netIncome == null &&
      totalAssets == null &&
      totalLiabilities == null &&
      equity == null &&
      operatingCashFlow == null;
}

class FinancialStatements {
  const FinancialStatements({required this.symbol, required this.years});

  final String symbol;

  /// Legfrissebb év elöl.
  final List<AnnualFinancials> years;

  bool get isEmpty => years.isEmpty;
}
