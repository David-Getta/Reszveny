import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/billing_controller.dart';
import 'package:reszveny/features/billing/demo_billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/features/sync/sync_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget_test.dart' show FakeNotifier;

Map<String, dynamic> _ent({String tier = 'trial', int extra = 0}) => {
  'tier': tier,
  'period_start': '2026-10-01T00:00:00.000Z',
  'period_end': '2026-10-31T00:00:00.000Z',
  'used': 0,
  'extra': extra,
};

http.Response _json(Object body, [int status = 200]) =>
    http.Response(jsonEncode(body), status, headers: {'content-type': 'application/json'});

/// Több fiókot ismerő szerver-utánzat: tokenenként egy felhasználó, saját
/// szinkroncsomaggal; a letöltés, a feltöltés és az ajánlókód beváltása visszatartható.
class _Server {
  final users = <String, ({String? email, Map<String, dynamic>? data, DateTime? at})>{};
  final tokens = <String, String>{};
  var _anon = 0;
  Completer<void>? holdGet, holdPut, holdRedeem;
  final getStarted = StreamController<void>.broadcast(), putStarted = StreamController<void>.broadcast();
  int puts = 0;
  bool failPut = false;

  void account(String email, {Map<String, dynamic>? data}) {
    users[email] = (email: email, data: data, at: data == null ? null : DateTime.utc(2026, 10, 1));
    tokens['tok-$email'] = email;
  }

  Map<String, dynamic>? dataOf(String email) => users[email]?.data;

  late final client = MockClient((req) async {
    final token = (req.headers['authorization'] ?? '').replaceFirst('Bearer ', '');
    final uid = tokens[token];
    switch ((req.method, req.url.path)) {
      case ('POST', '/v1/auth/anonymous'):
        final t = 'anon${++_anon}';
        users[t] = (email: null, data: null, at: null);
        tokens[t] = t;
        return _json({'user_id': t, 'token': t, 'entitlements': _ent()});
      case ('POST', '/v1/auth/email/verify'):
        final email = (jsonDecode(req.body) as Map)['email'] as String;
        users.putIfAbsent(email, () => (email: email, data: null, at: null));
        tokens['tok-$email'] = email;
        return _json({'token': 'tok-$email', 'email': email, 'entitlements': _ent(tier: 'pro')});
      case ('POST', '/v1/auth/logout'):
        tokens.remove(token);
        return _json({'ok': true});
    }
    if (uid == null) return _json({'error': 'unauthorized'}, 401);
    final u = users[uid]!;
    switch ((req.method, req.url.path)) {
      case ('GET', '/v1/me'):
        return _json({'email': u.email, 'entitlements': _ent(tier: u.email == null ? 'trial' : 'pro')});
      case ('GET', '/v1/sync'):
        getStarted.add(null);
        if (holdGet case final h?) await h.future;
        return _json({'data': u.data, 'updated_at': u.at?.toIso8601String()});
      case ('PUT', '/v1/sync'):
        if (u.email == null) return _json({'error': 'sign_in_required'}, 403);
        puts++;
        putStarted.add(null);
        if (holdPut case final h?) await h.future;
        if (failPut) return _json({'error': 'down'}, 503);
        final at = DateTime.now().toUtc();
        users[uid] = (email: u.email, data: ((jsonDecode(req.body) as Map)['data'] as Map).cast(), at: at);
        return _json({'updated_at': at.toIso8601String()});
      case ('POST', '/v1/referral/redeem'):
        if (holdRedeem case final h?) await h.future;
        return _json({'entitlements': _ent(tier: 'max')});
    }
    return http.Response('nf', 404);
  });
}

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

AppServices _services(_Server server, {String? email}) {
  const config = AppConfig(backendUrl: 'https://x.test');
  return AppServices(
    alertNotifier: FakeNotifier(),
    config: config,
    capture: CaptureService(),
    recognizer: _NoRecognizer(),
    marketData: DemoMarketDataProvider(latency: Duration.zero),
    locale: LocaleController(),
    preferences: AppPreferences(),
    desktop: DesktopIntegration(),
    reports: ReportStore(analyst: ClaudeStockAnalyst(config: config)),
    entitlements: EntitlementService(),
    backend: BackendClient(
      baseUrl: config.backend,
      inner: server.client,
      tokenLoader: () async => email == null ? null : 'tok-$email',
    ),
    accountEmail: email,
    billing: DemoBillingService(latency: Duration.zero),
    portfolio: PortfolioStore(),
    alerts: AlertStore(),
  );
}

Set<String> _symbols(Map<String, dynamic>? data) => {for (final l in (data?['lots'] as List? ?? [])) '${l['symbol']}'};

/// A fiókváltás, a kijelentkezés és a fióktörlés kódátnézésének javításai.
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('a push answered after sign-out does not pour the old account into the next one', () async {
    final server = _Server()..account('a@x.hu');
    final s = _services(server, email: 'a@x.hu');
    await s.sync!.start();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    server.holdPut = Completer();
    final run = s.sync!.syncNow();
    await server.putStarted.stream.first;
    // Kilépés a feltöltés közben (a felület nélkül, pl. lejárt munkamenet), majd B lép be.
    await s.account!.signOut();
    server.holdPut!.complete();
    server.holdPut = null;
    await run;
    expect(_symbols(server.dataOf('a@x.hu')), {'AAPL'});
    await s.account!.verify('b@x.hu', '123456');
    await s.sync!.flush();
    expect(_symbols(server.dataOf('b@x.hu')), isEmpty, reason: 'B fiókjába nem kerülhet A portfóliója');
    expect(s.portfolio.lots, isEmpty);
  });

  test('signing out during the download leaves the device and its unsent edit alone', () async {
    final server = _Server()..account('a@x.hu');
    final s = _services(server, email: 'a@x.hu');
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await s.sync!.start();
    await s.portfolio.add(symbol: 'MSFT', quantity: 5, price: 400, currency: 'USD');
    server.holdGet = Completer();
    final puts = server.puts;
    final run = s.sync!.syncNow();
    await server.getStarted.stream.first;
    await s.account!.signOut();
    server.holdGet!.complete();
    await run;
    expect({for (final l in s.portfolio.lots) l.symbol}, {'AAPL', 'MSFT'});
    expect(server.puts, puts);
  });

  test('sign-out uploads what is left and clears the device; edits made signed out go to the next account', () async {
    final server = _Server()
      ..account('a@x.hu')
      ..account(
        'b@x.hu',
        data: {
          ...SyncService.emptyPackage,
          'lots': [
            {'id': 'TSLA_1', 'symbol': 'TSLA', 'quantity': 1, 'price': 250, 'currency': 'USD'},
          ],
        },
      );
    final s = _services(server, email: 'a@x.hu');
    await s.sync!.start();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await s.preferences.addRecent('AAPL');
    expect(await s.signOut(), isTrue);
    expect(_symbols(server.dataOf('a@x.hu')), {'AAPL'}, reason: 'a még fel nem töltött vétel is felment');
    expect(s.account!.isSignedIn, isFalse);
    expect(s.portfolio.lots, isEmpty);
    expect(s.preferences.recent, isEmpty);
    // Kijelentkezve felvett tétel: a következő fiókba kerül, A-é nem.
    await s.portfolio.add(symbol: 'NVDA', quantity: 2, price: 900, currency: 'USD');
    await s.account!.verify('b@x.hu', '123456');
    await s.sync!.flush();
    expect({for (final l in s.portfolio.lots) l.symbol}, {'NVDA', 'TSLA'});
    expect(_symbols(server.dataOf('b@x.hu')), {'NVDA', 'TSLA'});
  });

  test('when the last changes cannot be uploaded, sign-out waits for the user to decide', () async {
    final server = _Server()..account('a@x.hu');
    final s = _services(server, email: 'a@x.hu');
    await s.sync!.start();
    server.failPut = true;
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    expect(await s.signOut(), isFalse);
    expect(s.account!.isSignedIn, isTrue);
    expect(s.portfolio.lots, hasLength(1));
    expect(await s.signOut(force: true), isTrue);
    expect(s.account!.isSignedIn, isFalse);
    expect(s.portfolio.lots, isEmpty);
  });

  test('a referral answer that arrives after sign-out is not applied to the device', () async {
    final server = _Server()..account('a@x.hu');
    final s = _services(server, email: 'a@x.hu');
    server.holdRedeem = Completer();
    final redeem = s.account!.redeemReferral('WS-ABCDEF');
    await pumpEventQueue();
    await s.account!.signOut();
    server.holdRedeem!.complete();
    await redeem;
    expect(s.entitlements.state.tier, isNot(PlanTier.max));
  });

  test('an account deleted on another device signs this one out instead of showing the old plan', () async {
    final server = _Server()..account('a@x.hu');
    final s = _services(server, email: 'a@x.hu');
    await s.syncEntitlements();
    expect(s.account!.isSignedIn, isTrue);
    server.tokens.remove('tok-a@x.hu');
    await s.syncEntitlements();
    await pumpEventQueue();
    expect(s.account!.isSignedIn, isFalse);
    expect(s.entitlements.state.tier, PlanTier.trial);
  });

  group('purchases waiting for verification', () {
    Future<void> pending(String owner) async => (await SharedPreferences.getInstance()).setString(
      'billing_pending_verifications',
      jsonEncode([
        {'product_id': 'whatstock.pack.20', 'platform': 'google', 'data': 'receipt-1', 'owner': owner},
      ]),
    );

    test('a purchase made in another account waits for that account', () async {
      await pending('a@x.hu');
      var calls = 0;
      var owner = 'b@x.hu';
      final c = BillingController(
        billing: DemoBillingService(latency: Duration.zero),
        entitlements: EntitlementService(),
        verifier: (_) async {
          calls++;
          return const EntitlementState(extraCredits: 20);
        },
        owner: () => owner,
      );
      await c.retryPending();
      expect(calls, 0);
      owner = 'a@x.hu';
      await c.retryPending();
      expect(calls, 1);
    });

    test('one bought signed out goes to whoever is signed in now', () async {
      await pending('');
      var calls = 0;
      final c = BillingController(
        billing: DemoBillingService(latency: Duration.zero),
        entitlements: EntitlementService(),
        verifier: (_) async {
          calls++;
          return const EntitlementState(extraCredits: 20);
        },
        owner: () => 'b@x.hu',
      );
      await c.retryPending();
      expect(calls, 1);
    });

    test('a verification answered after an account change is not applied', () async {
      await pending('');
      var generation = 0;
      final gate = Completer<void>();
      final ent = EntitlementService();
      final c = BillingController(
        billing: DemoBillingService(latency: Duration.zero),
        entitlements: ent,
        verifier: (_) async {
          await gate.future;
          return const EntitlementState(tier: PlanTier.pro, extraCredits: 20);
        },
        owner: () => '',
        generation: () => generation,
      );
      final retry = c.retryPending();
      await pumpEventQueue();
      generation++;
      gate.complete();
      await retry;
      expect(ent.state.extraCredits, 0);
    });
  });

  group('first sign-in merge', () {
    Map<String, dynamic> lot(String id, {double quantity = 10}) => {
      'id': id,
      'symbol': 'AAPL',
      'quantity': quantity,
      'price': 200,
      'currency': 'USD',
      'date': '2026-03-02',
    };

    test('the same buy typed on both sides counts once; two different ones both stay', () {
      final merged = SyncService.merge(
        {
          ...SyncService.emptyPackage,
          'lots': [lot('local_1'), lot('local_2', quantity: 5)],
        },
        {
          ...SyncService.emptyPackage,
          'lots': [lot('remote_1')],
        },
        firstSignIn: true,
      );
      expect([for (final l in merged['lots'] as List) l['id']], unorderedEquals(['local_2', 'remote_1']));
    });

    test('notes written on both sides are both kept; the account keeps its cash, targets and goals', () {
      final local = {
        ...SyncService.emptyPackage,
        'notes': {
          'AAPL': {'text': 'Bought for the services growth', 'updated_at': '2026-10-20T10:00:00.000Z'},
        },
        'cash': {'USD': 1000.0},
        'cash_at': {'USD': '2026-10-20T10:00:00.000Z'},
        'targets': {'AAPL': 50.0},
        'targets_at': '2026-10-20T10:00:00.000Z',
      };
      final remote = {
        ...SyncService.emptyPackage,
        'notes': {
          'AAPL': {'text': 'Sell above 300', 'updated_at': '2026-10-01T10:00:00.000Z'},
        },
        'cash': {'USD': 5000.0},
        'cash_at': {'USD': '2026-10-01T10:00:00.000Z'},
        'targets': {'MSFT': 30.0},
        'targets_at': '2026-10-01T10:00:00.000Z',
      };
      final first = SyncService.merge(local, remote, firstSignIn: true);
      expect((first['notes'] as Map)['AAPL']['text'], 'Sell above 300\n\nBought for the services growth');
      expect(first['cash'], {'USD': 5000.0});
      expect(first['targets'], {'MSFT': 30.0});
      // Két eszköz rendes összefésülésénél továbbra is az újabb nyer.
      final later = SyncService.merge(local, remote);
      expect((later['notes'] as Map)['AAPL']['text'], 'Bought for the services growth');
      expect(later['cash'], {'USD': 1000.0});
    });
  });
}
