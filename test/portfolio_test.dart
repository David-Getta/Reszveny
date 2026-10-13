import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/portfolio/add_lot_dialog.dart';
import 'package:reszveny/features/portfolio/portfolio_page.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  group('PortfolioStore', () {
    test('merges purchases of the same stock into one position with a weighted average cost', () async {
      final store = PortfolioStore();
      await store.add(symbol: 'aapl', quantity: 10, price: 150, currency: 'USD', date: DateTime(2025, 3, 14));
      await store.add(symbol: 'AAPL', quantity: 5, price: 180, currency: 'USD', date: DateTime(2026, 1, 10));
      await store.add(symbol: 'OTP', quantity: 40, price: 21000, currency: 'HUF');
      final aapl = store.positionOf('AAPL')!;
      expect(aapl.quantity, 15);
      expect(aapl.cost, 2400);
      expect(aapl.averageCost, 160);
      expect(aapl.firstDate, DateTime(2025, 3, 14));
      expect(aapl.lastDate, DateTime(2026, 1, 10));
      // A legnagyobb bekerülési érték elöl (OTP 840 000 HUF).
      expect(store.positions.map((p) => p.symbol), ['OTP', 'AAPL']);
    });

    test('purchases survive a restart, and removing one updates the position', () async {
      final store = PortfolioStore();
      final first = await store.add(symbol: 'NVDA', quantity: 2, price: 100, currency: 'USD');
      await store.add(symbol: 'NVDA', quantity: 3, price: 150, currency: 'USD', date: DateTime(2026, 5, 2));
      final loaded = await PortfolioStore.load();
      expect(loaded.lots.length, 2);
      expect(loaded.positionOf('NVDA')!.averageCost, 130);
      expect(loaded.lots.last.date, DateTime(2026, 5, 2));
      await loaded.remove(first.id);
      expect(loaded.positionOf('NVDA')!.quantity, 3);
      expect((await PortfolioStore.load()).lots.length, 1);
    });

    test('broken stored entries are skipped', () {
      final lots = PortfolioStore.parse(
        '[{"symbol":"AAPL","quantity":1,"price":10,"currency":"usd"},{"symbol":"","quantity":1,"price":1},'
        '{"symbol":"X","quantity":-1,"price":1},{"symbol":"Y","quantity":"2","price":1},"nope"]',
      );
      expect(lots.map((l) => l.symbol), ['AAPL']);
      expect(lots.single.currency, 'USD');
    });
  });

  group('PortfolioSnapshot', () {
    final store = PortfolioStore(
      lots: const [
        PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 10, price: 150, currency: 'USD'),
        PortfolioLot(id: 'o', symbol: 'OTP', quantity: 100, price: 20000, currency: 'HUF'),
        PortfolioLot(id: 'x', symbol: 'XYZ', quantity: 1, price: 10, currency: 'GBP'),
      ],
    );
    final quotes = {
      'AAPL': const StockQuote(symbol: 'AAPL', price: 200, change: 4),
      'OTP': const StockQuote(symbol: 'OTP', price: 25000, change: -500),
      'XYZ': const StockQuote(symbol: 'XYZ', price: 12, change: 1),
    };

    test('converts every position to one currency and weights them', () {
      final s = PortfolioSnapshot.compute(
        store.positions,
        quotes: quotes,
        // 1 HUF = 0,0025 USD; GBP-hez nincs árfolyam → kimarad.
        rate: (from, to) => from == 'HUF' ? 0.0025 : null,
        currency: 'USD',
      );
      // AAPL 2 000 USD + OTP 2 500 000 HUF = 6 250 USD.
      expect(s.value, closeTo(8250, 1e-9));
      expect(s.cost, closeTo(1500 + 5000, 1e-9));
      expect(s.gain, closeTo(1750, 1e-9));
      expect(s.gainPercent, closeTo(26.92, 0.01));
      // Napi: AAPL +40 USD, OTP −50 000 HUF = −125 USD.
      expect(s.dayGain, closeTo(-85, 1e-9));
      expect(s.rows.map((r) => r.position.symbol), ['OTP', 'AAPL', 'XYZ']);
      expect(s.rows.first.weight, closeTo(6250 / 8250, 1e-9));
      expect(s.rows.fold(0.0, (a, r) => a + r.weight), closeTo(1, 1e-9));
      expect(s.hasExcluded, isTrue);
      expect(s.rows.last.inTotal, isFalse);
      expect(s.rows[1].gainPercent, closeTo(33.33, 0.01));
    });

    test('a missing price leaves the position out of the totals', () {
      final s = PortfolioSnapshot.compute(
        store.positions.where((p) => p.symbol == 'AAPL').toList(),
        quotes: const {},
        rate: (_, _) => null,
        currency: 'USD',
      );
      expect(s.value, 0);
      expect(s.hasExcluded, isTrue);
      expect(s.rows.single.value, isNull);
    });

    test('the total currency follows the display currency, then a shared currency, then USD', () {
      final usdOnly = store.positions.where((p) => p.currency == 'USD').toList();
      expect(PortfolioSnapshot.totalCurrency(store.positions, 'EUR'), 'EUR');
      expect(PortfolioSnapshot.totalCurrency(usdOnly, null), 'USD');
      expect(PortfolioSnapshot.totalCurrency(store.positions.where((p) => p.symbol == 'OTP').toList(), ''), 'HUF');
      expect(PortfolioSnapshot.totalCurrency(store.positions, null), 'USD');
    });
  });

  test('money: whole-unit currencies without decimals, others with two', () {
    final f = Fmt('en');
    expect(f.money(1707000.4, 'HUF'), '1,707,000 HUF');
    expect(f.money(70.8, 'HUF'), '70.80 HUF');
    expect(f.money(258000, 'HUF', withSign: true, showCurrency: false), '+258,000');
    expect(f.money(-70.8, 'USD', withSign: true), '-70.80 USD');
    expect(f.money(5, 'USD', withSign: true), '+5.00 USD');
    expect(f.money(null, 'USD'), 'n/a');
  });

  test('decimal input accepts local number formats', () {
    expect(parseDecimal('12,5'), 12.5);
    expect(parseDecimal('1 234,5'), 1234.5);
    expect(parseDecimal('1 234,5'), 1234.5);
    expect(parseDecimal('1,234.5'), 1234.5);
    expect(parseDecimal('1.234,56'), 1234.56);
    expect(parseDecimal("1'234.5"), 1234.5);
    expect(parseDecimal('abc'), isNull);
    expect(parseDecimal(''), isNull);
  });

  test('the analysis is told about the reader’s own position, without being asked for advice', () {
    final settings = ClaudeStockAnalyst.buildSettings(
      AnalysisOptions(
        position: PositionContext(
          quantity: 15,
          averageCost: 160,
          currency: 'USD',
          firstDate: DateTime(2025, 3, 14),
          lastDate: DateTime(2026, 1, 10),
        ),
      ),
    );
    expect(settings, contains('holds 15 shares at an average cost of 160 USD'));
    expect(settings, contains('bought between 2025-03-14 and 2026-01-10'));
    expect(settings, contains('do not tell the reader whether to buy more, hold or sell'));
    expect(ClaudeStockAnalyst.buildSettings(const AnalysisOptions()), isNot(contains("Reader's position")));
  });

  testWidgets('a purchase added on the detail page shows as a position and in the portfolio', (tester) async {
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Add to portfolio'));
    await tester.pumpAndSettle();
    expect(find.text('Add AAPL'), findsOneWidget);
    // Az ár a jelenlegi árral van kitöltve; hibás darabszámra hibaüzenet.
    expect(find.widgetWithText(TextField, '231.45'), findsOneWidget);
    await tester.tap(find.widgetWithText(FilledButton, 'Add'));
    await tester.pumpAndSettle();
    expect(find.text('Enter a number greater than zero.'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '10');
    await tester.enterText(find.byKey(const ValueKey('lot-price')), '200');
    await tester.tap(find.widgetWithText(FilledButton, 'Add'));
    await tester.pumpAndSettle();

    expect(find.text('AAPL added to your portfolio.'), findsOneWidget);
    expect(s.portfolio.positionOf('AAPL')!.quantity, 10);
    expect(find.text('Your position'), findsOneWidget);
    expect(find.text('+314.50 USD'), findsOneWidget); // 10 × 231,45 − 2 000
    expect(s.analysisOptions(symbol: 'AAPL').position!.averageCost, 200);
    expect(s.analysisOptions(symbol: 'MSFT').position, isNull);

    await tester.pageBack();
    await tester.pumpAndSettle();
    // Összesítő a kezdőképernyőn (a „Portfolio” felirat az alsó sávban is szerepel).
    final summary = find.descendant(of: find.byType(PortfolioSummaryCard), matching: find.text('Portfolio'));
    expect(summary, findsOneWidget);
    // A „hozzáadva” SnackBar az összesítőt takarja, ezért az alsó sávon váltunk.
    await tester.tap(find.descendant(of: find.byKey(const ValueKey('phone-nav')), matching: find.text('Portfolio')));
    await tester.pumpAndSettle();
    expect(find.text('Total value'), findsOneWidget);
    expect(find.text('2,314.50 USD'), findsWidgets);
    expect(find.text('Positions'), findsOneWidget);
  });
}
