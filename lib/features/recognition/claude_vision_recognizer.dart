import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/util/text.dart';
import '../analysis/claude_stock_analyst.dart' show ClaudeStockAnalyst;
import '../capture/capture_service.dart';
import 'listing_symbol.dart';
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
            'symbol': {
              'type': 'string',
              'description':
                  'Ticker in upper case as on Yahoo Finance: US listings without suffix (AAPL), others with the '
                  'exchange suffix (OTP.BD, SIE.DE, 7203.T, VOD.L).',
            },
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

  /// A ticker alakja: a piaci adatok (Finnhub) a Yahoo-féle tőzsdei utótagot várják.
  static const String symbolRule =
      'Write the symbol as Yahoo Finance does: US listings without a suffix (AAPL, BRK-B), other listings with '
      'the exchange suffix (OTP.BD for Budapest, SIE.DE for Xetra, 7203.T for Tokyo, VOD.L for London).';

  /// Legfeljebb ennyi jelölt és ennyi karakter átirat: a válasz (a gondolkodással
  /// együtt) így a [maxTokens] alatt marad egy sűrű képernyőfotónál is.
  static const maxCandidates = 10;
  static const maxRawText = 1500;
  static const maxTokens = 8000;

  static const String _instructions =
      '''
The image shows a stock, a company or market data: a paper share certificate, a brokerage app screen, a newspaper, a logo, a ticker display or anything similar.
Your task: identify which exchange-listed stock(s) it refers to.
- Give the ticker symbol on the company's primary listing exchange, the company's full name and the exchange. $symbolRule
- If several companies are visible, list them in decreasing order of confidence, the most likely one first; at most $maxCandidates.
- If only a company name or logo is visible, infer the ticker; let confidence reflect the uncertainty.
- If no stock can be identified, return an empty candidates list and describe what you see in summary.
- Transcribe any readable text from the image into raw_text, at most about $maxRawText characters (the most relevant part if there is more).''';

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
            Uri.parse('${config.effectiveAnthropicBaseUrl}/v1/messages'),
            headers: {
              'content-type': 'application/json',
              if (config.anthropicApiKey.isNotEmpty) 'x-api-key': config.anthropicApiKey,
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

    if (response.statusCode != 200) throw httpError(response);
    return parseResponse(response.body);
  }

  /// A hibás HTTP-válasz üzenete: a keret (402) és a gyakoriság (429) a saját
  /// üzenetével (előfizetés, várakozás), a többi a státuszkóddal.
  static RecognitionException httpError(http.Response r) => switch (r.statusCode) {
    402 => RecognitionException(ClaudeStockAnalyst.quotaErrorFor(r.body), cause: r.body),
    429 => RecognitionException(AppErrorCode.rateLimited, cause: r.body),
    _ => RecognitionException(AppErrorCode.recognitionHttp, detail: '${r.statusCode}', cause: r.body),
  };

  /// A Messages API kérés törzse. Külön függvény, hogy tesztelhető legyen.
  Map<String, dynamic> buildRequestBody(CapturedImage image, {String outputLanguage = 'English'}) => {
    'model': config.anthropicModel,
    // Rövid, strukturált választ várunk; a gondolkodás is ebből fogy.
    'max_tokens': maxTokens,
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

  /// A Messages API válaszából kiolvassa a strukturált eredményt. A sémától eltérő
  /// válasz (pl. egy proxy hibája) [AppErrorCode.recognitionBadResponse], nem típushiba.
  /// Az azonos tickerű jelöltek közül a legbiztosabb marad.
  static RecognitionResult parseResponse(String responseBody) {
    const bad = RecognitionException(AppErrorCode.recognitionBadResponse);
    final Object? json;
    try {
      json = jsonDecode(responseBody);
    } on FormatException catch (e) {
      throw RecognitionException(AppErrorCode.recognitionBadResponse, cause: e);
    }
    if (json is! Map) throw bad;

    final stopReason = json['stop_reason'];
    if (stopReason == 'refusal') {
      throw const RecognitionException(AppErrorCode.recognitionRefused);
    }
    if (stopReason == 'max_tokens') {
      throw const RecognitionException(AppErrorCode.recognitionTruncated);
    }

    final content = json['content'];
    final text = [
      for (final b in content is List ? content : const [])
        if (b is Map && b['type'] == 'text' && b['text'] is String) b['text'] as String,
    ].join();
    if (text.isEmpty) {
      throw const RecognitionException(AppErrorCode.recognitionEmpty);
    }

    final Object? payload;
    try {
      payload = jsonDecode(text);
    } on FormatException catch (e) {
      throw RecognitionException(AppErrorCode.recognitionBadResponse, cause: e);
    }
    if (payload is! Map) throw bad;

    final raw = payload['candidates'];
    final sorted = [
      for (final c in raw is List ? raw : const [])
        if (c is Map) ?_candidateFromJson(c),
    ]..sort((a, b) => b.confidence.compareTo(a.confidence));
    final seen = <String>{};
    final rawText = asText(payload['raw_text'])?.trim() ?? '';
    return RecognitionResult(
      candidates: [
        for (final c in sorted)
          if (seen.add(c.symbol)) c,
      ],
      rawText: rawText.isEmpty ? null : rawText,
      summary: asText(payload['summary']),
    );
  }

  static StockCandidate? _candidateFromJson(Map<dynamic, dynamic> j) {
    final exchange = asText(j['exchange'])?.trim() ?? '';
    final symbol = listingSymbol(asText(j['symbol']) ?? '', exchange.isEmpty ? null : exchange);
    if (symbol.isEmpty) return null;
    final c = j['confidence'];
    final confidence = (c is num ? c.toDouble() : double.tryParse('$c')) ?? 0;
    return StockCandidate(
      symbol: symbol,
      companyName: asText(j['company_name'])?.trim() ?? '',
      exchange: exchange.isEmpty ? null : exchange,
      confidence: confidence.isFinite ? confidence.clamp(0, 1) : 0,
      evidence: asText(j['evidence']),
    );
  }
}
