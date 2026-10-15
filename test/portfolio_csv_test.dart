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
    ]);
    expect(csv, 'symbol,quantity,price,currency,date\nAAPL,10,180.5,USD,\nOTP,0.5,28450,HUF,\n');
  });

  test('import: header, commas, semicolons with decimal commas, tabs; bad lines are counted', () {
    final r = parsePortfolioCsv(
      'symbol,quantity,price,currency,date\n'
      'aapl, 10, 180.50, usd, 2025-03-14\n'
      '\n'
      'OTP;5;28 450,5;HUF;2024-11-02\n'
      'MSFT\t2\t410\n'
      'nonsense line\n'
      'NVDA,-3,100,USD\n',
    );
    expect(r.lots.map((l) => (l.symbol, l.quantity, l.price, l.currency, l.date)), [
      ('AAPL', 10.0, 180.5, 'USD', DateTime(2025, 3, 14)),
      ('OTP', 5.0, 28450.5, 'HUF', DateTime(2024, 11, 2)),
      ('MSFT', 2.0, 410.0, 'USD', null),
    ]);
    expect(r.skipped, 2);
  });

  test('export then import gives the same purchases back', () {
    const lots = [PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 3, price: 199.99, currency: 'USD')];
    final back = parsePortfolioCsv(portfolioCsv(lots));
    expect(back.skipped, 0);
    expect(back.lots.single.price, 199.99);
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
    expect(shared.single, startsWith('symbol,quantity,price,currency,date\n'));
    expect(shared.single, contains('AAPL,10,180,USD,2025-03-14'));
  });
}
