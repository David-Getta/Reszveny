import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import 'daily_brief.dart' show askWithSources, sharedCacheField;
import 'research_store.dart';

/// „Miért mozog ma?”: ha egy részvény napi mozgása nagy, az AI röviden
/// utánanéz a mai híreknek, és elmondja, mi mozgatja – forrásokkal. A napi
/// kérdéskeretből; részvényenként, naponként és nyelvenként egyszer, a
/// készüléken 2 napig megőrizve, és a szerver a többi felhasználóval is
/// megosztja (ugyanaz a részvény, ugyanaz a nap).
class MoveExplainer {
  MoveExplainer({required this.config, http.Client? client, DateTime Function()? clock})
    : _client = client ?? http.Client(),
      _clock = clock ?? DateTime.now,
      _store = ResearchStore('move_notes', keepFor: const Duration(days: 2), maxStored: 30, clock: clock);

  final AppConfig config;
  final http.Client _client;
  final DateTime Function() _clock;
  final ResearchStore _store;
  final Map<String, Future<ResearchResult>> _cache = {};

  /// Ekkora napi mozgástól kínáljuk fel (százalék).
  static const minMovePercent = 2.5;
  static const maxSearches = 2;
  static const maxFetches = 1;

  static const systemPrompt = '''
A private investor asks why a listed stock is moving unusually today. Use the web search to find today's (or the latest trading day's) news about the company: results, guidance, analyst actions, deals, legal or regulatory news, sector or market-wide moves, index changes, unusual flows. Open one article if the headline is not enough.
Rules:
- Write in the requested language, plainly, the way a financial journalist would explain it to a friend.
- Plain text, no Markdown, at most about 110 words: first the most likely reason with the key fact (number, date, who said it), then other contributing factors if any, then one sentence on what to watch next.
- If you find no company-specific news, say so and name the broader market or sector move if there is one.
- Never invent facts, numbers or dates. Do not tell the reader to buy or sell.''';

  static Map<String, dynamic> requestBody({
    required String symbol,
    required String name,
    required double changePercent,
    required String language,
    required DateTime today,
    String model = '',
  }) {
    final day = today.toIso8601String().substring(0, 10);
    return {
      'model': model,
      'max_tokens': 1200,
      // Ugyanaz a részvény ugyanazon a napon mindenkinek ugyanaz: a szerver megosztja.
      sharedCacheField: 'move|${symbol.toUpperCase()}|$day|${language.replaceAll(RegExp(r'[^A-Za-z0-9_-]'), '_')}',
      'system': [
        {'type': 'text', 'text': systemPrompt},
      ],
      'tools': [
        {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': maxSearches},
        {'type': 'web_fetch_20260209', 'name': 'web_fetch', 'max_uses': maxFetches, 'max_content_tokens': 6000},
      ],
      'messages': [
        {
          'role': 'user',
          'content': [
            'Language: $language',
            'Stock: ${symbol.toUpperCase()}${name.isNotEmpty && name.toUpperCase() != symbol.toUpperCase() ? ' ($name)' : ''}',
            'Today: $day',
            'Move today: ${changePercent >= 0 ? '+' : ''}${changePercent.toStringAsFixed(1)}%',
            'Why is it moving?',
          ].join('\n'),
        },
      ],
    };
  }

  /// A magyarázat (részvényenként, naponként és nyelvenként egyszer kérve).
  Future<ResearchResult> explain({
    required String symbol,
    required String name,
    required double changePercent,
    required String language,
  }) {
    if (!config.hasAnthropicKey) return Future.error(const AnalysisException(AppErrorCode.aiNotConfigured));
    final today = _clock();
    final key = '$language|${symbol.toUpperCase()}|${today.toIso8601String().substring(0, 10)}';
    final f = _cache[key] ??= _store.get(
      key,
      () => _ask(
        requestBody(
          symbol: symbol,
          name: name,
          changePercent: changePercent,
          language: language,
          today: today,
          model: config.anthropicModel,
        ),
      ),
    );
    f.catchError((Object _) {
      _cache.remove(key);
      return (text: '', sources: const []) as ResearchResult;
    });
    return f;
  }

  /// Ha a fiókban nincs engedélyezve az oldalmegnyitás (400), nélküle kérjük újra.
  Future<ResearchResult> _ask(Map<String, dynamic> body) async {
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
