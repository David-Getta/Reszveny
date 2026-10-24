import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/util/us_market_hours.dart';
import 'cached_research.dart';
import 'daily_brief.dart' show sharedCacheField;
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
    // A kérés szövege is csak a megosztás kulcsából áll (kereskedési nap, a mozgás
    // sávja): a szerver csak a pontosan egyező kérést osztja meg.
    final day = UsMarketHours.sessionDate(today.toUtc()).toIso8601String().substring(0, 10);
    final step = (changePercent / minMovePercent).truncate();
    final band = (step.abs() * minMovePercent).toStringAsFixed(1);
    return {
      'model': model,
      'max_tokens': 1200,
      // Ugyanaz a részvény ugyanabban a kereskedési napban, hasonló mozgásnál mindenkinek
      // ugyanaz: a szerver megosztja (időzónától függetlenül).
      sharedCacheField:
          'move|${symbol.toUpperCase()}|${sessionKey(today, changePercent)}|${language.replaceAll(RegExp(r'[^A-Za-z0-9_-]'), '_')}',
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
            'Move today: ${changePercent >= 0 ? 'up' : 'down'} $band% or more',
            'Why is it moving?',
          ].join('\n'),
        },
      ],
    };
  }

  /// A kereskedési nap (New York-i dátum, így éjfél után és más időzónában is ugyanaz)
  /// és a mozgás iránya-nagyságrendje ([minMovePercent] lépésekben): ha napközben
  /// +3%-ról +8%-ra nő vagy előjelet vált a mozgás, új magyarázat kell.
  static String sessionKey(DateTime now, double changePercent) {
    final step = (changePercent / minMovePercent).truncate();
    return '${UsMarketHours.sessionDate(now.toUtc()).toIso8601String().substring(0, 10)}|${step >= 0 ? '+' : ''}$step';
  }

  /// A magyarázat (részvényenként, kereskedési naponként, mozgás-sávonként és nyelvenként egyszer kérve).
  Future<ResearchResult> explain({
    required String symbol,
    required String name,
    required double changePercent,
    required String language,
  }) {
    if (!config.hasAnthropicKey) return Future.error(const AnalysisException(AppErrorCode.aiNotConfigured));
    final today = _clock();
    final key = '$language|${symbol.toUpperCase()}|${sessionKey(today, changePercent)}';
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
          changePercent: changePercent,
          language: language,
          today: today,
          model: config.anthropicModel,
        ),
      ),
    );
  }
}
