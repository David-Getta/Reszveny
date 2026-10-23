import 'dart:async';

import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import 'daily_brief.dart' show askWithSources, sharedCacheField;
import 'research_store.dart';

/// „Mi volt a legutóbbi gyorsjelentésben?”: AI-összefoglaló a cég legutóbbi
/// negyedéves eredményéről. Utánanéz a weben (a cég közleménye, tőzsdei
/// bejelentés, sajtó), és röviden összefoglalja a számokat a várakozásokhoz
/// képest, az előrejelzést és a piac reakcióját, forrásokkal. A napi
/// kérdéskeretből; jelentésenként egyszer kéri le, és 30 napig megőrzi.
class EarningsSummarizer {
  EarningsSummarizer({required this.config, http.Client? client, DateTime Function()? clock})
    : _client = client ?? http.Client(),
      _clock = clock ?? DateTime.now,
      _store = ResearchStore('earnings_summaries', keepFor: const Duration(days: 30), maxStored: 40, clock: clock);

  final AppConfig config;
  final http.Client _client;
  final DateTime Function() _clock;
  final ResearchStore _store;
  final Map<String, Future<ResearchResult>> _cache = {};

  static const maxSearches = 3;
  static const maxFetches = 2;

  static const systemPrompt = '''
You summarize a listed company's most recent quarterly results for a private investor.
Before writing, use the web tools:
- Find the official results: the company's press release, exchange filing or investor-relations page, and open it if you can.
- Check reliable press coverage for the expectations (consensus) and how the stock reacted.
Rules:
- Write in the requested language, plainly, the way a financial journalist would explain it to a friend.
- Plain text, no Markdown headings or emphasis; short paragraphs or "- " bullets, at most about 170 words.
- Cover: which quarter and when it was reported; revenue and earnings per share against expectations, with the numbers; the outlook or guidance; one or two notable items; how the stock reacted, if known. End with what to watch next.
- Use the numbers from the sources. Never invent facts, numbers or dates; if you cannot find the results, say so.
- Do not tell the reader to buy or sell.''';

  static Map<String, dynamic> requestBody({
    required String symbol,
    required String companyName,
    required String language,
    required DateTime today,
    DateTime? lastPeriod,
    String model = '',
  }) => {
    'model': model,
    'max_tokens': 1500,
    // Ugyanaz a negyedév ugyanazon a nyelven minden felhasználónak ugyanaz: a szerver megosztja.
    sharedCacheField:
        'earnings|${symbol.toUpperCase()}|${lastPeriod?.toIso8601String().substring(0, 10) ?? '-'}|'
        '${language.replaceAll(RegExp(r'[^A-Za-z0-9_-]'), '_')}',
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
          'Stock: ${companyName.isEmpty ? symbol : '$companyName ($symbol)'}',
          'Today: ${today.toIso8601String().substring(0, 10)}',
          if (lastPeriod != null) 'Last quarter in our data ended: ${lastPeriod.toIso8601String().substring(0, 10)}',
          'Summarize the most recent quarterly results.',
        ].join('\n'),
      },
    ],
  };

  /// Az összefoglaló (részvényenként, nyelvenként és negyedévenként egyszer kérve).
  Future<ResearchResult> summarize({
    required String symbol,
    required String companyName,
    required String language,
    DateTime? lastPeriod,
  }) {
    if (!config.hasAnthropicKey) return Future.error(const AnalysisException(AppErrorCode.aiNotConfigured));
    final key = '$language|${symbol.toUpperCase()}|${lastPeriod?.toIso8601String().substring(0, 10) ?? '-'}';
    final f = _cache[key] ??= _store.get(
      key,
      () => _ask(
        requestBody(
          symbol: symbol,
          companyName: companyName,
          language: language,
          today: _clock(),
          lastPeriod: lastPeriod,
          model: config.anthropicModel,
        ),
      ),
    );
    // Hibánál a kulcs kiesik (újrapróbálható); a hibát a hívó kapja meg, itt csak elnyeljük.
    unawaited(
      f.then(
        (_) {},
        onError: (Object _) {
          _cache.remove(key);
        },
      ),
    );
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
