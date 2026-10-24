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
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/alerts/alerts_view.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:reszveny/features/home/home_page.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/notes/notes_store.dart';
import 'package:reszveny/features/portfolio/dividends_card.dart';
import 'package:reszveny/features/portfolio/portfolio_page.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/features/stock_detail/stock_detail_page.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

const _config = AppConfig();

/// Árfolyam nincs (a szolgáltató hibát ad): a más pénznemű tételek nem válthatók át.
AppServices _services() => AppServices(
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
  fx: FxService(client: MockClient((_) async => http.Response('{}', 500))),
);

/// Egy oldal az alkalmazásban (a szolgáltatásokkal és a fordításokkal).
Future<void> _open(WidgetTester tester, AppServices s, WidgetBuilder builder) async {
  tester.view.physicalSize = const Size(1200, 2400);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(WhatStockApp(services: s));
  await tester.pumpAndSettle();
  Navigator.of(tester.element(find.byType(HomePage))).push(MaterialPageRoute<void>(builder: builder));
  await tester.pumpAndSettle();
}

PortfolioLot _lot(String symbol, String currency) =>
    PortfolioLot(id: '${symbol}_1', symbol: symbol, quantity: 1, price: 10, currency: currency);

/// Szélsőséges adatok (sok tétel, nagyon kis árak, hosszú nevek) kódátnézésének ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('a penny-stock price keeps its significant digits, a normal one stays at two decimals', () {
    final f = Fmt('en');
    expect(f.price(0.00001234, 'USD'), '0.0000123 USD');
    expect(f.price(0.5, null), '0.5000');
    expect(f.price(0, null), '0.0000');
    expect(f.price(182.456, null), '182.46');
    // Darabár: egy alatt az ár pontosságával, különben pénzösszegként.
    expect(f.unit(0.0042, 'USD'), '0.00420 USD');
    expect(f.unit(12.5, 'USD'), f.money(12.5, 'USD'));
  });

  test('an entry that no longer fits leaves the note as it was and says so', () async {
    final notes = NotesStore();
    final long = 'x' * (NotesStore.maxLength - 10);
    await notes.set('AAPL', long);
    expect(await notes.append('AAPL', 'Bought because of the new chip'), isFalse);
    expect(notes.of('AAPL')!.text, long);
    expect(await notes.append('AAPL', 'ok'), isTrue);
    expect(notes.of('AAPL')!.text, '$long\n\nok');
  });

  test('a position left out of the totals says whether its price or its exchange rate is missing', () async {
    final l10n = await lookupAppLocalizations(const Locale('en'));
    PositionValue row(String symbol, {double? price, double? rate}) => PositionValue(
      position: Position(symbol: symbol, currency: 'TWD', lots: [_lot(symbol, 'TWD')]),
      price: price,
      rate: rate,
    );
    final s = PortfolioSnapshot(
      currency: 'USD',
      rows: [row('2330.TW', price: 950), row('ZZZZ'), row('AAPL', price: 200, rate: 1)],
      value: 200,
      cost: 10,
      dayGain: 0,
    );
    expect(excludedReasons(l10n, s), [l10n.portfolioNoPriceFor('ZZZZ'), l10n.portfolioNoRateFor('2330.TW')]);
  });

  testWidgets('dividends without an exchange rate are named, and an announced one opens no new year', (tester) async {
    final s = _services();
    final now = DateTime.now();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await s.portfolio.addDividend(symbol: 'AAPL', amount: 5, currency: 'USD', date: DateTime(now.year, 1, 2));
    await s.portfolio.addDividend(symbol: 'AAPL', amount: 4, currency: 'USD', date: DateTime(now.year - 1, 6, 1));
    await s.portfolio.addDividend(symbol: 'TSM', amount: 300, currency: 'TWD', date: DateTime(now.year, 1, 3));
    await s.portfolio.addDividend(symbol: 'AAPL', amount: 6, currency: 'USD', date: DateTime(now.year + 1, 2, 1));
    await _open(
      tester,
      s,
      (_) => const Scaffold(
        body: SingleChildScrollView(child: DividendsCard(currency: 'USD')),
      ),
    );
    final note = tester.widget<Text>(find.byKey(const ValueKey('dividends-not-converted')));
    expect(note.data, contains('TWD'));
    expect(find.byKey(ValueKey('dividends-year-${now.year}')), findsOneWidget);
    expect(find.byKey(ValueKey('dividends-year-${now.year - 1}')), findsOneWidget);
    expect(find.byKey(ValueKey('dividends-year-${now.year + 1}')), findsNothing);
  });

  testWidgets('a stock with many alerts shows the first few and the rest on request', (tester) async {
    final s = _services();
    for (var i = 1; i <= 7; i++) {
      await s.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: 200.0 + i);
    }
    await _open(
      tester,
      s,
      (_) => const Scaffold(
        body: SingleChildScrollView(child: SymbolAlertsCard(symbol: 'AAPL')),
      ),
    );
    expect(find.byType(AlertTile), findsNWidgets(SymbolAlertsCard.shownCount));
    await tester.tap(find.byKey(const ValueKey('symbol-alerts-all')));
    await tester.pumpAndSettle();
    expect(find.byType(AlertTile), findsNWidgets(7));
    expect(find.byKey(const ValueKey('symbol-alerts-all')), findsNothing);
  });

  testWidgets('the chart shows only the alert levels nearest to the price', (tester) async {
    final s = _services();
    for (final v in const [100.0, 150.0, 195.0, 205.0, 210.0, 300.0, 400.0]) {
      await s.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: v);
    }
    List<double>? levels;
    await _open(
      tester,
      s,
      (_) => Builder(
        builder: (context) {
          levels = [for (final l in chartLevels(context, 'AAPL', 'USD', price: 200)) l.price];
          return const SizedBox();
        },
      ),
    );
    expect(levels, hasLength(maxChartAlertLevels));
    expect(levels!.toSet(), {195.0, 205.0, 210.0, 150.0});
  });
}
