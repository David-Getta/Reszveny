import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/features/portfolio/portfolio_history.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/stock_detail/widgets/price_chart.dart';
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

    test('sales use the oldest purchases first: realized gain, remaining cost, closed positions', () async {
      final store = PortfolioStore();
      await store.add(symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD', date: DateTime(2025, 1, 10));
      await store.add(symbol: 'AAPL', quantity: 10, price: 150, currency: 'USD', date: DateTime(2025, 6, 1));
      await store.add(
        symbol: 'AAPL',
        quantity: 15,
        price: 200,
        currency: 'USD',
        date: DateTime(2026, 2, 1),
        sell: true,
      );
      await store.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD', date: DateTime(2025, 3, 1));
      await store.add(symbol: 'MSFT', quantity: 2, price: 380, currency: 'USD', date: DateTime(2025, 9, 1), sell: true);
      final aapl = store.positionOf('AAPL')!;
      // 10 db 100-on és 5 db 150-en kelt el 200-ért: (100 × 10) + (50 × 5).
      expect(aapl.realizedGain, 1250);
      expect(aapl.quantity, 5);
      expect(aapl.cost, 750);
      expect(aapl.averageCost, 150);
      expect(aapl.firstDate, DateTime(2025, 6, 1));
      expect(store.positionOf('MSFT'), isNull, reason: 'fully sold');
      expect(store.closedPositions.single.realizedGain, -40);
      // Az eladás is megmarad újraindítás után.
      final reloaded = await PortfolioStore.load();
      expect(reloaded.lots.where((l) => l.sell).length, 2);
      expect(reloaded.positionOf('AAPL')!.quantity, 5);

      final s = PortfolioSnapshot.compute(
        store.positions,
        quotes: {'AAPL': const StockQuote(symbol: 'AAPL', price: 210, change: 0)},
        rate: (_, _) => 1,
        currency: 'USD',
        closed: store.closedPositions,
      );
      expect(s.realized, 1250 - 40);
      // Évenként: az AAPL-eladás 2026-os, az MSFT-é 2025-ös.
      expect(s.realizedByYear, {2026: 1250, 2025: -40});
      expect(s.closed.single.realized, -40);
      expect(s.cost, 750);
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

    test('expected yearly dividends: per position, converted and as a yield', () {
      final s = PortfolioSnapshot.compute(
        store.positions,
        quotes: quotes,
        rate: (from, to) => from == 'HUF' ? 0.0025 : null,
        currency: 'USD',
        // AAPL 1,04 USD, OTP 964 HUF részvényenként; XYZ (árfolyam nélkül) kimarad.
        dividends: {'AAPL': 1.04, 'OTP': 964, 'XYZ': 1},
      );
      final aapl = s.rows.firstWhere((r) => r.position.symbol == 'AAPL');
      final otp = s.rows.firstWhere((r) => r.position.symbol == 'OTP');
      expect(aapl.annualDividend, closeTo(10.4, 1e-9));
      expect(otp.annualDividend, closeTo(96400, 1e-9));
      expect(s.annualDividend, closeTo(10.4 + 96400 * 0.0025, 1e-9));
      expect(s.dividendYield, closeTo(s.annualDividend / s.value * 100, 1e-9));
      expect(s.dividendYieldOnCost, closeTo(s.annualDividend / s.cost * 100, 1e-9));
    });

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

  testWidgets('the price chart marks the own average cost and active price alerts', (tester) async {
    tester.view.physicalSize = const Size(1200, 4000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD', date: DateTime(2026, 1, 5));
    await s.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: 250, currency: 'USD');
    await s.alerts.add(symbol: 'AAPL', kind: AlertKind.move, value: 5);
    await s.alerts.add(symbol: 'MSFT', kind: AlertKind.below, value: 400, currency: 'USD');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final chart = tester.widget<PriceChart>(find.byType(PriceChart));
    expect(chart.levels.map((l) => (l.label, l.price)), [('Your avg.', 200.0), ('Alert', 250.0)]);
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

  test('portfolio value over time: lots count from their purchase day, last known close, converted', () {
    PriceHistory h(String s, List<double> closes) => PriceHistory(
      symbol: s,
      points: [for (final (i, c) in closes.indexed) PricePoint(time: DateTime(2026, 1, 1 + i), close: c)],
    );
    final value = portfolioValueHistory(
      [
        PortfolioLot(id: 'a', symbol: 'AAA', quantity: 2, price: 10, currency: 'USD', date: DateTime(2026, 1, 1)),
        PortfolioLot(id: 'b', symbol: 'BBB', quantity: 1, price: 100, currency: 'EUR', date: DateTime(2026, 1, 3)),
      ],
      {
        'AAA': h('AAA', [10, 11, 12, 13]),
        // A BBB-nek a 4. napon nincs ára: az előző záróár marad.
        'BBB': PriceHistory(
          symbol: 'BBB',
          points: [
            PricePoint(time: DateTime(2026, 1, 2), close: 100),
            PricePoint(time: DateTime(2026, 1, 3), close: 110),
          ],
        ),
      },
      (c) => c == 'EUR' ? 2.0 : 1.0,
    )!;
    expect(value.points.map((p) => (p.time.day, p.close)), [(1, 20.0), (2, 22.0), (3, 24.0 + 220), (4, 26.0 + 220)]);
    expect(portfolioValueHistory(const [], const {}, (_) => 1), isNull);
  });

  test('S&P 500 comparison: each purchase amount goes into the index on its own day', () {
    PriceHistory h(String s, List<double> closes) => PriceHistory(
      symbol: s,
      points: [for (final (i, c) in closes.indexed) PricePoint(time: DateTime(2026, 1, 1 + i), close: c)],
    );
    final b = benchmarkComparison(
      [
        // 2 × 10 USD az 1. napon (index 100), 1 × 100 EUR (= 200) a 3. napon (index 125).
        PortfolioLot(id: 'a', symbol: 'AAA', quantity: 2, price: 10, currency: 'USD', date: DateTime(2026, 1, 1)),
        PortfolioLot(id: 'b', symbol: 'BBB', quantity: 1, price: 100, currency: 'EUR', date: DateTime(2026, 1, 3)),
        // Árfolyam nélküli pozíció kimarad.
        PortfolioLot(id: 'c', symbol: 'CCC', quantity: 5, price: 1, currency: 'USD'),
      ],
      {
        'AAA': h('AAA', [10, 11, 12, 15]),
        'BBB': h('BBB', [100, 100, 110, 120]),
      },
      h('SPY', [100, 110, 125, 150]),
      (c) => c == 'EUR' ? 2.0 : 1.0,
    )!;
    expect(b.invested, 220);
    expect(b.portfolioValue, 2 * 15 + 120 * 2);
    expect(b.benchmarkValue, closeTo(20 * 1.5 + 200 * 1.2, 1e-9));
    expect(b.portfolioGain, closeTo((270 / 220 - 1) * 100, 1e-9));
    expect(b.difference, closeTo(0, 1e-9));
    expect(benchmarkComparison(const [], const {}, h('SPY', [1, 2]), (_) => 1), isNull);
  });

  test('value over time and the S&P 500 comparison count sales from their day', () {
    PriceHistory h(String s, List<double> closes) => PriceHistory(
      symbol: s,
      points: [for (final (i, c) in closes.indexed) PricePoint(time: DateTime(2026, 1, 1 + i), close: c)],
    );
    final lots = [
      PortfolioLot(id: 'a', symbol: 'AAA', quantity: 4, price: 10, currency: 'USD', date: DateTime(2026, 1, 1)),
      PortfolioLot(
        id: 's',
        symbol: 'AAA',
        quantity: 3,
        price: 12,
        currency: 'USD',
        date: DateTime(2026, 1, 3),
        sell: true,
      ),
    ];
    final histories = {
      'AAA': h('AAA', [10, 11, 12, 20]),
    };
    final value = portfolioValueHistory(lots, histories, (_) => 1)!;
    expect(value.points.map((p) => p.close), [40.0, 44.0, 12.0, 20.0]);
    // 40-et fektetett be (index 100); a 3. napon 36-ot vett ki (index 120).
    final b = benchmarkComparison(lots, histories, h('SPY', [100, 110, 120, 150]), (_) => 1)!;
    expect(b.invested, 40);
    expect(b.portfolioValue, 20 + 36);
    expect(b.benchmarkValue, closeTo((40 / 100 - 36 / 120) * 150 + 36, 1e-9));
  });

  testWidgets('selling from the portfolio page: part, then the rest; the position closes with its realized gain', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD', date: DateTime(2025, 5, 2));
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey('position-menu-AAPL')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('position-sell')));
    await tester.pumpAndSettle();
    expect(find.text('Sell AAPL'), findsOneWidget);
    // Többet nem lehet eladni, mint amennyi van.
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '12');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    expect(find.text('You hold 10'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '4');
    await tester.enterText(find.byKey(const ValueKey('lot-price')), '250');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    expect(s.portfolio.positionOf('AAPL')!.quantity, 6);
    expect(find.textContaining('Sold 4'), findsOneWidget);
    expect(find.text('Realized: +200.00 USD'), findsOneWidget);

    // A maradék: a „Mind” gomb kitölti a darabszámot.
    await tester.tap(find.byKey(const ValueKey('position-sell')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('lot-sell-all')));
    await tester.enterText(find.byKey(const ValueKey('lot-price')), '190');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    expect(s.portfolio.positionOf('AAPL'), isNull);
    expect(find.byKey(const ValueKey('position-sell')), findsNothing, reason: 'nothing left to sell');
    // A lap bezárása a háttérre koppintva.
    await tester.tapAt(const Offset(600, 40));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('portfolio-closed')), findsOneWidget);
    expect(find.text('Closed positions'), findsOneWidget);
    // 4 × 50 − 6 × 10 = 140
    expect(find.text('+140.00 USD'), findsWidgets);
    expect(find.byKey(const ValueKey('portfolio-realized')), findsOneWidget);
    expect(find.text('Realized gains by year'), findsOneWidget);
  });

  test('without any price the total is unknown, not zero', () async {
    final store = PortfolioStore();
    await store.add(symbol: 'OTP', quantity: 10, price: 24000, currency: 'HUF');
    final s = PortfolioSnapshot.compute(store.positions, quotes: const {}, rate: (_, _) => 1, currency: 'HUF');
    expect(s.unknown, isTrue);
    final ok = PortfolioSnapshot.compute(
      store.positions,
      quotes: {'OTP': const StockQuote(symbol: 'OTP', price: 25000)},
      rate: (_, _) => 1,
      currency: 'HUF',
    );
    expect(ok.unknown, isFalse);
  });

  testWidgets('allocation by stocks, sectors and currencies', (tester) async {
    tester.view.physicalSize = const Size(1200, 4000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await s.portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD');
    await s.portfolio.add(symbol: 'OTP', quantity: 10, price: 30000, currency: 'HUF');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('allocation-by')), findsOneWidget);
    expect(find.textContaining(RegExp(r'^AAPL \d')), findsOneWidget);

    await tester.tap(find.text('Currencies'));
    await tester.pumpAndSettle();
    expect(find.textContaining(RegExp(r'^USD \d')), findsOneWidget);

    await tester.tap(find.text('Sectors'));
    await tester.pumpAndSettle();
    expect(find.textContaining(RegExp(r'^AAPL \d')), findsNothing);
  });

  test('weights grouped and summed, largest first', () {
    PositionValue row(String symbol, String ccy, double w) => PositionValue(
      position: Position(symbol: symbol, currency: ccy, lots: const []),
      weight: w,
    );
    final g = groupWeights([
      row('A', 'USD', 0.2),
      row('B', 'EUR', 0.5),
      row('C', 'USD', 0.3),
    ], (r) => r.position.currency);
    expect(g.map((e) => e.label), ['USD', 'EUR']);
    expect(g.first.weight, closeTo(0.5, 1e-9));
  });

  test('rebalancing: buy what is under its target, sell what is over it', () {
    PositionValue row(String symbol, double w) => PositionValue(
      position: Position(symbol: symbol, currency: 'USD', lots: const []),
      weight: w,
    );
    final snap = PortfolioSnapshot(
      currency: 'USD',
      rows: [row('AAPL', 0.6), row('MSFT', 0.3), row('KO', 0.1)],
      value: 10000,
      cost: 8000,
      dayGain: 0,
    );
    final plan = rebalancePlan(snap, {'AAPL': 40, 'MSFT': 40});
    expect(plan.map((p) => p.symbol), ['AAPL', 'MSFT'], reason: 'largest move first; KO has no target');
    expect(plan[0].amount, closeTo(-2000, 1e-6));
    expect(plan[1].amount, closeTo(1000, 1e-6));
    expect(rebalancePlan(snap, const {}), isEmpty);
  });

  testWidgets('target allocation: set targets, then see what to buy or sell', (tester) async {
    tester.view.physicalSize = const Size(1200, 4000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await s.portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('targets-edit')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('target-field-AAPL')), '50');
    await tester.enterText(find.byKey(const ValueKey('target-field-MSFT')), '50');
    await tester.pumpAndSettle();
    expect(find.text('Total: 100.0%'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('targets-save')));
    await tester.pumpAndSettle();
    expect(s.preferences.targets, {'AAPL': 50.0, 'MSFT': 50.0});
    // Az AAPL súlya nagyobb (2314,5 vs 1024,6 USD): eladni kell belőle, a MSFT-ből venni.
    expect(
      find.descendant(of: find.byKey(const ValueKey('target-AAPL')), matching: find.textContaining('Sell ≈ ')),
      findsOneWidget,
    );
    expect(
      find.descendant(of: find.byKey(const ValueKey('target-MSFT')), matching: find.textContaining('Buy ≈ ')),
      findsOneWidget,
    );
  });
}
