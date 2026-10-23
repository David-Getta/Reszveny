import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/models/stock_metrics.dart';
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
        'dividendGrowthRate5Y': 7.25,
      },
    });
    expect(m.peTrailing, 35.2);
    expect(m.peForward, isNull);
    expect(m.week52HighDate, DateTime(2026, 7, 15));
    expect(m.averageVolume10d, 52.3e6);
    expect(m.beta, 1.21);
    expect(m.dividendGrowth5y, 7.25);
    expect(StockMetrics.fromJson(m.toJson()).dividendGrowth5y, 7.25, reason: 'a gyorsítótárban is megmarad');
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
    expect(c.history.single.period, DateTime(2026, 8, 1));
    expect(FinnhubMarketDataProvider.parseConsensus([]), isNull);
  });

  test('parseConsensus: newest month first whatever the order, at most 4 months in all', () {
    final c = FinnhubMarketDataProvider.parseConsensus([
      for (var m = 3; m <= 9; m++) {'period': '2026-0$m-01', 'buy': m},
    ])!;
    expect(c.period, DateTime(2026, 9, 1));
    expect(c.history.map((h) => h.period.month), [8, 7, 6]);
  });

  test('analysis extras: peers, insider summary, earnings surprises, next earnings', () {
    final e = FinnhubMarketDataProvider.parseAnalysisExtras(
      'AAPL',
      now: DateTime(2026, 10, 10),
      peers: ['AAPL', 'DELL', 'HPQ'],
      insider: {
        'data': [
          {'name': 'COOK TIMOTHY D', 'change': -50000, 'transactionDate': '2026-09-01', 'transactionCode': 'S'},
          {
            'name': 'LEVINSON ARTHUR',
            'change': 2000,
            'transactionDate': '2026-09-15',
            'transactionCode': 'P',
            'transactionPrice': 210.5,
          },
          {'name': 'X', 'change': 90000, 'transactionDate': '2026-08-20', 'transactionCode': 'M'},
        ],
      },
      earnings: [
        {'actual': 1.65, 'estimate': 1.6, 'period': '2026-06-30', 'surprisePercent': 3.1},
        {'actual': 1.5, 'estimate': 1.55, 'period': '2026-03-31', 'surprisePercent': -3.2},
      ],
      calendar: {
        'earningsCalendar': [
          {'date': '2026-10-30', 'hour': 'amc', 'epsEstimate': 1.7, 'revenueEstimate': 98000000000},
          {'date': '2026-10-01', 'hour': 'amc'},
        ],
      },
    );
    expect(e.peers, ['DELL', 'HPQ']);
    final ins = e.insider!;
    expect(ins.buys, 1);
    expect(ins.sells, 1);
    expect(ins.netShares, -48000);
    expect(ins.notable.first.code, 'M'); // a legnagyobb mozgás elöl
    expect(e.earnings.first.period, DateTime(2026, 6, 30));
    expect(e.nextEarnings!.date, DateTime(2026, 10, 30));
    expect(e.nextEarnings!.hour, 'amc');
    expect(e.toJson()['earnings_history'], hasLength(2));
  });

  test('analysis extras tolerate missing or broken responses', () {
    final e = FinnhubMarketDataProvider.parseAnalysisExtras(
      'AAPL',
      peers: null,
      insider: 'x',
      earnings: {},
      calendar: [],
    );
    expect(e.isEmpty, isTrue);
    expect(e.toJson(), isEmpty);
  });

  test('daily candles are calendar days (their UTC date), whatever the time zone', () {
    final h = FinnhubMarketDataProvider.parseCandles('AAPL', {
      's': 'ok',
      // 2026-10-22 és 23, éjfél UTC; és egy New York-i éjfél (04:00Z).
      't': [1792627200, 1792713600, 1792814400],
      'c': [230.0, 231.0, 232.0],
    });
    expect(h.points.map((p) => (p.time.year, p.time.month, p.time.day, p.time.isUtc)), [
      (2026, 10, 22, false),
      (2026, 10, 23, false),
      (2026, 10, 24, false),
    ]);
  });
}
