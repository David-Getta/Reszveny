import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/models/stock_candidate.dart';
import '../capture/capture_service.dart';
import 'stock_recognizer.dart';

/// Részvény-felismerés a Claude API látás-képességével.
///
/// A képet base64-ben küldjük, és strukturált JSON-választ kérünk
/// (`output_config.format`), így a válasz garantáltan a [schema] szerint
/// parse-olható. Minden platformon ugyanúgy működik, és papír részvényt,
/// logót, képernyőfotót, újságot egyformán ért.
class ClaudeVisionRecognizer implements StockRecognizer {
  ClaudeVisionRecognizer({required this.config, http.Client? client, this.effort = 'medium'})
    : _client = client ?? http.Client();

  final AppConfig config;
  final http.Client _client;

  /// `low` gyorsabb és olcsóbb, `high` alaposabb (homályos, régi okiratoknál).
  final String effort;

  static const String anthropicVersion = '2023-06-01';

  /// A válasz JSON-sémája. Minden objektumon kötelező az
  /// `additionalProperties: false`.
  static const Map<String, dynamic> schema = {
    'type': 'object',
    'properties': {
      'summary': {'type': 'string', 'description': 'One sentence describing what is visible in the image.'},
      'raw_text': {
        'type': 'string',
        'description': 'Transcription of the text readable in the image, line by line. Empty if there is none.',
      },
      'candidates': {
        'type': 'array',
        'items': {
          'type': 'object',
          'properties': {
            'symbol': {'type': 'string', 'description': 'Exchange ticker symbol in upper case, e.g. AAPL.'},
            'company_name': {'type': 'string'},
            'exchange': {
              'type': ['string', 'null'],
              'description': 'Exchange abbreviation (NASDAQ, NYSE, BSE...) if it can be inferred.',
            },
            'confidence': {'type': 'number', 'description': 'Confidence between 0 and 1.'},
            'evidence': {'type': 'string', 'description': 'What the identification is based on.'},
          },
          'required': ['symbol', 'company_name', 'exchange', 'confidence', 'evidence'],
          'additionalProperties': false,
        },
      },
    },
    'required': ['summary', 'raw_text', 'candidates'],
    'additionalProperties': false,
  };

  static const String _instructions = '''
The image shows a stock, a company or market data: a paper share certificate, a brokerage app screen, a newspaper, a logo, a ticker display or anything similar.
Your task: identify which exchange-listed stock(s) it refers to.
- Give the ticker symbol on the company's primary listing exchange, the company's full name and the exchange.
- If several companies are visible, list all of them in decreasing order of confidence; the most likely one first.
- If only a company name or logo is visible, infer the ticker; let confidence reflect the uncertainty.
- If no stock can be identified, return an empty candidates list and describe what you see in summary.
- Transcribe any readable text from the image into raw_text.''';

  @override
  String get name => 'Claude Vision';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async {
    if (!config.hasAnthropicKey) {
      throw const RecognitionException(AppErrorCode.missingAnthropicKey);
    }

    final body = buildRequestBody(image, outputLanguage: outputLanguage);
    final http.Response response;
    try {
      response = await _client
          .post(
            Uri.parse('${config.anthropicBaseUrl}/v1/messages'),
            headers: {
              'content-type': 'application/json',
              'x-api-key': config.anthropicApiKey,
              'anthropic-version': anthropicVersion,
              // Ha a biztonsági osztályozó elutasítja a kérést, a szerver
              // ugyanabban a hívásban egy tartalék modellen futtatja újra.
              'anthropic-beta': 'server-side-fallback-2026-07-01',
            },
            body: jsonEncode(body),
          )
          .timeout(const Duration(seconds: 90));
    } on Exception catch (e) {
      throw RecognitionException(AppErrorCode.recognitionUnreachable, cause: e);
    }

    if (response.statusCode != 200) {
      throw RecognitionException(AppErrorCode.recognitionHttp, detail: '${response.statusCode}', cause: response.body);
    }
    return parseResponse(response.body);
  }

  /// A Messages API kérés törzse. Külön függvény, hogy tesztelhető legyen.
  Map<String, dynamic> buildRequestBody(CapturedImage image, {String outputLanguage = 'English'}) => {
    'model': config.anthropicModel,
    // Rövid, strukturált választ várunk; ennyi bőven elég a JSON-nak.
    'max_tokens': 4096,
    'output_config': {
      'effort': effort,
      'format': {'type': 'json_schema', 'schema': schema},
    },
    'fallbacks': 'default',
    'messages': [
      {
        'role': 'user',
        'content': [
          {
            'type': 'image',
            'source': {'type': 'base64', 'media_type': image.mimeType, 'data': base64Encode(image.bytes)},
          },
          {'type': 'text', 'text': '$_instructions\nWrite summary, evidence and raw_text in $outputLanguage.'},
        ],
      },
    ],
  };

  /// A Messages API válaszából kiolvassa a strukturált eredményt.
  static RecognitionResult parseResponse(String responseBody) {
    final Map<String, dynamic> json;
    try {
      json = jsonDecode(responseBody) as Map<String, dynamic>;
    } on FormatException catch (e) {
      throw RecognitionException(AppErrorCode.recognitionBadResponse, cause: e);
    }

    final stopReason = json['stop_reason'];
    if (stopReason == 'refusal') {
      throw const RecognitionException(AppErrorCode.recognitionRefused);
    }
    if (stopReason == 'max_tokens') {
      throw const RecognitionException(AppErrorCode.recognitionTruncated);
    }

    final content = (json['content'] as List?) ?? const [];
    final text = content
        .cast<Map<String, dynamic>>()
        .where((b) => b['type'] == 'text')
        .map((b) => b['text'] as String? ?? '')
        .join();
    if (text.isEmpty) {
      throw const RecognitionException(AppErrorCode.recognitionEmpty);
    }

    final Map<String, dynamic> payload;
    try {
      payload = jsonDecode(text) as Map<String, dynamic>;
    } on FormatException catch (e) {
      throw RecognitionException(AppErrorCode.recognitionBadResponse, cause: e);
    }

    final candidates =
        ((payload['candidates'] as List?) ?? const [])
            .cast<Map<String, dynamic>>()
            .map(_candidateFromJson)
            .where((c) => c.symbol.isNotEmpty)
            .toList()
          ..sort((a, b) => b.confidence.compareTo(a.confidence));

    return RecognitionResult(
      candidates: candidates,
      rawText: (payload['raw_text'] as String?)?.trim().isEmpty ?? true ? null : payload['raw_text'] as String,
      summary: payload['summary'] as String?,
    );
  }

  static StockCandidate _candidateFromJson(Map<String, dynamic> j) {
    final confidence = (j['confidence'] as num?)?.toDouble() ?? 0;
    return StockCandidate(
      symbol: (j['symbol'] as String? ?? '').trim().toUpperCase(),
      companyName: (j['company_name'] as String? ?? '').trim(),
      exchange: (j['exchange'] as String?)?.trim().isEmpty ?? true ? null : j['exchange'] as String,
      confidence: confidence.clamp(0, 1),
      evidence: j['evidence'] as String?,
    );
  }
}
