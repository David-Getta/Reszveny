import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/features/fx/fx_service.dart';

void main() {
  test('parseLatest reads the rate and date', () {
    final r = FxService.parseLatest(
      {
        'amount': 1,
        'base': 'USD',
        'date': '2026-10-09',
        'rates': {'HUF': 355.21},
      },
      'USD',
      'HUF',
    );
    expect(r!.rate, 355.21);
    expect(r.date, DateTime(2026, 10, 9));
    expect(r.convert(2), closeTo(710.42, 0.001));
    expect(FxService.parseLatest({'rates': {}}, 'USD', 'HUF'), isNull);
  });

  test('a rate is kept for 12 hours from fetching it, even when the ECB date is days old (holidays)', () async {
    var calls = 0;
    final fx = FxService(
      client: MockClient((req) async {
        calls++;
        // Húsvét: a legutóbbi ECB-árfolyam öt napos.
        final date = DateTime.now().subtract(const Duration(days: 5)).toIso8601String().substring(0, 10);
        return http.Response('{"amount":1,"base":"USD","date":"$date","rates":{"HUF":355.2}}', 200);
      }),
    );
    for (var i = 0; i < 3; i++) {
      expect((await fx.rate('USD', 'HUF'))!.rate, 355.2);
    }
    expect(calls, 1);
  });

  test('same or unsupported currencies yield no rate without a network call', () async {
    final fx = FxService(baseUrl: 'http://127.0.0.1:9');
    expect(await fx.rate('USD', 'USD'), isNull);
    expect(await fx.rate('USD', 'XXX'), isNull);
  });

  test('default currency follows the country first, then the language', () {
    expect(defaultCurrencyFor(countryCode: 'HU', languageCode: 'en'), 'HUF');
    expect(defaultCurrencyFor(countryCode: 'BR', languageCode: 'pt'), 'BRL');
    expect(defaultCurrencyFor(languageCode: 'pt'), 'EUR');
    expect(defaultCurrencyFor(languageCode: 'hu'), 'HUF');
    expect(defaultCurrencyFor(languageCode: 'xx'), 'USD');
  });
}
