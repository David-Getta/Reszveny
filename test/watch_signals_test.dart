import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/features/home/watch_signals.dart';

PriceHistory _hist(String s, List<double> closes) => PriceHistory(
  symbol: s,
  points: [
    for (final (i, c) in closes.indexed)
      PricePoint(
        time: DateTime(2025, 1, 1).add(Duration(days: i)),
        close: c,
      ),
  ],
);

void main() {
  test('signals: oversold / overbought RSI, and a cross of the 200-day average today', () {
    // 220 nap 100 körül, aztán 10 napig esés: RSI 30 alá, az átlag alá ma.
    final falling = [for (var i = 0; i < 220; i++) 100.0, for (var i = 1; i <= 10; i++) 100.0 - i * 0.2];
    // Ugyanaz emelkedéssel: RSI 70 felett, az átlag fölé.
    final rising = [for (var i = 0; i < 220; i++) 100.0, for (var i = 1; i <= 10; i++) 100.0 + i * 0.2];
    // Oldalazás jóval az átlag felett (200 nap 100-on, aztán 110 körül): nincs jelzés.
    final flat = [for (var i = 0; i < 200; i++) 100.0, for (var i = 0; i < 30; i++) 110.0 + (i.isEven ? 0.5 : -0.5)];
    final short = [for (var i = 0; i < 10; i++) 100.0];
    final signals = watchSignals(
      ['DOWN', 'UP', 'FLAT', 'SHORT', 'NONE'],
      {
        'DOWN': _hist('DOWN', falling),
        'UP': _hist('UP', rising),
        'FLAT': _hist('FLAT', flat),
        'SHORT': _hist('SHORT', short),
      },
    );
    expect(signals.map((x) => (x.symbol, x.kind)), [
      ('DOWN', WatchSignalKind.rsiOversold),
      ('UP', WatchSignalKind.rsiOverbought),
    ]);

    // Átlépés ma: tegnap még az átlag alatt, ma felette (és fordítva).
    final crossUp = [for (var i = 0; i < 200; i++) 100.0, 90.0, 110.0];
    final crossDown = [for (var i = 0; i < 200; i++) 100.0, 110.0, 90.0];
    final crosses = watchSignals(['A', 'B'], {'A': _hist('A', crossUp), 'B': _hist('B', crossDown)});
    expect(crosses.where((x) => x.kind == WatchSignalKind.crossedAbove200).map((x) => x.symbol), ['A']);
    expect(crosses.where((x) => x.kind == WatchSignalKind.crossedBelow200).map((x) => x.symbol), ['B']);
  });
}
