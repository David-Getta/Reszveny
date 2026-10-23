import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/news/move_explainer.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

http.Response _answer(String text) => http.Response(
  jsonEncode({
    'stop_reason': 'end_turn',
    'content': [
      {'type': 'text', 'text': text},
    ],
  }),
  200,
  headers: {'content-type': 'application/json; charset=utf-8'},
);

const _config = AppConfig(backendUrl: 'https://api.test');

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the request: stock, day, move, language, shared key per stock and day, two searches', () {
    final body = MoveExplainer.requestBody(
      symbol: 'nvda',
      name: 'NVIDIA Corp',
      changePercent: 4.21,
      language: 'Hungarian',
      today: DateTime(2026, 10, 21, 15),
    );
    final user = ((body['messages'] as List).single as Map)['content'] as String;
    expect(user, contains('Stock: NVDA (NVIDIA Corp)'));
    expect(user, contains('Today: 2026-10-21'));
    expect(user, contains('Move today: +4.2%'));
    expect(user, contains('Language: Hungarian'));
    expect(body['shared_cache'], 'move|NVDA|2026-10-21|+1|Hungarian');
    expect(((body['tools'] as List).first as Map)['max_uses'], MoveExplainer.maxSearches);
    expect(MoveExplainer.systemPrompt, contains('Never invent facts'));
  });

  test('asked once per stock, day and language; the next day it asks again', () async {
    var calls = 0;
    var now = DateTime(2026, 10, 21, 10);
    final client = MockClient((req) async => _answer('Reason ${++calls}.'));
    final x = MoveExplainer(config: _config, client: client, clock: () => now);
    Future<String> ask() async =>
        (await x.explain(symbol: 'NVDA', name: 'NVIDIA', changePercent: 3.1, language: 'English')).text;
    expect(await ask(), 'Reason 1.');
    expect(await ask(), 'Reason 1.');
    // Újraindítás után is a készülékről jön (ugyanaz a nap).
    final again = MoveExplainer(config: _config, client: client, clock: () => now);
    expect(
      (await again.explain(symbol: 'NVDA', name: 'NVIDIA', changePercent: 3.1, language: 'English')).text,
      'Reason 1.',
    );
    now = DateTime(2026, 10, 22, 10);
    expect(await ask(), 'Reason 2.');
    expect(calls, 2);
  });

  testWidgets('the button shows only on a big daily move; the sheet shows the explanation', (tester) async {
    tester.view.physicalSize = const Size(1200, 2600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final client = MockClient((req) async => _answer('Strong data-centre guidance lifted the shares.'));
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: _config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: _config)),
      entitlements: EntitlementService(),
      moveExplainer: MoveExplainer(config: _config, client: client),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    // AAPL +0,94%: nincs gomb.
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('detail-price')), findsOneWidget);
    expect(find.byKey(const ValueKey('move-why')), findsNothing);

    // NVDA +2,98%: van gomb, a lap a magyarázattal.
    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final button = find.byKey(const ValueKey('move-why'));
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('move-why-sheet')), findsOneWidget);
    expect(find.text('+2.98% today'), findsOneWidget);
    expect(find.text('Strong data-centre guidance lifted the shares.'), findsOneWidget);
  });
}
