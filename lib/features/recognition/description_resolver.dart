import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import 'claude_vision_recognizer.dart';
import 'stock_recognizer.dart';

/// Szöveges leírás → részvény vagy ETF. Ha a piaci kereső nem talál semmit
/// egy olyan beírásra, mint „tech 100 etf” vagy „a legnagyobb magyar bank”,
/// az AI találja ki, mire gondolt a felhasználó. Ugyanazt a JSON-sémát és
/// végpontot használja, mint a képfelismerés (nem fogyaszt elemzést).
class DescriptionResolver {
  DescriptionResolver({required this.config, http.Client? client, this.effort = 'low'})
    : _client = client ?? http.Client();

  final AppConfig config;
  final http.Client _client;
  final String effort;

  /// Ennél rövidebb beírásra nem kérdezzük az AI-t (ticker vagy elgépelés).
  static const minLength = 4;

  /// Ticker-szerű beírás: `AAPL`, `$aapl`, `BRK-B`, `OTP.BD`, `7203.T` (legalább egy betűvel).
  static bool looksLikeTicker(String query) {
    final q = query.trim();
    return RegExp(r'^\$?[A-Za-z0-9]{1,8}([.\-][A-Za-z0-9]{1,3})?$').hasMatch(q) && RegExp('[A-Za-z]').hasMatch(q);
  }

  /// A beírás a kereséshez: a `$AAPL` alakból a `$` elmarad.
  static String searchTerm(String query) => query.trim().replaceFirst(RegExp(r'^\$(?=[A-Za-z0-9])'), '');

  /// Érdemes-e az AI-t kérdezni: nem ticker-szerű, van benne betű, és nem túl hosszú.
  static bool looksLikeDescription(String query) {
    final q = query.trim();
    if (q.length < minLength || q.length > 120) return false;
    if (looksLikeTicker(q)) return false;
    return RegExp(r'\p{L}', unicode: true).hasMatch(q);
  }

  static const String instructions =
      '''
The user typed a short description of an exchange-listed stock or ETF, in any language (examples: "tech 100 etf", "the biggest Hungarian bank", "gold etf", "s&p 500 index fund", "iphone maker").
Your task: identify which listed instrument(s) they most likely mean.
- Give the ticker symbol on the primary listing exchange, the full name and the exchange. ${ClaudeVisionRecognizer.symbolRule} For ETFs prefer the largest, most widely traded fund that matches (e.g. "tech 100 etf" → QQQ, Invesco QQQ Trust, tracking the Nasdaq-100).
- List up to 4 candidates in decreasing order of confidence; the most likely one first. Let confidence reflect how well the description pins it down.
- In evidence, say in one short sentence why this instrument matches the description.
- If the text describes no listed instrument, return an empty candidates list and say in summary what you understood.
- Leave raw_text empty.''';

  Future<RecognitionResult> resolve(String query, {String outputLanguage = 'English'}) async {
    if (!config.hasAnthropicKey) throw const RecognitionException(AppErrorCode.missingAnthropicKey);
    final http.Response response;
    try {
      response = await _client
          .post(
            Uri.parse('${config.effectiveAnthropicBaseUrl}/v1/messages'),
            headers: {
              'content-type': 'application/json',
              if (config.anthropicApiKey.isNotEmpty) 'x-api-key': config.anthropicApiKey,
              'anthropic-version': ClaudeVisionRecognizer.anthropicVersion,
            },
            body: jsonEncode(requestBody(query, outputLanguage: outputLanguage)),
          )
          .timeout(const Duration(seconds: 45));
    } on Exception catch (e) {
      throw RecognitionException(AppErrorCode.recognitionUnreachable, cause: e);
    }
    if (response.statusCode != 200) throw ClaudeVisionRecognizer.httpError(response);
    return ClaudeVisionRecognizer.parseResponse(response.body);
  }

  /// A Messages API kérés törzse (a képfelismerés sémájával).
  Map<String, dynamic> requestBody(String query, {String outputLanguage = 'English'}) => {
    'model': config.anthropicModel,
    'max_tokens': 1024,
    'output_config': {
      'effort': effort,
      'format': {'type': 'json_schema', 'schema': ClaudeVisionRecognizer.schema},
    },
    'messages': [
      {
        'role': 'user',
        'content': [
          {
            'type': 'text',
            'text': '$instructions\nWrite summary and evidence in $outputLanguage.\n\nDescription: ${query.trim()}',
          },
        ],
      },
    ],
  };
}
