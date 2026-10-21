import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'daily_brief.dart' show stableDigest;
import 'research_store.dart' show ResearchResult;

/// Egy kész kérdés–válasz pár a kérdezz-vissza beszélgetésből.
typedef FollowUpTurn = ({String question, ResearchResult answer});

/// A kérdezz-vissza beszélgetések a készüléken: jegyzetenként (a tárgy és a
/// szöveg lenyomata) a kész kérdés–válasz párok, [keepFor] ideig, legfeljebb
/// [maxNotes] jegyzethez – újraindítás után is látszanak, és nem kérdeznek újra.
class FollowUpStore {
  FollowUpStore({
    this.storeKey = 'research_followups',
    this.keepFor = const Duration(days: 7),
    this.maxNotes = 30,
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final String storeKey;
  final Duration keepFor;
  final int maxNotes;
  final DateTime Function() _clock;

  /// A jegyzet kulcsa: a tárgy és a szöveg állandó lenyomata (a `hashCode`
  /// futásonként más lehetne).
  static String keyFor(String subject, String note) => '$subject|${stableDigest(note)}';

  /// A jegyzethez mentett párok (időrendben), vagy üres lista.
  Future<List<FollowUpTurn>> load(String key) async => (await _load())[key]?.turns ?? const [];

  /// Egy új pár a jegyzet végére; a jegyzet frissességi ideje újraindul.
  Future<void> append(String key, String question, ResearchResult answer) async {
    final all = await _load();
    final turns = [...?all[key]?.turns, (question: question, answer: answer)];
    await _save({...all, key: (at: _clock(), turns: turns)});
  }

  Future<Map<String, ({DateTime at, List<FollowUpTurn> turns})>> _load() async {
    final out = <String, ({DateTime at, List<FollowUpTurn> turns})>{};
    try {
      final raw = (await SharedPreferences.getInstance()).getString(storeKey);
      final j = raw == null ? null : jsonDecode(raw);
      if (j is! Map) return out;
      final cutoff = _clock().subtract(keepFor);
      for (final e in j.entries) {
        final v = e.value;
        if (v is! Map || v['turns'] is! List) continue;
        final at = DateTime.tryParse('${v['at']}');
        if (at == null || at.isBefore(cutoff)) continue;
        out['${e.key}'] = (
          at: at,
          turns: [
            for (final t in v['turns'] as List)
              if (t is Map && t['q'] is String && t['text'] is String)
                (
                  question: t['q'] as String,
                  answer: (
                    text: t['text'] as String,
                    sources: [
                      for (final s in (t['sources'] is List ? t['sources'] as List : const []))
                        if (s is Map && s['url'] is String) (title: '${s['title'] ?? ''}', url: s['url'] as String),
                    ],
                  ),
                ),
          ],
        );
      }
    } catch (_) {
      // Sérült tároló: üresnek vesszük.
    }
    return out;
  }

  Future<void> _save(Map<String, ({DateTime at, List<FollowUpTurn> turns})> all) async {
    final kept = all.entries.toList()..sort((a, b) => b.value.at.compareTo(a.value.at));
    try {
      await (await SharedPreferences.getInstance()).setString(
        storeKey,
        jsonEncode({
          for (final e in kept.take(maxNotes))
            e.key: {
              'at': e.value.at.toIso8601String(),
              'turns': [
                for (final t in e.value.turns)
                  {
                    'q': t.question,
                    'text': t.answer.text,
                    'sources': [
                      for (final s in t.answer.sources) {'title': s.title, 'url': s.url},
                    ],
                  },
              ],
            },
        }),
      );
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}
