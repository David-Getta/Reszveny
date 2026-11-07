import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/billing/pricing.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';

/// A fordítások technikai átnézésének (63. kör) javításai.
void main() {
  test('a count in a sentence uses the same digits as the numbers around it', () async {
    // A hét nyelv, ahol a számok a saját írás számjegyeivel íródnak: a mondatba fűzött darabszám is.
    for (final code in ['as', 'bn', 'fa', 'mr', 'my', 'ne', 'ps']) {
      final l10n = await AppLocalizations.delegate.load(Locale(code));
      final text = l10n.analystCount(12);
      expect(text, isNot(contains('12')), reason: '$code: $text');
      expect(text, contains(Fmt(code).integer(12)), reason: code);
      // Évszám csoportosítás nélkül, de a nyelv számjegyeivel.
      expect(Fmt(code).year(2026), isNot(contains('2026')));
      expect(Fmt(code).year(2026), isNot(contains(',')));
    }
    // Máshol latin számjegyek, és az évszám csoportosítás nélkül.
    expect((await AppLocalizations.delegate.load(const Locale('hu'))).analystCount(12), contains('12'));
    expect(Fmt('en').year(2026), '2026');
    expect(Fmt('de').year(2026), '2026');
  });

  test('the percent sign follows the locale: before, after, or after a space', () {
    expect(Fmt('en').percent(30, decimals: 0), '30%');
    expect(Fmt('hu').percent(30, decimals: 0), '30%');
    expect(Fmt('tr').percent(30, decimals: 0), '%30');
    // Francia, német, cseh: szóköz (nem törő) a jel előtt, ahogy a nyelv írja.
    for (final code in ['fr', 'de', 'cs', 'sv']) {
      final s = Fmt(code).percent(30, decimals: 0);
      expect(s, matches(RegExp(r'^30[   ]%$')), reason: '$code: "$s"');
    }
    expect(Fmt('fr').percent(-2.5, withSign: true, decimals: 1), matches(RegExp(r'^-2,5[   ]%$')));
    expect(Fmt('de').percent(2.5, withSign: true, decimals: 1), matches(RegExp(r'^\+2,5[   ]%$')));
  });

  test('a price for a language without number data is written the way its region writes numbers', () {
    // Haiti kreol, volof: francia írásmód (vessző); kecsua: spanyol; tádzsik: orosz.
    expect(Pricing.format(3.333, 'EUR', 'ht'), '3,33 EUR');
    expect(Pricing.format(3.333, 'EUR', 'wo'), '3,33 EUR');
    expect(Pricing.format(1234.5, 'USD', 'qu'), '1.234,50 USD');
    // Ismert nyelv: a pénznem szokásos alakja.
    expect(Pricing.format(39.99, 'EUR', 'de'), contains('39,99'));
  });

  test('the hotkey hint names the modifier keys in the user\'s language', () {
    const names = (ctrl: 'Strg', shift: 'Umschalt', alt: 'Alt', capsLock: 'Feststell', backspace: 'Rücktaste');
    final label = DesktopIntegration.describeHotKey(
      DesktopIntegration.defaultHotKeyFor(mac: false),
      space: 'Leertaste',
      mac: false,
      names: names,
    );
    expect(label, contains('Strg'));
    expect(label, contains('Leertaste'));
    expect(label, isNot(contains('Ctrl')));
  });
}
