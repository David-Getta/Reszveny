import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/recognition/claude_vision_recognizer.dart';

String apiResponse(Map<String, dynamic> payload, {String stopReason = 'end_turn'}) => jsonEncode({
  'id': 'msg_1',
  'type': 'message',
  'role': 'assistant',
  'stop_reason': stopReason,
  'content': [
    {'type': 'text', 'text': jsonEncode(payload)},
  ],
});

void main() {
  group('parseResponse', () {
    test('parses candidates sorted by confidence', () {
      final result = ClaudeVisionRecognizer.parseResponse(
        apiResponse({
          'summary': 'An Apple logo on a phone box.',
          'raw_text': 'iPhone\nDesigned by Apple in California',
          'candidates': [
            {
              'symbol': 'aapl',
              'company_name': 'Apple Inc.',
              'exchange': 'NASDAQ',
              'confidence': 0.6,
              'evidence': 'logo',
            },
            {'symbol': 'FOXC', 'company_name': 'Foxconn', 'exchange': null, 'confidence': 0.95, 'evidence': 'text'},
          ],
        }),
      );
      expect(result.candidates.map((c) => c.symbol), ['FOXC', 'AAPL']);
      expect(result.candidates.last.exchange, 'NASDAQ');
      expect(result.candidates.first.exchange, isNull);
      expect(result.summary, contains('Apple'));
      expect(result.rawText, contains('iPhone'));
    });

    test('empty candidates and blank raw text', () {
      final result = ClaudeVisionRecognizer.parseResponse(
        apiResponse({'summary': 'A cat.', 'raw_text': '  ', 'candidates': []}),
      );
      expect(result.isEmpty, isTrue);
      expect(result.rawText, isNull);
    });

    test('refusal stop reason is reported as an error code', () {
      expect(
        () => ClaudeVisionRecognizer.parseResponse(apiResponse({}, stopReason: 'refusal')),
        throwsA(isA<RecognitionException>().having((e) => e.code, 'code', AppErrorCode.recognitionRefused)),
      );
    });

    test('garbage body is a bad-response error', () {
      expect(
        () => ClaudeVisionRecognizer.parseResponse('<html>'),
        throwsA(isA<RecognitionException>().having((e) => e.code, 'code', AppErrorCode.recognitionBadResponse)),
      );
    });
  });

  test('buildRequestBody sends the image, the schema and the output language', () {
    final recognizer = ClaudeVisionRecognizer(
      config: const AppConfig(anthropicApiKey: 'k', anthropicModel: 'claude-opus-5-5'),
    );
    final image = CapturedImage(bytes: Uint8List.fromList([1, 2, 3]), mimeType: 'image/png');
    final body = recognizer.buildRequestBody(image, outputLanguage: 'Hungarian');

    expect(body['model'], 'claude-opus-5-5');
    expect(body['fallbacks'], 'default');
    final format = (body['output_config'] as Map)['format'] as Map;
    expect(format['type'], 'json_schema');
    expect((format['schema'] as Map)['additionalProperties'], isFalse);

    final content = ((body['messages'] as List).first as Map)['content'] as List;
    final imageBlock = content.first as Map;
    expect(imageBlock['type'], 'image');
    expect((imageBlock['source'] as Map)['media_type'], 'image/png');
    expect((imageBlock['source'] as Map)['data'], base64Encode([1, 2, 3]));
    expect((content.last as Map)['text'], contains('Hungarian'));
  });

  test('missing API key fails fast without a network call', () async {
    final recognizer = ClaudeVisionRecognizer(config: const AppConfig(anthropicApiKey: ''));
    final image = CapturedImage(bytes: Uint8List(0), mimeType: 'image/jpeg');
    expect(
      recognizer.recognize(image),
      throwsA(isA<RecognitionException>().having((e) => e.code, 'code', AppErrorCode.missingAnthropicKey)),
    );
  });
}
