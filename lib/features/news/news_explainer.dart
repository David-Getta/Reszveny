import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import 'daily_brief.dart' show askText;
import 'watch_news.dart';

/// „Mit jelent ez?”: néhány mondatos AI-magyarázat egy hírről – mi történt, és
/// mit jelenthet a részvényre. Csak a cím és az összefoglaló alapján (webkeresés
/// nélkül), a napi kérdéskeretből; hírenként egyszer kéri le (az app futása alatt).
class NewsExplainer {
  NewsExplainer({required this.config, http.Client? client}) : _client = client ?? http.Client();

  final AppConfig config;
  final http.Client _client;
  final Map<String, Future<String>> _cache = {};

  static const systemPrompt = '''
You explain a single news headline about a listed company to a private investor.
Rules:
- Write in the requested language, plainly, the way a financial journalist would explain it to a friend.
- 3 or 4 short sentences, plain text, no Markdown.
- First say what happened, in your own words. Then explain what it could mean for the company and its stock, and what to watch next.
- Use only the headline and summary given. If they are too thin to judge, say so. Never invent facts, numbers or dates.
- Do not tell the reader to buy or sell.''';

  static Map<String, dynamic> requestBody(WatchedNews n, {required String language, String model = ''}) => {
    'model': model,
    'max_tokens': 600,
    'system': [
      {'type': 'text', 'text': systemPrompt},
    ],
    'messages': [
      {
        'role': 'user',
        'content': [
          'Language: $language',
          'Stock: ${n.symbol}',
          'Published: ${n.item.publishedAt.toUtc().toIso8601String().substring(0, 10)}',
          if (n.item.source case final s?) 'Source: $s',
          'Headline: ${n.item.headline}',
          if (n.item.summary case final s? when s.trim().isNotEmpty) 'Summary: ${s.trim()}',
        ].join('\n'),
      },
    ],
  };

  /// A magyarázat (hírenként és nyelvenként egyszer kérve; hiba után újrapróbálható).
  Future<String> explain(WatchedNews n, {required String language}) {
    if (!config.hasAnthropicKey) return Future.error(const AnalysisException(AppErrorCode.aiNotConfigured));
    final key = '$language|${n.item.url.isEmpty ? n.item.headline : n.item.url}';
    final f = _cache[key] ??= askText(
      config,
      _client,
      requestBody(n, language: language, model: config.anthropicModel),
    );
    f.catchError((Object _) {
      _cache.remove(key);
      return '';
    });
    return f;
  }
}
