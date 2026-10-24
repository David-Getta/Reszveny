import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/models/analysis_extras.dart';
import 'package:reszveny/core/util/ids.dart';
import 'package:reszveny/features/account/account_controller.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/events/events_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/notes/notes_store.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/sync/sync_service.dart';

/// Egy szerver, amelynek a feltöltését a teszt tartja vissza.
class _Server {
  Map<String, dynamic>? data;
  DateTime? updatedAt;
  int gets = 0;
  Completer<void>? holdPut;

  http.Client get client => MockClient((req) async {
    if (req.url.path == '/v1/sync' && req.method == 'GET') {
      gets++;
      return http.Response(jsonEncode({'data': data, 'updated_at': updatedAt?.toIso8601String()}), 200);
    }
    if (req.url.path == '/v1/sync' && req.method == 'PUT') {
      if (holdPut case final h?) await h.future;
      data = ((jsonDecode(req.body) as Map)['data'] as Map).cast<String, dynamic>();
      updatedAt = DateTime.now().toUtc();
      return http.Response(jsonEncode({'updated_at': updatedAt!.toIso8601String()}), 200);
    }
    return http.Response('{}', 200);
  });
}

class _SlowEvents extends DemoMarketDataProvider {
  _SlowEvents() : super(latency: Duration.zero);

  Completer<void>? gate;

  @override
  Future<UpcomingEarnings?> nextEarnings(String symbol) async {
    if (gate case final g?) await g.future;
    final t = DateTime.now();
    return UpcomingEarnings(date: DateTime(t.year, t.month, t.day + 5), hour: 'amc');
  }
}

/// Egy versenyhelyzet-átnézés javításainak ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  SyncService sync(_Server server, {required AppPreferences prefs, required PortfolioStore portfolio}) {
    final backend = BackendClient(baseUrl: 'https://api.test', inner: server.client, tokenLoader: () async => 'tok');
    return SyncService(
      backend: backend,
      account: AccountController(backend: backend, entitlements: EntitlementService(), storedEmail: 'me@example.com'),
      preferences: prefs,
      portfolio: portfolio,
      alerts: AlertStore(),
      notes: NotesStore(),
      pushDelay: const Duration(milliseconds: 50),
    );
  }

  test('no sync replaces the portfolio while an import is still adding to it', () async {
    final server = _Server();
    final portfolio = PortfolioStore();
    final s = sync(server, prefs: AppPreferences(), portfolio: portfolio);
    final gate = Completer<void>();
    final import = portfolio.batch(() async {
      await portfolio.add(symbol: 'AAPL', quantity: 1, price: 100, currency: 'USD');
      await gate.future;
      await portfolio.add(symbol: 'NVDA', quantity: 1, price: 100, currency: 'USD');
    });
    await Future<void>.delayed(Duration.zero);
    await s.syncNow();
    expect(server.gets, 0, reason: 'import közben nem tölt le és nem cserél');
    gate.complete();
    await import;
    expect(portfolio.lots.map((l) => l.symbol), ['AAPL', 'NVDA']);
    s.dispose();
  });

  test('a change made while an upload is running goes up shortly after, not 15 minutes later', () async {
    final server = _Server();
    final prefs = AppPreferences(favorites: const ['MSFT']);
    final s = sync(server, prefs: prefs, portfolio: PortfolioStore());
    // Az első (indulási) szinkron lefut.
    await s.start();
    expect(server.data?['favorites'], ['MSFT']);
    // Egy változás feltöltése elindul, és a szerver visszatartja…
    final hold = server.holdPut = Completer<void>();
    await prefs.toggleFavorite('AAPL');
    await Future<void>.delayed(const Duration(milliseconds: 150));
    // …közben még egy változás.
    await prefs.toggleFavorite('NVDA');
    server.holdPut = null;
    hold.complete();
    await Future<void>.delayed(const Duration(milliseconds: 400));
    expect(server.data?['favorites'], containsAll(['AAPL', 'NVDA']));
    s.dispose();
  });

  test('a second refresh of the calendar waits for the running one', () async {
    final market = _SlowEvents()..gate = Completer<void>();
    final events = EventsService(
      marketData: market,
      preferences: AppPreferences(favorites: const ['AAPL']),
      portfolio: PortfolioStore(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
    );
    final first = events.refresh();
    var secondDone = false;
    final second = events.refresh().then((_) => secondDone = true);
    await Future<void>.delayed(const Duration(milliseconds: 10));
    expect(secondDone, isFalse, reason: 'nem tér vissza a régi (üres) listával');
    market.gate!.complete();
    await Future.wait([first, second]);
    expect(events.events.where((e) => e.symbol == 'AAPL'), isNotEmpty);
  });

  test('ids made in one loop never repeat', () {
    final ids = {for (var i = 0; i < 2000; i++) uniqueMicros()};
    expect(ids, hasLength(2000));
  });
}
