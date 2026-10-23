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
  var conflicts = 0;

  /// Egyszer, a következő letöltés után fut: egy másik író (eszköz) közbeiktatása.
  void Function()? afterNextGet;

  http.Client get client => MockClient((req) async {
    if (req.url.path == '/v1/sync' && req.method == 'GET') {
      final res = http.Response(jsonEncode({'data': data, 'updated_at': updatedAt?.toIso8601String()}), 200);
      final hook = afterNextGet;
      afterNextGet = null;
      hook?.call();
      return res;
    }
    if (req.url.path == '/v1/sync' && req.method == 'PUT') {
      final body = jsonDecode(req.body) as Map;
      // Mint a szerver: a megadott alapváltozattól eltérő állapotra nem ír.
      if (body.containsKey('base')) {
        final base = DateTime.tryParse('${body['base'] ?? ''}');
        final same = updatedAt == null ? base == null : base != null && base.isAtSameMomentAs(updatedAt!);
        if (!same) {
          conflicts++;
          return http.Response(jsonEncode({'error': 'conflict'}), 409);
        }
      }
      data = (body['data'] as Map).cast<String, dynamic>();
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
    await a.portfolio.add(symbol: 'OTP', quantity: 10, price: 30000, currency: 'HUF', account: 'TBSZ', fee: 300);
    await a.portfolio.addDividend(symbol: 'OTP', amount: 2400, currency: 'HUF', account: 'TBSZ');
    await a.sync.start();
    expect((server.data!['lots'] as List).single['account'], 'TBSZ');
    // Egy régebbi app (a számlát és a díjat nem ismeri) ugyanazt a tételt nélkülük tölti fel.
    server.data = {
      ...server.data!,
      'lots': [
        for (final l in server.data!['lots'] as List)
          {...(l as Map)}
            ..remove('account')
            ..remove('fee'),
      ],
      'dividends': [
        for (final d in server.data!['dividends'] as List) {...(d as Map)}..remove('account'),
      ],
    };
    server.updatedAt = DateTime.utc(2026, 10, 16);
    await a.sync.syncNow();
    expect((a.portfolio.lots.single.account, a.portfolio.lots.single.fee), ('TBSZ', 300.0));
    expect((server.data!['lots'] as List).single['account'], 'TBSZ');
    expect((server.data!['lots'] as List).single['fee'], 300.0);
    expect(a.portfolio.dividends.single.account, 'TBSZ');
    expect((server.data!['dividends'] as List).single['account'], 'TBSZ');
  });

  test('a correction reaches the other device, also when it removes the account or the fee', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    final lot = await a.portfolio.add(
      symbol: 'OTP',
      quantity: 10,
      price: 30000,
      currency: 'HUF',
      account: 'TBSZ',
      fee: 300,
    );
    final d = await a.portfolio.addDividend(symbol: 'OTP', amount: 2400, currency: 'HUF', account: 'TBSZ');
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();
    expect(b.portfolio.lots.single.account, 'TBSZ');

    // A javítja: más ár, számla és díj nélkül; az osztalék is számla nélkül.
    await a.portfolio.replace(
      PortfolioLot(id: lot.id, symbol: 'OTP', quantity: 10, price: 29500, currency: 'HUF', date: lot.date),
    );
    await a.portfolio.replaceDividend(DividendRecord(id: d.id, symbol: 'OTP', amount: 2500, currency: 'HUF'));
    await a.sync.syncNow();
    await b.sync.syncNow();
    final got = b.portfolio.lots.single;
    expect((got.id, got.price, got.account, got.fee), (lot.id, 29500.0, null, 0.0));
    expect((b.portfolio.dividends.single.amount, b.portfolio.dividends.single.account), (2500.0, null));
    // B nem küldi vissza a régi számlát és díjat.
    await b.sync.syncNow();
    await a.sync.syncNow();
    expect((a.portfolio.lots.single.account, a.portfolio.lots.single.fee), (null, 0.0));
    expect(a.portfolio.dividends.single.account, isNull);
  });

  test('both devices changed: a correction made on the other device is not lost to the older local copy', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    final lot = await a.portfolio.add(symbol: 'AAPL', quantity: 10, price: 180, currency: 'USD');
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();

    // A javítja az árat és feltölti; B közben (még a régi tétellel) osztalékot vesz fel.
    await a.portfolio.replace(PortfolioLot(id: lot.id, symbol: 'AAPL', quantity: 10, price: 175, currency: 'USD'));
    await a.sync.syncNow();
    await b.portfolio.addDividend(symbol: 'AAPL', amount: 2.5, currency: 'USD');
    await b.sync.syncNow();
    expect(b.portfolio.lots.single.price, 175, reason: 'a később javított változat nyer');
    expect(b.portfolio.dividends, hasLength(1));
    await a.sync.syncNow();
    expect(a.portfolio.lots.single.price, 175);
    expect(a.portfolio.dividends.single.amount, 2.5);

    // Fordított sorrend: B javítja az osztalékot, A közben vesz; A szinkronizál utóbb.
    final d = b.portfolio.dividends.single;
    await b.portfolio.replaceDividend(DividendRecord(id: d.id, symbol: 'AAPL', amount: 2.6, currency: 'USD'));
    await a.portfolio.add(symbol: 'MSFT', quantity: 1, price: 400, currency: 'USD');
    await b.sync.syncNow();
    await a.sync.syncNow();
    expect(a.portfolio.dividends.single.amount, 2.6);
    expect(a.portfolio.lots, hasLength(2));
  });

  test('both devices changed: a deletion is not undone by the other device\'s old copy; an undo still wins', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    final x = await a.portfolio.add(symbol: 'AAPL', quantity: 10, price: 180, currency: 'USD');
    final y = await a.portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD');
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();
    expect(b.portfolio.lots, hasLength(2));

    // A törli X-et; B közben (még X-szel) osztalékot vesz fel, és utóbb szinkronizál.
    await a.portfolio.remove(x.id);
    await a.sync.syncNow();
    await b.portfolio.addDividend(symbol: 'MSFT', amount: 1.5, currency: 'USD');
    await b.sync.syncNow();
    expect(b.portfolio.lots.map((l) => l.id), [y.id], reason: 'X nem támad fel');
    await a.sync.syncNow();
    expect(a.portfolio.lots.map((l) => l.id), [y.id]);
    expect(a.portfolio.dividends, hasLength(1));

    // A törli Y-t, feltölti, majd visszavonja; B közben változtat: a visszavont törlés nem nyer.
    await a.portfolio.remove(y.id);
    await a.sync.syncNow();
    final undone = a.portfolio.deletedJson.containsKey(y.id);
    expect(undone, isTrue);
    await a.portfolio.restore(y);
    await b.portfolio.setCash('USD', 100);
    await b.sync.syncNow();
    await a.sync.syncNow();
    await b.sync.syncNow();
    expect(a.portfolio.lots.map((l) => l.id), [y.id]);
    expect(b.portfolio.lots.map((l) => l.id), [y.id]);
    expect(a.portfolio.deletedJson.containsKey(x.id), isTrue);
  });

  test('deletion marks survive a restart and are dropped after half a year', () async {
    SharedPreferences.setMockInitialValues({
      'portfolio_deleted': jsonEncode({
        'old': DateTime.now().toUtc().subtract(const Duration(days: 200)).toIso8601String(),
        'new': DateTime.now().toUtc().subtract(const Duration(days: 3)).toIso8601String(),
        'bad': 'x',
      }),
    });
    final store = await PortfolioStore.load();
    expect(store.deletedJson.keys, ['new']);
    final lot = await store.add(symbol: 'AAPL', quantity: 1, price: 100, currency: 'USD');
    await store.remove(lot.id);
    expect((await PortfolioStore.load()).deletedJson.keys.toSet(), {'new', lot.id});
  });

  test('a write by someone else between download and upload is not overwritten: refused, merged, retried', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    await a.sync.start();
    await a.portfolio.add(symbol: 'AAPL', quantity: 1, price: 180, currency: 'USD');
    // A letöltés után egy másik eszköz feltölt (új kedvenc).
    server.afterNextGet = () {
      server.data = {
        ...server.data!,
        'favorites': ['NVDA'],
      };
      server.updatedAt = DateTime.utc(2026, 10, 15, 10);
    };
    await a.sync.syncNow();
    expect(server.conflicts, 1);
    expect(a.sync.failed, isFalse);
    expect(server.data!['favorites'], ['NVDA'], reason: 'a másik eszköz kedvence megmaradt');
    expect((server.data!['lots'] as List).single['symbol'], 'AAPL');
    expect(a.preferences.favorites, ['NVDA']);
  });

  test('alerts: a re-arm after the server marked it wins; a later server mark wins over an older edit', () {
    Map<String, dynamic> side(Map<String, dynamic> extra) => {
      'alerts': [
        {'id': 'x', 'symbol': 'AAPL', 'kind': 'above', 'value': 250, 'created_at': '2026-10-01T00:00:00Z', ...extra},
      ],
    };
    final triggered = side({'triggered_at': '2026-10-10T12:00:00Z', 'triggered_price': 251});
    final rearmed = side({'edited': '2026-10-11T08:00:00Z'});
    final untouched = side({});
    List merged(Map<String, dynamic> l, Map<String, dynamic> r) => SyncService.merge(l, r)['alerts'] as List;
    expect(merged(rearmed, triggered).single['triggered_at'], isNull, reason: 'újraélesítve a jelölés után');
    expect(merged(triggered, rearmed).single['triggered_at'], isNull);
    expect(merged(untouched, triggered).single['triggered_at'], isNotNull, reason: 'a kiküldött nem éled újra');
    final markedLater = side({'edited': '2026-10-11T08:00:00Z', 'triggered_at': '2026-10-12T15:00:00Z'});
    expect(merged(rearmed, markedLater).single['triggered_at'], isNotNull);
  });

  test('a deleted note or alert is not brought back by the other device\'s older copy', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    await a.notes.set('AAPL', 'Services growth.');
    final alert = await a.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: 250, currency: 'USD');
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();
    expect((b.notes.of('AAPL')?.text, b.alerts.alerts.length), ('Services growth.', 1));

    // A törli; B közben mást változtat, és utóbb szinkronizál.
    await a.notes.set('AAPL', '');
    await a.alerts.remove(alert.id);
    await a.sync.syncNow();
    await b.preferences.toggleFavorite('MSFT');
    await b.sync.syncNow();
    await a.sync.syncNow();
    for (final d in [a, b]) {
      expect(d.notes.of('AAPL'), isNull);
      expect(d.alerts.alerts, isEmpty);
    }
    // Újraírt jegyzet a törlés után: az megmarad.
    await b.notes.set('AAPL', 'Bought again.');
    await b.sync.syncNow();
    await a.sync.syncNow();
    expect(a.notes.of('AAPL')?.text, 'Bought again.');
  });

  test('alerts: an offline edit beats a later server mark of the old setting; a reset peak is not undone', () {
    Map<String, dynamic> side(Map<String, dynamic> a) => {
      'alerts': [
        {'id': 'x', 'symbol': 'AAPL', 'created_at': '2026-10-01T00:00:00Z', ...a},
      ],
    };
    Map merged(Map<String, dynamic> l, Map<String, dynamic> r) =>
        (SyncService.merge(l, r)['alerts'] as List).single as Map;
    // 10:00-kor 300-ra emelve (még nem szinkronizált); 10:01-kor a szerver a régi 250-re jelöl.
    final edited = side({'kind': 'above', 'value': 300, 'edited': '2026-10-15T10:00:00Z'});
    final marked = side({'kind': 'above', 'value': 250, 'triggered_at': '2026-10-15T10:01:00Z'});
    for (final m in [merged(edited, marked), merged(marked, edited)]) {
      expect((m['value'], m['triggered_at']), (300, null));
    }
    // Követő stop szigorítva (5%, a csúcs a mostani 95-re állt): a régi 100-as csúcs nem jön vissza.
    final tightened = side({'kind': 'trailing', 'value': 5, 'peak': 95, 'edited': '2026-10-15T10:00:00Z'});
    final old = side({'kind': 'trailing', 'value': 10, 'peak': 100});
    for (final m in [merged(tightened, old), merged(old, tightened)]) {
      expect(PriceAlert.fromJson(m.cast<String, dynamic>())!.trailingLevel, closeTo(90.25, 1e-9));
    }
  });

  test('a trailing stop tightened while the server wrote meanwhile keeps its new peak end to end', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    final x = await a.alerts.add(symbol: 'AAPL', kind: AlertKind.trailing, value: 10, currency: 'USD', peak: 100);
    await a.sync.start();
    // A szerver közben írt (pl. egy másik riasztás csúcsát mentette).
    server.data = jsonDecode(jsonEncode(server.data)) as Map<String, dynamic>;
    server.updatedAt = DateTime.utc(2026, 10, 15, 10);
    await a.alerts.edit(x.id, kind: AlertKind.trailing, value: 5, currency: 'USD', peak: 95);
    await a.sync.syncNow();
    expect(a.alerts.alerts.single.trailingLevel, closeTo(90.25, 1e-9));
    expect((server.data!['alerts'] as List).single['peak'], 95);
  });

  test('a server that keeps refusing the upload leaves the sync failed, not looping', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    await a.sync.start();
    await a.portfolio.add(symbol: 'AAPL', quantity: 1, price: 180, currency: 'USD');
    var gets = 0;
    void writeBetween() {
      gets++;
      server.updatedAt = DateTime.utc(2026, 10, 16, 0, 0, gets);
      server.afterNextGet = writeBetween;
    }

    server.afterNextGet = writeBetween;
    await a.sync.syncNow();
    expect(a.sync.failed, isTrue);
    expect(server.conflicts, 3);
    server.afterNextGet = null;
  });

  test('favorites: a removed one does not come back from the other device; re-added or undone it stays', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server, favorites: ['AAPL', 'MSFT', 'NVDA']);
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();
    expect(b.preferences.favorites, ['AAPL', 'MSFT', 'NVDA']);

    // A leveszi az MSFT-t; B közben mást változtat, és utóbb szinkronizál.
    await a.preferences.toggleFavorite('MSFT');
    await a.sync.syncNow();
    await b.portfolio.setCash('USD', 10);
    await b.sync.syncNow();
    await a.sync.syncNow();
    expect(a.preferences.favorites, ['AAPL', 'NVDA']);
    expect(b.preferences.favorites, ['AAPL', 'NVDA']);

    // B később újra felveszi: megmarad (a felvétel későbbi, mint a levétel).
    await b.preferences.toggleFavorite('MSFT');
    await a.portfolio.setCash('EUR', 5);
    await b.sync.syncNow();
    await a.sync.syncNow();
    expect(a.preferences.favorites, contains('MSFT'));

    // A leveszi az NVDA-t, feltölti, majd visszavonja; B közben változtat: a visszavonás nyer.
    final before = a.preferences.favorites;
    await a.preferences.toggleFavorite('NVDA');
    await a.sync.syncNow();
    await a.preferences.setFavorites(before, restore: true);
    await b.portfolio.setCash('HUF', 1000);
    await b.sync.syncNow();
    await a.sync.syncNow();
    await b.sync.syncNow();
    expect(a.preferences.favorites, contains('NVDA'));
    expect(b.preferences.favorites, contains('NVDA'));
  });

  test('lists: a deleted list or a removed member does not come back; renamed lists do not double', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    await a.preferences.addWatchList('Tech');
    await a.preferences.toggleInList('Tech', 'AAPL');
    await a.preferences.toggleInList('Tech', 'MSFT');
    await a.preferences.addWatchList('Old');
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();
    expect(b.preferences.watchLists.map((l) => l.name), ['Tech', 'Old']);

    // A: MSFT le a Tech-ről, az „Old” lista törölve; B közben mást változtat.
    await a.preferences.toggleInList('Tech', 'MSFT');
    await a.preferences.removeWatchList('Old');
    await a.sync.syncNow();
    await b.portfolio.setCash('USD', 1);
    await b.sync.syncNow();
    await a.sync.syncNow();
    for (final d in [a, b]) {
      expect(d.preferences.watchLists.map((l) => '${l.name}: ${l.symbols.join(',')}'), ['Tech: AAPL']);
    }
    // B átnevezi „Growth”-ra; A közben változtat: nem lesz két lista.
    await b.preferences.renameWatchList('Tech', 'Growth');
    await b.sync.syncNow();
    await a.portfolio.setCash('EUR', 1);
    await a.sync.syncNow();
    expect(a.preferences.watchLists.map((l) => '${l.name}: ${l.symbols.join(',')}'), ['Growth: AAPL']);
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
