import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/features/recognition/ticker_extractor.dart';

void main() {
  const extractor = TickerExtractor();

  test('exchange-prefixed ticker is the most confident', () {
    final c = extractor.extract('Apple Inc. (NASDAQ: AAPL) closed higher');
    expect(c.first.symbol, 'AAPL');
    expect(c.first.exchange, 'NASDAQ');
    expect(c.first.confidence, greaterThanOrEqualTo(0.9));
  });

  test('known company names map to tickers', () {
    final c = extractor.extract('Microsoft Corporation annual report');
    expect(c.map((e) => e.symbol), contains('MSFT'));
  });

  test('dollar-prefixed tickers beat bare uppercase words', () {
    final c = extractor.extract(r'Watching $NVDA and TSLA today');
    final nvda = c.firstWhere((e) => e.symbol == 'NVDA');
    final tsla = c.firstWhere((e) => e.symbol == 'TSLA');
    expect(nvda.confidence, greaterThan(tsla.confidence));
  });

  test('currencies and common words are not tickers', () {
    final c = extractor.extract('USD EUR THE NYSE OPEN HIGH LOW');
    expect(c, isEmpty);
  });

  test('empty text gives no candidates', () {
    expect(extractor.extract('   '), isEmpty);
  });

  test('Hungarian issuer names are recognised', () {
    final c = extractor.extract('OTP Bank Nyrt. törzsrészvény, névérték 100 Ft');
    expect(c.first.symbol, 'OTP');
  });
}
