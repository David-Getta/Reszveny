import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/features/fx/fx_service.dart';
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

  test('trend: how many positions trade above their own 200-day average', () {
    PriceHistory hist(String s, List<double> closes) => PriceHistory(
      symbol: s,
      points: [
        for (final (i, c) in closes.indexed)
          PricePoint(
            time: DateTime(2025, 1, 1).add(Duration(days: i)),
            close: c,
          ),
      ],
    );
    final up = [for (var i = 0; i < 210; i++) 100.0 + i];
    final down = [for (var i = 0; i < 210; i++) 400.0 - i];
    final short = [for (var i = 0; i < 50; i++) 100.0];
    final t = portfolioTrend(['A', 'B', 'C', 'D'], {'A': hist('A', up), 'B': hist('B', down), 'C': hist('C', short)});
    expect(t, (above: 1, count: 2));
    expect(portfolioTrend(['C'], {'C': hist('C', short)}), isNull);
  });

  group('PortfolioStore', () {
    test('accounts: positions and FIFO per account, all of them together, kept through JSON', () async {
      SharedPreferences.setMockInitialValues({});
      final store = PortfolioStore();
      await store.add(
        symbol: 'AAPL',
        quantity: 10,
        price: 100,
        currency: 'USD',
        account: ' TBSZ 2026 ',
        date: DateTime(2024, 1, 2),
      );
      await store.add(
        symbol: 'AAPL',
        quantity: 5,
        price: 200,
        currency: 'USD',
        account: 'Normál',
        date: DateTime(2025, 1, 2),
      );
      await store.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD', date: DateTime(2025, 2, 3));
      // Eladás a normál számláról: ott a 200-as vétel fogy (FIFO a számlán belül).
      await store.add(
        symbol: 'AAPL',
        quantity: 5,
        price: 250,
        currency: 'USD',
        sell: true,
        account: 'Normál',
        date: DateTime(2026, 1, 2),
      );
      expect(store.accounts, ['Normál', 'TBSZ 2026']);
      expect(store.positionsIn('TBSZ 2026').single.quantity, 10);
      expect(store.positionsIn('Normál'), isEmpty);
      expect(store.closedIn('Normál').single.realizedGain, closeTo(5 * 50, 1e-9));
      expect(store.positions.map((p) => p.symbol), ['AAPL', 'MSFT'], reason: 'mind együtt');
      expect(store.positionOf('AAPL')!.quantity, 10);
      // Minden számla nézetében is számlánként fut a FIFO: a normál számla eladása nem a TBSZ
      // régebbi, 100-as vételét fogyasztja (különben a realizált nyereség 750 lenne).
      final all = store.allPositions.firstWhere((p) => p.symbol == 'AAPL');
      expect((all.cost, all.realizedGain), (1000.0, 250.0));
      expect(all.sales.single.account, 'Normál');
      expect(store.heldByAccount('aapl'), {'TBSZ 2026': 10.0});
      expect(store.adjustedLotsIn('TBSZ 2026'), hasLength(1));
      // Tárolva és visszaolvasva megmarad; a túl hosszú név levágva, az üres nincs.
      final again = await PortfolioStore.load();
      expect(again.accounts, ['Normál', 'TBSZ 2026']);
      expect(PortfolioLot.cleanAccount('   '), isNull);
      expect(PortfolioLot.cleanAccount('x' * 40)!.length, PortfolioLot.maxAccountName);
      // Emodzsi közepén nem vág.
      expect(PortfolioLot.cleanAccount('${'x' * 29}😀'), 'x' * 29);
      expect(PortfolioLot.fromJson({'symbol': 'A', 'quantity': 1, 'price': 1, 'account': 3})!.account, isNull);
      // A felaprózás igazítása megtartja a számlát.
      await store.addSplit(symbol: 'AAPL', from: 1, to: 2, date: DateTime(2024, 6, 1));
      expect(store.positionsIn('TBSZ 2026').single.quantity, 20);
      // A kis- és nagybetű eltérése nem nyit új számlát.
      await store.add(symbol: 'MSFT', quantity: 1, price: 400, currency: 'USD', account: 'tbsz 2026');
      expect(store.accounts, ['Normál', 'TBSZ 2026']);
      expect(store.heldByAccount('MSFT'), {null: 2.0, 'TBSZ 2026': 1.0});
    });

    test('a stock split adjusts the transactions before its day; the cost stays, ids stay', () async {
      SharedPreferences.setMockInitialValues({});
      final store = PortfolioStore();
      final buy = await store.add(
        symbol: 'NVDA',
        quantity: 10,
        price: 900,
        currency: 'USD',
        date: DateTime(2024, 3, 1),
      );
      await store.add(
        symbol: 'NVDA',
        quantity: 4,
        price: 1000,
        currency: 'USD',
        sell: true,
        date: DateTime(2024, 5, 1),
      );
      // A felaprózás napján már az új darabszám: ez a vétel nem igazítódik.
      await store.add(symbol: 'NVDA', quantity: 5, price: 120, currency: 'USD', date: DateTime(2024, 6, 10));
      await store.addSplit(symbol: 'nvda', from: 1, to: 10, date: DateTime(2024, 6, 10, 15));
      final pos = store.positionOf('NVDA')!;
      expect(pos.quantity, 65, reason: '(10 − 4) × 10 + 5');
      expect(pos.cost, closeTo(60 * 90 + 5 * 120, 1e-9), reason: "a megmaradt 6 régi = 60 új × 90");
      expect(pos.realizedGain, closeTo(4 * (1000 - 900), 1e-9), reason: 'a felaprózás előtti eladás nyeresége ugyanaz');
      expect(store.adjustedLots.firstWhere((l) => l.id == buy.id).quantity, 100);
      expect(store.adjustedLots.firstWhere((l) => l.id == buy.id).price, 90);
      expect(store.lots.firstWhere((l) => l.id == buy.id).quantity, 10, reason: 'a tárolt tétel változatlan');
      expect(store.splitsOf('NVDA').single.label, '10:1');
      expect(store.splits.single.date, DateTime(2024, 6, 10), reason: 'napra kerekítve');

      // Több felaprózás időrendben, összevonás (1:10) is; egy másik részvényt nem érint.
      await store.add(symbol: 'XYZ', quantity: 100, price: 2, currency: 'USD', date: DateTime(2020, 1, 1));
      await store.addSplit(symbol: 'XYZ', from: 10, to: 1, date: DateTime(2021, 1, 1));
      await store.addSplit(symbol: 'XYZ', from: 1, to: 3, date: DateTime(2022, 1, 1));
      expect(store.positionOf('XYZ')!.quantity, 30);
      expect(store.positionOf('XYZ')!.averageCost, closeTo(200 / 30, 1e-9));
      expect(store.positionOf('NVDA')!.quantity, 65);
      // Dátum nélküli tétel (pl. képernyőképből importált mai darabszám) nem igazítódik.
      await store.add(symbol: 'ABC', quantity: 3, price: 100, currency: 'USD');
      await store.add(symbol: 'ABC', quantity: 1, price: 30, currency: 'USD', sell: true);
      await store.addSplit(symbol: 'ABC', from: 1, to: 2, date: DateTime(2023, 1, 1));
      expect(store.positionOf('ABC')!.quantity, 2);
      expect(store.positionOf('ABC')!.realizedGain, closeTo(30 - 100, 1e-9));
      // Összevonásnál sincs lebegőpontos maradék (30 × 1/10 pontosan 3).
      await store.add(symbol: 'DEF', quantity: 30, price: 3, currency: 'USD', date: DateTime(2020, 1, 1));
      await store.addSplit(symbol: 'DEF', from: 10, to: 1, date: DateTime(2021, 1, 1));
      expect(store.positionOf('DEF')!.quantity, 3);
      expect(store.positionOf('DEF')!.averageCost, 30);
      // A gyorsítótár minden módosításnál frissül.
      final before = store.adjustedLots;
      await store.add(symbol: 'DEF', quantity: 1, price: 1, currency: 'USD');
      expect(store.adjustedLots.length, before.length + 1);

      // Törlés és visszaállítás; a tároló újratöltve ugyanazt adja.
      final s = store.splitsOf('NVDA').single;
      await store.removeSplit(s.id);
      expect(store.positionOf('NVDA')!.quantity, 11);
      await store.restoreSplit(s);
      expect(store.positionOf('NVDA')!.quantity, 65);
      final again = await PortfolioStore.load();
      expect(again.splits.map((x) => x.label), ['1:10', '1:10', '3:1', '2:1', '10:1']);
      expect(again.positionOf('NVDA')!.quantity, 65);
      // A teljes törlés a felaprózásokat is viszi (a tárolóból is).
      await again.clear();
      expect(again.splits, isEmpty);
      expect((await PortfolioStore.load()).splits, isEmpty);
      // Ugyanaz a felaprózás kétszer (pl. két eszközről, más azonosítóval) csak egyszer számít.
      expect(await store.addSplit(symbol: 'NVDA', from: 1, to: 10, date: DateTime(2024, 6, 10)), isNull);
      expect(await store.addSplit(symbol: 'NVDA', from: 0, to: 10, date: DateTime(2024, 6, 10)), isNull);
      await store.replaceAllSplits([
        ...store.splits,
        SplitRecord(id: 'other-device', symbol: 'NVDA', from: 1, to: 10, date: DateTime(2024, 6, 10)),
      ]);
      expect(store.splitsOf('NVDA'), hasLength(1));
      expect(store.positionOf('NVDA')!.quantity, 65);
      // Hibás rekordok kimaradnak (nulla, egyenlő arány, dátum nélkül).
      expect(SplitRecord.fromJson({'symbol': 'A', 'from': 0, 'to': 2, 'date': '2024-01-01'}), isNull);
      expect(SplitRecord.fromJson({'symbol': 'A', 'from': 2, 'to': 2, 'date': '2024-01-01'}), isNull);
      expect(SplitRecord.fromJson({'symbol': 'A', 'from': 1, 'to': 2}), isNull);
    });

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

    test('a sale without shares on its own account uses the other accounts (older data)', () async {
      SharedPreferences.setMockInitialValues({});
      // Régebbi app: a TBSZ-es vétel eladása számla nélkül került rögzítésre.
      final store = PortfolioStore(
        lots: [
          PortfolioLot(
            id: 'b',
            symbol: 'AAPL',
            quantity: 10,
            price: 100,
            currency: 'USD',
            date: DateTime(2024, 1, 2),
            account: 'TBSZ',
          ),
          PortfolioLot(
            id: 'c',
            symbol: 'AAPL',
            quantity: 5,
            price: 120,
            currency: 'USD',
            date: DateTime(2025, 1, 2),
            account: 'tbsz',
          ),
          PortfolioLot(
            id: 's',
            symbol: 'AAPL',
            quantity: 10,
            price: 150,
            currency: 'USD',
            date: DateTime(2025, 6, 2),
            sell: true,
          ),
        ],
      );
      // A Minden számla nézet: 5 darab maradt (15 − 10), a nyereség 10 × 50.
      final all = store.positionOf('AAPL')!;
      expect((all.quantity, all.realizedGain), (5.0, 500.0));
      expect(all.sales.single.account, isNull);
      // A számla-nézetek a teljes FIFO-ból: a TBSZ tételei fogytak el, a „tbsz” 5 darabja maradt.
      expect(store.positionsIn('TBSZ'), isEmpty);
      expect(store.closedIn('TBSZ').single.realizedGain, 0);
      expect(store.positionsIn('tbsz').single.quantity, 5);
      expect(store.heldByAccount('AAPL'), {'tbsz': 5.0});
      // A pontosan egyező, régebbi írásmód marad (nem kerül át a „TBSZ”-re).
      expect(store.canonicalAccount('tbsz'), 'tbsz');
      expect(store.canonicalAccount('Tbsz'), 'TBSZ');
    });

    test('fees: added to the cost of a purchase, deducted from the proceeds of a sale', () async {
      SharedPreferences.setMockInitialValues({});
      final store = PortfolioStore();
      await store.add(symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD', date: DateTime(2025, 1, 10), fee: 5);
      await store.add(
        symbol: 'AAPL',
        quantity: 4,
        price: 150,
        currency: 'USD',
        date: DateTime(2026, 2, 1),
        sell: true,
        fee: 2,
      );
      final aapl = store.positionOf('AAPL')!;
      // Vétel: 1005 USD 10 darabra (100,50/db); eladás: 600 − 2 = 598 a 4 × 100,50 = 402 bekerülésre.
      expect(aapl.averageCost, closeTo(100.5, 1e-9));
      expect(aapl.cost, closeTo(603, 1e-9));
      expect(aapl.realizedGain, closeTo(196, 1e-9));
      expect(aapl.sales.single.proceeds, closeTo(598, 1e-9));
      expect(aapl.sales.single.cost, closeTo(402, 1e-9));
      expect(store.lots.first.cost, 1005);
      expect(store.lots.last.cost, 598);
      // Tárolva és visszaolvasva megmarad; a negatív vagy hibás díj nem díj.
      final again = await PortfolioStore.load();
      expect(again.lots.map((l) => l.fee), [5, 2]);
      expect(PortfolioLot.fromJson({'symbol': 'A', 'quantity': 1, 'price': 1, 'fee': -3})!.fee, 0);
      expect(PortfolioLot.fromJson({'symbol': 'A', 'quantity': 1, 'price': 1, 'fee': 'x'})!.fee, 0);
      expect(PortfolioLot.fromJson({'symbol': 'A', 'quantity': 1, 'price': 1})!.toJson().containsKey('fee'), isFalse);
      // A felaprózás a díjat nem szorozza: 20 db × 50,25, ebből a későbbi eladás 4 darabja kikerül.
      await store.addSplit(symbol: 'AAPL', from: 1, to: 2, date: DateTime(2025, 6, 1));
      expect(store.positionOf('AAPL')!.cost, closeTo(16 * 50.25, 1e-9));
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

    test('risk: value-weighted beta of the stocks with a beta; top-3 weight only above three positions', () {
      Position pos(String s, double q) => Position(
        symbol: s,
        currency: 'USD',
        lots: [PortfolioLot(id: s, symbol: s, quantity: q, price: 1, currency: 'USD')],
      );
      final q = {
        for (final s in ['A', 'B', 'C', 'D']) s: StockQuote(symbol: s, price: 10),
      };
      // Értékek: A 400, B 300, C 200, D 100 (D-nek nincs bétája).
      final s = PortfolioSnapshot.compute(
        [pos('A', 40), pos('B', 30), pos('C', 20), pos('D', 10)],
        quotes: q,
        rate: (_, _) => 1,
        currency: 'USD',
        betas: {'A': 1.5, 'B': 1.0, 'C': 0.5},
        cash: {'USD': 1000},
      );
      expect(s.beta, closeTo((1.5 * 400 + 1.0 * 300 + 0.5 * 200) / 900, 1e-9));
      expect(s.top3Weight, closeTo(0.9, 1e-9), reason: 'a készpénz nélkül, a részvények értékéből');
      final three = PortfolioSnapshot.compute(
        [pos('A', 40), pos('B', 30), pos('C', 20)],
        quotes: q,
        rate: (_, _) => 1,
        currency: 'USD',
      );
      expect((three.beta, three.top3Weight), (null, null));
      // Ha a bétával rendelkező pozíciók a részvények értékének felét sem adják, nincs béta.
      final sparse = PortfolioSnapshot.compute(
        [pos('A', 40), pos('B', 30), pos('C', 20), pos('D', 10)],
        quotes: q,
        rate: (_, _) => 1,
        currency: 'USD',
        betas: {'C': 2.1, 'D': 1.5},
      );
      expect(sparse.beta, isNull, reason: 'a lefedettség 30%');
    });

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
          dividendsReceived12m: 30,
        ),
      ),
    );
    expect(settings, contains('holds 15 shares at an average cost of 160 USD'));
    expect(settings, contains('bought between 2025-03-14 and 2026-01-10'));
    // 30 / (15 × 160) = 1,25 % bekerülési hozam.
    expect(settings, contains('received 30 USD in dividends from it in the last 12 months (about 1.25% on cost)'));
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

    // Egy tranzakció törlése visszavonható, amíg a lap nyitva van.
    final sale = s.portfolio.lots.firstWhere((l) => l.sell);
    await tester.tap(find.descendant(of: find.byKey(ValueKey('lot-${sale.id}')), matching: find.text('Remove')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots.where((l) => l.sell), isEmpty);
    expect(find.text('Transaction deleted'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('lot-undo')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots.where((l) => l.sell).single.id, sale.id);
    expect(find.byKey(const ValueKey('lot-removed')), findsNothing);

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
    // Kockázat: a demó bétáiból súlyozva (AAPL 1,21 és MSFT 0,93, az OTP árfolyam nélkül kimarad).
    expect(find.byKey(const ValueKey('portfolio-beta')), findsOneWidget);
    expect(find.byKey(const ValueKey('hint-Portfolio beta')), findsOneWidget);
    expect(find.byKey(const ValueKey('portfolio-top3')), findsNothing, reason: 'legfeljebb három pozíció');

    await tester.tap(find.text('Currencies'));
    await tester.pumpAndSettle();
    expect(find.textContaining(RegExp(r'^USD \d')), findsOneWidget);

    await tester.tap(find.text('Sectors'));
    await tester.pumpAndSettle();
    expect(find.textContaining(RegExp(r'^AAPL \d')), findsNothing);

    // Országok a cégprofilokból (az OTP árfolyam híján itt kimarad az összegből).
    await tester.tap(find.text('Countries'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('allocation-countries')), findsOneWidget);
    expect(find.textContaining(RegExp(r'^United States \d')), findsOneWidget);
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

  testWidgets('target rows fit a narrow phone with large text', (tester) async {
    tester.view.physicalSize = const Size(340, 3000);
    tester.view.devicePixelRatio = 1;
    tester.platformDispatcher.textScaleFactorTestValue = 1.5;
    addTearDown(tester.view.reset);
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 1000, price: 200, currency: 'USD');
    await s.portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD');
    await s.preferences.setTargets({'AAPL': 50, 'MSFT': 50});
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').last);
    await tester.pumpAndSettle();
    final row = find.byKey(const ValueKey('target-MSFT'));
    for (var i = 0; i < 10 && row.evaluate().isEmpty; i++) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    expect(row, findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  test('prefetchDividendRates: fetches only the foreign dividend currencies of the last 12 months', () async {
    SharedPreferences.setMockInitialValues({});
    final asked = <String>[];
    final client = MockClient((req) async {
      asked.add('${req.url.queryParameters['from']}>${req.url.queryParameters['to']}');
      return http.Response('{"amount":1,"base":"HUF","date":"2026-10-09","rates":{"USD":0.0028}}', 200);
    });
    final s = services(fx: FxService(client: client));
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    final now = DateTime.now();
    await s.portfolio.addDividend(symbol: 'AAPL', amount: 5, currency: 'USD', date: now);
    await s.portfolio.addDividend(symbol: 'AAPL', amount: 1000, currency: 'HUF', date: now);
    await s.portfolio.addDividend(symbol: 'AAPL', amount: 900, currency: 'EUR', date: DateTime(now.year - 2, 1, 1));
    // Üres gyorsítótárral a forintos tétel kimarad az elemzés adatából.
    expect(s.analysisOptions(symbol: 'AAPL').position!.dividendsReceived12m, 5);
    await s.prefetchDividendRates('AAPL');
    expect(asked, ['HUF>USD'], reason: 'csak az ablakba eső, más pénznemű tétel; a régi eurós nem');
    expect(s.analysisOptions(symbol: 'AAPL').position!.dividendsReceived12m, closeTo(7.8, 1e-9));
    await s.prefetchDividendRates('MSFT');
    expect(asked, hasLength(1), reason: 'nem birtokolt részvénynél nincs hálózat');
  });

  testWidgets('a stock split is recorded from the transactions sheet, shown, deleted and restored', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    SharedPreferences.setMockInitialValues({});
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD', date: DateTime(2025, 5, 2));
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('position-menu-AAPL')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('position-split')));
    await tester.pumpAndSettle();
    expect(find.text('Stock split: AAPL'), findsOneWidget);
    // Hibás arány: hibaüzenet, nem rögzít.
    await tester.enterText(find.byKey(const ValueKey('split-ratio')), '10');
    await tester.tap(find.byKey(const ValueKey('split-submit')));
    await tester.pumpAndSettle();
    expect(find.text('Enter a ratio like 10:1, or 1:10 for a reverse split.'), findsOneWidget);
    expect(s.portfolio.splits, isEmpty);
    await tester.enterText(find.byKey(const ValueKey('split-ratio')), '10 : 1');
    await tester.tap(find.byKey(const ValueKey('split-submit')));
    await tester.pumpAndSettle();
    final split = s.portfolio.splits.single;
    expect((split.symbol, split.to, split.from), ('AAPL', 10, 1));
    expect(s.portfolio.positionOf('AAPL')!.quantity, 100);
    expect(s.portfolio.positionOf('AAPL')!.averageCost, 20);
    // A lapon a felaprózás sora és az igazított tétel (100 × 20).
    expect(find.text('Stock split 10:1'), findsOneWidget);
    expect(find.textContaining('100 × 20.00 USD'), findsOneWidget);
    // Törlés visszavonással.
    await tester.tap(find.byKey(ValueKey('sheet-split-delete-${split.id}')));
    await tester.pumpAndSettle();
    expect(s.portfolio.splits, isEmpty);
    expect(s.portfolio.positionOf('AAPL')!.quantity, 10);
    expect(find.text('Stock split deleted'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('split-undo')));
    await tester.pumpAndSettle();
    expect(s.portfolio.splits.single.id, split.id);
    expect(s.portfolio.positionOf('AAPL')!.quantity, 100);
    expect(find.byKey(const ValueKey('split-removed')), findsNothing);
    // A vétel törlése és visszavonása a tárolt (nem igazított) tételt menti vissza:
    // a felaprózás nem hat kétszer.
    final lot = s.portfolio.lots.single;
    await tester.tap(find.descendant(of: find.byKey(ValueKey('lot-${lot.id}')), matching: find.text('Remove')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots, isEmpty);
    await tester.tap(find.byKey(const ValueKey('lot-undo')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots.single.quantity, 10);
    expect(s.portfolio.positionOf('AAPL')!.quantity, 100);
  });

  testWidgets('accounts: filter the portfolio by account; selling there records the sale on that account', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1200, 2600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    SharedPreferences.setMockInitialValues({});
    final s = services();
    await s.portfolio.add(
      symbol: 'AAPL',
      quantity: 10,
      price: 200,
      currency: 'USD',
      account: 'TBSZ',
      date: DateTime(2025, 5, 2),
    );
    await s.portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD', date: DateTime(2025, 5, 2));
    final msftDividend = await s.portfolio.addDividend(
      symbol: 'MSFT',
      amount: 2,
      currency: 'USD',
      date: DateTime(2026, 3, 1),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('portfolio-accounts')), findsOneWidget);
    expect(find.byKey(const ValueKey('position-menu-MSFT')), findsOneWidget);
    // Megoszlás számlák szerint (a számla nélküli tételek egy sorban).
    final segment = find.text('Accounts');
    await tester.ensureVisible(segment);
    await tester.pumpAndSettle();
    await tester.tap(segment);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('allocation-accounts')), findsOneWidget);
    expect(find.textContaining(RegExp(r'^TBSZ \d')), findsOneWidget);
    expect(find.textContaining(RegExp(r'^No account \d')), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('account-TBSZ')));
    await tester.pumpAndSettle();
    expect(find.text('Accounts'), findsNothing, reason: 'számla-nézetben nincs számla-megoszlás');
    expect(find.byKey(const ValueKey('position-menu-AAPL')), findsOneWidget);
    expect(find.byKey(const ValueKey('position-menu-MSFT')), findsNothing);
    expect(
      find.text(
        "Only this account's transactions and dividends. Cash, goals and the AI review are under All accounts.",
      ),
      findsOneWidget,
    );
    expect(find.byKey(const ValueKey('goal-set')), findsNothing, reason: 'a cél az egész portfólióra szól');
    expect(find.byKey(const ValueKey('portfolio-review')), findsNothing, reason: 'az AI-elemzés is');
    // Az osztalékok a számlára szűrve; a havi osztalékcél az egész portfólióé.
    expect(find.byKey(const ValueKey('portfolio-dividends-received')), findsOneWidget);
    expect(find.byKey(ValueKey('dividend-${msftDividend.id}')), findsNothing);
    expect(find.byKey(const ValueKey('dividend-goal-set')), findsNothing);
    final addDividend = find.byKey(const ValueKey('dividend-add'));
    await tester.ensureVisible(addDividend);
    await tester.pumpAndSettle();
    await tester.tap(addDividend);
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextField, 'TBSZ'), findsOneWidget, reason: 'a számla kitöltve');
    await tester.enterText(find.byKey(const ValueKey('dividend-symbol')), 'AAPL');
    await tester.enterText(find.byKey(const ValueKey('dividend-amount')), '3');
    await tester.tap(find.byKey(const ValueKey('dividend-submit')));
    await tester.pumpAndSettle();
    expect(s.portfolio.dividendsIn('TBSZ').single.amount, 3);
    expect(s.portfolio.dividendsIn(null), hasLength(2));

    // Eladás a TBSZ-nézetből: a dialógusban a számla kitöltve, az eladás oda kerül.
    await tester.ensureVisible(find.byKey(const ValueKey('position-menu-AAPL')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('position-menu-AAPL')));
    await tester.pumpAndSettle();
    expect(find.text('AAPL · Transactions · TBSZ'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('position-sell')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('lot-sell-from-TBSZ')), findsOneWidget);
    expect(find.byKey(const ValueKey('lot-account')), findsNothing, reason: 'eladásnál nem írható át');
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '4');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    final sale = s.portfolio.lots.firstWhere((l) => l.sell);
    expect((sale.quantity, sale.account), (4.0, 'TBSZ'));
    expect(s.portfolio.positionsIn('TBSZ').single.quantity, 6);
    await tester.tapAt(const Offset(600, 40));
    await tester.pumpAndSettle();

    await tester.ensureVisible(find.byKey(const ValueKey('account-*')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('account-*')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('position-menu-MSFT')), findsOneWidget);
  });

  testWidgets('selling from all accounts: choose the account; at most what is held there', (tester) async {
    tester.view.physicalSize = const Size(1200, 2600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    SharedPreferences.setMockInitialValues({});
    final s = services();
    await s.portfolio.add(
      symbol: 'AAPL',
      quantity: 10,
      price: 200,
      currency: 'USD',
      account: 'TBSZ',
      date: DateTime(2025, 5, 2),
    );
    await s.portfolio.add(symbol: 'AAPL', quantity: 3, price: 150, currency: 'USD', date: DateTime(2024, 5, 2));
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('position-menu-AAPL')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('position-sell')));
    await tester.pumpAndSettle();
    // A legtöbb darabot tartó számla az alap; a számla nélküli tételek is választhatók.
    expect(find.text('TBSZ · 10'), findsOneWidget);
    expect(find.text('No account · 3'), findsOneWidget);
    expect(tester.widget<ChoiceChip>(find.byKey(const ValueKey('lot-sell-from-TBSZ'))).selected, isTrue);
    await tester.tap(find.byKey(const ValueKey('lot-sell-from-*')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '5');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    expect(find.text('You hold 3'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('lot-sell-all')));
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    final sale = s.portfolio.lots.firstWhere((l) => l.sell);
    expect((sale.quantity, sale.account), (3.0, null));
    expect(s.portfolio.heldByAccount('AAPL'), {'TBSZ': 10.0});
    // A realizált nyereség a számla nélküli 150-es vételből.
    expect(s.portfolio.positionOf('AAPL')!.realizedGain, closeTo(3 * (sale.price - 150), 1e-9));
  });

  testWidgets('the account field is optional: hidden behind a button until the first account exists', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    SharedPreferences.setMockInitialValues({});
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Add to portfolio'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('lot-account')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('lot-account-add')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '3');
    await tester.enterText(find.byKey(const ValueKey('lot-account')), 'NYESZ');
    // A díj is egy gombbal kerül elő; hibás értékkel nem ment.
    expect(find.byKey(const ValueKey('lot-fee')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('lot-fee-add')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('lot-fee')), '-1');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    expect(s.portfolio.lots, isEmpty);
    await tester.enterText(find.byKey(const ValueKey('lot-fee')), '1,99');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    expect((s.portfolio.lots.single.account, s.portfolio.lots.single.fee), ('NYESZ', 1.99));
    // Ha már van számla, a mező rögtön látszik.
    await tester.tap(find.byTooltip('Add to portfolio'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('lot-account')), findsOneWidget);
    expect(find.byKey(const ValueKey('lot-fee')), findsOneWidget, reason: 'ha már volt díj, az is');
  });
}
