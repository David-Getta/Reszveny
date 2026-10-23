import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/features/analysis/price_stats.dart';

void main() {
  test('RSI: all gains is 100, steady alternation is around 50, needs n+1 closes', () {
    PricePoint pt(int i, double c) => PricePoint(
      time: DateTime(2026, 1, 1).add(Duration(days: i)),
      close: c,
    );
    final up = [for (var i = 0; i < 20; i++) pt(i, 100.0 + i)];
    expect(PriceStats.rsi(up, 14), 100);
    final flat = [for (var i = 0; i < 40; i++) pt(i, i.isEven ? 100 : 101)];
    expect(PriceStats.rsi(flat, 14), closeTo(50, 5));
    expect(PriceStats.rsi(up.take(14).toList(), 14), isNull);
    final down = [for (var i = 0; i < 30; i++) pt(i, 200.0 - i)];
    expect(PriceStats.rsi(down, 14), 0);
    // Mozdulatlan sor (felfüggesztett papír): nincs RSI, nem „túlvett”.
    expect(PriceStats.rsi([for (var i = 0; i < 30; i++) pt(i, 100)], 14), isNull);
  });

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

  test('the year-to-date return is from the previous year’s last close (as on the stock page)', () {
    final pts = [
      PricePoint(time: DateTime(2025, 12, 31), close: 100),
      PricePoint(time: DateTime(2026, 1, 2), close: 110),
      PricePoint(time: DateTime(2026, 1, 5), close: 121),
    ];
    expect(PriceStats.ytd(pts), closeTo(21, 1e-9));
    final stats = PriceStats.summarize(PriceHistory(symbol: 'X', points: pts))!;
    expect(stats['return_ytd_percent'], 21.0);
    // A dátum a naptári nap (időzóna-átváltás nélkül).
    expect(stats['last_date'], '2026-01-05');
  });

  test('the chart period starts at the last close on or before the target day, as the returns do', () {
    // Július 3. (péntek) ünnepnap: az 1 hetes változás a július 2-i zárástól.
    final h = PriceHistory(
      symbol: 'X',
      points: [
        PricePoint(time: DateTime(2026, 7, 1), close: 99),
        PricePoint(time: DateTime(2026, 7, 2), close: 100),
        PricePoint(time: DateTime(2026, 7, 6), close: 101),
        PricePoint(time: DateTime(2026, 7, 10), close: 103),
      ],
    );
    final week = h.since(7);
    expect(week.first.time, DateTime(2026, 7, 2));
    expect((week.last.close / week.first.close - 1) * 100, closeTo(PriceStats.returnOver(h.points, 7)!, 0.01));
  });

  test('windows are counted in calendar days and years (daylight saving, leap day)', () {
    // Helyi éjfélkor jegyzett pontok: a 7 napos ablak nem csúszik el egy órával egy nappal.
    final pts = [for (var d = 1; d <= 40; d++) PricePoint(time: DateTime(2026, 3, d), close: 100.0 + d)];
    final h = PriceHistory(symbol: 'X', points: pts);
    expect(h.since(7).first.time, DateTime(2026, 4, 2));
    expect(h.lastDays(7).first.time, DateTime(2026, 4, 2));
    expect(daysBefore(DateTime(2026, 4, 3), 7), DateTime(2026, 3, 27));
    expect(yearsBefore(DateTime(2028, 2, 29), 1), DateTime(2027, 2, 28));
    expect(yearsBefore(DateTime(2026, 10, 23), 5), DateTime(2021, 10, 23));
    // Kerekítés nélkül: a megjelenítés kerekít, egyszer.
    final r = PriceStats.returnOver([
      PricePoint(time: DateTime(2026, 1, 1), close: 100),
      PricePoint(time: DateTime(2026, 1, 8), close: 101.2451),
    ], 7);
    expect(r, closeTo(1.2451, 1e-9));
  });

  test('YTD before the first trading day of the year is not last year\'s return', () {
    final pts = [
      PricePoint(time: DateTime(2025, 12, 31), close: 100),
      PricePoint(time: DateTime(2026, 12, 31), close: 150),
    ];
    expect(PriceStats.ytd(pts, now: DateTime(2027, 1, 2)), isNull);
    expect(PriceStats.ytd(pts, now: DateTime(2026, 12, 31)), closeTo(50, 1e-9));
  });
}
