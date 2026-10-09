import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/market_data/finnhub_market_data_provider.dart';

void main() {
  test('parseCandles maps parallel arrays and sorts by time', () {
    final h = FinnhubMarketDataProvider.parseCandles('AAPL', {
      's': 'ok',
      't': [1700000000, 1699900000],
      'c': [2.0, 1.0],
      'o': [1.9, 0.9],
      'h': [2.1, 1.1],
      'l': [1.8, 0.8],
      'v': [10, 20],
    });
    expect(h.points.map((p) => p.close), [1.0, 2.0]);
    expect(h.points.first.volume, 20);
  });

  test('parseCandles with no data is a chartUnavailable error', () {
    expect(
      () => FinnhubMarketDataProvider.parseCandles('X', {'s': 'no_data'}),
      throwsA(isA<MarketDataException>().having((e) => e.code, 'code', AppErrorCode.chartUnavailable)),
    );
  });

  test('parseReportedFinancials picks known concepts, newest year first, deduplicated', () {
    final f = FinnhubMarketDataProvider.parseReportedFinancials('AAPL', {
      'data': [
        {
          'year': 2024,
          'endDate': '2024-09-28 00:00:00',
          'report': {
            'ic': [
              {'concept': 'us-gaap_RevenueFromContractWithCustomerExcludingAssessedTax', 'value': 391035000000},
              {'concept': 'us-gaap_NetIncomeLoss', 'value': 93736000000},
            ],
            'bs': [
              {'concept': 'us-gaap_Assets', 'value': 364980000000},
              {'concept': 'us-gaap_StockholdersEquity', 'value': 56950000000},
            ],
            'cf': [
              {'concept': 'us-gaap_NetCashProvidedByUsedInOperatingActivities', 'value': 118254000000},
            ],
          },
        },
        {
          'year': 2023,
          'report': {
            'ic': [
              {'concept': 'us-gaap_Revenues', 'value': 383285000000},
            ],
          },
        },
        {
          'year': 2024,
          'report': {
            'ic': [
              {'concept': 'us-gaap_Revenues', 'value': 1},
            ],
          },
        },
        {'year': 2022, 'report': {}},
      ],
    });
    expect(f.years.map((y) => y.fiscalYear), [2024, 2023]);
    expect(f.years.first.revenue, 391035000000);
    expect(f.years.first.operatingCashFlow, 118254000000);
    expect(f.years.first.periodEnd, DateTime(2024, 9, 28));
    expect(f.years.last.netIncome, isNull);
  });

  test('demo provider yields a 5-year history ending at the quote and 4 years of statements', () async {
    final p = DemoMarketDataProvider(latency: Duration.zero);
    final h = await p.history('AAPL');
    final q = await p.quote('AAPL');
    expect(h.points.length, greaterThan(1000));
    expect(h.points.last.close, closeTo(q.price, 0.01));
    expect(h.lastDays(7).length, inInclusiveRange(4, 6));
    final s = await p.statements('AAPL');
    expect(s.years.length, 4);
    expect(s.years.first.fiscalYear, greaterThan(s.years.last.fiscalYear));
  });
}
