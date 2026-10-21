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
    await b.portfolio.setCash('USD', 1500);
    await b.sync.syncNow();
    await a.sync.syncNow();
    expect(a.preferences.favorites, containsAll(['NVDA', 'MSFT', 'AAPL']));
    expect(a.alerts.alerts.single.value, 250);
    expect(a.portfolio.dividends.single.amount, 2.5);
    expect(a.portfolio.cash, {'USD': 1500.0});
    expect((server.data!['dividends'] as List).single['symbol'], 'AAPL');
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
