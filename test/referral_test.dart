import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

/// Utánzott szerver: a `WS-FRIEND` kód beváltható, a sajátot és az ismeretlent elutasítja.
class _Server {
  var redeemed = false;
  var extra = 0;

  Map<String, Object> get _ent => {
    'tier': 'trial',
    'trial_started_at': DateTime.now().toUtc().toIso8601String(),
    'used': 0,
    'extra': extra,
  };

  http.Client get client => MockClient((req) async {
    http.Response json(Object body, [int status = 200]) =>
        http.Response(jsonEncode(body), status, headers: {'content-type': 'application/json; charset=utf-8'});
    switch (req.url.path) {
      case '/v1/referral':
        return json({'code': 'WS-MINE42', 'invited': 3, 'rewarded': 1, 'bonus': 5, 'redeemed': redeemed});
      case '/v1/referral/redeem':
        final code = (jsonDecode(req.body) as Map)['code'];
        if (code == 'WS-MINE42') return json({'error': 'own_code'}, 400);
        if (code != 'WS-FRIEND') return json({'error': 'unknown_code'}, 404);
        redeemed = true;
        extra = 5;
        return json({'entitlements': _ent, 'bonus': 5});
      default:
        return json({'token': 'tok', 'user_id': 'u', 'entitlements': _ent});
    }
  });
}

AppServices _services(_Server server) {
  final ent = EntitlementService();
  return AppServices(
    alertNotifier: FakeNotifier(),
    config: const AppConfig(backendUrl: 'https://api.test'),
    backend: BackendClient(baseUrl: 'https://api.test', inner: server.client, tokenLoader: () async => 'tok'),
    capture: CaptureService(),
    recognizer: _NoRecognizer(),
    marketData: DemoMarketDataProvider(latency: Duration.zero),
    locale: LocaleController(),
    preferences: AppPreferences(),
    desktop: DesktopIntegration(),
    reports: ReportStore(
      analyst: ClaudeStockAnalyst(config: const AppConfig()),
      entitlements: ent,
    ),
    entitlements: ent,
  );
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('settings: own referral code with share, and a friend’s code adds extra analyses', (tester) async {
    tester.view.physicalSize = const Size(1200, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final shared = <String>[];
    final original = shareText;
    shareText = (text, {subject, origin}) async => shared.add(text);
    addTearDown(() => shareText = original);
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async => null,
    );

    final server = _Server();
    final s = _services(server);
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();

    expect(find.text('INVITE FRIENDS'), findsOneWidget);
    expect(find.byKey(const ValueKey('referral-card')), findsOneWidget);
    expect(find.text('WS-MINE42'), findsOneWidget);
    expect(find.text('Invited: 3 · Rewarded: 1'), findsOneWidget);
    expect(find.textContaining('Your friend gets 5 extra analyses right away'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('referral-share')));
    await tester.pumpAndSettle();
    expect(shared.single, contains('WS-MINE42'));
    expect(shared.single, contains('5 extra analyses'));

    await tester.tap(find.byKey(const ValueKey('referral-have-code')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('referral-input')), 'WS-MINE42');
    await tester.tap(find.byKey(const ValueKey('referral-redeem')));
    await tester.pumpAndSettle();
    expect(find.text("You can't redeem your own code."), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('referral-input')), 'nope');
    await tester.tap(find.byKey(const ValueKey('referral-redeem')));
    await tester.pumpAndSettle();
    expect(find.text("This code doesn't exist. Check it and try again."), findsOneWidget);

    await tester.enterText(find.byKey(const ValueKey('referral-input')), 'WS-FRIEND');
    await tester.tap(find.byKey(const ValueKey('referral-redeem')));
    await tester.pumpAndSettle();
    expect(find.text('5 extra analyses added. Welcome!'), findsOneWidget);
    expect(s.entitlements.extraCredits, 5);
    // Beváltás után nem kínálja újra.
    expect(find.byKey(const ValueKey('referral-have-code')), findsNothing);
  });

  testWidgets('without a server there is no referral card (demo mode)', (tester) async {
    tester.view.physicalSize = const Size(1200, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: const AppConfig(),
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(),
      desktop: DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
      entitlements: EntitlementService(),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('referral-card')), findsNothing);
  });
}
