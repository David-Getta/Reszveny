import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/features/billing/billing_service.dart';
import 'package:reszveny/features/billing/demo_billing_service.dart';
import 'package:reszveny/features/billing/pricing.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  test('localized prices round the way each currency expects', () {
    expect(Pricing.localize(7.99, 'USD', null), 7.99);
    expect(Pricing.localize(39.99, 'EUR', 0.92), 36.99); // 36.79 → x,99
    expect(Pricing.localize(7.99, 'HUF', 360), 2890); // 2876 → 2 890
    expect(Pricing.localize(39.99, 'HUF', 360), 14390); // 14 396 → 14 390
    expect(Pricing.localize(64.99, 'HUF', 360), 23390); // 23 396 → 23 390
    expect(Pricing.localize(15.99, 'JPY', 150), 2390); // 2398 → 2 390
    expect(Pricing.localize(7.99, 'INR', 84), 679); // 671 → …9
    expect(Pricing.localize(7.99, 'GBP', null), 7.99); // nincs árfolyam → USD-ár marad
  });

  test('formatting follows the locale and the currency', () {
    expect(Pricing.format(2990, 'HUF', 'hu'), contains('2'));
    expect(Pricing.format(2990, 'HUF', 'hu'), contains('Ft'));
    expect(Pricing.format(36.99, 'EUR', 'de'), contains('36,99'));
    expect(Pricing.format(39.99, 'USD', 'en'), r'$39.99');
  });

  test('demo store prices follow the region currency via the ECB rate', () async {
    final client = MockClient((req) async {
      expect(req.url.queryParameters['to'], 'HUF');
      return http.Response('{"amount":1,"base":"USD","date":"2026-10-09","rates":{"HUF":360.0}}', 200);
    });
    final fx = FxService(client: client);
    final demo = DemoBillingService(latency: Duration.zero, fx: fx, locale: 'hu', currency: () => 'HUF');
    final products = await demo.products();
    final normal = products.firstWhere((p) => p.id == 'stocklens.sub.normal');
    expect(normal.currency, 'HUF');
    expect(normal.rawPrice, 2890);
    expect(normal.price, contains('Ft'));
    expect(products.where((p) => p.kind == StoreProductKind.pack).length, 3);

    final usd = DemoBillingService(latency: Duration.zero, currency: () => 'USD');
    final p = (await usd.products()).first;
    expect(p.currency, 'USD');
    expect(p.price, r'$7.99');
  });
}
