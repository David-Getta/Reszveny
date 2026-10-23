import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/features/portfolio/activity_page.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('activity: every kind in one list, newest first, filtered by ticker, kind and account', () async {
    final store = PortfolioStore();
    await store.add(symbol: 'AAPL', quantity: 10, price: 150, currency: 'USD', date: DateTime(2024, 3, 1));
    await store.add(
      symbol: 'MSFT',
      quantity: 2,
      price: 400,
      currency: 'USD',
      date: DateTime(2025, 1, 10),
      account: 'TBSZ',
    );
    await store.add(symbol: 'AAPL', quantity: 4, price: 210, currency: 'USD', date: DateTime(2025, 6, 2), sell: true);
    await store.add(symbol: 'NVDA', quantity: 1, price: 100, currency: 'USD');
    await store.addDividend(symbol: 'AAPL', amount: 2.4, currency: 'USD', date: DateTime(2025, 5, 15));
    await store.addSplit(symbol: 'NVDA', from: 1, to: 10, date: DateTime(2024, 6, 10));

    final all = activityEntries(store);
    expect(all.map((e) => (e.symbol, e.kind)), [
      ('AAPL', ActivityKind.sell),
      ('AAPL', ActivityKind.dividend),
      ('MSFT', ActivityKind.buy),
      ('NVDA', ActivityKind.split),
      ('AAPL', ActivityKind.buy),
      ('NVDA', ActivityKind.buy),
    ], reason: 'a dátum nélküli a végén');

    expect(activityEntries(store, query: ' aa').map((e) => e.kind), [
      ActivityKind.sell,
      ActivityKind.dividend,
      ActivityKind.buy,
    ]);
    expect(activityEntries(store, kinds: {ActivityKind.dividend, ActivityKind.split}).map((e) => e.symbol), [
      'AAPL',
      'NVDA',
    ]);
    expect(activityEntries(store, account: 'TBSZ').map((e) => e.symbol), ['MSFT']);
    expect(activityEntries(store, query: 'XYZ'), isEmpty);

    // Az eladás realizált nyeresége FIFO szerint: 4 × (210 − 150).
    final sale = store.lots.firstWhere((l) => l.sell);
    expect(store.realizedBySale[sale.id]?.gain, closeTo(240, 1e-9));
    expect(store.realizedBySale[sale.id]?.currency, 'USD');
    expect(store.realizedBySale, hasLength(1));
  });

  test('realized per sale: a sale matched across two accounts is summed; the fee counts', () async {
    final store = PortfolioStore();
    await store.add(symbol: 'OTP', quantity: 5, price: 20000, currency: 'HUF', date: DateTime(2024, 1, 5));
    await store.add(
      symbol: 'OTP',
      quantity: 5,
      price: 22000,
      currency: 'HUF',
      date: DateTime(2024, 2, 5),
      account: 'TBSZ',
    );
    // Az eladás a TBSZ-en: 5 darab onnan, a maradék 3 a számla nélküli vételből fogy.
    final sale = await store.add(
      symbol: 'OTP',
      quantity: 8,
      price: 30000,
      currency: 'HUF',
      date: DateTime(2025, 3, 1),
      sell: true,
      account: 'TBSZ',
      fee: 800,
    );
    final gain = store.realizedBySale[sale.id]!.gain;
    expect(gain, closeTo(8 * 30000 - 800 - (5 * 22000 + 3 * 20000), 1e-6));
  });

  testWidgets('all transactions page: from the portfolio menu, filter, edit on tap, delete with undo', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    final buy = await s.portfolio.add(
      symbol: 'AAPL',
      quantity: 10,
      price: 150,
      currency: 'USD',
      date: DateTime(2025, 3, 1),
    );
    final msft = await s.portfolio.add(
      symbol: 'MSFT',
      quantity: 2,
      price: 400,
      currency: 'USD',
      date: DateTime(2025, 1, 10),
    );
    final d = await s.portfolio.addDividend(symbol: 'AAPL', amount: 2.4, currency: 'USD', date: DateTime(2025, 5, 15));
    final sale = await s.portfolio.add(
      symbol: 'AAPL',
      quantity: 3,
      price: 170,
      currency: 'USD',
      date: DateTime(2025, 4, 1),
      sell: true,
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-activity')));
    await tester.pumpAndSettle();

    expect(find.text('All transactions'), findsOneWidget);
    expect(find.byKey(ValueKey('activity-${buy.id}')), findsOneWidget);
    expect(find.byKey(ValueKey('activity-${d.id}')), findsOneWidget);
    expect(find.text('+2.40 USD'), findsOneWidget);
    expect(find.text('1,500.00 USD'), findsOneWidget, reason: '10 × 150');
    expect(find.byKey(ValueKey('activity-realized-${sale.id}')), findsOneWidget);
    expect(find.text('+60.00 USD'), findsOneWidget, reason: '3 × (170 − 150)');
    // Hónap-fejlécek az újabb elöl.
    expect(find.text('May 2025'), findsOneWidget);
    expect(find.text('Jan 2025'), findsOneWidget);

    // Típusra szűrve csak az osztalék; tickerre szűrve semmi.
    await tester.tap(find.byKey(const ValueKey('activity-kind-dividend')));
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('activity-${buy.id}')), findsNothing);
    expect(find.byKey(ValueKey('activity-${d.id}')), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('activity-search')), 'msft');
    await tester.pumpAndSettle();
    expect(find.text('No transactions match the filter.'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('activity-kind-dividend')));
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('activity-${msft.id}')), findsOneWidget);
    expect(find.byKey(ValueKey('activity-${buy.id}')), findsNothing);
    await tester.enterText(find.byKey(const ValueKey('activity-search')), '');
    await tester.pumpAndSettle();

    // Koppintva a vétel javító dialógusa nyílik.
    await tester.tap(find.byKey(ValueKey('activity-${buy.id}')));
    await tester.pumpAndSettle();
    expect(find.text('Edit transaction · AAPL'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '12');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots.firstWhere((l) => l.id == buy.id).quantity, 12);
    expect(find.text('1,800.00 USD'), findsOneWidget);

    // Az osztalék is javítható koppintva.
    await tester.tap(find.byKey(ValueKey('activity-${d.id}')));
    await tester.pumpAndSettle();
    expect(find.text('Edit dividend · AAPL'), findsOneWidget);
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();

    // Törlés visszavonással.
    await tester.tap(find.byKey(ValueKey('activity-delete-${d.id}')));
    await tester.pumpAndSettle();
    expect(s.portfolio.dividends, isEmpty);
    expect(find.text('Dividend deleted'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('activity-undo')));
    await tester.pumpAndSettle();
    expect(s.portfolio.dividends.single.id, d.id);
    expect(find.byKey(ValueKey('activity-${d.id}')), findsOneWidget);
  });
}
