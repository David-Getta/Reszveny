import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/features/portfolio/annual_summary.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  PortfolioStore sample() => PortfolioStore(
    lots: [
      PortfolioLot(
        id: 'a',
        symbol: 'AAPL',
        quantity: 10,
        price: 100,
        currency: 'USD',
        date: DateTime(2024, 3, 1),
        fee: 2,
      ),
      PortfolioLot(
        id: 'b',
        symbol: 'AAPL',
        quantity: 4,
        price: 150,
        currency: 'USD',
        date: DateTime(2025, 5, 2),
        sell: true,
        fee: 1,
      ),
      PortfolioLot(
        id: 'c',
        symbol: 'OTP',
        quantity: 10,
        price: 20000,
        currency: 'HUF',
        date: DateTime(2023, 1, 5),
        account: 'TBSZ',
      ),
      PortfolioLot(
        id: 'd',
        symbol: 'OTP',
        quantity: 10,
        price: 30000,
        currency: 'HUF',
        date: DateTime(2025, 8, 1),
        sell: true,
        account: 'TBSZ',
      ),
    ],
    dividends: [
      DividendRecord(
        id: 'x',
        symbol: 'OTP',
        amount: 3000,
        currency: 'HUF',
        date: DateTime(2025, 6, 1),
        account: 'TBSZ',
      ),
      DividendRecord(id: 'y', symbol: 'AAPL', amount: 1.04, currency: 'USD', date: DateTime(2026, 2, 13)),
    ],
  );

  test('per year, account and currency: proceeds, cost basis, dividends and fees, not converted', () {
    final store = sample();
    expect(summaryYears(store), [2026, 2025, 2024]);
    final rows = annualSummary(store, 2025);
    expect(rows.map((r) => (r.account, r.currency)), [(null, 'USD'), ('TBSZ', 'HUF')]);
    // AAPL: 4 × 150 − 1 = 599 bevétel; 4 × (100 + 2/10) = 400,8 bekerülés; az eladás díja 1.
    final usd = rows.first;
    expect((usd.proceeds, usd.fees, usd.sales), (599.0, 1.0, 1));
    expect(usd.cost, closeTo(400.8, 1e-9));
    final huf = rows.last;
    expect((huf.proceeds, huf.cost, huf.dividends), (300000.0, 200000.0, 3000.0));
    // 2024: csak a vétel díja.
    expect(annualSummary(store, 2024).single.fees, 2);
    expect(annualSummary(store, 2026).single.dividends, 1.04);
  });

  testWidgets('the annual summary opens from the portfolio menu, by year, and can be shared', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    String? shared;
    final previous = shareText;
    shareText = (text, {subject, origin}) async => shared = text;
    addTearDown(() => shareText = previous);
    final s = services();
    final store = sample();
    for (final l in store.lots) {
      await s.portfolio.add(
        symbol: l.symbol,
        quantity: l.quantity,
        price: l.price,
        currency: l.currency,
        date: l.date,
        sell: l.sell,
        account: l.account,
        fee: l.fee,
      );
    }
    for (final d in store.dividends) {
      await s.portfolio.addDividend(
        symbol: d.symbol,
        amount: d.amount,
        currency: d.currency,
        date: d.date,
        account: d.account,
      );
    }
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-annual-summary')));
    await tester.pumpAndSettle();
    expect(find.text('Annual summary'), findsOneWidget);
    // Alapból a legutóbbi lezárt év.
    final now = DateTime.now().year;
    final initial = [2026, 2025, 2024].firstWhere((y) => y < now);
    expect(tester.widget<ChoiceChip>(find.byKey(ValueKey('annual-summary-year-$initial'))).selected, isTrue);
    await tester.tap(find.byKey(const ValueKey('annual-summary-year-2025')));
    await tester.pumpAndSettle();
    expect(find.text('No account · USD'), findsOneWidget);
    expect(find.text('TBSZ · HUF'), findsOneWidget);
    expect(
      find.descendant(
        of: find.byKey(const ValueKey('annual-summary-realized-*-USD')),
        matching: find.text('+198.20 USD'),
      ),
      findsOneWidget,
    );
    expect(find.byKey(const ValueKey('annual-summary-dividends-TBSZ-HUF')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('annual-summary-share')));
    await tester.pumpAndSettle();
    expect(shared, startsWith('Annual summary 2025\n'));
    expect(shared, contains('TBSZ · HUF'));
    expect(shared, contains('Fees paid: 1.00 USD'));
  });
}
