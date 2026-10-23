import 'dart:async';

import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import 'daily_brief.dart' show askWithSources;
import 'research_store.dart';

/// Közös gyorsítótárazás az AI-utánanézésekhez (hírmagyarázat, „mi ez a
/// papír?”, „miért mozog ma?”): a futás alatt egy [cache] térkép (ugyanaz a
/// kulcs egyszer kérve), a készüléken a [store]; hibánál a kulcs kiesik, hogy
/// újrapróbálható legyen.
Future<ResearchResult> cachedResearch({
  required Map<String, Future<ResearchResult>> cache,
  required ResearchStore store,
  required String key,
  required Future<ResearchResult> Function() ask,
}) {
  final f = cache[key] ??= store.get(key, ask);
  // Hibánál a kulcs kiesik (újrapróbálható); a hibát a hívó kapja meg, itt csak elnyeljük.
  unawaited(
    f.then(
      (_) {},
      onError: (Object _) {
        cache.remove(key);
      },
    ),
  );
  return f;
}

/// Kérés webes eszközökkel; ha a fiókban nincs engedélyezve az oldalmegnyitás
/// (400 a `web_fetch`-re), nélküle kérjük újra.
Future<ResearchResult> askWithFetchFallback(AppConfig config, http.Client client, Map<String, dynamic> body) async {
  try {
    return await askWithSources(config, client, body);
  } on AnalysisException catch (e) {
    if (e.code != AppErrorCode.aiHttp || !'${e.cause}'.contains('web_fetch')) rethrow;
    final tools = [
      for (final t in body['tools'] as List)
        if (!'${(t as Map)['type']}'.startsWith('web_fetch')) t,
    ];
    return askWithSources(config, client, {...body, 'tools': tools});
  }
}
