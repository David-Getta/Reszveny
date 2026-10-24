import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/features/account/account_controller.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:reszveny/features/notes/notes_store.dart';
import 'package:reszveny/features/portfolio/dividend_forecast.dart';
import 'package:reszveny/features/portfolio/portfolio_csv.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/sync/sync_service.dart';

/// A korábbi kódátnézésekből nyitva maradt hibák ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the expected dividend follows the shares bought or sold since the last payment', () async {
    final store = PortfolioStore();
    await store.add(symbol: 'KO', quantity: 10, price: 60, currency: 'USD', date: DateTime(2025, 1, 10));
    await store.add(
      symbol: 'KO',
      quantity: 5,
      price: 60,
      currency: 'USD',
      date: DateTime(2025, 1, 10),
      account: 'TBSZ',
    );
    for (final day in [DateTime(2026, 4, 30), DateTime(2026, 7, 30)]) {
      await store.addDividend(symbol: 'KO', amount: 5, currency: 'USD', date: day);
      await store.addDividend(symbol: 'KO', amount: 2.5, currency: 'USD', date: day, account: 'TBSZ');
    }
    final now = DateTime(2026, 10, 19);
    List<ExpectedDividend> next({String? account}) => expectedDividends(
      store.dividendsIn(account),
      store.positionsIn(account).map((p) => p.symbol),
      now: now,
      scale: (s, day) => store.holdingScale(s, day, account: account),
    );
    expect(next().single.amount, 7.5);
    // Azóta 15-tel több (a számla nélküli részen): kétszer annyi; a TBSZ-en változatlan.
    await store.add(symbol: 'KO', quantity: 15, price: 62, currency: 'USD', date: DateTime(2026, 8, 20));
    expect(next().single.amount, closeTo(15, 1e-9));
    expect(next(account: 'TBSZ').single.amount, closeTo(2.5, 1e-9));
    // Becslés nélkül (régi hívó) az utolsó kifizetés összege marad.
    expect(expectedDividends(store.dividends, store.heldSymbols, now: now).single.amount, 7.5);
  });

  test('an imported row in another currency is converted at the rate of its day', () async {
    final store = PortfolioStore();
    await store.add(symbol: 'SAP', quantity: 2, price: 180, currency: 'EUR', date: DateTime(2025, 3, 1));
    final parsed = parsePortfolioCsv(
      'symbol,quantity,price,currency,date\n'
      'SAP,1,200,USD,2025-04-10\n'
      'NEW,3,10,GBP,2025-04-10\n'
      'NEW,1,1300,HUF,2025-04-11\n',
    );
    final asked = <String>[];
    Future<double?> rate(String from, String to, DateTime day) async {
      asked.add('$from>$to@${day.toIso8601String().substring(0, 10)}');
      return from == 'USD' && to == 'EUR' ? 0.9 : null;
    }

    final aligned = await parsed.inOneCurrency(store.currencyOf, rate);
    final sap = aligned.lots.firstWhere((l) => l.symbol == 'SAP');
    expect((sap.currency, sap.originalPrice), ('EUR', 200));
    expect(sap.price, closeTo(180, 1e-9));
    // Az importban elsőként látott pénznem a mérce; árfolyam nélkül a sor változatlan.
    expect(asked, ['USD>EUR@2025-04-10', 'HUF>GBP@2025-04-11']);
    expect(aligned.lots.where((l) => l.symbol == 'NEW').map((l) => l.currency), ['GBP', 'HUF']);
    // Egy korábbi, átváltás nélkül felvett sor ismétlésként kimarad.
    await store.add(symbol: 'SAP', quantity: 1, price: 200, currency: 'USD', date: DateTime(2025, 4, 10));
    final (:rest, :duplicates) = aligned.withoutRecorded(store.lots, store.dividends);
    expect(duplicates, 1);
    expect(rest.lots.where((l) => l.symbol == 'SAP'), isEmpty);
  });

  test('a price in pence is not stored as pounds', () async {
    expect(storedCurrency('GBp'), 'GBX');
    expect(storedCurrency(' gbp '), 'GBP');
    expect(storedCurrency('ZAc'), 'ZAC');
    final store = PortfolioStore();
    final lot = await store.add(symbol: 'VOD.L', quantity: 100, price: 72.5, currency: 'GBp');
    expect(lot.currency, 'GBX');
    expect(FxService.major(lot.currency), ('GBP', 0.01));
  });

  test('the exchange rate of a past day comes from that day and is kept', () async {
    final paths = <String>[];
    final fx = FxService(
      client: MockClient((req) async {
        paths.add(req.url.path);
        final dated = req.url.path != '/latest';
        return http.Response(
          jsonEncode({
            'date': dated ? '2025-04-10' : '2026-10-23',
            'rates': {'EUR': dated ? 0.88 : 0.92},
          }),
          200,
        );
      }),
    );
    expect((await fx.rateOn('USD', 'EUR', DateTime(2025, 4, 10)))?.rate, 0.88);
    expect((await fx.rateOn('USD', 'EUR', DateTime(2025, 4, 10, 15)))?.rate, 0.88);
    expect((await fx.rateOn('USD', 'EUR', DateTime.now()))?.rate, 0.92);
    expect(paths, ['/2025-04-10', '/latest']);
    // Az alegység csak a szorzóval: pennyből fontba.
    expect((await fx.rateOn('GBX', 'GBP', DateTime(2025, 4, 10)))?.rate, 0.01);
  });

  test('a ticker change on an out-of-date device does not bring back what was deleted elsewhere', () async {
    final deletedAt = DateTime.utc(2026, 10, 20);
    // A régi eszköz: a tétel és a riasztás még megvan, és most tickert vált (FB → META).
    final store = PortfolioStore();
    final lot = await store.add(symbol: 'FB', quantity: 1, price: 100, currency: 'USD');
    final kept = await store.add(symbol: 'FB', quantity: 2, price: 90, currency: 'USD');
    await store.renameSymbol('FB', 'META');
    final alerts = AlertStore();
    final alert = await alerts.add(symbol: 'FB', kind: AlertKind.above, value: 500);
    await alerts.renameSymbol('FB', 'META');
    final local = {
      'lots': [for (final l in store.lots) l.toJson()],
      'alerts': [for (final a in alerts.alerts) a.toJson()],
    };
    // A másik eszközön közben törölték őket; a megtartott tétel ott még a régi tickeren.
    final remote = {
      'lots': [PortfolioLot(id: kept.id, symbol: 'FB', quantity: 2, price: 90, currency: 'USD').toJson()],
      'deleted': {lot.id: deletedAt.toIso8601String()},
      'alerts': <Object>[],
      'alerts_deleted': {alert.id: deletedAt.toIso8601String()},
    };
    final merged = SyncService.merge(local, remote);
    final lots = [for (final j in merged['lots'] as List) PortfolioLot.fromJson(j as Map<String, dynamic>)!];
    expect(lots.map((l) => (l.id, l.symbol)), [(kept.id, 'META')]);
    expect(merged['alerts'], isEmpty);
    // A tickerváltás a másik irányban is átmegy: a régi példány nem írja vissza.
    final back = SyncService.merge(remote, local);
    expect([for (final j in back['lots'] as List) (j as Map)['symbol']], ['META']);
    // A tickerváltás nem élesíti újra a riasztást (az élesítés ideje marad).
    expect(alerts.alerts.single.modified, isNull);
  });

  test('a sync the server finds too large says so, instead of promising a retry', () async {
    SharedPreferences.setMockInitialValues({});
    var tooBig = true;
    final client = MockClient((req) async {
      if (req.method == 'GET') return http.Response(jsonEncode({'data': null, 'updated_at': null}), 200);
      if (tooBig) return http.Response(jsonEncode({'error': 'too_large'}), 413);
      return http.Response(jsonEncode({'updated_at': DateTime.utc(2026, 10, 24).toIso8601String()}), 200);
    });
    final backend = BackendClient(baseUrl: 'https://api.test', inner: client, tokenLoader: () async => 'tok');
    final portfolio = PortfolioStore();
    await portfolio.add(symbol: 'AAPL', quantity: 1, price: 100, currency: 'USD');
    final sync = SyncService(
      backend: backend,
      account: AccountController(backend: backend, entitlements: EntitlementService(), storedEmail: 'me@example.com'),
      preferences: AppPreferences(),
      portfolio: portfolio,
      alerts: AlertStore(),
      notes: NotesStore(),
      pushDelay: const Duration(hours: 1),
    );
    await sync.syncNow();
    expect((sync.failed, sync.tooLarge), (true, true));
    tooBig = false;
    await sync.syncNow();
    expect((sync.failed, sync.tooLarge), (false, false));
    sync.dispose();
  });
}
