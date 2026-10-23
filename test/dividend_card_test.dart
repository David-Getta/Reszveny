import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/models/stock_metrics.dart';
import 'package:reszveny/features/stock_detail/widgets/dividend_card.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  Future<AppServices> pump(WidgetTester tester, StockMetrics? m, {String? error, String currency = 'USD'}) async {
    final s = services();
    await tester.pumpWidget(
      AppServicesScope(
        services: s,
        child: MaterialApp(
          theme: AppTheme.build(Brightness.light),
          localizationsDelegates: WhatStockApp.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Scaffold(
            body: SingleChildScrollView(
              child: DividendCard(symbol: 'AAPL', currency: currency, metrics: m, error: error),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    return s;
  }

  testWidgets('yield, per share, payout, 5-year growth; the yearly dividend on your own shares once held', (
    tester,
  ) async {
    const m = StockMetrics(dividendYield: 0.45, dividendPerShare: 1.04, payoutRatio: 15.8, dividendGrowth5y: 4.9);
    final s = await pump(tester, m);
    expect(find.text('Dividend growth (5y)'), findsOneWidget);
    expect(find.text('+4.90%'), findsOneWidget);
    expect(find.text('On your shares, a year'), findsNothing);
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await tester.pumpAndSettle();
    expect(find.text('On your shares, a year'), findsOneWidget);
    expect(find.text('~ 10.40 USD'), findsOneWidget);
  });

  testWidgets('a position in another currency gets no estimate (the per-share amount is in the quote currency)', (
    tester,
  ) async {
    final s = await pump(tester, const StockMetrics(dividendPerShare: 1.04), currency: 'USD');
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 180, currency: 'EUR');
    await tester.pumpAndSettle();
    expect(find.text('On your shares, a year'), findsNothing);
  });

  testWidgets('no dividend: one sentence instead of empty rows; missing data still shows the rows', (tester) async {
    await pump(tester, const StockMetrics(dividendYield: 0));
    expect(find.byKey(const ValueKey('dividend-none')), findsOneWidget);
    expect(find.text('No dividend paid in the last 12 months.'), findsOneWidget);
    expect(find.text('Payout ratio'), findsNothing);
    await pump(tester, const StockMetrics());
    expect(find.byKey(const ValueKey('dividend-none')), findsNothing);
    expect(find.text('Payout ratio'), findsOneWidget);
    expect(DividendCard.paysNone(const StockMetrics(dividendYield: 0, dividendPerShare: 0.2)), isFalse);
  });

  testWidgets('a loading error is shown instead of the rows', (tester) async {
    await pump(tester, null, error: 'Could not load');
    expect(find.text('Could not load'), findsOneWidget);
    expect(find.text('Dividend yield'), findsNothing);
  });
}
