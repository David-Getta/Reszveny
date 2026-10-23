import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import 'daily_brief.dart' show AskSource, askWithSources;
import 'research_store.dart';
import '../../core/util/text.dart';

/// Kérdés egy AI-kutatás (hírmagyarázat, gyorsjelentés-összefoglaló, „mi ez a
/// papír?”) szövegéről: a modell a megkapott szövegből válaszol, és ha kell,
/// egy webkereséssel néz utána. A napi kérdéskeretből; nem tárolódik.
class ResearchFollowUp {
  ResearchFollowUp({required this.config, http.Client? client}) : _client = client ?? http.Client();

  final AppConfig config;
  final http.Client _client;

  static const maxSearches = 1;
  static const maxQuestionChars = 300;

  static const systemPrompt = '''
You answer a private investor's follow-up question about a short research note the app showed them (a news explanation, a quarterly results summary, a description of a fund, or a side-by-side table of key figures of a few stocks). The note is given below the question.
Rules:
- Answer in the requested language, plainly, in at most about 90 words; "- " bullets are fine.
- Build on the note; use the web search only if the question needs a fact the note does not contain, and say what you found.
- Never invent facts, numbers or dates; if you cannot tell, say so.
- Do not tell the reader to buy or sell.''';

  static Map<String, dynamic> requestBody({
    required String note,
    required String question,
    required String language,
    required String subject,
    String model = '',
  }) => {
    'model': model,
    'max_tokens': 800,
    'system': [
      {'type': 'text', 'text': systemPrompt},
    ],
    'tools': [
      {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': maxSearches},
    ],
    'messages': [
      {
        'role': 'user',
        'content': [
          'Language: $language',
          'Subject: $subject',
          'Question: ${question.trim()}',
          '',
          'Note:',
          note.trim(),
        ].join('\n'),
      },
    ],
  };

  Future<ResearchResult> ask({
    required String note,
    required String question,
    required String language,
    required String subject,
  }) {
    if (!config.hasAnthropicKey) return Future.error(const AnalysisException(AppErrorCode.aiNotConfigured));
    final q = question.trim();
    if (q.isEmpty) return Future.value((text: '', sources: const <AskSource>[]));
    return askWithSources(
      config,
      _client,
      requestBody(
        note: note,
        question: clipText(q, maxQuestionChars),
        language: language,
        subject: subject,
        model: config.anthropicModel,
      ),
      maxSources: 2,
    );
  }
}
