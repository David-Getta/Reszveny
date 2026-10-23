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

  test('US broker exports: Schwab, Fidelity and Robinhood – month-first dates, dividends net of tax', () {
    final schwab = parsePortfolioCsv(
      '"Transactions  for account Individual ...123 as of 10/23/2025 04:10:00 PM ET"\n'
      '"Date","Action","Symbol","Description","Quantity","Price","Fees & Comm","Amount"\n'
      '"03/04/2025","Buy","AAPL","APPLE INC","10","\$182.50","\$0.05","-\$1825.05"\n'
      '"05/15/2025 as of 05/14/2025","Qualified Dividend","AAPL","APPLE INC","","","","\$2.50"\n'
      '"05/15/2025","NRA Tax Adj","AAPL","APPLE INC","","","","-\$0.38"\n'
      '"06/02/2025","Reinvest Shares","AAPL","APPLE INC","0.01","\$200.00","","-\$2.00"\n'
      '"09/12/2025","Sell","AAPL","APPLE INC","4","\$230.00","\$0.12","\$919.88"\n'
      '"09/30/2025","Bank Interest","","BANK INT 090125-093025","","","","\$0.11"\n'
      'Transactions Total,,,,,,,"-\$904.92"\n',
    );
    expect(schwab.lots.map((l) => (l.symbol, l.quantity, l.price, l.date, l.sell, l.fee)), [
      ('AAPL', 10.0, 182.5, DateTime(2025, 3, 4), false, 0.05),
      ('AAPL', 0.01, 200.0, DateTime(2025, 6, 2), false, 0.0),
      ('AAPL', 4.0, 230.0, DateTime(2025, 9, 12), true, 0.12),
    ]);
    // Az osztalék a forrásadóval csökkentve (2,50 − 0,38).
    final div = schwab.dividends.single;
    expect((div.symbol, div.date), ('AAPL', DateTime(2025, 5, 15)));
    expect(div.amount, closeTo(2.12, 1e-9));

    final fidelity = parsePortfolioCsv(
      '\n\nBrokerage\n\n'
      'Run Date,Action,Symbol,Description,Type,Quantity,Price (\$),Commission (\$),Fees (\$),Accrued Interest (\$),'
      'Amount (\$),Cash Balance (\$),Settlement Date\n'
      '02/03/2025,YOU BOUGHT MICROSOFT CORP (MSFT) (Cash),MSFT,MICROSOFT CORP,Cash,2,410.2,,,,-820.4,1000,02/04/2025\n'
      '06/12/2025,DIVIDEND RECEIVED MICROSOFT CORP (MSFT) (Cash),MSFT,MICROSOFT CORP,Cash,,,,,,1.66,1001.66,\n'
      '08/20/2025,YOU SOLD MICROSOFT CORP (MSFT) (Cash),MSFT,MICROSOFT CORP,Cash,-1,500,,0.02,,499.98,1501.64,08/21/2025\n'
      '\n"The data and information in this spreadsheet is provided to you solely for your use."\n',
    );
    // Az egyértelmű nap (20) dönt: hónap/nap/év.
    expect(fidelity.lots.map((l) => (l.symbol, l.quantity, l.price, l.date, l.sell)), [
      ('MSFT', 2.0, 410.2, DateTime(2025, 2, 3), false),
      ('MSFT', 1.0, 500.0, DateTime(2025, 8, 20), true),
    ]);
    expect(fidelity.dividends.single.amount, 1.66);

    final robinhood = parsePortfolioCsv(
      '"Activity Date","Process Date","Settle Date","Instrument","Description","Trans Code","Quantity","Price","Amount"\n'
      '"1/6/2025","1/6/2025","1/7/2025","NVDA","NVIDIA","Buy","5","\$140.00","(\$700.00)"\n'
      '"3/4/2025","3/4/2025","3/4/2025","NVDA","Cash Div: R/D 2025-03-01 P/D 2025-03-04","CDIV","","","\$0.05"\n'
      '"4/1/2025","4/1/2025","4/2/2025","NVDA","NVIDIA","Sell","2","\$110.00","\$220.00"\n'
      '"4/2/2025","4/2/2025","4/2/2025","","ACH Deposit","ACH","","","\$500.00"\n',
    );
    // Kétértelmű dátumok (mind 12 alatt): az amerikai fejléc dönt.
    expect(robinhood.lots.map((l) => (l.symbol, l.quantity, l.price, l.date, l.sell)), [
      ('NVDA', 5.0, 140.0, DateTime(2025, 1, 6), false),
      ('NVDA', 2.0, 110.0, DateTime(2025, 4, 1), true),
    ]);
    expect(robinhood.dividends.map((d) => (d.amount, d.date)), [(0.05, DateTime(2025, 3, 4))]);

    // Egy semleges fejlécű fájlban a kétértelmű perjeles dátum alapból nap/hónap; amerikai beállításnál hónap/nap.
    const neutral = 'Date,Symbol,Quantity,Price\n03/04/2025,OTP,10,30000\n';
    expect(parsePortfolioCsv(neutral).lots.single.date, DateTime(2025, 4, 3));
    expect(parsePortfolioCsv(neutral, monthFirst: true).lots.single.date, DateTime(2025, 3, 4));
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

  test('accounts: an account column only when used, quoted when needed, read back with and without header', () {
    const plain = [PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 3, price: 199.99, currency: 'USD')];
    expect(portfolioCsv(plain), startsWith('symbol,quantity,price,currency,date,side\n'));
    const lots = [
      PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 3, price: 199.99, currency: 'USD', account: 'TBSZ, 2026'),
      PortfolioLot(id: 'b', symbol: 'MSFT', quantity: 1, price: 400, currency: 'USD'),
    ];
    final csv = portfolioCsv(lots);
    expect(csv, startsWith('symbol,quantity,price,currency,date,side,account\n'));
    expect(csv, contains('AAPL,3,199.99,USD,,buy,"TBSZ, 2026"'));
    final back = parsePortfolioCsv(csv);
    expect(back.lots.map((l) => (l.symbol, l.account)), [('AAPL', 'TBSZ, 2026'), ('MSFT', null)]);
    // Fejléc nélkül a hetedik oszlop; magyar fejléccel is („Számla”).
    expect(parsePortfolioCsv('OTP;10;30000;HUF;2026-01-05;buy;TBSZ').lots.single.account, 'TBSZ');
    expect(parsePortfolioCsv('Ticker;Quantity;Price;Számla\nOTP;10;30000;NYESZ').lots.single.account, 'NYESZ');
    // Pontosvessző a számlanévben: idézőjelben, a beolvasás nem bontja ott.
    const semi = [
      PortfolioLot(id: 'c', symbol: 'OTP', quantity: 10, price: 30000, currency: 'HUF', account: 'TBSZ; 2026'),
    ];
    expect(parsePortfolioCsv(portfolioCsv(semi)).lots.single.account, 'TBSZ; 2026');
    // Fejléc nélkül egy szám a hetedik oszlopban (pl. végösszeg) nem számla.
    expect(parsePortfolioCsv('OTP;10;30000;HUF;2026-01-05;buy;300000.00').lots.single.account, isNull);
  });

  test('fees: a fee column only when used; read back, and from an IBKR-style Comm/Fee column', () {
    final lots = [
      PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 3, price: 200, currency: 'USD', fee: 1.5),
      const PortfolioLot(id: 'b', symbol: 'MSFT', quantity: 1, price: 400, currency: 'USD'),
    ];
    final csv = portfolioCsv(lots);
    expect(csv, startsWith('symbol,quantity,price,currency,date,side,fee\n'));
    expect(csv, contains('AAPL,3,200,USD,,buy,1.5\n'));
    expect(parsePortfolioCsv(csv).lots.map((l) => l.fee), [1.5, 0]);
    // IBKR: a „Comm/Fee” negatív.
    final ib = parsePortfolioCsv('Symbol,Quantity,T. Price,Comm/Fee,Currency\nAAPL,10,190.5,-1.25,USD');
    expect(ib.lots.single.fee, 1.25);
    // Magyar fejléc: „Jutalék”.
    expect(parsePortfolioCsv('Ticker;Mennyiség;Árfolyam;Jutalék\nOTP;10;30000;500').lots.single.fee, 500);
  });

  test('dividends with an account: in both CSVs, read back with the account', () {
    final dividends = [
      DividendRecord(
        id: 'd1',
        symbol: 'OTP',
        amount: 24000,
        currency: 'HUF',
        date: DateTime(2025, 6, 2),
        account: 'TBSZ',
      ),
      DividendRecord(id: 'd2', symbol: 'AAPL', amount: 0.75, currency: 'USD', date: DateTime(2026, 2, 13)),
    ];
    final csv = portfolioCsv(const [], dividends: dividends);
    expect(csv, startsWith('symbol,quantity,price,currency,date,side,account\n'));
    expect(csv, contains('OTP,,24000,HUF,2025-06-02,dividend,TBSZ\n'));
    expect(parsePortfolioCsv(csv).dividends.map((d) => (d.symbol, d.account)), [('OTP', 'TBSZ'), ('AAPL', null)]);
    expect(dividendsCsv(dividends).split('\n').take(2), [
      'date,symbol,amount,currency,account',
      '2025-06-02,OTP,24000,HUF,TBSZ',
    ]);
    expect(dividendsCsv([dividends.last]), startsWith('date,symbol,amount,currency\n'));
  });

  test('own spreadsheets with Hungarian or German headers and buy/sell words', () {
    final hu = parsePortfolioCsv(
      'Ticker;Mennyiség;Árfolyam;Pénznem;Dátum;Irány;Számla\n'
      'OTP;10;30 000;HUF;2025.03.14;Vétel;TBSZ\n'
      'OTP;4;32 500,5;HUF;2026.01.05;Eladás;TBSZ\n'
      'MOL;5;2 900;HUF;2025.05.02;Osztalék;',
    );
    expect(hu.skipped, 0);
    expect(hu.lots.map((l) => (l.symbol, l.quantity, l.price, l.sell, l.account)), [
      ('OTP', 10.0, 30000.0, false, 'TBSZ'),
      ('OTP', 4.0, 32500.5, true, 'TBSZ'),
    ]);
    expect(hu.lots.last.date, DateTime(2026, 1, 5));
    expect(hu.dividends.single.amount, 2900);
    final de = parsePortfolioCsv(
      'Kürzel;Stück;Kurs;Währung;Datum;Typ;Gebühr\n'
      'SAP;10;180,50;EUR;14.03.2024;Kauf;4,90\n'
      'SAP;3;210,00;EUR;02.02.2026;Verkauf;4,90',
    );
    expect(de.lots.map((l) => (l.symbol, l.quantity, l.price, l.currency, l.sell, l.fee)), [
      ('SAP', 10.0, 180.5, 'EUR', false, 4.9),
      ('SAP', 3.0, 210.0, 'EUR', true, 4.9),
    ]);
    expect(de.lots.first.date, DateTime(2024, 3, 14));
  });

  test('generic column names only when nothing clearer; side words only at a word start', () {
    // A „Típus” az eszköz fajtája: az „Irány” a vétel/eladás oszlopa.
    final typed = parsePortfolioCsv('Szimbólum;Típus;Irány;Darab;Árfolyam\nOTP;Részvény;Vétel;10;30000');
    expect(typed.lots.single.sell, isFalse);
    // A „Vételi ár” egyértelműbb, mint az „Árfolyam” (ami a mai ár is lehet).
    expect(parsePortfolioCsv('Ticker;Darab;Árfolyam;Vételi ár\nOTP;10;32000;30000').lots.single.price, 30000);
    // A „kivétel” és a „Rückkauf” nem vétel (és nem is eladás: kimarad).
    expect(parsePortfolioCsv('Ticker;Darab;Árfolyam;Irány\nOTP;10;30000;Értékpapír kivétel').lots, isEmpty);
    expect(parsePortfolioCsv('Kürzel;Stück;Kurs;Typ\nSAP;3;200;Rückkauf').lots, isEmpty);
    // Osztaléksor magyar „Összeg” oszloppal: a teljes összeg, nem az ár.
    expect(
      parsePortfolioCsv('Ticker;Darab;Árfolyam;Összeg;Irány\nMOL;100;0,25;25;Osztalék').dividends.single.amount,
      25,
    );
  });

  test('realized gains CSV: an account column when a sale has an account', () {
    final lots = [
      PortfolioLot(id: 'a', symbol: 'OTP', quantity: 10, price: 100, currency: 'HUF', date: DateTime(2024, 1, 2)),
      PortfolioLot(
        id: 'b',
        symbol: 'OTP',
        quantity: 10,
        price: 200,
        currency: 'HUF',
        date: DateTime(2025, 1, 2),
        account: 'TBSZ',
      ),
      PortfolioLot(
        id: 'c',
        symbol: 'OTP',
        quantity: 4,
        price: 250,
        currency: 'HUF',
        date: DateTime(2026, 1, 2),
        sell: true,
        account: 'TBSZ',
      ),
    ];
    final csv = realizedCsv([Position(symbol: 'OTP', currency: 'HUF', lots: lots)]);
    expect(csv.split('\n')[0], 'date,symbol,quantity,sale_price,proceeds,cost_basis,gain,currency,account');
    // A TBSZ eladása a TBSZ 200-as vételéből (nem a régebbi, számla nélküli 100-asból).
    expect(csv.split('\n')[1], '2026-01-02,OTP,4,250,1000,800,200,HUF,TBSZ');
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
    // Felaprózás: „split” sor, az új darab a darabszám, a régi az ár oszlopában; fejléccel és anélkül.
    final splits = [SplitRecord(id: 's1', symbol: 'NVDA', from: 1, to: 10, date: DateTime(2024, 6, 10))];
    final withSplit = portfolioCsv(lots, splits: splits);
    expect(withSplit, contains('NVDA,10,1,,2024-06-10,split'));
    final backSplit = parsePortfolioCsv(withSplit);
    expect(backSplit.skipped, 0);
    expect(backSplit.lots, hasLength(1));
    expect(backSplit.splits.single.symbol, 'NVDA');
    expect((backSplit.splits.single.to, backSplit.splits.single.from), (10, 1));
    expect(backSplit.splits.single.date, DateTime(2024, 6, 10));
    // Táblázatkezelőből visszamentve („10.00”) is megy; a nulla és a tört arány kimarad.
    final plainSplit = parsePortfolioCsv(
      'NVDA;10.00;1,00;;2024-06-10;split\nNVDA;0;1;;2024-06-10;split\nNVDA;2.5;1;;2024-06-10;split',
    );
    expect(plainSplit.splits, hasLength(1));
    expect(plainSplit.skipped, 2, reason: 'a nulla és a tört arány kimarad');
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
