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
}
