import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/features/analysis/price_stats.dart';

void main() {
  List<PricePoint> series(List<double> closes) => [
    for (var i = 0; i < closes.length; i++)
      PricePoint(
        time: DateTime.utc(2026, 1, 1).add(Duration(days: i)),
        close: closes[i],
      ),
  ];

  test('returns, moving average and drawdown', () {
    final pts = series([for (var i = 0; i < 100; i++) 100.0 + i]);
    expect(PriceStats.returnOver(pts, 30), closeTo(199 / 169 * 100 - 100, 0.01));
    expect(PriceStats.sma(pts, 50), closeTo(174.5, 1e-9));
    expect(PriceStats.sma(pts, 200), isNull);
    expect(PriceStats.maxDrawdown(series([100, 120, 90, 110])), -25.0);
  });

  test('not enough history gives null instead of a wrong number', () {
    final pts = series([100, 101, 102]);
    expect(PriceStats.returnOver(pts, 365), isNull);
    expect(PriceStats.volatility(pts, 21), isNull);
    expect(PriceStats.summarize(null), isNull);
  });

  test('volatility of a constant-growth series is ~0, of a zig-zag is high', () {
    final flat = series([for (var i = 0; i < 40; i++) 100.0]);
    expect(PriceStats.volatility(flat, 21), 0);
    final zig = series([for (var i = 0; i < 40; i++) i.isEven ? 100.0 : 105.0]);
    expect(PriceStats.volatility(zig, 21), greaterThan(50));
  });

  test('largest daily moves are sorted by size and dated', () {
    final h = PriceHistory(symbol: 'X', points: series([100, 101, 90, 92, 100]));
    final s = PriceStats.summarize(h)!;
    final moves = s['largest_daily_moves_30d'] as List;
    expect(moves.first['date'], '2026-01-03');
    expect(moves.first['change_percent'], closeTo(-10.89, 0.01));
  });
}
