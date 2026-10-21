import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import 'cached_research.dart';
import 'daily_brief.dart' show sharedCacheField;
import 'research_store.dart';

/// „Mi ez a papír?”: ha egy tickerhez nincs cégprofil (ETF, alap, ADR, index-
/// termék), az AI utánanéz a weben, és röviden elmondja, mi ez, mit követ, mit
/// tart, mennyibe kerül és mire érdemes figyelni – forrásokkal. A napi
/// kérdéskeretből; papíronként és nyelvenként egyszer, 30 napig megőrizve, és a
/// szerver a többi felhasználóval is megosztja.
class InstrumentExplainer {
  InstrumentExplainer({required this.config, http.Client? client, DateTime Function()? clock})
    : _client = client ?? http.Client(),
      _clock = clock ?? DateTime.now,
      _store = ResearchStore('instrument_notes', keepFor: const Duration(days: 30), maxStored: 40, clock: clock);

  final AppConfig config;
  final http.Client _client;
  final DateTime Function() _clock;
  final ResearchStore _store;
  final Map<String, Future<ResearchResult>> _cache = {};

  static const maxSearches = 3;
  static const maxFetches = 2;

  static const systemPrompt = '''
You explain an exchange-listed instrument that is not an ordinary company share – typically an ETF, an index or commodity fund, a trust or an ADR – to a private investor.
Before writing, use the web tools: find the issuer's official fund page or factsheet and open it if you can; check a reliable financial site for the current size, cost and holdings.
Rules:
- Write in the requested language, plainly, the way a financial journalist would explain it to a friend.
- Plain text, no Markdown headings or emphasis; short paragraphs or "- " bullets, at most about 160 words.
- Cover: what it is and who issues it; what it tracks or holds (the index or theme, the largest holdings or sectors, how many positions); the yearly cost (expense ratio); the fund size and how long it has existed; whether it pays or reinvests dividends; the main risks (concentration, currency, leverage) and what to watch.
- Use the numbers from the sources. Never invent facts, numbers or dates; if something cannot be found, say so.
- If the ticker is in fact an ordinary company share, say so briefly and describe the company in two sentences.
- Do not tell the reader to buy or sell.''';

  static Map<String, dynamic> requestBody({
    required String symbol,
    required String name,
    required String language,
    required DateTime today,
    String? exchange,
    String model = '',
  }) => {
    'model': model,
    'max_tokens': 1500,
    // Ugyanaz a papír ugyanazon a nyelven mindenkinek ugyanaz: a szerver megosztja.
    sharedCacheField: 'instrument|${symbol.toUpperCase()}|${language.replaceAll(RegExp(r'[^A-Za-z0-9_-]'), '_')}',
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
          'Ticker: ${symbol.toUpperCase()}${name.isNotEmpty && name.toUpperCase() != symbol.toUpperCase() ? ' ($name)' : ''}',
          if (exchange != null && exchange.isNotEmpty) 'Exchange: $exchange',
          'Today: ${today.toIso8601String().substring(0, 10)}',
          'Explain what this instrument is.',
        ].join('\n'),
      },
    ],
  };

  /// A magyarázat (papíronként és nyelvenként egyszer kérve).
  Future<ResearchResult> explain({
    required String symbol,
    required String name,
    required String language,
    String? exchange,
  }) {
    if (!config.hasAnthropicKey) return Future.error(const AnalysisException(AppErrorCode.aiNotConfigured));
    final key = '$language|${symbol.toUpperCase()}';
    return cachedResearch(
      cache: _cache,
      store: _store,
      key: key,
      ask: () => askWithFetchFallback(
        config,
        _client,
        requestBody(
          symbol: symbol,
          name: name,
          language: language,
          today: _clock(),
          exchange: exchange,
          model: config.anthropicModel,
        ),
      ),
    );
  }
}
