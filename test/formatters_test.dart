import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/util/formatters.dart';

void main() {
  test('english formatting', () {
    final f = Fmt('en');
    expect(f.number(1234.5), '1,234.50');
    expect(f.compact(3.45e12, currency: 'USD'), '3.45T USD');
    expect(f.compact(52.3e6), '52.30M');
    expect(f.percent(0.94, withSign: true), '+0.94%');
    expect(f.signed(-3.7), '-3.70');
    expect(f.price(0.1234, 'USD'), '0.1234 USD');
    expect(f.price(null, 'USD'), 'n/a');
  });

  test('unknown locale falls back without throwing', () {
    final f = Fmt('xx_YY', na: '—');
    expect(f.numberLocale, 'en');
    expect(f.number(null), '—');
    expect(f.date(DateTime(2026, 10, 9)), isNotEmpty);
  });

  test('region-only unknown falls back to the language', () {
    final f = Fmt('de_XX');
    expect(f.numberLocale, 'de');
    expect(f.number(1234.5), '1.234,50');
  });

  test('rounding: no "-0.00", a unit up when it rounds to 1000, fractional shares without padding', () {
    final f = Fmt('en');
    expect(f.percent(-0.004), '0.00%');
    expect(f.percent(-0.004, withSign: true), '0.00%');
    expect(f.signed(-0.001), '0.00');
    expect(f.money(-0.001, 'USD'), '0.00 USD');
    expect(f.compact(999999), '1.00M');
    expect(f.compact(999995000), '1.00B');
    expect(f.compact(999.999), '1.00K');
    expect(f.compact(1234), '1.23K');
    expect(f.quantity(0.5), '0.5');
    expect(f.quantity(2.12345), '2.1235');
    expect(f.quantity(0.00001), '0.00001');
    expect(f.quantity(10), '10');
    expect(Fmt.roundTo(-0.04, 1), 0);
  });

  test('right-to-left languages: a signed number stays one left-to-right unit', () {
    final ar = Fmt('ar');
    expect(ar.percent(5, withSign: true), allOf(startsWith('\u2066'), endsWith('\u2069'), contains('5')));
    final ckb = Fmt('ckb');
    // A szoráni kurd az arab formátumot kapja (adat nélküli nyelv, a térség nyelve).
    expect(ckb.percent(-5.5), allOf(startsWith('\u2066'), endsWith('\u2069'), contains('-5.50%')));
    expect(Fmt('en').percent(5, withSign: true), '+5.00%');
  });
}
