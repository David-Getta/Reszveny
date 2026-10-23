import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:reszveny/features/market_data/caching_market_data_provider.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/portfolio/portfolio_history.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';

/// Az árlekérések száma.
class _Counting extends DemoMarketDataProvider {
  _Counting() : super(latency: Duration.zero);

  int quotes = 0;

  @override
  Future<StockQuote> quote(String symbol) {
    quotes++;
    return super.quote(symbol);
  }
}

/// Egy teljesítmény-átnézés javításainak ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the portfolio value history of a large portfolio is computed quickly', () {
    final rnd = math.Random(1);
    final start = DateTime(2021, 10, 25);
    final symbols = [for (var i = 0; i < 40; i++) 'S$i'];
    final histories = {
      for (final s in symbols)
        s: PriceHistory(
          symbol: s,
          points: [
            for (var d = 0; d < 1260; d++)
              PricePoint(
                time: start.add(Duration(days: d)),
                close: 50 + rnd.nextDouble() * 50,
              ),
          ],
        ),
    };
    final lots = [
      for (var i = 0; i < 300; i++)
        PortfolioLot(
          id: 'l$i',
          symbol: symbols[i % 40],
          quantity: 1 + i % 7,
          price: 60,
          currency: 'USD',
          date: start.add(Duration(days: i * 4)),
          sell: i % 9 == 8,
        ),
    ];
    final index = histories['S0']!;
    final watch = Stopwatch()..start();
    final value = portfolioValueHistory(lots, histories, (_) => 1);
    final twr = portfolioTwrIndex(lots, histories, (_) => 1);
    final bench = benchmarkComparison(lots, histories, index, (_) => 1);
    watch.stop();
    expect(value, isNotNull);
    expect(twr, isNotEmpty);
    expect(bench, isNotNull);
    // Korábban ~3 s volt (napi dátum-objektumok, minden vételnél az egész index újraolvasva).
    expect(watch.elapsedMilliseconds, lessThan(1500), reason: '${watch.elapsedMilliseconds} ms');
  });

  test('a batch of additions notifies and saves once', () async {
    final store = PortfolioStore();
    var notified = 0;
    store.addListener(() => notified++);
    await store.batch(() async {
      for (var i = 0; i < 20; i++) {
        await store.add(symbol: 'AAPL', quantity: 1, price: 100 + i.toDouble(), currency: 'USD');
      }
    });
    expect(notified, 1);
    expect(store.lots, hasLength(20));
    final reloaded = await PortfolioStore.load();
    expect(reloaded.lots, hasLength(20));
  });

  test('quotes are reused for a short while when the memory is switched on', () async {
    final inner = _Counting();
    final market = CachingMarketDataProvider(inner, quoteMemo: const Duration(seconds: 20));
    await market.quote('AAPL');
    await market.quote('AAPL');
    await market.quote('aapl');
    expect(inner.quotes, 1);
    // Kikapcsolva (alapból) minden kérés friss.
    final plain = CachingMarketDataProvider(inner);
    await plain.quote('AAPL');
    await plain.quote('AAPL');
    expect(inner.quotes, 3);
  });

  test('a failed exchange-rate lookup is not repeated at once', () async {
    var calls = 0;
    final fx = FxService(
      client: MockClient((req) async {
        calls++;
        return http.Response(jsonEncode({'error': 'unavailable'}), 503);
      }),
    );
    expect(await fx.rate('USD', 'HUF'), isNull);
    expect(await fx.rate('USD', 'HUF'), isNull);
    expect(calls, 1);
  });
}
