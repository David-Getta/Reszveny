import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/report_diff.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/stock_analyst.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

ReportOutlook _outlook({double price = 200, int mood = 1, (double, double, double) p = (25, 50, 25)}) => ReportOutlook(
  currentPrice: price,
  currency: 'USD',
  marketMood: mood,
  scenarios: [
    Scenario(kind: ScenarioKind.bull, probability: p.$1),
    Scenario(kind: ScenarioKind.base, probability: p.$2),
    Scenario(kind: ScenarioKind.bear, probability: p.$3),
  ],
);

StockReport _report(String headline, ReportOutlook outlook, DateTime at, {String symbol = 'AAPL'}) => StockReport(
  symbol: symbol,
  headline: headline,
  sections: const [
    ReportSection(kind: ReportSectionKind.summary, title: 'Summary', paragraphs: ['P']),
  ],
  generatedAt: at,
  language: 'English',
  outlook: outlook,
);

/// Minden hívásra a következő kilátást adja vissza (egyre későbbi időponttal).
class _SequenceAnalyst implements StockAnalyst {
  _SequenceAnalyst(this.outlooks);

  final List<ReportOutlook> outlooks;
  int calls = 0;

  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async {
    final i = calls++;
    return _report(
      'Run ${i + 1}',
      outlooks[i % outlooks.length],
      DateTime.now().add(Duration(minutes: i)),
      symbol: details.symbol,
    );
  }
}

EntitlementService _pro() => EntitlementService(
  initial: EntitlementState(
    tier: PlanTier.pro,
    periodStart: DateTime.now().subtract(const Duration(days: 1)),
    periodEnd: DateTime.now().add(const Duration(days: 29)),
  ),
);

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  group('ReportDiff', () {
    final t0 = DateTime.utc(2026, 10, 10, 9);
    final t1 = DateTime.utc(2026, 10, 12, 9);

    test('price, mood, scenario shifts and the most likely scenario', () {
      final d = ReportDiff.compare(
        _report('a', _outlook(price: 200, mood: 1, p: (35, 45, 20)), t0),
        _report('b', _outlook(price: 190, mood: -1, p: (15, 40, 45)), t1),
      )!;
      expect(d.previousAt, t0);
      expect(d.priceMove, closeTo(-5, 1e-9));
      expect(d.priceChanged, isTrue);
      expect((d.moodBefore, d.moodAfter, d.moodChanged), (1, -1, true));
      expect(d.scenarios.map((s) => (s.kind, s.delta)), [
        (ScenarioKind.bull, -20.0),
        (ScenarioKind.base, -5.0),
        (ScenarioKind.bear, 25.0),
      ]);
      expect((d.mostLikelyBefore, d.mostLikelyAfter), (ScenarioKind.base, ScenarioKind.bear));
      expect(d.outlookChanged, isTrue);
    });

    test('small moves are not changes', () {
      final d = ReportDiff.compare(
        _report('a', _outlook(price: 200, p: (25, 50, 25)), t0),
        _report('b', _outlook(price: 200.4, p: (27, 49, 24)), t1),
      )!;
      expect(d.priceChanged, isFalse);
      expect(d.scenariosShifted, isFalse);
      expect(d.outlookChanged, isFalse);
    });

    test('nothing to compare: other stock, wrong order, no outlook, other currency', () {
      final a = _report('a', _outlook(), t0);
      expect(ReportDiff.compare(a, _report('b', _outlook(), t1, symbol: 'MSFT')), isNull);
      expect(ReportDiff.compare(_report('b', _outlook(), t1), a), isNull);
      expect(
        ReportDiff.compare(a, StockReport(symbol: 'AAPL', headline: 'b', sections: const [], generatedAt: t1)),
        isNull,
      );
      final otherCurrency = ReportDiff.compare(
        a,
        _report('b', const ReportOutlook(currentPrice: 180, currency: 'EUR', marketMood: 0), t1),
      )!;
      expect(otherCurrency.priceMove, isNull);
      expect(otherCurrency.moodChanged, isTrue);
    });
  });

  test('a re-run keeps the previous analysis, also across restarts; deleting forgets both', () async {
    final details = await DemoMarketDataProvider(latency: Duration.zero).details('AAPL');
    final analyst = _SequenceAnalyst([_outlook(price: 200), _outlook(price: 210, mood: 2, p: (45, 40, 15))]);
    final store = ReportStore(analyst: analyst);
    await store.generate(details, outputLanguage: 'English');
    expect(store.previous('AAPL'), isNull);
    expect(store.changes('AAPL'), isNull);

    await store.generate(details, outputLanguage: 'English', force: true);
    expect(store.previous('AAPL')?.headline, 'Run 1');
    expect(store.report('AAPL')?.headline, 'Run 2');
    expect(store.changes('AAPL')?.priceMove, closeTo(5, 1e-9));

    final reopened = ReportStore(analyst: analyst);
    await reopened.restore('AAPL', language: 'English');
    expect(reopened.previous('AAPL')?.headline, 'Run 1');
    expect(reopened.changes('AAPL')?.mostLikelyAfter, ScenarioKind.bull);

    await reopened.delete('AAPL');
    final third = ReportStore(analyst: analyst);
    expect(await third.restore('AAPL', language: 'English'), isNull);
    expect(third.previous('AAPL'), isNull);
  });

  testWidgets('after "Regenerate" the card shows what changed since the previous analysis', (tester) async {
    tester.view.physicalSize = const Size(1200, 3000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final ent = _pro();
    final analyst = _SequenceAnalyst([
      _outlook(price: 200, mood: 1, p: (30, 50, 20)),
      _outlook(price: 190, mood: 0, p: (20, 35, 45)),
    ]);
    final services = AppServices(
      alertNotifier: FakeNotifier(),
      config: const AppConfig(),
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: analyst, entitlements: ent),
      entitlements: ent,
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('report-changes')), findsNothing);

    await tester.tap(find.text('Regenerate'));
    await tester.pumpAndSettle();
    final card = find.byKey(const ValueKey('report-changes'));
    expect(card, findsOneWidget);
    expect(find.textContaining('Since the previous analysis'), findsOneWidget);
    String rich(String key) => (tester.widget<Text>(find.byKey(ValueKey(key))).textSpan!).toPlainText();
    expect(find.textContaining('200.00 USD', findRichText: true), findsOneWidget);
    expect(find.textContaining('190.00 USD', findRichText: true), findsOneWidget);
    expect(find.textContaining('(-5.0%)', findRichText: true), findsOneWidget);
    expect(find.textContaining('Optimistic', findRichText: true), findsWidgets);
    // A nyíl ikon (WidgetSpan) a szövegben U+FFFC helyőrzőként jelenik meg.
    expect(rich('scenario-shift-bear'), 'Bear case: 20%\uFFFC45%');
    expect(rich('scenario-shift-bull'), 'Bull case: 30%\uFFFC20%');
    expect(find.byKey(const ValueKey('scenario-shift-base')), findsOneWidget);

    expect(find.text('Run 1'), findsNothing);
    await tester.tap(find.byKey(const ValueKey('report-changes-previous')));
    await tester.pumpAndSettle();
    expect(find.text('Run 1'), findsOneWidget);
  });
}
