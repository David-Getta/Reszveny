import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/features/portfolio/portfolio_csv.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('export: one line per purchase, dot as decimal separator', () {
    final csv = portfolioCsv(const [
      PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 10, price: 180.5, currency: 'USD'),
      PortfolioLot(id: 'o', symbol: 'OTP', quantity: 0.5, price: 28450, currency: 'HUF'),
      PortfolioLot(id: 's', symbol: 'AAPL', quantity: 4, price: 230, currency: 'USD', sell: true),
    ]);
    expect(
      csv,
      'symbol,quantity,price,currency,date,side\nAAPL,10,180.5,USD,,buy\nOTP,0.5,28450,HUF,,buy\nAAPL,4,230,USD,,sell\n',
    );
  });

  test('import: header, commas, semicolons with decimal commas, tabs; bad lines are counted', () {
    final r = parsePortfolioCsv(
      'symbol,quantity,price,currency,date\n'
      'aapl, 10, 180.50, usd, 2025-03-14\n'
      '\n'
      'OTP;5;28 450,5;HUF;2024-11-02\n'
      'MSFT\t2\t410\n'
      'nonsense line\n'
      'NVDA,-3,100,USD\n'
      'AAPL,2,240,USD,2026-01-05,sell\n'
      'TSLA,0,100\n',
    );
    expect(r.lots.map((l) => (l.symbol, l.quantity, l.price, l.currency, l.date, l.sell)), [
      ('AAPL', 10.0, 180.5, 'USD', DateTime(2025, 3, 14), false),
      ('OTP', 5.0, 28450.5, 'HUF', DateTime(2024, 11, 2), false),
      ('MSFT', 2.0, 410.0, 'USD', null, false),
      // Negatív darabszám vagy „sell” oszlop: eladás.
      ('NVDA', 3.0, 100.0, 'USD', null, true),
      ('AAPL', 2.0, 240.0, 'USD', DateTime(2026, 1, 5), true),
    ]);
    expect(r.skipped, 2);
  });

  test('export then import gives the same purchases back', () {
    const lots = [
      PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 3, price: 199.99, currency: 'USD'),
      PortfolioLot(id: 'b', symbol: 'AAPL', quantity: 1, price: 210, currency: 'USD', sell: true),
    ];
    final back = parsePortfolioCsv(portfolioCsv(lots));
    expect(back.skipped, 0);
    expect(back.lots.first.price, 199.99);
    expect(back.lots.map((l) => l.sell), [false, true]);
  });

  testWidgets('import from the empty portfolio, then export through the share sheet', (tester) async {
    tester.view.physicalSize = const Size(1200, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final shared = <String>[];
    final original = shareText;
    shareText = (text, {subject, origin}) async => shared.add(text);
    addTearDown(() => shareText = original);
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey('portfolio-empty-import')));
    await tester.pumpAndSettle();
    await tester.enterText(
      find.byKey(const ValueKey('portfolio-import-text')),
      'AAPL,10,180,USD,2025-03-14\nbroken\nMSFT,2,400,USD',
    );
    await tester.tap(find.byKey(const ValueKey('portfolio-import-ok')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots.map((l) => l.symbol), containsAll(['AAPL', 'MSFT']));
    expect(find.text('2 purchases added · 1 line skipped'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-export')));
    await tester.pumpAndSettle();
    expect(shared.single, startsWith('symbol,quantity,price,currency,date,side\n'));
    expect(shared.single, contains('AAPL,10,180,USD,2025-03-14'));
  });
}
