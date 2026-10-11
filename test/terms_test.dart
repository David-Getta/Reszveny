import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/l10n/supported_locales.dart';
import 'package:reszveny/l10n/terms.dart';
import 'package:reszveny/l10n/terms_data.dart';

void main() {
  test('every supported language has industry and country names', () {
    final en = jsonDecode(File('tool/terms/en.json').readAsStringSync()) as Map<String, dynamic>;
    final industries = (en['industries'] as Map).length;
    final countries = (en['countries'] as Map).length;
    for (final lang in SupportedLocales.all) {
      final tag = Terms.tagFor(lang.locale);
      expect(kIndustryNames[tag]?.length, industries, reason: 'industries: $tag');
      expect(kCountryNames[tag]?.length, countries, reason: 'countries: $tag');
    }
  });

  test('industry, sector and country values follow the UI language', () {
    const hu = Locale('hu');
    expect(Terms.industry('Banking', hu), 'Bankszektor');
    expect(Terms.industry('Financials', hu), 'Pénzügy');
    expect(Terms.industry('financials', hu), 'Pénzügy');
    expect(Terms.country('HU', hu), 'Magyarország');
    expect(Terms.country('Hungary', hu), 'Magyarország');
    expect(Terms.country('US', const Locale('de')), isNot('US'));
    expect(
      Terms.country('HK', const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'HK')),
      isNot('HK'),
    );
    // Ismeretlen érték változatlan marad.
    expect(Terms.industry('Quantum Widgets', hu), 'Quantum Widgets');
    expect(Terms.country('XX', hu), 'XX');
    expect(Terms.industry(null, hu), isNull);
  });

  test('hotkey labels do not depend on debug names (release builds)', () {
    expect(DesktopIntegration.physicalKeyLabel(PhysicalKeyboardKey.space, mac: true), 'Space');
    expect(DesktopIntegration.physicalKeyLabel(PhysicalKeyboardKey.keyK), 'K');
    expect(DesktopIntegration.physicalKeyLabel(PhysicalKeyboardKey.digit0), '0');
    expect(DesktopIntegration.physicalKeyLabel(PhysicalKeyboardKey.digit5), '5');
    expect(DesktopIntegration.physicalKeyLabel(PhysicalKeyboardKey.f12), 'F12');
    expect(DesktopIntegration.physicalKeyLabel(PhysicalKeyboardKey.enter, mac: true), '↩');
  });
}
