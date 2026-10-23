import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/portfolio/annual_summary.dart';
import 'package:reszveny/features/portfolio/dividend_forecast.dart';
import 'package:reszveny/features/portfolio/portfolio_csv.dart';
import 'package:reszveny/features/portfolio/portfolio_history.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';

/// Egy kódátnézés portfólió-számítási hibáinak ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('a sale dated before the buy still counts: quantity is buys minus sells', () async {
    final store = PortfolioStore();
    await store.add(symbol: 'AAPL', quantity: 100, price: 150, currency: 'USD', date: DateTime(2026, 10, 20));
    await store.add(symbol: 'AAPL', quantity: 20, price: 180, currency: 'USD', date: DateTime(2026, 3, 2), sell: true);
    final p = store.positions.single;
    expect(p.quantity, 80);
    expect(p.sales, hasLength(1));
    expect(p.realizedGain, closeTo(20 * 30, 1e-9));
  });

  test('the rebalance plan leaves out positions without a price', () async {
    final store = PortfolioStore();
    await store.add(symbol: 'AAA', quantity: 10, price: 100, currency: 'USD');
    await store.add(symbol: 'BBB', quantity: 10, price: 100, currency: 'USD');
    final snap = PortfolioSnapshot.compute(
      store.positions,
      quotes: const {'AAA': StockQuote(symbol: 'AAA', price: 100)},
      rate: (_, _) => 1,
      currency: 'USD',
    );
    expect(rebalancePlan(snap, const {'AAA': 50, 'BBB': 50}).map((x) => x.symbol), ['AAA']);
  });

  test('today\'s result counts a share bought today from its buy price', () async {
    final store = PortfolioStore();
    await store.add(symbol: 'X', quantity: 10, price: 105, currency: 'USD', date: DateTime.now());
    final snap = PortfolioSnapshot.compute(
      store.positions,
      quotes: const {'X': StockQuote(symbol: 'X', price: 106, change: 6)},
      rate: (_, _) => 1,
      currency: 'USD',
    );
    expect(snap.rows.single.dayGain, closeTo(10, 1e-9));
  });

  test('the index comparison is not made when a buy is older than the index history', () {
    final lots = [
      PortfolioLot(id: 'a', symbol: 'X', quantity: 10, price: 100, currency: 'USD', date: DateTime(2015, 1, 2)),
    ];
    final x = PriceHistory(
      symbol: 'X',
      points: [
        PricePoint(time: DateTime(2015, 1, 2), close: 100),
        PricePoint(time: DateTime(2026, 10, 20), close: 300),
      ],
    );
    final index = PriceHistory(
      symbol: 'SPY',
      points: [
        PricePoint(time: DateTime(2021, 1, 4), close: 100),
        PricePoint(time: DateTime(2026, 10, 20), close: 150),
      ],
    );
    expect(benchmarkComparison(lots, {'X': x}, index, (_) => 1), isNull);
  });

  test('yield on cost is scaled to the shares still held', () async {
    final store = PortfolioStore();
    await store.add(symbol: 'KO', quantity: 100, price: 100, currency: 'USD', date: DateTime(2025, 1, 2));
    for (final m in [1, 4, 7]) {
      await store.addDividend(symbol: 'KO', amount: 100, currency: 'USD', date: DateTime(2026, m, 15));
    }
    await store.add(symbol: 'KO', quantity: 90, price: 110, currency: 'USD', date: DateTime(2026, 8, 1), sell: true);
    final now = DateTime(2026, 10, 23);
    final y = yieldOnCost(store.dividendsOf('KO'), store.positions.single.cost, now: now, scale: store.dividendScale);
    expect(y, closeTo(3, 1e-9), reason: '3 × \$100 on 100 shares = \$3 per share a year on a \$100 cost');
  });

  test('a stock split moves the stock\'s price alerts into the new units', () async {
    final alerts = AlertStore();
    final above = await alerts.add(symbol: 'NVDA', kind: AlertKind.above, value: 1200, currency: 'USD');
    final move = await alerts.add(symbol: 'NVDA', kind: AlertKind.move, value: 5, currency: 'USD');
    await alerts.applySplit('NVDA', from: 1, to: 10, date: DateTime.now().add(const Duration(days: 1)));
    expect(alerts.alerts.firstWhere((a) => a.id == above.id).value, closeTo(120, 1e-9));
    expect(alerts.alerts.firstWhere((a) => a.id == move.id).value, 5);
  });

  test('the realized gains file shows a sale before a split as on the trade confirmation', () async {
    final store = PortfolioStore();
    await store.add(symbol: 'X', quantity: 10, price: 400, currency: 'USD', date: DateTime(2024, 1, 2));
    await store.add(symbol: 'X', quantity: 5, price: 500, currency: 'USD', date: DateTime(2024, 3, 2), sell: true);
    await store.addSplit(symbol: 'X', from: 1, to: 4, date: DateTime(2024, 6, 10));
    final csv = realizedCsv(store.allPositions, stored: {for (final l in store.lots) l.id: l});
    expect(csv.split('\n')[1], startsWith('2024-03-02,X,5,500,2500,2000,500'));
  });

  test('the annual summary does not offer a year that only has a dividend announced for later', () async {
    final store = PortfolioStore();
    await store.addDividend(symbol: 'KO', amount: 10, currency: 'USD', date: DateTime(2027, 1, 15));
    await store.add(symbol: 'KO', quantity: 1, price: 60, currency: 'USD', date: DateTime(2026, 1, 2));
    await store.add(symbol: 'KO', quantity: 1, price: 70, currency: 'USD', date: DateTime(2026, 5, 2), sell: true);
    expect(summaryYears(store, now: DateTime(2026, 10, 23)), [2026]);
  });

  test('on 29 February the twelve-month window still starts on 28 February a year earlier', () {
    final d = DividendRecord(id: 'd', symbol: 'KO', amount: 1, currency: 'USD', date: DateTime(2027, 3, 1));
    expect(dividendsInLast12Months([d], now: DateTime(2028, 2, 29, 12)), hasLength(1));
  });
}
