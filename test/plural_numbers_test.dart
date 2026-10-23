import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

/// A gen-l10n az „=0”, „=1”, „=2” ágat a „zero”, „one”, „two” kategória helyére
/// teszi. Ahol a nyelv kategóriája más számot is fed (franciául a 0, oroszul a 21,
/// lettül a 10 is), ott az ágban a számnak helyőrzővel kell szerepelnie – különben
/// „1 sor kihagyva” látszana 0 vagy 21 sorra.
void main() {
  final files = Directory('lib/l10n/arb').listSync().whereType<File>().where((f) => f.path.endsWith('.arb')).toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  for (final file in files) {
    final locale = RegExp(r'app_(.+)\.arb$').firstMatch(file.path)!.group(1)!;
    test('$locale: a plural branch shared with other counts shows the number', () {
      // Mely kategóriák fednek más számot is (0–300 között).
      final wide = <String>{};
      for (var n = 0; n <= 300; n++) {
        final c = Intl.pluralLogic(
          n,
          locale: locale,
          zero: 'zero',
          one: 'one',
          two: 'two',
          few: 'few',
          many: 'many',
          other: 'other',
          useExplicitNumberCases: false,
        );
        if ((c == 'zero' && n != 0) || (c == 'one' && n != 1) || (c == 'two' && n != 2)) wide.add(c);
      }
      if (wide.isEmpty) return;
      const slot = {'=0': 'zero', 'zero': 'zero', '=1': 'one', 'one': 'one', '=2': 'two', 'two': 'two'};
      final problems = <String>[];
      final data = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      for (final MapEntry(:key, :value) in data.entries) {
        if (key.startsWith('@') || value is! String) continue;
        for (final (variable, branches) in _plurals(value)) {
          for (final (selector, body) in branches) {
            if (wide.contains(slot[selector]) && !body.contains('{$variable}')) {
              problems.add('$key $selector{$body}');
            }
          }
        }
      }
      expect(problems, isEmpty);
    });
  }
}

/// Az üzenet plural-kifejezései: a változó neve és a legfelső szintű ágak (választó, szöveg).
List<(String, List<(String, String)>)> _plurals(String v) {
  int close(int i) {
    var depth = 1, j = i;
    while (depth > 0 && j < v.length) {
      if (v[j] == '{') depth++;
      if (v[j] == '}') depth--;
      j++;
    }
    return j;
  }

  final out = <(String, List<(String, String)>)>[];
  for (final m in RegExp(r'\{(\w+), plural,').allMatches(v)) {
    final end = close(m.start + 1) - 1;
    final branches = <(String, String)>[];
    var i = m.end;
    while (i < end) {
      final b = RegExp(r'\s*(=\d+|zero|one|two|few|many|other)\{').matchAsPrefix(v, i);
      if (b == null) break;
      final bodyEnd = close(b.end) - 1;
      branches.add((b.group(1)!, v.substring(b.end, bodyEnd)));
      i = bodyEnd + 1;
    }
    out.add((m.group(1)!, branches));
  }
  return out;
}
