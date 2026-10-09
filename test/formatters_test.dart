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
}
