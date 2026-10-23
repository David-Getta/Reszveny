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
import 'package:reszveny/features/settings/backup.dart';
import 'package:reszveny/features/sync/sync_service.dart';

import 'app_widget_test.dart' show services;

/// Utánzott szerver: szerveroldali újraírás (riasztásfigyelő) és régebbi app
/// feltöltése (`edited` és `deleted` nélkül) is.
class _Server {
  Map<String, dynamic>? data;
  DateTime? updatedAt;
  var writes = 0;
  Future<void> Function()? onPut;

  void _bump() {
    writes++;
    updatedAt = DateTime.utc(2026, 10, 15, 9, 0, writes);
  }

  /// Szerveroldali újraírás (pl. a riasztásfigyelő új csúcsot ment).
  void serverWrite() {
    data = jsonDecode(jsonEncode(data)) as Map<String, dynamic>;
    _bump();
  }

  /// Egy régebbi app (≤ 0.2.240) feltöltése: `edited` és `deleted` nélkül.
  void oldAppWrite() {
    final d = jsonDecode(jsonEncode(data)) as Map<String, dynamic>;
    d.remove('deleted');
    for (final k in ['lots', 'dividends']) {
      for (final m in (d[k] as List? ?? const [])) {
        (m as Map).remove('edited');
      }
    }
    data = d;
    _bump();
  }

  http.Client get client => MockClient((req) async {
    if (req.url.path == '/v1/sync' && req.method == 'GET') {
      return http.Response(jsonEncode({'data': data, 'updated_at': updatedAt?.toIso8601String()}), 200);
    }
    if (req.url.path == '/v1/sync' && req.method == 'PUT') {
      if (onPut case final f?) {
        onPut = null;
        await f();
      }
      data = ((jsonDecode(req.body) as Map)['data'] as Map).cast<String, dynamic>();
      _bump();
      return http.Response(jsonEncode({'updated_at': updatedAt!.toIso8601String()}), 200);
    }
    return http.Response('{}', 200);
  });
}

class _Device {
  _Device(_Server server)
    : preferences = AppPreferences(),
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
  test('undoing a split deletion survives a merge after the deletion was pushed', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    final lot = await a.portfolio.add(
      symbol: 'AAPL',
      quantity: 10,
      price: 100,
      currency: 'USD',
      date: DateTime(2020, 1, 1),
    );
    final s = (await a.portfolio.addSplit(symbol: 'AAPL', from: 1, to: 4, date: DateTime(2021, 1, 1)))!;
    await a.sync.start();

    // A tranzakció visszavonása is megmarad (összevetésként).
    final stored = await a.portfolio.remove(lot.id);
    await a.portfolio.removeSplit(s.id);
    await a.sync.syncNow();
    server.serverWrite();
    await a.portfolio.restore(stored!);
    await a.portfolio.restoreSplit(s);
    expect(a.portfolio.splits.map((x) => x.id), [s.id]);
    await a.sync.syncNow();
    expect(a.portfolio.lots.map((x) => x.id), [lot.id], reason: 'lot undo survives');
    expect(a.portfolio.splits.map((x) => x.id), [s.id], reason: 'split undo survives');
  });

  test('undoing a split deletion survives when the other device pushed first', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    await a.portfolio.add(symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD', date: DateTime(2020, 1, 1));
    final s = (await a.portfolio.addSplit(symbol: 'AAPL', from: 1, to: 4, date: DateTime(2021, 1, 1)))!;
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();
    await a.portfolio.removeSplit(s.id);
    await a.sync.syncNow();
    await b.sync.syncNow();
    await a.portfolio.restoreSplit(s);
    await b.portfolio.setCash('USD', 5);
    await b.sync.syncNow();
    await a.sync.syncNow();
    await b.sync.syncNow();
    expect(a.portfolio.splits.map((x) => x.id), [s.id], reason: 'A');
    expect(b.portfolio.splits.map((x) => x.id), [s.id], reason: 'B');
  });

  test('a sample portfolio loaded again is not removed by the earlier removal\'s marks', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    await a.portfolio.loadSample();
    await a.sync.start();
    await a.portfolio.removeSample();
    await a.sync.syncNow();
    server.serverWrite();
    await a.portfolio.loadSample();
    expect(a.portfolio.hasSample, isTrue);
    await a.sync.syncNow();
    expect(a.portfolio.hasSample, isTrue, reason: 'freshly loaded sample must stay');
  });

  test('a restored transaction is not deleted later when an older app strips its edit time', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    final x = await a.portfolio.add(symbol: 'AAPL', quantity: 10, price: 180, currency: 'USD');
    final y = await a.portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD');
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();

    await a.portfolio.remove(y.id);
    await a.sync.syncNow();
    await b.sync.syncNow();
    await b.portfolio.setCash('USD', 1);
    await a.portfolio.restore(y);
    await a.sync.syncNow();
    await b.sync.syncNow(); // összefésülés: y marad (javítva)
    await a.sync.syncNow();
    expect(a.portfolio.lots.map((l) => l.id).toSet(), {x.id, y.id});
    expect(a.portfolio.deletedJson.containsKey(y.id), isFalse, reason: 'a megmaradt tétel jelzése eltűnik');

    server.oldAppWrite(); // egy régebbi app mást változtatott és feltöltött
    await a.sync.syncNow(); // egészben átvéve: y-nak nincs `edited`-je
    await b.sync.syncNow();
    await a.portfolio.setCash('EUR', 5);
    await b.portfolio.setCash('HUF', 5);
    await b.sync.syncNow();
    await a.sync.syncNow(); // összefésülés
    expect(a.portfolio.lots.map((l) => l.id).toSet(), {x.id, y.id}, reason: 'restored y must not vanish');
  });

  test('restoring a backup brings back a split deleted after it, like transactions', () async {
    SharedPreferences.setMockInitialValues({});
    final a = services();
    final lot = await a.portfolio.add(
      symbol: 'AAPL',
      quantity: 3,
      price: 180,
      currency: 'USD',
      date: DateTime(2020, 1, 1),
    );
    final s = (await a.portfolio.addSplit(symbol: 'AAPL', from: 1, to: 4, date: DateTime(2021, 1, 1)))!;
    final file = jsonEncode(Backup.data(a));
    await a.portfolio.remove(lot.id);
    await a.portfolio.removeSplit(s.id);
    await Backup.restore(a, Backup.parse(file)!);
    expect(a.portfolio.lots.map((l) => l.id), [lot.id]);
    expect(a.portfolio.splits.map((x) => x.id), [s.id], reason: 'split deleted after backup should come back');
  });

  test('restoring a backup with sample removal marks keeps a sample loaded since', () async {
    SharedPreferences.setMockInitialValues({});
    final a = services();
    await a.portfolio.loadSample();
    await a.portfolio.removeSample();
    final file = jsonEncode(Backup.data(a));
    await a.portfolio.loadSample();
    await Backup.restore(a, Backup.parse(file)!);
    expect(a.portfolio.hasSample, isTrue, reason: 'restore must not delete existing data');
  });

  test('restoring an older backup does not overwrite a newer edit of a restored transaction', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    final y = await a.portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD');
    // Mentés most (a Backup.data ugyanezt a csomagot írja).
    final file = jsonEncode({
      'app': Backup.app,
      ...SyncService.snapshotOf(preferences: a.preferences, portfolio: a.portfolio, alerts: a.alerts, notes: a.notes),
    });
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();
    await a.portfolio.remove(y.id);
    await a.sync.syncNow();
    await b.sync.syncNow();
    await b.portfolio.setCash('USD', 1);
    await a.portfolio.restore(y);
    await a.sync.syncNow();
    await b.sync.syncNow();
    await a.sync.syncNow();
    final cur = a.portfolio.lots.single;
    await a.portfolio.replace(PortfolioLot(id: cur.id, symbol: 'MSFT', quantity: 2, price: 999, currency: 'USD'));
    // A visszaállításhoz AppServices kell: az állapot átmásolva egy ilyenbe.
    final s = services();
    await SyncService.applyTo(
      SyncService.snapshotOf(preferences: a.preferences, portfolio: a.portfolio, alerts: a.alerts, notes: a.notes),
      preferences: s.preferences,
      portfolio: s.portfolio,
      alerts: s.alerts,
      notes: s.notes,
    );
    expect(s.portfolio.lots.single.price, 999);
    await Backup.restore(s, Backup.parse(file)!);
    expect(s.portfolio.lots.single.price, 999, reason: 'newer edit must survive restoring an older backup');
  });

  test('a change made while a push is in flight is pushed afterwards', () async {
    final server = _Server();
    SharedPreferences.setMockInitialValues({});
    final a = _Device(server);
    final x = await a.portfolio.add(symbol: 'AAPL', quantity: 1, price: 100, currency: 'USD');
    final y = await a.portfolio.add(symbol: 'MSFT', quantity: 1, price: 100, currency: 'USD');
    await a.sync.start();
    SharedPreferences.setMockInitialValues({});
    final b = _Device(server);
    await b.sync.start();
    await a.portfolio.remove(x.id);
    server.onPut = () async {
      await a.portfolio.remove(y.id); // feltöltés közben még egy törlés
    };
    await a.sync.syncNow();
    await a.sync.syncNow(); // amit az időzítő is elindítana
    expect(
      (server.data!['lots'] as List).map((l) => l['id']),
      isNot(contains(y.id)),
      reason: 'y deletion should reach server',
    );
  });
}
