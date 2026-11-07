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

  // A szöveges (nem szám) helyőrzők: a sablon metaadata szerint, ami nem `int` / `num`.
  final textPlaceholders = <String, Set<String>>{
    for (final k in keys)
      k: {
        for (final e in (((en['@$k'] as Map?)?['placeholders'] as Map?) ?? const {}).entries)
          if (!const {'int', 'num', 'double'}.contains((e.value as Map)['type'])) e.key as String,
      },
  };

  // Egy ICU-üzenet levelei: a plural / select ágak szövegei (egymásba ágyazva is), és a
  // külső szöveg. Egy ágból hiányzó helyőrző a felületen csendben eltűnne, a kulcsonkénti
  // halmaz-összevetés ezt nem venné észre.
  (String outer, List<List<String>> blocks) icuLeaves(String s) {
    final outer = StringBuffer();
    final blocks = <List<String>>[];
    var i = 0;
    while (i < s.length) {
      if (s[i] != '{') {
        outer.write(s[i++]);
        continue;
      }
      var depth = 0, j = i;
      for (; j < s.length; j++) {
        if (s[j] == '{') depth++;
        if (s[j] == '}' && --depth == 0) break;
      }
      final inner = s.substring(i + 1, j);
      final head = RegExp(r'^([a-zA-Z]+),\s*(plural|select),').firstMatch(inner);
      if (head == null) {
        outer.write(s.substring(i, j + 1));
      } else {
        var rest = inner.substring(head.end);
        final branch = RegExp(r'\s*(=\d+|[a-zA-Z]+)\s*\{');
        final leaves = <String>[];
        blocks.add(leaves);
        while (true) {
          final m = branch.matchAsPrefix(rest);
          if (m == null) break;
          var d = 0, k = m.end - 1;
          for (; k < rest.length; k++) {
            if (rest[k] == '{') d++;
            if (rest[k] == '}' && --d == 0) break;
          }
          final text = rest.substring(m.end, k);
          final (o, nested) = icuLeaves(text);
          if (nested.isEmpty) {
            leaves.add(text);
          } else {
            leaves.addAll(nested.expand((b) => b).map((x) => '$o $x'));
          }
          rest = rest.substring(k + 1);
        }
      }
      i = j + 1;
    }
    return (outer.toString(), blocks);
  }

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
        // Minden ágban megvan, ami az angol minden ágában: a név, a jel, az összeg egy
        // „egy” vagy „néhány” alakú ágból sem maradhat ki. (Egy fordítás több blokkra is
        // bonthatja a mondatot; egy blokk ágaitól csak azt kérjük, ami a blokk valamelyik
        // ágában szerepel.)
        final (enOuter, enBlocks) = icuLeaves(en[k] as String);
        if (enBlocks.isEmpty) continue;
        final enLeaves = enBlocks.expand((b) => b).toList();
        final required = textPlaceholders[k]!
            .where((p) => placeholders(enOuter).contains(p) || enLeaves.every((l) => placeholders(l).contains(p)))
            .toSet();
        final (outer, blocks) = icuLeaves(value);
        for (final block in blocks) {
          final inBlock = block.fold(<String>{}, (acc, l) => acc.union(placeholders(l)));
          final need = required.intersection(inBlock);
          for (final leaf in block) {
            final have = placeholders(outer).union(placeholders(leaf));
            expect(have.containsAll(need), isTrue, reason: '$k: branch "$leaf" lacks one of $need');
          }
        }
      }
    });
  }
}
