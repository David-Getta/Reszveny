import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/l10n/supported_locales.dart';

/// Minden támogatott nyelvhez létezik ARB-fájl, minden kulccsal és
/// ugyanazokkal a helyőrzőkkel, mint az angol sablonban.
void main() {
  final dir = Directory('lib/l10n/arb');
  final en = jsonDecode(File('${dir.path}/app_en.arb').readAsStringSync()) as Map<String, dynamic>;
  final keys = en.keys.where((k) => !k.startsWith('@')).toSet();
  final placeholder = RegExp(r'\{([a-zA-Z]+)(?:,|\})');

  Set<String> placeholders(String s) => placeholder.allMatches(s).map((m) => m.group(1)!).toSet();

  for (final lang in SupportedLocales.all) {
    final file = File('${dir.path}/app_${lang.locale.toString()}.arb');
    test('${lang.englishName} (${file.path}) is complete', () {
      expect(file.existsSync(), isTrue, reason: 'missing ${file.path}');
      final data = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      expect(data['@@locale'], lang.locale.toString());
      final missing = keys.difference(data.keys.toSet());
      expect(missing, isEmpty, reason: 'missing keys');
      for (final k in keys) {
        final value = data[k];
        expect(value, isA<String>(), reason: '$k must be a string');
        expect((value as String).trim(), isNotEmpty, reason: '$k must not be empty');
        expect(placeholders(value), placeholders(en[k] as String), reason: 'placeholders of $k differ');
      }
    });
  }
}
