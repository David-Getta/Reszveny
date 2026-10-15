import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// A bolti adatlapok (tool/store_listing/<kód>.json) a boltok korlátain belül
/// maradnak, és a fastlane-mappa naprakész (export.py után).
void main() {
  final sources = Directory('tool/store_listing').listSync().whereType<File>().where((f) => f.path.endsWith('.json'));
  const limits = {
    'title': 30,
    'subtitle': 30,
    'short_description': 80,
    'promotional_text': 170,
    'full_description': 4000,
  };

  test('every listing fits the store limits and keeps the brand and the disclaimer structure', () {
    final en = jsonDecode(File('tool/store_listing/en.json').readAsStringSync()) as Map<String, dynamic>;
    final bullets = '\n• '.allMatches(en['full_description'] as String).length;
    expect(sources.length, greaterThan(2));
    for (final f in sources) {
      final d = jsonDecode(f.readAsStringSync()) as Map<String, dynamic>;
      final name = f.uri.pathSegments.last;
      expect(d.keys.toSet(), {...limits.keys, 'keywords'}, reason: name);
      for (final e in limits.entries) {
        final v = d[e.key] as String;
        expect(v.trim(), isNotEmpty, reason: '$name ${e.key}');
        expect(v.runes.length, lessThanOrEqualTo(e.value), reason: '$name ${e.key}');
      }
      expect(utf8.encode(d['keywords'] as String).length, lessThanOrEqualTo(100), reason: '$name keywords');
      expect(d['title'], contains('WhatStock'), reason: name);
      expect('\n• '.allMatches(d['full_description'] as String).length, bullets, reason: '$name bullets');
    }
  });

  test('the fastlane folders match the sources', () {
    final ios = File('fastlane/metadata/ios/hu/description.txt');
    final play = File('fastlane/metadata/android/hu-HU/full_description.txt');
    final hu = jsonDecode(File('tool/store_listing/hu.json').readAsStringSync()) as Map<String, dynamic>;
    expect(ios.readAsStringSync().trim(), (hu['full_description'] as String).trim());
    expect(play.readAsStringSync().trim(), (hu['full_description'] as String).trim());
    for (final f in sources) {
      final code = f.uri.pathSegments.last.replaceAll('.json', '');
      final d = jsonDecode(f.readAsStringSync()) as Map<String, dynamic>;
      final dirs = Directory('fastlane/metadata').listSync(recursive: true).whereType<File>().where((x) {
        return x.path.endsWith('title.txt') || x.path.endsWith('name.txt');
      });
      expect(
        dirs.any((x) => x.readAsStringSync().trim() == (d['title'] as String).trim()),
        isTrue,
        reason: '$code is exported (run python3 tool/store_listing/export.py)',
      );
    }
  });
}
