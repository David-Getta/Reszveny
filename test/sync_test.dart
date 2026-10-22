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
import 'package:reszveny/features/notes/notes_store.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/sync/sync_service.dart';

/// Utánzott szerver: a fiók adatcsomagja és az utolsó írás ideje.
class _Server {
  Map<String, dynamic>? data;
  DateTime? updatedAt;
  var writes = 0;

  http.Client get client => MockClient((req) async {
    if (req.url.path == '/v1/sync' && req.method == 'GET') {
      return http.Response(jsonEncode({'data': data, 'updated_at': updatedAt?.toIso8601String()}), 200);
    }
    if (req.url.path == '/v1/sync' && req.method == 'PUT') {
      data = ((jsonDecode(req.body) as Map)['data'] as Map).cast<String, dynamic>();
      writes++;
      updatedAt = DateTime.utc(2026, 10, 15, 9, 0, writes);
      return http.Response(jsonEncode({'updated_at': updatedAt!.toIso8601String()}), 200);
    }
    return http.Response('{}', 200);
  });
}

class _Device {
  _Device(_Server server, {List<String> favorites = const []})
    : preferences = AppPreferences(favorites: favorites),
      portfolio = PortfolioStore(),
      alerts = AlertStore(),
      notes = NotesStore() {
    final backend = BackendClient(baseUrl: 'https://api.test', inner: server.client, tokenLoader: () async => 'tok');
    sync = SyncService(
      backend: backend,
      account: AccountController(backend: backend, entitlements: EntitlementService(), storedEmail: 'dave@example.com'),
      preferences: preferences,
      portfolio: portfolio,
      alerts: alerts,
      notes: notes,
      pushDelay: const Duration(hours: 1),
    );
  }

  final AppPreferences preferences;
  final PortfolioStore portfolio;
  final AlertStore alerts;
  final NotesStore notes;
  late final SyncService sync;
}

void main() {
  test('two devices of one account end up with the same data; nothing is lost on conflicts', () async {
    final server = _Server();

    // A: első eszköz, a szerver még üres → feltölti.
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server, favorites: ['AAPL']);
    await a.portfolio.add(symbol: 'AAPL', quantity: 10, price: 180, currency: 'USD');
    await a.sync.start();
    expect(server.data!['favorites'], ['AAPL']);
    expect((server.data!['lots'] as List).single['symbol'], 'AAPL');

    // B: új eszköz saját adattal → az első belépésnél a kettő uniója.
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server, favorites: ['MSFT']);
    await b.notes.set('MSFT', 'Cloud growth.');
    await b.sync.start();
    expect(b.preferences.favorites, ['MSFT', 'AAPL']);
    expect(b.portfolio.lots.single.symbol, 'AAPL');
    expect(b.notes.of('MSFT')?.text, 'Cloud growth.');

    // B töröl egy vételt → A a következő szinkronnál átveszi (nem támad fel).
    await b.portfolio.remove(b.portfolio.lots.single.id);
    await b.sync.syncNow();
    await a.sync.syncNow();
    expect(a.portfolio.lots, isEmpty);
    expect(a.preferences.favorites, ['MSFT', 'AAPL']);
    expect(a.notes.of('MSFT')?.text, 'Cloud growth.');

    // Mindkét oldalon változás → összefésülés, semmi nem vész el (a kapott osztalék is átmegy).
    await a.preferences.toggleFavorite('NVDA');
    await b.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: 250, currency: 'USD');
    await b.portfolio.addDividend(symbol: 'AAPL', amount: 2.5, currency: 'USD', date: DateTime(2026, 2, 13));
    await b.portfolio.addSplit(symbol: 'NVDA', from: 1, to: 10, date: DateTime(2024, 6, 10));
    await b.portfolio.setCash('USD', 1500);
    await b.sync.syncNow();
    await a.sync.syncNow();
    expect(a.preferences.favorites, containsAll(['NVDA', 'MSFT', 'AAPL']));
    expect(a.alerts.alerts.single.value, 250);
    expect(a.portfolio.dividends.single.amount, 2.5);
    expect(a.portfolio.splits.single.label, '10:1', reason: 'a felaprózás is átmegy');
    expect(a.portfolio.cash, {'USD': 1500.0});
    // A törölt készpénz-egyenleg is átmegy (nem éled újra).
    await a.portfolio.setCash('USD', 0);
    await a.sync.syncNow();
    await b.sync.syncNow();
    expect(b.portfolio.cash, isEmpty);
    // Kétoldali változás: A törli az USD-t, B közben EUR-t ad hozzá → mindkettő érvényesül,
    // az USD nem éled újra a B régebbi egyenlegéből.
    await a.portfolio.setCash('USD', 500);
    await a.sync.syncNow();
    await b.sync.syncNow();
    expect(b.portfolio.cash, {'USD': 500.0});
    await a.portfolio.setCash('USD', 0);
    await b.portfolio.setCash('EUR', 300);
    await b.sync.syncNow();
    await a.sync.syncNow();
    expect(a.portfolio.cash, {'EUR': 300.0});
    await b.sync.syncNow();
    expect(b.portfolio.cash, {'EUR': 300.0});
    expect((server.data!['dividends'] as List).single['symbol'], 'AAPL');
    expect((server.data!['splits'] as List).single, {
      'id': a.portfolio.splits.single.id,
      'symbol': 'NVDA',
      'from': 1,
      'to': 10,
      'date': '2024-06-10',
    });
    await b.sync.syncNow();
    expect(b.preferences.favorites, containsAll(['NVDA', 'MSFT', 'AAPL']));

    // Csak a téma változott: nincs mit feltölteni.
    final writes = server.writes;
    await a.preferences.setThemeMode(a.preferences.themeMode);
    await a.sync.syncNow();
    expect(server.writes, writes);
    expect(a.sync.lastSynced, isNotNull);
    expect(a.sync.failed, isFalse);
  });

  test('an older app that drops the account names does not wipe them; they are sent back', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    await a.portfolio.add(symbol: 'OTP', quantity: 10, price: 30000, currency: 'HUF', account: 'TBSZ');
    await a.sync.start();
    expect((server.data!['lots'] as List).single['account'], 'TBSZ');
    // Egy régebbi app (a számlát nem ismeri) ugyanazt a tételt számla nélkül tölti fel.
    server.data = {
      ...server.data!,
      'lots': [
        for (final l in server.data!['lots'] as List) {...(l as Map)}..remove('account'),
      ],
    };
    server.updatedAt = DateTime.utc(2026, 10, 16);
    await a.sync.syncNow();
    expect(a.portfolio.lots.single.account, 'TBSZ');
    expect((server.data!['lots'] as List).single['account'], 'TBSZ');
  });

  test('goals follow the account: the newer change wins, a removed goal does not come back', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    await a.preferences.setDividendGoal((amount: 50000, currency: 'HUF'));
    await a.preferences.setPortfolioGoal((amount: 10000000, currency: 'HUF'));
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();
    expect(b.preferences.dividendGoal, (amount: 50000.0, currency: 'HUF'));
    expect(b.preferences.portfolioGoal, (amount: 10000000.0, currency: 'HUF'));

    // B törli a havi célt, A közben (régebben) semmit: a törlés átmegy, nem éled újra.
    await Future<void>.delayed(const Duration(milliseconds: 5));
    await b.preferences.setDividendGoal(null);
    await b.sync.syncNow();
    await a.sync.syncNow();
    expect(a.preferences.dividendGoal, isNull);
    expect(a.preferences.portfolioGoal, (amount: 10000000.0, currency: 'HUF'), reason: 'a másik cél marad');
    await b.sync.syncNow();
    expect(b.preferences.dividendGoal, isNull);

    // Újabb módosítás A-n nyer B régebbi értéke felett.
    await Future<void>.delayed(const Duration(milliseconds: 5));
    await a.preferences.setPortfolioGoal((amount: 12000000, currency: 'HUF'));
    await a.sync.syncNow();
    await b.sync.syncNow();
    expect(b.preferences.portfolioGoal, (amount: 12000000.0, currency: 'HUF'));
  });

  test('goal merge: by timestamp; an old package without times keeps the local goal', () async {
    final older = {'amount': 100, 'currency': 'USD', 'at': '2026-10-01T00:00:00Z'};
    final newer = {'amount': 200, 'currency': 'USD', 'at': '2026-10-10T00:00:00Z'};
    final removed = {'at': '2026-10-12T00:00:00Z'};
    expect(SyncService.mergeGoals({'dividend': older}, {'dividend': newer}), {'dividend': newer});
    expect(SyncService.mergeGoals({'dividend': newer}, {'dividend': older}), {'dividend': newer});
    expect(SyncService.mergeGoals({'dividend': newer}, {'dividend': removed}), {'dividend': removed});
    expect(SyncService.mergeGoals({'portfolio': newer}, null), {'portfolio': newer});
    expect(
      SyncService.mergeGoals(
        {
          'portfolio': {'amount': 5, 'currency': 'EUR'},
        },
        {'portfolio': older},
      ),
      {'portfolio': older},
      reason: 'időbélyeg nélküli helyi cél régebbinek számít',
    );
    // Régi csomag (idő nélküli cél): átvéve, de bélyeg nélkül – nem lesz mesterségesen a legújabb.
    final prefs = AppPreferences();
    await prefs.applyGoals(
      AppPreferences.parseGoals({
        'portfolio': {'amount': 5, 'currency': 'EUR'},
      }),
    );
    expect(prefs.portfolioGoal, (amount: 5.0, currency: 'EUR'));
    expect(prefs.goalsJson['portfolio']?.containsKey('at'), isFalse);
    final parsed = AppPreferences.parseGoals({'dividend': removed, 'portfolio': newer, 'x': newer});
    expect(parsed.keys, ['dividend', 'portfolio']);
    expect(parsed['dividend']!.goal, isNull);
    expect(parsed['portfolio']!.goal, (amount: 200.0, currency: 'USD'));
  });

  test('merge keeps the newer note and the local copy of the same item', () {
    final older = {'text': 'old', 'updated_at': '2026-10-01T00:00:00Z'};
    final newer = {'text': 'new', 'updated_at': '2026-10-10T00:00:00Z'};
    final m = SyncService.merge(
      {
        'favorites': ['A'],
        'lots': [
          {'id': '1', 'symbol': 'A', 'quantity': 1, 'price': 1, 'currency': 'USD'},
        ],
        'notes': {'A': older, 'B': newer},
      },
      {
        'favorites': ['B', 'A'],
        'lots': [
          {'id': '1', 'symbol': 'A', 'quantity': 9, 'price': 9, 'currency': 'USD'},
          {'id': '2', 'symbol': 'B', 'quantity': 2, 'price': 2, 'currency': 'USD'},
        ],
        'notes': {'A': newer, 'B': older},
      },
    );
    expect(m['favorites'], ['A', 'B']);
    expect((m['lots'] as List).map((l) => (l['id'], l['quantity'])), [('1', 1), ('2', 2)]);
    expect(m['splits'], isEmpty, reason: 'régi csomagokban nincs felaprózás');
    // Ugyanaz a felaprózás két eszközről (más azonosítóval) az összefésülés után egyszer.
    final split = {'symbol': 'NVDA', 'from': 1, 'to': 10, 'date': '2024-06-10'};
    final both = SyncService.merge(
      {
        'splits': [
          {...split, 'id': 'a'},
        ],
      },
      {
        'splits': [
          {...split, 'id': 'b'},
          {...split, 'id': 'c', 'date': '2025-01-02'},
        ],
      },
    );
    expect((both['splits'] as List).map((s) => s['id']), ['a', 'c']);
    expect((m['notes'] as Map)['A'], newer);
    expect((m['notes'] as Map)['B'], newer);
  });

  test('an alert the server already triggered stays triggered after a merge; language and opt-out are sent', () {
    final active = {'id': 'x', 'symbol': 'AAPL', 'kind': 'above', 'value': 250};
    final fired = {...active, 'triggered_at': '2026-10-15T14:00:00Z', 'triggered_price': 251};
    final m = SyncService.merge(
      {
        'alerts': [active],
        'lang': 'hu',
        'email_alerts': false,
      },
      {
        'alerts': [fired],
        'lang': 'en',
        'weekly_digest': true,
      },
    );
    expect((m['alerts'] as List).single['triggered_at'], '2026-10-15T14:00:00Z');
    expect(m['lang'], 'hu');
    expect(m['email_alerts'], false);
    expect(m['weekly_digest'], true, reason: 'opting in on another device carries over');

    SharedPreferences.setMockInitialValues({});
    final d = _Device(_Server());
    expect(d.sync.snapshot()['email_alerts'], true);
    expect(d.sync.snapshot()['weekly_digest'], false, reason: 'the weekly e-mail is opt-in');
  });
}
