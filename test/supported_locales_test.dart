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
    expect(SupportedLocales.resolve(const Locale('iw')), const Locale('he'));
    expect(SupportedLocales.resolve(const Locale('pnb')), const Locale('ur'));
    expect(SupportedLocales.resolve(const Locale('azb')), const Locale('fa'));
    expect(SupportedLocales.resolve(const Locale('kmr')), const Locale('ku'));
  });

  test('120 languages, the new ones resolve to themselves', () {
    expect(SupportedLocales.all, hasLength(120));
    for (final code in ['ms', 'pa', 'pcm', 'th', 'am', 'yo', 'my', 'he', 'ckb', 'mai', 'lv', 'kab']) {
      expect(SupportedLocales.resolve(Locale(code)), Locale(code));
    }
    expect(SupportedLocales.resolve(const Locale('ms', 'MY')), const Locale('ms'));
  });

  test('right-to-left languages', () {
    for (final code in ['ar', 'fa', 'he', 'ps', 'sd', 'ur', 'ug', 'ckb']) {
      expect(SupportedLocales.isRtl(Locale(code)), isTrue, reason: code);
    }
    expect(SupportedLocales.isRtl(const Locale('hu')), isFalse);
    // Minden jobbról balra író nyelv a támogatottak között van.
    final codes = SupportedLocales.all.map((l) => l.locale.languageCode).toSet();
    expect(codes.containsAll(SupportedLocales.rtlLanguages), isTrue);
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
