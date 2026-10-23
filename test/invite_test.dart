import 'dart:convert';

import 'package:flutter/material.dart';
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
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/locale_controller.dart';
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

/// Utánzott szerver zárt előzetesben: csak a `GABOR-7K2Q` kóddal enged be.
class _FakeServer {
  final seenInvites = <String?>[];
  String validCode = 'GABOR-7K2Q';
  String? forcedError;

  http.Client get client => MockClient((req) async {
    final code = req.headers[BackendClient.inviteHeader];
    seenInvites.add(code);
    if (forcedError != null) return _json({'error': forcedError}, 403);
    if (code == null) return _json({'error': 'invite_required'}, 403);
    if (code != validCode) return _json({'error': 'invite_invalid'}, 403);
    final ent = {'tier': 'trial', 'trial_started_at': DateTime.now().toUtc().toIso8601String(), 'used': 0, 'extra': 0};
    const invite = {'label': 'Schulz Gábor', 'expires': '2026-11-30'};
    return _json({'token': 'tok', 'user_id': 'u1', 'entitlements': ent, 'invite': invite}, 200);
  });

  static http.Response _json(Object body, int status) =>
      http.Response(jsonEncode(body), status, headers: {'content-type': 'application/json; charset=utf-8'});
}

AppServices _services(BackendClient backend) {
  final ent = EntitlementService();
  return AppServices(
    alertNotifier: FakeNotifier(),
    config: const AppConfig(backendUrl: 'https://api.test'),
    backend: backend,
    capture: CaptureService(),
    recognizer: _NoRecognizer(),
    marketData: DemoMarketDataProvider(latency: Duration.zero),
    locale: LocaleController(),
    preferences: AppPreferences(),
    desktop: DesktopIntegration(),
    reports: ReportStore(analyst: _NoAnalyst(), entitlements: ent),
    entitlements: ent,
  );
}

class _NoAnalyst extends ClaudeStockAnalyst {
  _NoAnalyst() : super(config: const AppConfig());
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the invite code goes with every request once entered, and the server tells whose preview it is', () async {
    final server = _FakeServer();
    final backend = BackendClient(baseUrl: 'https://api.test', inner: server.client);
    await expectLater(backend.me(), throwsA(isA<BackendException>()));
    expect(backend.inviteProblem.value, InviteProblem.required);

    await backend.submitInvite(' gabor-7k2q ');
    expect(backend.inviteProblem.value, isNull);
    expect(backend.invite.value, const InviteInfo(label: 'Schulz Gábor', expires: '2026-11-30'));
    expect(server.seenInvites.last, 'GABOR-7K2Q');
    // A kód megmarad a készüléken: egy új kliens is küldi.
    final again = BackendClient(baseUrl: 'https://api.test', inner: server.client);
    await again.me();
    expect(server.seenInvites.last, 'GABOR-7K2Q');
  });

  test('a mistyped invite code is not kept, so later requests do not send it', () async {
    final server = _FakeServer();
    final backend = BackendClient(baseUrl: 'https://api.test', inner: server.client);
    await expectLater(backend.submitInvite('typo'), throwsA(isA<BackendException>()));
    expect(backend.inviteProblem.value, InviteProblem.invalid);
    expect((await SharedPreferences.getInstance()).getString('backend_invite'), isNull);
    await expectLater(backend.me(), throwsA(isA<BackendException>()));
    expect(server.seenInvites.last, isNull);
  });

  test('an expired or overused invite is reported so the app can explain it', () async {
    final server = _FakeServer()..forcedError = 'invite_device_limit';
    final backend = BackendClient(baseUrl: 'https://api.test', inner: server.client);
    await expectLater(backend.me(), throwsA(isA<BackendException>()));
    expect(backend.inviteProblem.value, InviteProblem.deviceLimit);
    expect(BackendClient.inviteProblemFor('invite_expired'), InviteProblem.expired);
    expect(ClaudeStockAnalyst.quotaErrorFor('{"error":"invite_daily_limit"}'), AppErrorCode.previewDailyLimit);
  });

  testWidgets('closed preview: the invite screen opens the app, then a confidential-preview watermark shows', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final server = _FakeServer();
    final s = _services(BackendClient(baseUrl: 'https://api.test', inner: server.client));
    await tester.pumpWidget(WhatStockApp(services: s));
    await s.syncEntitlements();
    await tester.pumpAndSettle();

    expect(find.text('Closed preview'), findsOneWidget);
    expect(find.byKey(const ValueKey('phone-nav')), findsNothing);

    await tester.enterText(find.byKey(const ValueKey('invite-code')), 'WRONG-CODE');
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();
    expect(find.text('This invite code is not valid.'), findsOneWidget);

    await tester.enterText(find.byKey(const ValueKey('invite-code')), 'gabor-7k2q');
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();
    expect(find.text('Closed preview'), findsNothing);
    expect(find.text('Which stock shall we look at?'), findsOneWidget);
    expect(find.text('Confidential preview'), findsOneWidget);
  });
}
