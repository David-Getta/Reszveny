import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/portfolio/portfolio_page.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';
import 'package:reszveny/features/stock_detail/widgets/price_chart.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';

void main() {
  test('positions sort by size, total return, today and ticker; missing prices go last', () {
    Position pos(String s, double cost) => Position(
      symbol: s,
      currency: 'USD',
      lots: [PortfolioLot(id: s, symbol: s, quantity: 10, price: cost, currency: 'USD')],
    );
    final snap = PortfolioSnapshot.compute(
      [pos('AAA', 100), pos('BBB', 10), pos('CCC', 50), pos('DDD', 1)],
      quotes: {
        'AAA': const StockQuote(symbol: 'AAA', price: 110, change: -5), // +10%, ma -4,3%
        'BBB': const StockQuote(symbol: 'BBB', price: 20, change: 1), // +100%, ma +5,3%
        'CCC': const StockQuote(symbol: 'CCC', price: 40, change: 0), // -20%, ma 0
      },
      rate: (_, _) => 1,
      currency: 'USD',
      // Részvényenkénti évi osztalék: AAA 2,2/110 = 2%, CCC 2/40 = 5%; BBB nem fizet.
      dividends: {'AAA': 2.2, 'CCC': 2},
    );
    List<String> order(PositionSort s) => sortPositions(snap.rows, s).map((r) => r.position.symbol).toList();
    expect(order(PositionSort.weight), ['AAA', 'CCC', 'BBB', 'DDD']);
    expect(order(PositionSort.gain), ['BBB', 'AAA', 'CCC', 'DDD']);
    expect(order(PositionSort.today), ['BBB', 'CCC', 'AAA', 'DDD']);
    expect(order(PositionSort.name), ['AAA', 'BBB', 'CCC', 'DDD']);
    expect(order(PositionSort.dividend), ['CCC', 'AAA', 'BBB', 'DDD'], reason: 'osztalék nélkül a végére');
  });

  test('the chosen sort is remembered across restarts; broken stored values are ignored', () async {
    SharedPreferences.setMockInitialValues({});
    final p = await AppPreferences.load();
    expect(p.sortOf('positions'), isNull);
    await p.setSort('positions', 'dividend');
    await p.setSort('watch', 'gainers');
    final again = await AppPreferences.load();
    expect(again.sortOf('positions'), 'dividend');
    expect(again.sortOf('watch'), 'gainers');
    expect(AppPreferences.parseSorts('{"positions": 3, "watch": "name"}'), {'watch': 'name'});
    expect(AppPreferences.parseSorts('nem json'), isEmpty);
  });

  test('a marker sits on the nearest day of the chart', () {
    final pts = [for (var i = 0; i < 10; i++) PricePoint(time: DateTime(2026, 1, 1 + i * 3), close: 100.0 + i)];
    expect(nearestChartIndex(pts, DateTime(2026, 1, 1)), 0);
    expect(nearestChartIndex(pts, DateTime(2026, 1, 8)), 2);
    expect(nearestChartIndex(pts, DateTime(2026, 2, 1)), 9);
  });

  testWidgets('the chart legend appears only when a buy or sale is in the shown range', (tester) async {
    final end = DateTime(2026, 10, 16);
    final pts = [
      for (var i = 400; i >= 0; i--)
        PricePoint(
          time: end.subtract(Duration(days: i)),
          close: 100.0 + i % 7,
        ),
    ];
    Future<void> pump(List<ChartMarker> markers) => tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.build(Brightness.dark),
        localizationsDelegates: WhatStockApp.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: SizedBox(
            width: 400,
            child: PriceChart(
              history: PriceHistory(symbol: 'X', points: pts),
              fmt: Fmt('en'),
              markers: markers,
            ),
          ),
        ),
      ),
    );
    await pump([ChartMarker(date: DateTime(2026, 3, 2), sell: false)]);
    expect(find.text('Your buys'), findsOneWidget);
    expect(find.text('Your sales'), findsNothing);
    // Az 1 éves nézeten kívüli eladás nem látszik.
    await pump([ChartMarker(date: DateTime(2025, 1, 2), sell: true)]);
    expect(find.byKey(const ValueKey('chart-markers-legend')), findsNothing);
  });

  test('the benchmark starts from the same point and follows its own moves', () {
    final pts = [for (var i = 0; i < 5; i++) PricePoint(time: DateTime(2026, 1, 1 + i), close: 100.0 + i * 10)];
    final bench = [for (var i = -2; i < 5; i++) PricePoint(time: DateTime(2026, 1, 1 + i), close: 400.0 + i * 4)];
    final a = alignBenchmark(pts, bench)!;
    expect(a.first, 100);
    // 400 → 416: +4%.
    expect(a.last, closeTo(104, 1e-9));
    expect(alignBenchmark(pts, bench.take(1).toList()), isNull);
  });

  testWidgets('the S&P 500 is loaded only when switched on and its change is shown', (tester) async {
    final end = DateTime(2026, 10, 16);
    final pts = [
      for (var i = 400; i >= 0; i--)
        PricePoint(
          time: end.subtract(Duration(days: i)),
          close: 100.0 + (400 - i) / 10,
        ),
    ];
    final spy = [
      for (var i = 400; i >= 0; i--)
        PricePoint(
          time: end.subtract(Duration(days: i)),
          close: 500.0 + (400 - i) / 4,
        ),
    ];
    var loads = 0;
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.build(Brightness.dark),
        localizationsDelegates: WhatStockApp.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: SizedBox(
            width: 400,
            child: PriceChart(
              history: PriceHistory(symbol: 'X', points: pts),
              fmt: Fmt('en'),
              loadBenchmark: () async {
                loads++;
                // Az első kísérlet hibázik (pl. elérte a keretet): kikapcsol, a következő újra próbálja.
                if (loads == 1) throw Exception('rate limited');
                return PriceHistory(symbol: 'SPY', points: spy);
              },
            ),
          ),
        ),
      ),
    );
    expect(loads, 0);
    expect(find.text('Compared with the S&P 500'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('chart-benchmark')));
    await tester.pumpAndSettle();
    expect(loads, 1);
    expect(find.byKey(const ValueKey('chart-benchmark-change')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('chart-benchmark')));
    await tester.pumpAndSettle();
    expect(loads, 2);
    expect(find.byKey(const ValueKey('chart-benchmark-change')), findsOneWidget);
    expect(find.textContaining(RegExp(r'^S&P 500 \+')), findsOneWidget);
    // Ki- és bekapcsolva nem tölti újra.
    await tester.tap(find.byKey(const ValueKey('chart-benchmark')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('chart-benchmark-change')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('chart-benchmark')));
    await tester.pumpAndSettle();
    expect(loads, 2);
  });

  test('open lots after a sale: the oldest purchase is used up first', () {
    final p = Position(
      symbol: 'AAPL',
      currency: 'USD',
      lots: [
        PortfolioLot(id: '1', symbol: 'AAPL', quantity: 12, price: 168.4, currency: 'USD', date: DateTime(2024, 11, 4)),
        PortfolioLot(id: '2', symbol: 'AAPL', quantity: 6, price: 205.1, currency: 'USD', date: DateTime(2025, 8, 19)),
        PortfolioLot(
          id: '3',
          symbol: 'AAPL',
          quantity: 15,
          price: 230,
          currency: 'USD',
          date: DateTime(2026, 2, 1),
          sell: true,
        ),
      ],
    );
    expect(p.openLots.map((o) => (o.quantity, o.price)), [(3.0, 205.1)]);
  });
}
