import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/l10n/supported_locales.dart';

void main() {
  test('english is the default and the fallback', () {
    expect(SupportedLocales.all.first.locale, const Locale('en'));
    expect(SupportedLocales.resolve(null), const Locale('en'));
    expect(SupportedLocales.resolve(const Locale('xx')), const Locale('en'));
  });

  test('language-only match ignores the country', () {
    expect(SupportedLocales.resolve(const Locale('de', 'AT')), const Locale('de'));
    expect(SupportedLocales.resolve(const Locale('pt', 'BR')), const Locale('pt'));
  });

  test('chinese resolves by script and region', () {
    const hans = Locale('zh');
    final hk = Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'HK');
    expect(SupportedLocales.resolve(const Locale('zh', 'CN')), hans);
    expect(SupportedLocales.resolve(const Locale('zh', 'TW')), hk);
    expect(SupportedLocales.resolve(const Locale('zh', 'HK')), hk);
    expect(SupportedLocales.resolve(const Locale('wuu')), hans);
    expect(SupportedLocales.resolve(const Locale('yue')), hk);
  });

  test('legacy and alias codes map to supported locales', () {
    expect(SupportedLocales.resolve(const Locale('tl')), const Locale('fil'));
    expect(SupportedLocales.resolve(const Locale('no')), const Locale('nb'));
    expect(SupportedLocales.resolve(const Locale('in')), const Locale('id'));
  });

  test('every language has a distinct locale and a native name', () {
    final tags = SupportedLocales.all.map((l) => l.tag).toSet();
    expect(tags.length, SupportedLocales.all.length);
    for (final l in SupportedLocales.all) {
      expect(l.nativeName, isNotEmpty);
      expect(l.englishName, isNotEmpty);
    }
  });
}
