import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import 'daily_brief.dart' show AskSource, askWithSources;
import 'watch_news.dart';

/// A magyarázat és a felhasznált források.
typedef NewsExplanation = ({String text, List<AskSource> sources});

/// „Mit jelent ez?”: néhány mondatos AI-magyarázat egy hírről – mi történt, és
/// mit jelenthet a részvényre. Röviden utánanéz a weben (a cégek kapcsolata, a
/// kulcsállítások, megnyitja a cikket), és értékeli a forrás hitelességét. A napi
/// kérdéskeretből; hírenként egyszer kéri le, és a készüléken is megőrzi
/// ([keepFor] ideig, legfeljebb [maxStored] darabot), hogy újraindítás után se
/// fogyasszon újra.
class NewsExplainer {
  NewsExplainer({required this.config, http.Client? client, DateTime Function()? clock})
    : _client = client ?? http.Client(),
      _clock = clock ?? DateTime.now;

  final DateTime Function() _clock;

  static const _storeKey = 'news_explanations';
  static const keepFor = Duration(days: 7);
  static const maxStored = 60;

  final AppConfig config;
  final http.Client _client;
  final Map<String, Future<NewsExplanation>> _cache = {};

  /// Legfeljebb ennyi webkeresés és megnyitott oldal (a szerver is korlátozza).
  static const maxSearches = 3;
  static const maxFetches = 2;

  static const systemPrompt = '''
You explain a single news item about a listed company to a private investor.
Before writing, check the facts with the web tools:
- Open the article URL if one is given, to read more than the headline.
- Search for what the headline leaves unclear, above all how the companies named in it are actually connected (customer, supplier, investor, shareholding, partner, competitor), with numbers and dates where they exist.
- Judge the source: who published it, whether it is original reporting, analysis, opinion or promotional content, and whether reliable outlets report the same.
Rules:
- Write in the requested language, plainly, the way a financial journalist would explain it to a friend.
- 4 to 6 short sentences, plain text, no Markdown, no bullet points, no URLs in the text.
- First say what happened, in your own words, with the key facts you verified. Then explain what it could mean for the company and its stock, and what to watch next.
- End with one sentence on how reliable the source looks and why.
- Never invent facts, numbers or dates. If something could not be verified, say so.
- Do not tell the reader to buy or sell.''';

  static Map<String, dynamic> requestBody(WatchedNews n, {required String language, String model = ''}) => {
    'model': model,
    'max_tokens': 1500,
    'system': [
      {'type': 'text', 'text': systemPrompt},
    ],
    'tools': [
      {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': maxSearches},
      {'type': 'web_fetch_20260209', 'name': 'web_fetch', 'max_uses': maxFetches, 'max_content_tokens': 8000},
    ],
    'messages': [
      {
        'role': 'user',
        'content': [
          'Language: $language',
          'Stock: ${n.symbol}',
          'Published: ${n.item.publishedAt.toUtc().toIso8601String().substring(0, 10)}',
          if (n.item.source case final s?) 'Source: $s',
          if (n.item.url.isNotEmpty) 'URL: ${n.item.url}',
          'Headline: ${n.item.headline}',
          if (n.item.summary case final s? when s.trim().isNotEmpty) 'Summary: ${s.trim()}',
        ].join('\n'),
      },
    ],
  };

  /// A magyarázat (hírenként és nyelvenként egyszer kérve; hiba után újrapróbálható).
  Future<NewsExplanation> explain(WatchedNews n, {required String language}) {
    if (!config.hasAnthropicKey) return Future.error(const AnalysisException(AppErrorCode.aiNotConfigured));
    final key = '$language|${n.item.url.isEmpty ? n.item.headline : n.item.url}';
    final f = _cache[key] ??= _storedOrAsk(key, n, language);
    f.catchError((Object _) {
      _cache.remove(key);
      return (text: '', sources: const <AskSource>[]);
    });
    return f;
  }

  /// A készüléken tárolt magyarázat, ha friss; különben lekérés és mentés.
  Future<NewsExplanation> _storedOrAsk(String key, WatchedNews n, String language) async {
    final stored = await _load();
    final hit = stored[key];
    if (hit != null) return hit.explanation;
    final e = await _ask(requestBody(n, language: language, model: config.anthropicModel));
    await _save({...stored, key: (at: _clock(), explanation: e)});
    return e;
  }

  Future<Map<String, ({DateTime at, NewsExplanation explanation})>> _load() async {
    final out = <String, ({DateTime at, NewsExplanation explanation})>{};
    try {
      final raw = (await SharedPreferences.getInstance()).getString(_storeKey);
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
          explanation: (
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

  Future<void> _save(Map<String, ({DateTime at, NewsExplanation explanation})> all) async {
    final kept = all.entries.toList()..sort((a, b) => b.value.at.compareTo(a.value.at));
    try {
      await (await SharedPreferences.getInstance()).setString(
        _storeKey,
        jsonEncode({
          for (final e in kept.take(maxStored))
            e.key: {
              'at': e.value.at.toIso8601String(),
              'text': e.value.explanation.text,
              'sources': [
                for (final s in e.value.explanation.sources) {'title': s.title, 'url': s.url},
              ],
            },
        }),
      );
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }

  /// Ha a fiókban nincs engedélyezve az oldalmegnyitás (400), nélküle kérjük újra.
  Future<NewsExplanation> _ask(Map<String, dynamic> body) async {
    try {
      return await askWithSources(config, _client, body);
    } on AnalysisException catch (e) {
      if (e.code != AppErrorCode.aiHttp || !'${e.cause}'.contains('web_fetch')) rethrow;
      final tools = [
        for (final t in body['tools'] as List)
          if (!'${(t as Map)['type']}'.startsWith('web_fetch')) t,
      ];
      return askWithSources(config, _client, {...body, 'tools': tools});
    }
  }
}
