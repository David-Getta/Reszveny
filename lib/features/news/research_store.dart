import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'daily_brief.dart' show AskSource;

/// Egy AI-utánanézés eredménye: a szöveg és a felhasznált webes források.
typedef ResearchResult = ({String text, List<AskSource> sources});

/// AI-utánanézések (hírmagyarázat, gyorsjelentés-összefoglaló) megőrzése a
/// készüléken: kulcsonként [keepFor] ideig, legfeljebb [maxStored] darab, hogy
/// újraindítás után se fogyasszon újra kérdést és webkeresést.
class ResearchStore {
  ResearchStore(this.storeKey, {required this.keepFor, this.maxStored = 60, DateTime Function()? clock})
    : _clock = clock ?? DateTime.now;

  final String storeKey;
  final Duration keepFor;
  final int maxStored;
  final DateTime Function() _clock;

  /// A tárolt eredmény, ha még friss; különben [fetch], és az eredmény mentése.
  Future<ResearchResult> get(String key, Future<ResearchResult> Function() fetch) async {
    final stored = await _load();
    if (stored[key] case final hit?) return hit.result;
    final r = await fetch();
    await _save({...stored, key: (at: _clock(), result: r)});
    return r;
  }

  Future<Map<String, ({DateTime at, ResearchResult result})>> _load() async {
    final out = <String, ({DateTime at, ResearchResult result})>{};
    try {
      final raw = (await SharedPreferences.getInstance()).getString(storeKey);
      final j = raw == null ? null : jsonDecode(raw);
      if (j is! Map) return out;
      final cutoff = _clock().subtract(keepFor);
      for (final e in j.entries) {
        final v = e.value;
        if (v is! Map || v['text'] is! String) continue;
        final at = DateTime.tryParse('${v['at']}');
        if (at == null || at.isBefore(cutoff)) continue;
        out['${e.key}'] = (
          at: at,
          result: (
            text: v['text'] as String,
            sources: [
              for (final s in (v['sources'] is List ? v['sources'] as List : const []))
                if (s is Map && s['url'] is String) (title: '${s['title'] ?? ''}', url: s['url'] as String),
            ],
          ),
        );
      }
    } catch (_) {
      // Sérült tároló: újrakérjük.
    }
    return out;
  }

  Future<void> _save(Map<String, ({DateTime at, ResearchResult result})> all) async {
    final kept = all.entries.toList()..sort((a, b) => b.value.at.compareTo(a.value.at));
    try {
      await (await SharedPreferences.getInstance()).setString(
        storeKey,
        jsonEncode({
          for (final e in kept.take(maxStored))
            e.key: {
              'at': e.value.at.toIso8601String(),
              'text': e.value.result.text,
              'sources': [
                for (final s in e.value.result.sources) {'title': s.title, 'url': s.url},
              ],
            },
        }),
      );
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}
