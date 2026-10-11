import 'dart:math' as math;

import '../../core/models/financial_statements.dart';
import '../../core/models/price_history.dart';

/// Az árfolyam-történetből a modellnek átadott tömör, kiszámolt mutatók:
/// hozamok, távolság a csúcstól/mélyponttól, mozgóátlagok, volatilitás,
/// legnagyobb napi mozgások. Így a technikai és pszichológiai lencséhez nem
/// kell webkeresést elhasználni.
class PriceStats {
  PriceStats._();

  static double _round(double v, [int digits = 2]) {
    final f = math.pow(10, digits);
    return (v * f).roundToDouble() / f;
  }

  static String _date(DateTime t) => t.toUtc().toIso8601String().substring(0, 10);

  /// Hozam %-ban [days] naptári nap alatt (null, ha nincs elég adat).
  static double? returnOver(List<PricePoint> pts, int days) {
    if (pts.length < 2) return null;
    final last = pts.last;
    final target = last.time.subtract(Duration(days: days));
    if (pts.first.time.isAfter(target.add(const Duration(days: 5)))) return null;
    PricePoint? base;
    for (final p in pts) {
      if (p.time.isAfter(target)) break;
      base = p;
    }
    base ??= pts.first;
    if (base.close == 0) return null;
    return _round((last.close / base.close - 1) * 100);
  }

  /// Egyszerű mozgóátlag az utolsó [n] záróárból.
  static double? sma(List<PricePoint> pts, int n) {
    if (pts.length < n) return null;
    final slice = pts.sublist(pts.length - n);
    return slice.fold<double>(0, (s, p) => s + p.close) / n;
  }

  /// Évesített realizált volatilitás %-ban az utolsó [n] napi hozamból.
  static double? volatility(List<PricePoint> pts, int n) {
    if (pts.length < n + 1) return null;
    final slice = pts.sublist(pts.length - n - 1);
    final rets = <double>[];
    for (var i = 1; i < slice.length; i++) {
      if (slice[i - 1].close <= 0 || slice[i].close <= 0) continue;
      rets.add(math.log(slice[i].close / slice[i - 1].close));
    }
    if (rets.length < 2) return null;
    final mean = rets.reduce((a, b) => a + b) / rets.length;
    final variance = rets.fold<double>(0, (s, r) => s + (r - mean) * (r - mean)) / (rets.length - 1);
    return _round(math.sqrt(variance) * math.sqrt(252) * 100, 1);
  }

  /// Legnagyobb visszaesés csúcstól %-ban (negatív szám).
  static double? maxDrawdown(List<PricePoint> pts) {
    if (pts.length < 2) return null;
    var peak = pts.first.close;
    var worst = 0.0;
    for (final p in pts) {
      peak = math.max(peak, p.close);
      if (peak > 0) worst = math.min(worst, p.close / peak - 1);
    }
    return _round(worst * 100);
  }

  /// A modellnek szánt összefoglaló (null, ha nincs történet).
  static Map<String, dynamic>? summarize(PriceHistory? h) {
    if (h == null || h.points.length < 2) return null;
    final pts = h.points;
    final last = pts.last;
    final year = h.lastDays(365);
    final high52 = year.map((p) => p.high ?? p.close).reduce(math.max);
    final low52 = year.map((p) => p.low ?? p.close).reduce(math.min);
    final sma50 = sma(pts, 50);
    final sma200 = sma(pts, 200);

    // Az utolsó ~30 nap legnagyobb napi mozgásai (dátummal).
    final month = h.lastDays(31);
    final moves = <({DateTime t, double pct})>[];
    for (var i = 1; i < month.length; i++) {
      final prev = month[i - 1].close;
      if (prev > 0) moves.add((t: month[i].time, pct: (month[i].close / prev - 1) * 100));
    }
    moves.sort((a, b) => b.pct.abs().compareTo(a.pct.abs()));

    final vols = h.lastDays(31).map((p) => p.volume).whereType<double>().toList();
    final ytdStart = pts.where((p) => p.time.year == last.time.year).firstOrNull;

    return {
      'last_close': _round(last.close, 4),
      'last_date': _date(last.time),
      'return_1m_percent': returnOver(pts, 30),
      'return_3m_percent': returnOver(pts, 91),
      'return_6m_percent': returnOver(pts, 182),
      'return_1y_percent': returnOver(pts, 365),
      'return_3y_percent': returnOver(pts, 365 * 3),
      if (ytdStart != null && ytdStart.close > 0) 'return_ytd_percent': _round((last.close / ytdStart.close - 1) * 100),
      'high_52w': _round(high52, 4),
      'low_52w': _round(low52, 4),
      'from_52w_high_percent': high52 > 0 ? _round((last.close / high52 - 1) * 100) : null,
      'from_52w_low_percent': low52 > 0 ? _round((last.close / low52 - 1) * 100) : null,
      'sma_50': sma50 == null ? null : _round(sma50, 4),
      'sma_200': sma200 == null ? null : _round(sma200, 4),
      'vs_sma_50_percent': sma50 == null || sma50 == 0 ? null : _round((last.close / sma50 - 1) * 100),
      'vs_sma_200_percent': sma200 == null || sma200 == 0 ? null : _round((last.close / sma200 - 1) * 100),
      'volatility_30d_annualised_percent': volatility(pts, 21),
      'max_drawdown_1y_percent': maxDrawdown(year),
      if (vols.isNotEmpty) 'avg_volume_30d': (vols.reduce((a, b) => a + b) / vols.length).round(),
      'largest_daily_moves_30d': [
        for (final m in moves.take(3)) {'date': _date(m.t), 'change_percent': _round(m.pct)},
      ],
    };
  }

  /// A többéves kimutatások a modellnek (legfeljebb 4 év, a legfrissebb elöl),
  /// kiszámolt bevétel-növekedéssel és nettó marzzsal.
  static List<Map<String, dynamic>> statements(FinancialStatements? s, {int years = 4}) {
    if (s == null || s.isEmpty) return const [];
    final ys = s.years.where((y) => !y.isEmpty).take(years).toList();
    return [
      for (var i = 0; i < ys.length; i++)
        {
          'fiscal_year': ys[i].fiscalYear,
          if (ys[i].periodEnd != null) 'period_end': _date(ys[i].periodEnd!),
          'revenue': ys[i].revenue,
          'net_income': ys[i].netIncome,
          'operating_cash_flow': ys[i].operatingCashFlow,
          'total_assets': ys[i].totalAssets,
          'total_liabilities': ys[i].totalLiabilities,
          'equity': ys[i].equity,
          if (ys[i].revenue != null && ys[i].revenue != 0 && ys[i].netIncome != null)
            'net_margin_percent': _round(ys[i].netIncome! / ys[i].revenue! * 100),
          if (i + 1 < ys.length && ys[i].revenue != null && (ys[i + 1].revenue ?? 0) != 0)
            'revenue_growth_percent': _round((ys[i].revenue! / ys[i + 1].revenue! - 1) * 100),
        },
    ];
  }
}
