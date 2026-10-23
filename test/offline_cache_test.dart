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
import 'package:reszveny/core/models/analyst_consensus.dart';
import 'package:reszveny/core/models/company_profile.dart';
import 'package:reszveny/core/models/financial_statements.dart';
import 'package:reszveny/core/models/news_item.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/core/models/stock_candidate.dart';
import 'package:reszveny/core/models/stock_metrics.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/caching_market_data_provider.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/market_data/market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;

/// A demó adatforrás, ami „kikapcsolható” (hálózati hiba, vagy ismeretlen részvény).
class _Switchable extends MarketDataProvider {
  final demo = DemoMarketDataProvider(latency: Duration.zero);
  bool offline = false;

  Future<T> _go<T>(Future<T> Function() f) async {
    if (offline) throw const MarketDataException(AppErrorCode.marketUnreachable);
    return f();
  }

  @override
  String get name => 'test';
  @override
  Future<StockQuote> quote(String s) => _go(() => demo.quote(s));
  @override
  Future<CompanyProfile> profile(String s) => _go(() => demo.profile(s));
  @override
  Future<StockMetrics> metrics(String s) => _go(() => demo.metrics(s));
  @override
  Future<PriceHistory> history(String s, {int years = 5}) => _go(() => demo.history(s, years: years));
  @override
  Future<List<NewsItem>> news(String s, {int limit = 20}) => _go(() => demo.news(s, limit: limit));
  @override
  Future<AnalystConsensus?> consensus(String s) => _go(() => demo.consensus(s));
  @override
  Future<FinancialStatements> statements(String s) => _go(() => demo.statements(s));
  @override
  Future<List<StockCandidate>> search(String q) => _go(() => demo.search(q));
}

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the last good data comes back when the network is down; unknown symbols still fail', () async {
    final inner = _Switchable();
    final cache = CachingMarketDataProvider(inner, clock: () => DateTime(2026, 10, 15, 9, 12));
    final quote = await cache.quote('AAPL');
    final profile = await cache.profile('AAPL');
    final metrics = await cache.metrics('AAPL');
    final history = await cache.history('AAPL');
    expect(cache.offlineSince.value, isNull);

    inner.offline = true;
    final q = await cache.quote('AAPL');
    expect(q.price, quote.price);
    expect(q.changePercent, quote.changePercent);
    expect((await cache.profile('AAPL')).name, profile.name);
    expect((await cache.metrics('AAPL')).peTrailing, metrics.peTrailing);
    final h = await cache.history('AAPL');
    expect(h.points.length, history.points.length);
    expect(h.points.last.close, history.points.last.close);
    expect(cache.offlineSince.value, DateTime(2026, 10, 15, 9, 12));
    // Amit még sosem töltöttünk le, az offline is hiba.
    await expectLater(cache.quote('MSFT'), throwsA(isA<MarketDataException>()));

    // Visszajön a hálózat: egy adat frissülése még nem törli a többi régi adat jelzését;
    // ha mind friss, a jelzés eltűnik.
    inner.offline = false;
    await cache.quote('AAPL');
    expect(cache.staleSince('AAPL'), DateTime(2026, 10, 15, 9, 12));
    await cache.profile('AAPL');
    await cache.metrics('AAPL');
    await cache.history('AAPL');
    expect(cache.staleSince('AAPL'), isNull);
    expect(cache.offlineSince.value, isNull);

    // Az „ismeretlen részvény” hibát nem takarja el a mentett adat.
    await expectLater(cache.quote('ZZZZ'), throwsA(isA<MarketDataException>()));

    await CachingMarketDataProvider.clear();
    inner.offline = true;
    await expectLater(cache.quote('AAPL'), throwsA(isA<MarketDataException>()));
  });

  test('the history is kept per length: a 1-year load does not replace the 5-year one', () async {
    final inner = _Switchable();
    final cache = CachingMarketDataProvider(inner, clock: () => DateTime(2026, 10, 15, 9, 12));
    final five = await cache.history('SPY');
    final one = await cache.history('SPY', years: 1);
    expect(one.points.length, lessThan(five.points.length));
    inner.offline = true;
    expect((await cache.history('SPY')).points.length, five.points.length);
    expect((await cache.history('SPY', years: 1)).points.length, one.points.length);
  });

  testWidgets('offline, the stock page shows the saved data with a banner', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final inner = _Switchable();
    final cache = CachingMarketDataProvider(inner);
    await tester.runAsync(() => cache.details('AAPL'));
    inner.offline = true;
    await tester.pumpWidget(
      WhatStockApp(
        services: AppServices(
          alertNotifier: FakeNotifier(),
          config: const AppConfig(),
          capture: CaptureService(),
          recognizer: _NoRecognizer(),
          marketData: cache,
          locale: LocaleController(),
          preferences: AppPreferences(),
          desktop: DesktopIntegration(),
          reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
          entitlements: EntitlementService(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.text('Apple Inc.'), findsWidgets);
    expect(find.byKey(const ValueKey('offline-banner')), findsOneWidget);
    expect(find.textContaining('No connection – showing the data saved on'), findsOneWidget);
  });
}
