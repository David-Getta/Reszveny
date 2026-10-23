import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/models/analysis_extras.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:reszveny/features/market_data/caching_market_data_provider.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';

/// A gyorsjelentés-lekérések száma; az első hívás hibát adhat.
class _CountingMarket extends DemoMarketDataProvider {
  _CountingMarket() : super(latency: Duration.zero);

  int earningsCalls = 0;
  bool failFirst = false;

  @override
  Future<EarningsOverview> earnings(String symbol) async {
    earningsCalls++;
    if (failFirst && earningsCalls == 1) throw const MarketDataException(AppErrorCode.marketUnreachable);
    return super.earnings(symbol);
  }
}

/// Egy kódátnézés árfolyam- és részvényoldali hibáinak ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  FxService fx(Map<String, double> rates) => FxService(
    client: MockClient((req) async {
      final from = req.url.queryParameters['from'], to = req.url.queryParameters['to'];
      final r = rates['$from>$to'];
      if (r == null) return http.Response('{}', 404);
      return http.Response(
        jsonEncode({
          'date': '2026-10-22',
          'rates': {to: r},
        }),
        200,
      );
    }),
  );

  test('the euro area and Bulgaria default to EUR, whatever the app language', () {
    for (final c in ['IE', 'MT', 'DE', 'NL', 'FI', 'HR', 'BG', 'AT']) {
      expect(
        defaultCurrencyFor(countryCode: c, languageCode: 'en'),
        'EUR',
        reason: c,
      );
    }
    expect(defaultCurrencyFor(languageCode: 'bg'), 'EUR');
    expect(FxService.isSupported('BGN'), isFalse);
  });

  test('a stored Bulgarian lev display currency becomes the euro', () async {
    SharedPreferences.setMockInitialValues({'display_currency': 'BGN'});
    final prefs = await AppPreferences.load();
    expect(prefs.displayCurrency, 'EUR');
  });

  test('pence and other minor units are converted as hundredths of the main currency', () async {
    final service = fx({'GBP>HUF': 452});
    final pence = await service.rate('GBp', 'HUF');
    expect(pence!.rate, closeTo(4.52, 1e-9));
    expect(pence.convert(600), closeTo(2712, 1e-6));
    expect((await service.rate('GBX', 'HUF'))!.rate, closeTo(4.52, 1e-9));
    expect(await service.ratesFor(['GBX', 'GBP'], 'GBP'), {'GBX': 0.01, 'GBP': 1});
    expect(service.cachedRate('GBp', 'HUF')!.rate, closeTo(4.52, 1e-9));
    expect(FxService.isSupported('ZAc'), isTrue);
    expect(FxService.major('ILA'), ('ILS', 0.01));
    expect(FxService.major('GBP'), ('GBP', 1.0));
  });

  test('earnings for the stock page are fetched once for a while; a failure is not kept', () async {
    final inner = _CountingMarket()..failFirst = true;
    final market = CachingMarketDataProvider(inner);
    await expectLater(market.earnings('AAPL'), throwsA(isA<MarketDataException>()));
    await market.earnings('AAPL');
    await market.earnings('AAPL');
    await market.earnings('aapl');
    expect(inner.earningsCalls, 2);
  });
}
