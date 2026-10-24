import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/telemetry/telemetry.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/stock_analyst.dart';
import 'package:reszveny/features/market_data/caching_market_data_provider.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _Analyst implements StockAnalyst {
  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async => StockReport(
    symbol: details.symbol,
    headline: 'Headline',
    sections: const [
      ReportSection(kind: ReportSectionKind.summary, title: 'Summary', paragraphs: ['Para']),
    ],
    generatedAt: DateTime.now(),
  );
}

/// Egy napokig, hetekig futó (tálcás) app hibáinak javításai.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('a recurring error is reported again on a new day', () async {
    final sent = <Map<String, dynamic>>[];
    var now = DateTime(2026, 10, 24, 10);
    final t = Telemetry(preferences: AppPreferences(telemetryConsent: true), sink: (b) async => sent.add(b))
      ..clock = () => now;
    for (var day = 0; day < 3; day++) {
      t.reportError(StateError('boom'), null);
      t.reportError(StateError('boom'), null);
      await t.flush();
      now = now.add(const Duration(days: 1));
    }
    expect([for (final b in sent) (b['errors'] as List).length], [1, 1, 1]);
  });

  test('keeping an old analysis is asked about again later, not never', () async {
    final store = ReportStore(analyst: _Analyst());
    await store.generate(const StockDetails(symbol: 'AAPL'), outputLanguage: 'English');
    var now = DateTime.now().add(const Duration(hours: 13));
    store.clock = () => now;
    expect(store.needsStaleDecision('AAPL'), isTrue);
    store.keepStale('AAPL');
    expect(store.needsStaleDecision('AAPL'), isFalse);
    now = now.add(const Duration(days: 1));
    expect(store.needsStaleDecision('AAPL'), isTrue);
  });

  test('looking up a symbol already near the front does not rewrite the cache index', () async {
    final p = CachingMarketDataProvider(DemoMarketDataProvider(latency: Duration.zero));
    await p.quote('AAPL');
    await p.quote('MSFT');
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getStringList('mdc_index'), ['MSFT', 'AAPL']);
    await p.quote('AAPL');
    expect(prefs.getStringList('mdc_index'), ['MSFT', 'AAPL']);
  });
}
