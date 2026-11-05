import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';

void main() {
  final provider = DemoMarketDataProvider(latency: Duration.zero);

  test('details loads every section for a supported symbol', () async {
    final d = await provider.details('AAPL');
    expect(d.quote, isNotNull);
    expect(d.profile?.name, 'Apple Inc.');
    expect(d.metrics?.peTrailing, isNotNull);
    expect(d.news, isNotEmpty);
    expect(d.consensus?.total, greaterThan(0));
    expect(d.errors, isEmpty);
  });

  test('unsupported symbol fills every section with the same error instead of throwing', () async {
    final d = await provider.details('ZZZZ');
    expect(d.quote, isNull);
    expect(d.errors.keys, containsAll(DetailSection.values));
    final e = d.errors[DetailSection.quote];
    expect(e, isA<MarketDataException>().having((e) => e.code, 'code', AppErrorCode.demoUnsupportedSymbol));
  });

  test('the 52-week range comes from the same sample series as the chart', () async {
    for (final symbol in DemoMarketDataProvider.supportedSymbols) {
      final m = await provider.metrics(symbol);
      final year = (await provider.history(symbol, years: 1)).points;
      final five = (await provider.history(symbol, years: 5)).points;
      // Az 5 éves sorozat utolsó éve ugyanaz, mint az 1 éves.
      expect(five.sublist(five.length - year.length).map((p) => p.close), year.map((p) => p.close));
      final closes = year.map((p) => p.close);
      final hi = closes.reduce((a, b) => a > b ? a : b);
      final lo = closes.reduce((a, b) => a < b ? a : b);
      expect(m.week52High, inInclusiveRange(hi, hi * 1.011), reason: symbol);
      expect(m.week52Low, inInclusiveRange(lo * 0.989, lo), reason: symbol);
      expect(year.last.close, closeTo((await provider.quote(symbol)).price, 1e-9));
    }
  });
}
