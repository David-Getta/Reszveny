import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/features/account/account_controller.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:reszveny/features/notes/notes_store.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/settings/backup.dart';
import 'package:reszveny/features/sync/sync_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget_test.dart' show services;

/// Egyetlen fiók szinkroncsomagja a „szerveren”.
class _Server {
  Map<String, dynamic>? data;
  DateTime? at;

  http.Client get client => MockClient((req) async {
    if (req.url.path == '/v1/sync' && req.method == 'GET') {
      return http.Response(jsonEncode({'data': data, 'updated_at': at?.toIso8601String()}), 200);
    }
    if (req.url.path == '/v1/sync' && req.method == 'PUT') {
      data = ((jsonDecode(req.body) as Map)['data'] as Map).cast<String, dynamic>();
      at = DateTime.now().toUtc();
      return http.Response(jsonEncode({'updated_at': at!.toIso8601String()}), 200);
    }
    return http.Response('{}', 200);
  });
}

/// Egy újabb, régebbi vagy korábbi változat által írt adatok kezelése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('what a newer app version wrote survives a sync from this older one', () async {
    final server = _Server()
      ..at = DateTime.utc(2026, 10, 1)
      ..data = {
        ...SyncService.emptyPackage,
        'v': 2,
        'future_section': {'x': 1},
        'lots': [
          {'id': 'L1', 'symbol': 'AAPL', 'quantity': 1, 'price': 200, 'currency': 'USD', 'note': 'from a newer app'},
        ],
        'alerts': [
          {'id': 'A1', 'symbol': 'AAPL', 'kind': 'volume', 'value': 2, 'created_at': '2026-10-01T00:00:00.000Z'},
        ],
      };
    final backend = BackendClient(baseUrl: 'https://api.test', inner: server.client, tokenLoader: () async => 'tok');
    final portfolio = PortfolioStore();
    final sync = SyncService(
      backend: backend,
      account: AccountController(backend: backend, entitlements: EntitlementService(), storedEmail: 'me@example.com'),
      preferences: AppPreferences(),
      portfolio: portfolio,
      alerts: AlertStore(),
      notes: NotesStore(),
      pushDelay: const Duration(milliseconds: 10),
    );
    await sync.start();
    await portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD');
    await sync.syncNow();
    final pushed = server.data!;
    expect(pushed['future_section'], {'x': 1});
    expect([for (final a in pushed['alerts'] as List) a['kind']], contains('volume'));
    final aapl = (pushed['lots'] as List).firstWhere((l) => l['id'] == 'L1') as Map;
    expect(aapl['note'], 'from a newer app');
    expect({for (final l in pushed['lots'] as List) l['symbol']}, {'AAPL', 'MSFT'});
  });

  test('cash, lots and goals in Bulgarian lev keep counting in euros', () {
    final (code, factor) = FxService.major('BGN');
    expect(code, 'EUR');
    expect(1955.83 * factor, closeTo(1000, 1e-6));
    expect(FxService.isSupported('BGN'), isTrue);
    final goal = AppPreferences.parseGoal('100000|BGN')!;
    expect(goal.currency, 'EUR');
    expect(goal.amount, closeTo(51129.19, 0.01));
    final synced = AppPreferences.parseGoals({
      'portfolio': {'amount': 1955.83, 'currency': 'BGN', 'at': '2026-01-01T00:00:00.000Z'},
    });
    expect(synced['portfolio']!.goal!.currency, 'EUR');
    expect(synced['portfolio']!.goal!.amount, closeTo(1000, 1e-6));
  });

  test('lots priced in pence but labelled GBP by an old version are relabelled before a new pence buy', () async {
    final store = PortfolioStore(
      lots: const [
        PortfolioLot(id: 'V1', symbol: 'VOD.L', quantity: 100, price: 72.5, currency: 'GBP'),
        PortfolioLot(id: 'B1', symbol: 'BP.L', quantity: 10, price: 4.6, currency: 'GBP'),
      ],
    );
    await store.fixLegacyPence('VOD.L', pencePrice: 75);
    await store.fixLegacyPence('BP.L', pencePrice: 460);
    expect(store.currencyOf('VOD.L'), 'GBX');
    expect(store.lots.firstWhere((l) => l.id == 'V1').price, 72.5);
    expect(store.currencyOf('BP.L'), 'GBP', reason: 'pounds stay pounds');
  });

  test('restoring a backup brings back missing portfolio targets', () async {
    final s = services();
    await s.preferences.setTargets({'AAPL': 40, 'MSFT': 30});
    final file = jsonEncode(Backup.data(s));
    await s.preferences.setTargets({'AAPL': 45});
    await Backup.restore(s, Backup.parse(file)!);
    expect(s.preferences.targets, {'AAPL': 45, 'MSFT': 30});
    await s.preferences.setTargets({});
    await Backup.restore(s, Backup.parse(file)!);
    expect(s.preferences.targets, {'AAPL': 40, 'MSFT': 30});
  });

  test('restoring an old backup does not switch off an alert re-armed since', () async {
    final s = services();
    const alert = {'id': 'A1', 'symbol': 'AAPL', 'kind': 'above', 'value': 300, 'created_at': '2024-01-01T00:00:00Z'};
    await s.alerts.replaceAll([PriceAlert.fromJson(alert)!]);
    final file = jsonEncode({
      ...Backup.data(s),
      'alerts': [
        {...alert, 'triggered_at': '2024-02-01T00:00:00Z', 'triggered_price': 301},
      ],
    });
    await Backup.restore(s, Backup.parse(file)!);
    expect(s.alerts.alerts.single.isActive, isTrue);
  });
}
