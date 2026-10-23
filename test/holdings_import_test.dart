import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/portfolio/holdings_reader.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

/// A galéria helyett egy apró kép.
class _Capture extends CaptureService {
  @override
  Future<CapturedImage?> fromGallery() async =>
      CapturedImage(bytes: Uint8List.fromList([1, 2, 3]), mimeType: 'image/png');
}

/// Rögzített beolvasási eredmény (vagy hiba).
class _Reader extends HoldingsReader {
  _Reader(this.result) : super(config: const AppConfig());

  final Object result;

  @override
  Future<List<ReadHolding>> read(CapturedImage image) async {
    await Future<void>.delayed(const Duration(milliseconds: 10));
    if (result is List<ReadHolding>) return result as List<ReadHolding>;
    throw result;
  }
}

String _response(Object holdings) => jsonEncode({
  'stop_reason': 'end_turn',
  'content': [
    {
      'type': 'text',
      'text': jsonEncode({'holdings': holdings}),
    },
  ],
});

AppServices _services(HoldingsReader reader) => AppServices(
  alertNotifier: FakeNotifier(),
  config: const AppConfig(),
  capture: _Capture(),
  recognizer: _NoRecognizer(),
  marketData: DemoMarketDataProvider(latency: Duration.zero),
  locale: LocaleController(),
  preferences: AppPreferences(),
  desktop: DesktopIntegration(),
  reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
  entitlements: EntitlementService(),
  holdingsReader: reader,
);

Future<void> _startImport(WidgetTester tester, AppServices s) async {
  tester.view.physicalSize = const Size(1200, 1600);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(WhatStockApp(services: s));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Portfolio').first);
  await tester.pumpAndSettle();
  await tester.tap(find.byKey(const ValueKey('portfolio-empty-photo')));
  await tester.pumpAndSettle();
  await tester.tap(find.byKey(const ValueKey('holdings-pick')));
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 50));
  await tester.pumpAndSettle();
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the reply: tickers checked, duplicate rows merged with a weighted average, currency codes kept', () {
    final h = HoldingsReader.parseResponse(
      _response([
        {'symbol': 'aapl', 'company_name': 'Apple', 'quantity': 10, 'average_price': 150, 'currency': 'USD'},
        {'symbol': 'AAPL', 'company_name': 'Apple', 'quantity': 30, 'average_price': 170, 'currency': 'USD'},
        {'symbol': 'OTP', 'company_name': 'OTP Bank', 'quantity': 5, 'average_price': null, 'currency': 'huf'},
        {'symbol': 'Cash (USD)', 'company_name': '', 'quantity': 1, 'average_price': 1, 'currency': 'USD'},
        {'symbol': 'ASML', 'company_name': 'ASML', 'quantity': 2, 'average_price': 640.5, 'currency': 'euro'},
      ]),
    );
    expect(h.map((x) => x.symbol), ['AAPL', 'OTP', 'ASML']);
    expect(h[0].quantity, 40);
    expect(h[0].averagePrice, 165);
    expect(h[1].complete, isFalse);
    expect(h[1].currency, 'HUF');
    expect(h[2].currency, isNull, reason: 'not an ISO code');
    expect(
      () => HoldingsReader.parseResponse(jsonEncode({'stop_reason': 'refusal', 'content': []})),
      throwsA(isA<RecognitionException>()),
    );
  });

  test('the reply: a complete row replaces an incomplete one; placeholder symbols are dropped', () {
    final h = HoldingsReader.parseResponse(
      _response([
        {'symbol': 'AAPL', 'company_name': 'Apple', 'quantity': 10, 'average_price': null, 'currency': 'USD'},
        {'symbol': 'AAPL', 'company_name': 'Apple', 'quantity': 30, 'average_price': 170, 'currency': 'USD'},
        {'symbol': '-', 'company_name': '?', 'quantity': 3, 'average_price': 12, 'currency': 'USD'},
        {'symbol': '.', 'company_name': '?', 'quantity': 3, 'average_price': 12, 'currency': 'USD'},
      ]),
    );
    expect(h.map((x) => (x.symbol, x.quantity, x.averagePrice)), [('AAPL', 30.0, 170.0)]);
  });

  test('the request: image first, structured output, no tools', () {
    final body = HoldingsReader(config: const AppConfig())
        .buildRequestBody(CapturedImage(bytes: Uint8List.fromList([1, 2]), mimeType: 'image/png'));
    final content = (body['messages'] as List).single['content'] as List;
    expect(content.first['type'], 'image');
    expect((body['output_config'] as Map)['format']['type'], 'json_schema');
    expect(body.containsKey('tools'), isFalse);
  });

  testWidgets('import from a screenshot: review, untick one, add; no price means not selectable', (tester) async {
    final s = _services(
      _Reader(const [
        ReadHolding(symbol: 'AAPL', companyName: 'Apple Inc.', quantity: 12, averagePrice: 150.2, currency: 'USD'),
        ReadHolding(symbol: 'MSFT', companyName: 'Microsoft', quantity: 3, averagePrice: 300, currency: 'USD'),
        ReadHolding(symbol: 'NVDA', companyName: 'NVIDIA', quantity: 5),
      ]),
    );
    await _startImport(tester, s);
    expect(find.text('Positions found'), findsOneWidget);
    expect(find.text('AAPL · 12 × 150.20 USD'), findsOneWidget);
    expect(find.text('No average purchase price on the picture'), findsOneWidget);
    expect(find.text('Add 2 positions'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('holding-MSFT')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('holdings-add')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots.map((l) => (l.symbol, l.quantity, l.price, l.currency)), [('AAPL', 12.0, 150.2, 'USD')]);
    expect(find.text('1 transaction added'), findsOneWidget);
  });

  testWidgets('a failed reading shows the error and adds nothing', (tester) async {
    final s = _services(_Reader(const RecognitionException(AppErrorCode.recognitionRefused)));
    await _startImport(tester, s);
    expect(find.byKey(const ValueKey('holdings-review')), findsNothing);
    expect(find.byType(SnackBar), findsOneWidget);
    expect(s.portfolio.lots, isEmpty);
  });
}
