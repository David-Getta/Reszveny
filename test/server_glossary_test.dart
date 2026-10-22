import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// A szerver fogalomtár-oldalának adatai (server/lib/src/glossary_data.dart)
/// generáltak az app szövegeiből; ez a teszt jelzi, ha valaki az appban
/// változtat egy mutatón vagy magyarázaton, és elfelejti újragenerálni:
/// python3 tool/glossary/gen_server_glossary.py
void main() {
  /// Egy nyelv blokkjának szöveg-literáljai sorrendben (a formázástól függetlenül).
  List<String> literals(String data, String lang) {
    final start = data.indexOf("'$lang': [");
    expect(start, isNot(-1), reason: lang);
    final end = data.indexOf('],', start);
    final block = data.substring(start + "'$lang': [".length, end);
    return [
      for (final m in RegExp(r"'((?:[^'\\]|\\.)*)'").allMatches(block))
        m[1]!.replaceAllMapped(RegExp(r'\\(.)'), (e) => e[1]!),
    ];
  }

  test('the server glossary is generated from the app strings (hu, en) and is up to date', () {
    final pairs = RegExp(r'l10n\.(\w+): l10n\.(\w+),')
        .allMatches(File('lib/features/stock_detail/metric_glossary.dart').readAsStringSync())
        .map((m) => (m[1]!, m[2]!))
        .toList();
    final data = File('server/lib/src/glossary_data.dart').readAsStringSync();
    expect(pairs, isNotEmpty);
    for (final lang in ['hu', 'en']) {
      final arb = jsonDecode(File('lib/l10n/arb/app_$lang.arb').readAsStringSync()) as Map<String, dynamic>;
      final expected = [
        for (final (label, gloss) in pairs) ...[arb[label] as String, arb[gloss] as String],
      ];
      expect(literals(data, lang), expected, reason: '$lang: futtasd a tool/glossary/gen_server_glossary.py-t');
    }
  });
}
