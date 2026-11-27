import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/portfolio/add_lot_dialog.dart';
import 'package:reszveny/features/portfolio/allocation_card.dart';
import 'package:reszveny/features/portfolio/dividend_forecast.dart';
import 'package:reszveny/features/portfolio/holdings_reader.dart';
import 'package:reszveny/features/portfolio/portfolio_csv.dart';
import 'package:reszveny/features/portfolio/portfolio_history.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';
import 'package:reszveny/features/recognition/listing_symbol.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget_test.dart' show services;

/// A 66. kódátnézés (a portfólió pénzszámítási útjai, négy szemszögből keresve, minden
/// találat szkeptikus ellenőrzővel reprodukálva) javításai.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  PortfolioLot lot(
    String id,
    String symbol,
    double q,
    double price,
    DateTime? date, {
    bool sell = false,
    String currency = 'USD',
    String? account,
  }) => PortfolioLot(
    id: id,
    symbol: symbol,
    quantity: q,
    price: price,
    currency: currency,
    date: date,
    sell: sell,
    account: account,
  );

  test('a sale today keeps "Today %" measured against yesterday\'s value', () {
    // 10 X régóta, tegnapi záró 100; ma 105 (+5), és 9 darab eladva 105-ön.
    final store = PortfolioStore(
      lots: [lot('b', 'X', 10, 90, DateTime(2025, 1, 2)), lot('s', 'X', 9, 105, DateTime(2026, 11, 25), sell: true)],
    );
    final quote = StockQuote(symbol: 'X', price: 105, change: 5, timestamp: DateTime.utc(2026, 11, 25, 18));
    final s = PortfolioSnapshot.compute(
      store.positions,
      quotes: {'X': quote},
      rate: (_, _) => 1,
      currency: 'USD',
      closed: store.closedPositions,
    );
    expect(s.dayGain, closeTo(50, 1e-9));
    expect(s.dayGainPercent, closeTo(5, 1e-9), reason: 'nem 50 / 55 = 90,9%');
    expect(s.rows.single.dayGainPercent, closeTo(5, 1e-9));
  });

  test('a position sold out completely today still counts in "Today"', () {
    final store = PortfolioStore(
      lots: [
        lot('x', 'X', 10, 90, DateTime(2025, 1, 2)),
        lot('xs', 'X', 10, 105, DateTime(2026, 11, 25), sell: true),
        lot('y', 'Y', 10, 100, DateTime(2025, 1, 2)),
      ],
    );
    final t = DateTime.utc(2026, 11, 25, 18);
    final s = PortfolioSnapshot.compute(
      store.positions,
      quotes: {
        'X': StockQuote(symbol: 'X', price: 105, change: 5, timestamp: t),
        'Y': StockQuote(symbol: 'Y', price: 100, change: 0, timestamp: t),
      },
      rate: (_, _) => 1,
      currency: 'USD',
      closed: store.closedPositions,
    );
    // (105 − 100) × 10 a ma eladott X-en; a tegnapi érték 1000 + 1000.
    expect(s.dayGain, closeTo(50, 1e-9));
    expect(s.dayGainPercent, closeTo(2.5, 1e-9));
  });

  test('a Tokyo, Hong Kong or Sydney buy from the previous local session is not "bought today"', () {
    final store = PortfolioStore(lots: [lot('t', '7203.T', 100, 2500, DateTime(2026, 11, 26), currency: 'JPY')]);
    // 2026-11-27 11:00 JST (New Yorkban még 26-a): az előző záró 2550, most 2600.
    final s = PortfolioSnapshot.compute(
      store.positions,
      quotes: {
        '7203.T': StockQuote(symbol: '7203.T', price: 2600, change: 50, timestamp: DateTime.utc(2026, 11, 27, 2)),
      },
      rate: (_, _) => 1,
      currency: 'JPY',
    );
    expect(s.dayGain, closeTo(5000, 1e-9), reason: 'nem (2600 − 2500) × 100');
    expect(exchangeUtcOffset('BHP.AX', DateTime.utc(2026, 11, 27)), const Duration(hours: 11));
    expect(exchangeUtcOffset('BHP.AX', DateTime.utc(2026, 6, 1)), const Duration(hours: 10));
    expect(exchangeUtcOffset('AIR.NZ', DateTime.utc(2026, 10, 1)), const Duration(hours: 13));
    expect(exchangeUtcOffset('AAPL', DateTime.utc(2026, 11, 27)), isNull);
    expect(exchangeUtcOffset('OTP.BD', DateTime.utc(2026, 11, 27)), isNull);
  });

  test('a dividend counts the shares held a week before it was paid, not those bought just before', () {
    final store = PortfolioStore(
      lots: [lot('a', 'KO', 100, 60, DateTime(2025, 1, 2)), lot('b', 'KO', 100, 70, DateTime(2026, 9, 28))],
      dividends: [
        DividendRecord(id: 'd1', symbol: 'KO', amount: 51, currency: 'USD', date: DateTime(2026, 7, 1)),
        DividendRecord(id: 'd2', symbol: 'KO', amount: 51, currency: 'USD', date: DateTime(2026, 10, 1)),
      ],
    );
    // A szeptember 28-i vétel az október 1-jei kifizetésre még nem jogosított: most 200 darab
    // van, így a következő várható kifizetés kétszerese.
    expect(store.holdingScale('KO', DateTime(2026, 10, 1)), 2);
    final next = expectedDividends(
      store.dividends,
      ['KO'],
      now: DateTime(2026, 11, 27),
      scale: (symbol, day) => store.holdingScale(symbol, day),
    );
    expect(next.single.amount, closeTo(102, 1e-9));
  });

  test(
    'a CSV without a currency column takes the listing\'s currency, and a held position\'s without converting',
    () async {
      final parsed = parsePortfolioCsv('Ticker;Darab;Árfolyam;Dátum\nOTP.BD;10;30000;2025.04.03\nSAP;5;200;2025.04.03');
      final otp = parsed.lots.firstWhere((l) => l.symbol == 'OTP.BD');
      expect(otp.currency, 'HUF');
      expect(otp.currencyGuessed, isTrue);
      // A SAP-ot euróban tartja: a fájl nem mondta, hogy dollár – átváltás nélkül euró.
      final one = await parsed.inOneCurrency((s) => s == 'SAP' ? 'EUR' : null, (_, _, _) async => 0.9);
      final sap = one.lots.firstWhere((l) => l.symbol == 'SAP');
      expect((sap.currency, sap.price), ('EUR', 200));
      // A fájlban szereplő pénznem továbbra is átváltódik.
      final stated = await parsePortfolioCsv('Ticker;Darab;Árfolyam;Pénznem\nSAP;5;200;USD')
          .inOneCurrency((_) => 'EUR', (_, _, _) async => 0.9);
      expect(stated.lots.single.currency, 'EUR');
      expect(stated.lots.single.price, closeTo(180, 1e-9));
      // Osztaléksor pénznem nélkül: a tőzsde pénzneme.
      final div = parsePortfolioCsv('symbol,quantity,price,currency,date,side\nMOL.BD,,1000,,2025-05-02,dividend');
      expect(div.dividends.single.currency, 'HUF');
    },
  );

  test('a screenshot quoting pence keeps pence (GBX), not pounds', () {
    final h = HoldingsReader.parseResponse(
      jsonEncode({
        'stop_reason': 'end_turn',
        'content': [
          {
            'type': 'text',
            'text': jsonEncode({
              'holdings': [
                {
                  'symbol': 'VOD.L',
                  'company_name': 'Vodafone',
                  'quantity': 100,
                  'average_price': 72.5,
                  'currency': 'GBp',
                },
              ],
            }),
          },
        ],
      }),
    );
    expect(h.single.currency, 'GBX');
    expect(HoldingsReader.instructions, contains('GBX'));
  });

  test('the index comparison never sells more of the index than it holds', () {
    final days = [
      for (var d = DateTime(2026, 1, 1); d.isBefore(DateTime(2026, 1, 11)); d = d.add(const Duration(days: 1))) d,
    ];
    final index = PriceHistory(
      symbol: 'SPY',
      points: [for (final d in days) PricePoint(time: d, close: d.day == 1 ? 100 : (d.day == 2 ? 110 : 150))],
    );
    final x = PriceHistory(
      symbol: 'X',
      points: [for (final d in days) PricePoint(time: d, close: 500)],
    );
    final c = benchmarkComparison(
      [lot('b', 'X', 10, 100, DateTime(2026, 1, 1)), lot('s', 'X', 10, 500, DateTime(2026, 1, 2), sell: true)],
      {'X': x},
      index,
      (_) => 1,
    )!;
    // Az index-oldal az eladás napján 1100-at ért: ennyi jön ki belőle, utána nem mozog.
    expect(c.benchmarkValue, closeTo(1100, 1e-9));
    expect(c.benchmarkGain, closeTo(10, 1e-9));
    expect(c.portfolioValue, closeTo(5000, 1e-9));
  });

  test('"this year" measures the index from the year end, even after a pause in holding', () {
    final days = [
      for (var d = DateTime(2025, 6, 1); !d.isAfter(DateTime(2026, 11, 27)); d = d.add(const Duration(days: 1))) d,
    ];
    double spy(DateTime d) => d.isBefore(DateTime(2025, 12, 1)) ? 600 : (d.year == 2025 ? 680 : 700);
    final index = PriceHistory(
      symbol: 'SPY',
      points: [for (final d in days) PricePoint(time: d, close: spy(d))],
    );
    final a = PriceHistory(
      symbol: 'AAA',
      points: [for (final d in days) PricePoint(time: d, close: 100)],
    );
    final twr = portfolioTwrIndex(
      [
        lot('b1', 'AAA', 10, 100, DateTime(2025, 6, 2)),
        lot('s1', 'AAA', 10, 100, DateTime(2025, 6, 30), sell: true),
        lot('b2', 'AAA', 10, 100, DateTime(2026, 3, 2)),
      ],
      {'AAA': a},
      (_) => 1,
    );
    final y = ytdReturn(twr, index, DateTime(2026, 11, 27))!;
    expect(y.benchmark, closeTo((700 / 680 - 1) * 100, 1e-9), reason: 'nem a júniusi 600-tól');
  });

  test('undated shares still held: how long the position is held is not known', () {
    final store = PortfolioStore(
      lots: [lot('a', 'AAPL', 50, 100, null), lot('b', 'AAPL', 10, 200, DateTime(2026, 10, 1))],
    );
    expect(store.positionOf('AAPL')!.firstDate, isNull);
    final dated = PortfolioStore(
      lots: [lot('a', 'AAPL', 50, 100, DateTime(2024, 3, 1)), lot('b', 'AAPL', 10, 200, DateTime(2026, 10, 1))],
    );
    expect(dated.positionOf('AAPL')!.firstDate, DateTime(2024, 3, 1));
  });

  Widget app(AppServices s, Widget child) => AppServicesScope(
    services: s,
    child: MaterialApp(
      theme: AppTheme.build(Brightness.light),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [Locale('en')],
      home: Scaffold(body: child),
    ),
  );

  testWidgets('a pence-quoted buy paid from cash comes out of the pound balance', (tester) async {
    final s = services();
    await s.portfolio.setCash('GBP', 1000);
    await tester.pumpWidget(
      app(
        s,
        Builder(
          builder: (context) => TextButton(
            onPressed: () => showAddLotDialog(context, symbol: 'VOD.L', currency: 'GBp', currentPrice: 72.5),
            child: const Text('open'),
          ),
        ),
      ),
    );
    // A fordítások késleltetve töltődnek: előbb azok.
    await tester.pumpAndSettle();
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('lot-cash')), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '10');
    await tester.enterText(find.byKey(const ValueKey('lot-price')), '72.5');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    // 10 × 72,5 penny = 7,25 font.
    expect(s.portfolio.cash['GBP'], closeTo(992.75, 1e-9));
    expect(s.portfolio.cash.containsKey('GBX'), isFalse);
  });

  testWidgets('pence-quoted shares and pound cash are one currency in the allocation', (tester) async {
    tester.view.physicalSize = const Size(900, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    final store = PortfolioStore(
      lots: [
        lot('v', 'VOD.L', 100, 70, DateTime(2025, 1, 2), currency: 'GBX'),
        lot('a', 'AAPL', 1, 100, DateTime(2025, 1, 2)),
      ],
    );
    final snap = PortfolioSnapshot.compute(
      store.positions,
      quotes: {
        'VOD.L': const StockQuote(symbol: 'VOD.L', price: 80),
        'AAPL': const StockQuote(symbol: 'AAPL', price: 100),
      },
      rate: (from, _) => from == 'GBX' ? 0.01 : (from == 'USD' ? 0.8 : null),
      currency: 'GBP',
      cash: {'GBP': 80},
    );
    await tester.pumpWidget(
      app(
        s,
        SingleChildScrollView(
          child: AllocationCard(snapshot: snap, fmt: Fmt('en')),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Currencies'));
    await tester.pumpAndSettle();
    // 80 GBP (penny) + 80 GBP készpénz = 2/3 font, 80 GBP-nyi dollár = 1/3.
    expect(find.textContaining(RegExp(r'^GBP \d')), findsOneWidget);
    expect(find.textContaining(RegExp(r'^GBX')), findsNothing);
  });
}
