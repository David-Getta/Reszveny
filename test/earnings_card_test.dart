import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/analysis_extras.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/market_data/finnhub_market_data_provider.dart';
import 'package:reszveny/features/market_data/market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

/// Demó adatok, de gyorsjelentés-adat nélkül (pl. nem USA-részvény).
class _NoEarnings extends DemoMarketDataProvider {
  _NoEarnings() : super(latency: Duration.zero);

  @override
  Future<EarningsOverview> earnings(String symbol) async => const EarningsOverview();
}

AppServices _services(MarketDataProvider market) => AppServices(
  alertNotifier: FakeNotifier(),
  config: const AppConfig(),
  capture: CaptureService(),
  recognizer: _NoRecognizer(),
  marketData: market,
  locale: LocaleController(),
  preferences: AppPreferences(),
  desktop: DesktopIntegration(),
  reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
  entitlements: EntitlementService(),
);

Future<void> _openAapl(WidgetTester tester, AppServices services) async {
  tester.view.physicalSize = const Size(1200, 9000);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(WhatStockApp(services: services));
  await tester.pumpAndSettle();
  await tester.enterText(find.byType(TextField).first, 'AAPL');
  await tester.testTextInput.receiveAction(TextInputAction.search);
  await tester.pumpAndSettle();
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('surprise and beat: reported, or worked out from the two numbers', () {
    final beat = EarningsSurprise(period: DateTime(2026, 6, 30), actual: 1.1, estimate: 1.0);
    expect(beat.beat, isTrue);
    expect(beat.surprise, closeTo(10, 1e-9));
    final miss = EarningsSurprise(period: DateTime(2026, 3, 31), actual: -0.5, estimate: -0.4, surprisePercent: -25);
    expect(miss.beat, isFalse);
    expect(miss.surprise, -25);
    expect(EarningsSurprise(period: DateTime(2026, 3, 31), actual: 1).beat, isNull);
  });

  test('Finnhub: earnings history and the next date from two calls', () {
    final x = FinnhubMarketDataProvider.parseAnalysisExtras(
      'AAPL',
      earnings: [
        {'actual': 1.5, 'estimate': 1.55, 'period': '2026-03-31', 'surprisePercent': -3.2},
        {'actual': 1.65, 'estimate': 1.6, 'period': '2026-06-30', 'surprisePercent': 3.1},
      ],
      calendar: {
        'earningsCalendar': [
          {'date': '2026-10-30', 'hour': 'amc', 'epsEstimate': 1.7, 'symbol': 'AAPL'},
        ],
      },
      now: DateTime(2026, 10, 16),
    );
    expect(x.earnings.first.period, DateTime(2026, 6, 30), reason: 'newest first');
    expect(x.nextEarnings!.date, DateTime(2026, 10, 30));
  });

  testWidgets('the earnings card on a stock page: next report, four quarters, beats', (tester) async {
    await _openAapl(tester, _services(DemoMarketDataProvider(latency: Duration.zero)));
    expect(find.byKey(const ValueKey('earnings-card')), findsOneWidget);
    expect(find.text('Earnings'), findsOneWidget);
    expect(find.byKey(const ValueKey('earnings-next')), findsOneWidget);
    expect(find.textContaining('Next report: '), findsOneWidget);
    for (var i = 0; i < 4; i++) {
      expect(find.byKey(ValueKey('earnings-q-$i')), findsOneWidget);
    }
    // A demóban négyből egyszer marad el a várakozástól.
    expect(find.text('At or above the expected EPS in 3 of the last 4 quarters'), findsOneWidget);
    expect(find.text('Expected EPS'), findsOneWidget);
  });

  testWidgets('no earnings data: no card', (tester) async {
    await _openAapl(tester, _services(_NoEarnings()));
    expect(find.text('Apple Inc.'), findsWidgets);
    expect(find.byKey(const ValueKey('earnings-card')), findsNothing);
  });
}
