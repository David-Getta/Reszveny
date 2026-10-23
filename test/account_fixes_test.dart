import 'dart:async';
import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/telemetry/telemetry.dart';
import 'package:reszveny/features/account/account_controller.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/notes/notes_store.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/sync/sync_service.dart';

/// Egy kódátnézés fiók- és beállításhibáinak ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  Map<String, dynamic> me(String? email, String tier) => {
    'email': email,
    'entitlements': {'tier': tier, 'used': 0, 'extra': 0},
  };

  test('a /v1/me answer that arrives after signing out does not sign the device back in', () async {
    final gate = Completer<void>();
    var meCalls = 0;
    final client = MockClient((req) async {
      if (req.url.path == '/v1/me') {
        meCalls++;
        // Az első (régi fiókhoz tartozó) válasz késik.
        if (meCalls == 1) {
          await gate.future;
          return http.Response(jsonEncode(me('a@example.com', 'pro')), 200);
        }
        return http.Response(jsonEncode(me(null, 'trial')), 200);
      }
      if (req.url.path == '/v1/auth/anonymous') return http.Response(jsonEncode({'token': 'anon2'}), 200);
      return http.Response('{}', 200);
    });
    final backend = BackendClient(baseUrl: 'https://api.test', inner: client, tokenLoader: () async => 'tokA');
    final account = AccountController(
      backend: backend,
      entitlements: EntitlementService(),
      storedEmail: 'a@example.com',
    );
    final pending = account.refresh();
    await account.signOut();
    gate.complete();
    await pending;
    expect(account.isSignedIn, isFalse);
    expect(account.entitlements.state.tier, PlanTier.trial);
  });

  test('signing out offline does not leave the account\'s paid plan on the device', () async {
    final backend = BackendClient(
      baseUrl: 'https://api.test',
      inner: MockClient((req) async => throw http.ClientException('offline')),
      tokenLoader: () async => 'tokA',
    );
    final entitlements = EntitlementService(initial: const EntitlementState(tier: PlanTier.pro));
    final account = AccountController(backend: backend, entitlements: entitlements, storedEmail: 'a@example.com');
    await account.signOut();
    expect(account.isSignedIn, isFalse);
    expect(entitlements.state.tier, isNot(PlanTier.pro));
  });

  test('after deleting the account but keeping the data, signing up with another e-mail keeps it', () async {
    Map<String, dynamic>? serverData;
    DateTime? updatedAt;
    var writes = 0;
    final client = MockClient((req) async {
      if (req.url.path == '/v1/sync' && req.method == 'GET') {
        return http.Response(jsonEncode({'data': serverData, 'updated_at': updatedAt?.toIso8601String()}), 200);
      }
      if (req.url.path == '/v1/sync' && req.method == 'PUT') {
        serverData = ((jsonDecode(req.body) as Map)['data'] as Map).cast<String, dynamic>();
        updatedAt = DateTime.utc(2026, 10, 20, 9, 0, ++writes);
        return http.Response(jsonEncode({'updated_at': updatedAt!.toIso8601String()}), 200);
      }
      return http.Response('{}', 200);
    });
    final backend = BackendClient(baseUrl: 'https://api.test', inner: client, tokenLoader: () async => 'tok');
    final account = AccountController(
      backend: backend,
      entitlements: EntitlementService(),
      storedEmail: 'a@example.com',
    );
    final portfolio = PortfolioStore();
    await portfolio.add(symbol: 'AAPL', quantity: 10, price: 180, currency: 'USD');
    final sync = SyncService(
      backend: backend,
      account: account,
      preferences: AppPreferences(),
      portfolio: portfolio,
      alerts: AlertStore(),
      notes: NotesStore(),
      pushDelay: const Duration(hours: 1),
    );
    await sync.start();
    expect(serverData!['lots'], hasLength(1));
    // A fiók törlődik (a szerveren nincs adat), a készüléken megmarad.
    serverData = null;
    updatedAt = null;
    await sync.forgetAccount();
    final other = AccountController(backend: backend, entitlements: EntitlementService(), storedEmail: 'b@example.com');
    sync.dispose();
    final next = SyncService(
      backend: backend,
      account: other,
      preferences: AppPreferences(),
      portfolio: portfolio,
      alerts: AlertStore(),
      notes: NotesStore(),
      pushDelay: const Duration(hours: 1),
    );
    await next.start();
    expect(portfolio.lots, hasLength(1));
    expect(serverData!['lots'], hasLength(1));
    next.dispose();
  });

  test('the app language for notifications follows the device\'s language list like the screen does', () {
    expect(LocaleController.resolveList(const [Locale('et', 'EE'), Locale('ru', 'EE')]).languageCode, 'ru');
    expect(LocaleController.resolveList(const [Locale('en', 'GB'), Locale('hu')]).languageCode, 'en');
    expect(LocaleController(initial: const Locale('hu')).effectiveFor(const [Locale('ru')]).languageCode, 'hu');
  });

  test('deleting personal data also forgets typed search phrases and notification marks', () async {
    final prefs = AppPreferences();
    await prefs.rememberResolved('the company that makes ozempic', symbol: 'NVO', name: 'Novo Nordisk');
    prefs.portfolioGoalNotified = '10000000.0|HUF';
    await prefs.clearPersonalData();
    expect(prefs.resolvedStartingWith('the company'), isEmpty);
    expect(prefs.portfolioGoalNotified, isNull);
    final reloaded = await AppPreferences.load();
    expect(reloaded.resolvedStartingWith('the company'), isEmpty);
  });

  test('a sixth distinct error that did not fit into a batch is reported in the next one', () async {
    final batches = <Map<String, dynamic>>[];
    final prefs = AppPreferences()..telemetryConsent = true;
    final t = Telemetry(preferences: prefs, platform: 'test', sink: (b) async => batches.add(b));
    for (var i = 0; i < Telemetry.maxErrors; i++) {
      t.reportError(StateError('e$i'), null);
    }
    t.reportError(StateError('sixth'), null);
    await t.flush();
    t.reportError(StateError('sixth'), null);
    await t.flush();
    expect(batches, hasLength(2));
    expect(jsonEncode(batches.last), contains('sixth'));
  });
}
