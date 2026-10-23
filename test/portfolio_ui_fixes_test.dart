import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/home/home_page.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/portfolio/activity_page.dart';
import 'package:reszveny/features/portfolio/add_lot_dialog.dart';
import 'package:reszveny/features/portfolio/portfolio_csv.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

const _config = AppConfig();

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
);

/// Egy kódátnézés portfólió-felületi hibáinak ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('editing a buy from all transactions does not apply a split twice', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = _services();
    await s.portfolio.add(symbol: 'NVDA', quantity: 10, price: 900, currency: 'USD', date: DateTime(2024, 3, 1));
    await s.portfolio.addSplit(symbol: 'NVDA', from: 1, to: 10, date: DateTime(2024, 6, 10));
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    Navigator.of(tester.element(find.byType(HomePage)))
        .push(MaterialPageRoute<void>(builder: (_) => const ActivityPage()));
    await tester.pumpAndSettle();
    final lot = s.portfolio.lots.single;
    await tester.tap(find.byKey(ValueKey('activity-${lot.id}')));
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byKey(const ValueKey('lot-quantity'))).controller!.text, '100');
    expect(tester.widget<TextField>(find.byKey(const ValueKey('lot-price'))).controller!.text, '90');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    expect((s.portfolio.lots.single.quantity, s.portfolio.lots.single.price), (10, 900));
    expect(s.portfolio.positions.single.quantity, 100);
  });

  testWidgets('a buy cannot be corrected below what was already sold from it', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = _services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD', date: DateTime(2025, 1, 2));
    await s.portfolio.add(
      symbol: 'AAPL',
      quantity: 8,
      price: 120,
      currency: 'USD',
      date: DateTime(2025, 6, 2),
      sell: true,
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    final buy = s.portfolio.lots.firstWhere((l) => !l.sell);
    showEditLotDialog(tester.element(find.byType(HomePage)), buy);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '5');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    expect(find.textContaining('At least 8'), findsOneWidget);
    expect(s.portfolio.lots.firstWhere((l) => !l.sell).quantity, 10);
  });

  test('deleting a split puts the price alerts back; undoing it moves them again', () async {
    final s = _services();
    final alert = await s.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: 250, currency: 'USD');
    final split = (await s.portfolio.addSplit(
      symbol: 'AAPL',
      from: 1,
      to: 10,
      date: DateTime.now().add(const Duration(days: 1)),
    ))!;
    await s.alerts.applySplit('AAPL', from: 1, to: 10, date: split.date);
    expect(s.alerts.alerts.firstWhere((a) => a.id == alert.id).value, closeTo(25, 1e-9));
    await s.removeSplit(split.id);
    expect(s.alerts.alerts.firstWhere((a) => a.id == alert.id).value, closeTo(250, 1e-9));
    await s.restoreSplit(split);
    expect(s.alerts.alerts.firstWhere((a) => a.id == alert.id).value, closeTo(25, 1e-9));
  });

  test('numbers in the purchase dialog: thousands separators and tiny prices', () {
    expect(parseAmount('1,500', 'en'), 1500);
    expect(parseAmount('12.500', 'hu'), 12500);
    expect(parseAmount(fieldNumber('12.345', 'de'), 'de'), closeTo(12.345, 1e-9));
    expect(plainNumber(0.00012), '0.00012');
    expect(plainNumber(0.00004), '0.00004');
    expect(plainNumber(0.5), '0.5');
    expect(plainNumber(12.5), '12.5');
    expect(plainNumber(3), '3');
  });

  test('the dividend export leaves out announced future payments', () {
    final now = DateTime(2026, 10, 23);
    final csv = dividendsCsv([
      DividendRecord(id: 'a', symbol: 'MSFT', amount: 10, currency: 'USD', date: DateTime(2026, 3, 12)),
      DividendRecord(id: 'b', symbol: 'MSFT', amount: 5, currency: 'USD', date: DateTime(2026, 10, 28)),
    ], now: now);
    expect(csv, contains('2026-03-12,MSFT,10,USD'));
    expect(csv, isNot(contains('2026-10-28')));
  });
}
