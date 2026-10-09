import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/features/market_data/finnhub_market_data_provider.dart';

void main() {
  test('parseQuote maps Finnhub fields', () {
    final q = FinnhubMarketDataProvider.parseQuote('AAPL', {
      'c': 231.45,
      'd': 2.15,
      'dp': 0.94,
      'h': 232.1,
      'l': 228.95,
      'o': 229.8,
      'pc': 229.3,
      't': 1700000000,
    });
    expect(q.price, 231.45);
    expect(q.changePercent, 0.94);
    expect(q.previousClose, 229.3);
    expect(q.timestamp, DateTime.utc(2023, 11, 14, 22, 13, 20));
    expect(q.isUp, isTrue);
  });

  test('parseQuote rejects an unknown symbol (price 0)', () {
    expect(
      () => FinnhubMarketDataProvider.parseQuote('XXXX', {'c': 0, 'd': null, 'dp': null}),
      throwsA(isA<MarketDataException>().having((e) => e.code, 'code', AppErrorCode.noQuote)),
    );
  });

  test('parseProfile converts millions to absolute values', () {
    final p = FinnhubMarketDataProvider.parseProfile('AAPL', {
      'name': 'Apple Inc',
      'exchange': 'NASDAQ NMS - GLOBAL MARKET',
      'currency': 'USD',
      'country': 'US',
      'finnhubIndustry': 'Technology',
      'ipo': '1980-12-12',
      'marketCapitalization': 3450000.5,
      'shareOutstanding': 14900.0,
      'weburl': 'https://www.apple.com/',
      'logo': '',
      'isin': null,
    });
    expect(p.name, 'Apple Inc');
    expect(p.marketCap, closeTo(3.4500005e12, 1));
    expect(p.sharesOutstanding, 14.9e9);
    expect(p.ipoDate, DateTime(1980, 12, 12));
    expect(p.logoUrl, isNull);
    expect(p.isin, isNull);
  });

  test('parseProfile with empty body is a noProfile error', () {
    expect(
      () => FinnhubMarketDataProvider.parseProfile('XXXX', {}),
      throwsA(isA<MarketDataException>().having((e) => e.code, 'code', AppErrorCode.noProfile)),
    );
  });

  test('parseMetrics tolerates missing keys and scales volume', () {
    final m = FinnhubMarketDataProvider.parseMetrics({
      'metric': {
        'peTTM': 35.2,
        '52WeekHigh': 237.23,
        '52WeekHighDate': '2026-07-15',
        '10DayAverageTradingVolume': 52.3,
        'beta': '1.21',
      },
    });
    expect(m.peTrailing, 35.2);
    expect(m.peForward, isNull);
    expect(m.week52HighDate, DateTime(2026, 7, 15));
    expect(m.averageVolume10d, 52.3e6);
    expect(m.beta, 1.21);
  });

  test('parseNews skips incomplete rows and sorts newest first', () {
    final news = FinnhubMarketDataProvider.parseNews([
      {'headline': 'Old', 'url': 'https://a', 'datetime': 1000, 'source': 'X'},
      {'headline': 'No url', 'datetime': 3000},
      {'headline': 'New', 'url': 'https://b', 'datetime': 2000},
    ]);
    expect(news.map((n) => n.headline), ['New', 'Old']);
  });

  test('parseConsensus reads the latest period', () {
    final c = FinnhubMarketDataProvider.parseConsensus([
      {'period': '2026-09-01', 'strongBuy': 10, 'buy': 20, 'hold': 5, 'sell': 1, 'strongSell': 0},
      {'period': '2026-08-01', 'strongBuy': 1, 'buy': 1, 'hold': 1, 'sell': 1, 'strongSell': 1},
    ]);
    expect(c!.total, 36);
    expect(c.period, DateTime(2026, 9, 1));
    expect(c.score, closeTo(4.08, 0.01));
    expect(FinnhubMarketDataProvider.parseConsensus([]), isNull);
  });
}
