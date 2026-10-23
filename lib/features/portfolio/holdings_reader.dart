import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../capture/capture_service.dart';
import '../recognition/claude_vision_recognizer.dart';

/// Egy képernyőképről kiolvasott pozíció.
class ReadHolding {
  const ReadHolding({required this.symbol, this.companyName = '', this.quantity, this.averagePrice, this.currency});

  final String symbol;
  final String companyName;
  final double? quantity;

  /// Egy részvény átlagos bekerülési ára (nem a mai ár).
  final double? averagePrice;
  final String? currency;

  /// Importálható-e (darab és átlagár is kell hozzá).
  bool get complete => quantity != null && quantity! > 0 && averagePrice != null && averagePrice! > 0;
}

/// Bróker-app „Pozícióim” képernyőjének beolvasása: tickerek, darabszám,
/// átlagár és pénznem a Claude látás-képességével, strukturált JSON-ban. Ugyanazon
/// a segéd-végponton megy, mint a fotófelismerés (elemzést nem fogyaszt).
class HoldingsReader {
  HoldingsReader({required this.config, http.Client? client}) : _client = client ?? http.Client();

  final AppConfig config;
  final http.Client _client;

  /// Legfeljebb ennyi pozíciót veszünk át egy képről.
  static const maxHoldings = 40;

  static const Map<String, dynamic> schema = {
    'type': 'object',
    'properties': {
      'holdings': {
        'type': 'array',
        'items': {
          'type': 'object',
          'properties': {
            'symbol': {'type': 'string', 'description': 'Ticker on the primary listing exchange, upper case.'},
            'company_name': {'type': 'string'},
            'quantity': {
              'type': ['number', 'null'],
              'description': 'Number of shares held.',
            },
            'average_price': {
              'type': ['number', 'null'],
              'description': 'Average purchase price per share (cost basis), NOT the current price.',
            },
            'currency': {
              'type': ['string', 'null'],
              'description': 'ISO 4217 code of average_price, e.g. USD, EUR, HUF.',
            },
          },
          'required': ['symbol', 'company_name', 'quantity', 'average_price', 'currency'],
          'additionalProperties': false,
        },
      },
    },
    'required': ['holdings'],
    'additionalProperties': false,
  };

  static const String instructions = '''
The image is a screenshot of a brokerage account: a list of stock positions (holdings).
For every stock or ETF position, return:
- symbol: the ticker on the primary listing exchange (infer it from the company name if only the name is shown);
- quantity: the number of shares held;
- average_price: the average purchase price per share. If only the total cost and the quantity are shown, divide them. Never use the current market price or the market value. If it cannot be determined, return null;
- currency: the currency of average_price.
Use dot as the decimal separator and no thousands separators. Skip cash, totals, options, crypto and other rows that are not stock positions. If no positions are visible, return an empty list.''';

  Map<String, dynamic> buildRequestBody(CapturedImage image) => {
    'model': config.anthropicModel,
    'max_tokens': 4096,
    'output_config': {
      'effort': 'medium',
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
          {'type': 'text', 'text': instructions},
        ],
      },
    ],
  };

  Future<List<ReadHolding>> read(CapturedImage image) async {
    if (!config.hasAnthropicKey) throw const RecognitionException(AppErrorCode.missingAnthropicKey);
    final http.Response res;
    try {
      res = await _client
          .post(
            Uri.parse('${config.effectiveAnthropicBaseUrl}/v1/messages'),
            headers: {
              'content-type': 'application/json',
              if (config.anthropicApiKey.isNotEmpty) 'x-api-key': config.anthropicApiKey,
              'anthropic-version': ClaudeVisionRecognizer.anthropicVersion,
              'anthropic-beta': 'server-side-fallback-2026-07-01',
            },
            body: jsonEncode(buildRequestBody(image)),
          )
          .timeout(const Duration(seconds: 90));
    } on Exception catch (e) {
      throw RecognitionException(AppErrorCode.recognitionUnreachable, cause: e);
    }
    if (res.statusCode != 200) {
      throw RecognitionException(AppErrorCode.recognitionHttp, detail: '${res.statusCode}', cause: res.body);
    }
    return parseResponse(utf8.decode(res.bodyBytes));
  }

  /// A válaszból a pozíciók; az ugyanazon tickerű sorokat összevonja (súlyozott átlagár).
  static List<ReadHolding> parseResponse(String body) {
    final Map<String, dynamic> json;
    try {
      json = jsonDecode(body) as Map<String, dynamic>;
    } on FormatException catch (e) {
      throw RecognitionException(AppErrorCode.recognitionBadResponse, cause: e);
    }
    if (json['stop_reason'] == 'refusal') throw const RecognitionException(AppErrorCode.recognitionRefused);
    if (json['stop_reason'] == 'max_tokens') throw const RecognitionException(AppErrorCode.recognitionTruncated);
    final text = [
      for (final b in (json['content'] as List? ?? const []))
        if (b is Map && b['type'] == 'text') b['text'] as String? ?? '',
    ].join();
    if (text.isEmpty) throw const RecognitionException(AppErrorCode.recognitionEmpty);
    final List<dynamic> rows;
    try {
      rows = (jsonDecode(text) as Map<String, dynamic>)['holdings'] as List? ?? const [];
    } catch (e) {
      throw RecognitionException(AppErrorCode.recognitionBadResponse, cause: e);
    }
    double? n(Object? v) => v is num && v.isFinite ? v.toDouble() : null;
    final merged = <String, ReadHolding>{};
    for (final r in rows.whereType<Map>()) {
      final symbol = '${r['symbol'] ?? ''}'.trim().toUpperCase();
      // Betűvel vagy számmal kezdődik (a „-” vagy „.” helykitöltő nem ticker).
      if (!RegExp(r'^[A-Z0-9][A-Z0-9.\-:]{0,14}$').hasMatch(symbol)) continue;
      final cur = '${r['currency'] ?? ''}'.trim().toUpperCase();
      final h = ReadHolding(
        symbol: symbol,
        companyName: '${r['company_name'] ?? ''}'.trim(),
        quantity: n(r['quantity']),
        averagePrice: n(r['average_price']),
        currency: RegExp(r'^[A-Z]{3}$').hasMatch(cur) ? cur : null,
      );
      final prev = merged[symbol];
      if (prev != null && prev.complete && h.complete && prev.currency == h.currency) {
        final q = prev.quantity! + h.quantity!;
        merged[symbol] = ReadHolding(
          symbol: symbol,
          companyName: prev.companyName,
          quantity: q,
          averagePrice: (prev.quantity! * prev.averagePrice! + h.quantity! * h.averagePrice!) / q,
          currency: prev.currency,
        );
      } else if (prev == null || (!prev.complete && h.complete)) {
        // A hiányos sort a később talált teljes sor váltja (az a felvehető).
        merged[symbol] = h;
      }
    }
    return merged.values.take(maxHoldings).toList();
  }
}
