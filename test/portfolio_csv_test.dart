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

  test('broker exports: Revolut, Trading 212 and Interactive Brokers, with sales; other rows are ignored', () {
    final revolut = parsePortfolioCsv(
      'Date,Ticker,Type,Quantity,Price per share,Total Amount,Currency,FX Rate\n'
      '2025-02-03T14:31:07.123Z,,CASH TOP-UP,,,USD 1000,USD,1.00\n'
      '2025-02-03T14:35:12.456Z,AAPL,BUY - MARKET,2,USD 230.10,USD 460.20,USD,1.00\n'
      '2025-05-15T09:01:00.000Z,AAPL,DIVIDEND,,,USD 0.50,USD,1.00\n'
      '2025-09-01T15:00:00.000Z,AAPL,SELL - LIMIT,0.5,USD 240,USD 120,USD,1.00\n',
    );
    expect(revolut.lots.map((l) => (l.symbol, l.quantity, l.price, l.currency, l.date, l.sell)), [
      ('AAPL', 2.0, 230.1, 'USD', DateTime(2025, 2, 3), false),
      ('AAPL', 0.5, 240.0, 'USD', DateTime(2025, 9, 1), true),
    ]);
    expect(revolut.skipped, 0);
    // Az osztaléksor kapott osztalékként jön át (a teljes összeggel).
    expect(revolut.dividends.map((d) => (d.symbol, d.amount, d.currency, d.date)), [
      ('AAPL', 0.5, 'USD', DateTime(2025, 5, 15)),
    ]);

    final t212 = parsePortfolioCsv(
      'Action,Time,ISIN,Ticker,Name,No. of shares,Price / share,Currency (Price / share),Exchange rate,Total,'
      'Currency (Total)\n'
      'Deposit,2025-01-02 10:00:00,,,,,,,,500,EUR\n'
      'Market buy,2025-01-02 10:05:11,US5949181045,MSFT,Microsoft,1.5,410.20,USD,1.04,592.10,EUR\n'
      'Limit sell,2025-06-10 16:20:00,US5949181045,MSFT,Microsoft,0.5,450,USD,1.10,204.55,EUR\n'
      'Dividend (Ordinary),2025-06-12 09:00:00,US5949181045,MSFT,Microsoft,1,0.83,USD,1.12,0.74,EUR\n',
    );
    expect(t212.lots.map((l) => (l.symbol, l.quantity, l.price, l.currency, l.sell)), [
      ('MSFT', 1.5, 410.2, 'USD', false),
      ('MSFT', 0.5, 450.0, 'USD', true),
    ]);
    // Az osztalék a „Total” oszlop összege, a számla pénznemében.
    expect(t212.dividends.map((d) => (d.symbol, d.amount, d.currency, d.date)), [
      ('MSFT', 0.74, 'EUR', DateTime(2025, 6, 12)),
    ]);

    final ibkr = parsePortfolioCsv(
      'Statement,Header,Field Name,Field Value\n'
      'Statement,Data,Period,"January 1, 2025 - December 31, 2025"\n'
      'Trades,Header,DataDiscriminator,Asset Category,Currency,Symbol,Date/Time,Quantity,T. Price,Proceeds\n'
      'Trades,Data,Order,Stocks,USD,NVDA,"2025-03-14, 10:31:12",10,120.5,-1205\n'
      'Trades,Data,Order,Stocks,EUR,ASML,"2025-04-02, 09:00:01",-2,640.25,1280.5\n'
      'Trades,SubTotal,,Stocks,USD,NVDA,,10,,-1205\n'
      'Dividends,Header,Currency,Date,Description,Amount\n'
      'Dividends,Data,USD,2025-06-27,NVDA(US67066G1040) Cash Dividend USD 0.01 per Share (Ordinary Dividend),0.1\n'
      'Dividends,Data,EUR,2025-05-07,"ASML(NL0010273215) Cash Dividend EUR 1.84 per Share (Ordinary Dividend)",3.68\n'
      'Dividends,Data,Total,,,3.78\n'
      'Withholding Tax,Header,Currency,Date,Description,Amount,Code\n'
      'Withholding Tax,Data,USD,2025-06-27,NVDA(US67066G1040) Cash Dividend USD 0.01 per Share - US Tax,-0.015,\n'
      'Withholding Tax,Data,Total,,,-0.015,\n',
    );
    expect(ibkr.lots.map((l) => (l.symbol, l.quantity, l.price, l.currency, l.date, l.sell)), [
      ('NVDA', 10.0, 120.5, 'USD', DateTime(2025, 3, 14), false),
      ('ASML', 2.0, 640.25, 'EUR', DateTime(2025, 4, 2), true),
    ]);
    expect(ibkr.skipped, 0);
    // A „Dividends” szakasz sorai: ticker a leírás elejéről; az összesítő sor kimarad;
    // a forrásadó (ugyanaz a részvény és nap) levonva: 0,10 − 0,015.
    expect(ibkr.dividends.map((d) => (d.symbol, (d.amount * 1000).round(), d.currency, d.date)), [
      ('NVDA', 85, 'USD', DateTime(2025, 6, 27)),
      ('ASML', 3680, 'EUR', DateTime(2025, 5, 7)),
    ]);
  });

  test('quoted fields keep their commas and quotes', () {
    expect(splitCsvLine('a,"b, c",d', ','), ['a', 'b, c', 'd']);
    expect(splitCsvLine('"x ""y""",1', ','), ['x "y"', '1']);
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

  test('dividends: exported as dividend rows and read back; a separate CSV for the tax return', () {
    const lots = [PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 3, price: 199.99, currency: 'USD')];
    final dividends = [
      DividendRecord(id: 'd1', symbol: 'AAPL', amount: 0.75, currency: 'USD', date: DateTime(2026, 2, 13)),
      DividendRecord(id: 'd2', symbol: 'OTP', amount: 24000, currency: 'HUF', date: DateTime(2025, 6, 2)),
    ];
    final csv = portfolioCsv(lots, dividends: dividends);
    expect(csv, contains('AAPL,,0.75,USD,2026-02-13,dividend'));
    final back = parsePortfolioCsv(csv);
    expect(back.skipped, 0);
    expect(back.lots, hasLength(1));
    expect(back.dividends.map((d) => (d.symbol, d.amount, d.currency, d.date)), [
      ('AAPL', 0.75, 'USD', DateTime(2026, 2, 13)),
      ('OTP', 24000.0, 'HUF', DateTime(2025, 6, 2)),
    ]);
    // Fejléc nélkül is: a hatodik oszlop „dividend”, az összeg az ár helyén.
    final plain = parsePortfolioCsv('AAPL;;0,75;USD;2026-02-13;dividend\nMSFT;2;400;USD;2026-01-05');
    expect(plain.dividends.single.amount, 0.75);
    expect(plain.lots.single.symbol, 'MSFT');
    expect(plain.skipped, 0);
    expect(
      dividendsCsv(dividends),
      'date,symbol,amount,currency\n2025-06-02,OTP,24000,HUF\n2026-02-13,AAPL,0.75,USD\n',
    );
  });

  test('realized gains: one row per sale with the FIFO cost basis, in date order', () {
    final lots = [
      PortfolioLot(id: '1', symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD', date: DateTime(2024, 1, 5)),
      PortfolioLot(id: '2', symbol: 'AAPL', quantity: 10, price: 150, currency: 'USD', date: DateTime(2024, 6, 1)),
      PortfolioLot(
        id: '3',
        symbol: 'AAPL',
        quantity: 15,
        price: 200,
        currency: 'USD',
        date: DateTime(2025, 3, 3),
        sell: true,
      ),
      PortfolioLot(id: '4', symbol: 'OTP', quantity: 2, price: 30000.125, currency: 'HUF', date: DateTime(2023, 2, 1)),
      PortfolioLot(
        id: '5',
        symbol: 'OTP',
        quantity: 2,
        price: 28000,
        currency: 'HUF',
        date: DateTime(2024, 9, 9),
        sell: true,
      ),
    ];
    final positions = [
      Position(symbol: 'AAPL', currency: 'USD', lots: lots.where((l) => l.symbol == 'AAPL').toList()),
      Position(symbol: 'OTP', currency: 'HUF', lots: lots.where((l) => l.symbol == 'OTP').toList()),
    ];
    expect(
      realizedCsv(positions),
      'date,symbol,quantity,sale_price,proceeds,cost_basis,gain,currency\n'
      '2024-09-09,OTP,2,28000,56000,60000.25,-4000.25,HUF\n'
      // 10 db 100-on + 5 db 150-en = 1750 bekerülési érték.
      '2025-03-03,AAPL,15,200,3000,1750,1250,USD\n',
    );
    // Csak vételek: üres export (csak a fejléc).
    final buys = Position(symbol: 'AAPL', currency: 'USD', lots: lots.take(2).toList());
    expect(realizedCsv([buys]), 'date,symbol,quantity,sale_price,proceeds,cost_basis,gain,currency\n');
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
    // Eladás nélkül nincs mit exportálni a realizált nyereségből.
    expect(find.byKey(const ValueKey('portfolio-export-realized')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('portfolio-export')));
    await tester.pumpAndSettle();
    expect(shared.single, startsWith('symbol,quantity,price,currency,date,side\n'));
    expect(shared.single, contains('AAPL,10,180,USD,2025-03-14'));

    // Ugyanaz még egyszer (pl. a teljes bróker-export újra): nem duplázódik.
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-import')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('portfolio-import-file')), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('portfolio-import-text')), shared.single);
    await tester.tap(find.byKey(const ValueKey('portfolio-import-ok')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots, hasLength(2));

    // Egy eladás után a realizált nyereség is exportálható.
    await s.portfolio.add(
      symbol: 'AAPL',
      quantity: 4,
      price: 230,
      currency: 'USD',
      date: DateTime(2026, 2, 2),
      sell: true,
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-export-realized')));
    await tester.pumpAndSettle();
    expect(shared.last, endsWith('2026-02-02,AAPL,4,230,920,720,200,USD\n'));
  });
}
