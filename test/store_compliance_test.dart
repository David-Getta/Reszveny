import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/features/account/referral_card.dart';
import 'package:reszveny/features/analysis/ai_consent.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_ai.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/home/quick_bar.dart';
import 'package:reszveny/features/recognition/description_resolver.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_platform_interface.dart';

import 'app_widget_test.dart' show FakeNotifier, services;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

/// Olvashatatlan beállítás-tároló (pl. a böngésző tiltja a helyi tárat).
class _BrokenStore extends SharedPreferencesStorePlatform {
  @override
  Future<Map<String, Object>> getAll() => throw PlatformException(code: 'blocked');

  @override
  dynamic noSuchMethod(Invocation invocation) => throw PlatformException(code: 'blocked');
}

/// Az áruházi szabályok (App Store, Google Play, Microsoft Store) miatti javítások.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the MSIX identity used for launch-at-login is the one in pubspec.yaml', () {
    final pubspec = File('pubspec.yaml').readAsStringSync();
    final identity = RegExp(r'^\s+identity_name:\s*(\S+)', multiLine: true).firstMatch(pubspec)?.group(1);
    expect(identity, msixIdentity);
  });

  test('the privacy manifest is part of the iOS and macOS app bundles (ITMS-91053)', () {
    for (final p in ['ios/Runner.xcodeproj/project.pbxproj', 'macos/Runner.xcodeproj/project.pbxproj']) {
      expect(File(p).readAsStringSync(), contains('PrivacyInfo.xcprivacy in Resources'), reason: p);
    }
  });

  test('a friend\'s code cannot be redeemed for analyses on iOS (App Store 3.1.1)', () {
    expect(redeemAllowed(TargetPlatform.iOS), isFalse);
    expect(redeemAllowed(TargetPlatform.android), isTrue);
    expect(redeemAllowed(TargetPlatform.macOS), isTrue);
  });

  testWidgets('a share without a known button position opens from the middle of the screen (iPad)', (tester) async {
    tester.view.physicalSize = const Size(1600, 1200);
    tester.view.devicePixelRatio = 2;
    addTearDown(tester.view.reset);
    expect(originOrCenter(null), const Rect.fromLTWH(400, 300, 1, 1));
    expect(originOrCenter(Rect.zero), const Rect.fromLTWH(400, 300, 1, 1));
    const button = Rect.fromLTWH(10, 20, 40, 40);
    expect(originOrCenter(button), button);
  });

  testWidgets('AI features ask for consent once; "Not now" sends nothing and asks again', (tester) async {
    final prefs = AppPreferences(aiConsent: null);
    await tester.pumpWidget(WhatStockApp(services: services(preferences: prefs)));
    await tester.pumpAndSettle();
    final context = tester.element(find.byType(Scaffold).first);

    var result = ensureAiConsent(context);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('ai-consent-dialog')), findsOneWidget);
    expect(find.textContaining('Anthropic'), findsWidgets);
    await tester.tap(find.text('Not now'));
    await tester.pumpAndSettle();
    expect(await result, isFalse);
    expect(prefs.aiConsent, isNull);

    result = ensureAiConsent(context);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('ai-consent-allow')));
    await tester.pumpAndSettle();
    expect(await result, isTrue);
    expect(prefs.aiConsent, isTrue);

    // Engedély után nem kérdez újra.
    result = ensureAiConsent(context);
    await tester.pump();
    expect(find.byKey(const ValueKey('ai-consent-dialog')), findsNothing);
    expect(await result, isTrue);
  });

  testWidgets('the quick bar sends nothing to the AI without consent and asks in the full window', (tester) async {
    var aiCalls = 0, asked = 0;
    const config = AppConfig(backendUrl: 'https://api.test');
    final ent = EntitlementService();
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: config,
      capture: CaptureService(),
      recognizer: _NoRecognizer(),
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      locale: LocaleController(),
      preferences: AppPreferences(aiConsent: null),
      desktop: DesktopIntegration(),
      descriptionResolver: DescriptionResolver(
        config: config,
        client: MockClient((_) async {
          aiCalls++;
          return http.Response('{}', 500);
        }),
      ),
      reports: ReportStore(
        analyst: ClaudeStockAnalyst(config: const AppConfig()),
        entitlements: ent,
      ),
      entitlements: ent,
    );
    await tester.pumpWidget(
      AppServicesScope(
        services: s,
        child: MaterialApp(
          theme: AppTheme.build(Brightness.light),
          localizationsDelegates: WhatStockApp.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: QuickBar(onOpenSymbol: (_) {}, onOpenWindow: () {}, onNeedAiConsent: () async => asked++),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'the biggest hungarian bank');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect((aiCalls, asked), (0, 1));
    // Az engedélykérő ablak nem a 72 pont magas sávban nyílik.
    expect(find.byKey(const ValueKey('ai-consent-dialog')), findsNothing);
  });

  test('unreadable settings do not count as consent', () async {
    // A tároló nem olvasható (pl. tiltott böngészőtár): a betöltés az alapértékekkel indul.
    final original = SharedPreferencesStorePlatform.instance;
    SharedPreferencesStorePlatform.instance = _BrokenStore();
    SharedPreferences.resetStatic();
    addTearDown(() {
      SharedPreferencesStorePlatform.instance = original;
      SharedPreferences.resetStatic();
    });
    final prefs = await AppPreferences.load();
    expect(prefs.aiConsent, isNull);
  });

  test('consent not given yet loads as "ask first"; once given it is remembered', () async {
    expect((await AppPreferences.load()).aiConsent, isNull);
    SharedPreferences.setMockInitialValues({'ai_consent': true});
    expect((await AppPreferences.load()).aiConsent, isTrue);
  });

  test('the reported analysis text has the headline, the section titles, paragraphs and points', () {
    final r = StockReport(
      symbol: 'NVDA',
      headline: 'Strong but pricey.',
      generatedAt: DateTime.utc(2026, 10, 24),
      sections: const [
        ReportSection(kind: ReportSectionKind.summary, title: 'Summary', paragraphs: ['Para one.'], bullets: ['Point']),
      ],
    );
    expect(reportPlainText(r), 'Strong but pricey.\n\nSummary\nPara one.\n• Point');
  });

  testWidgets('an AI answer can be reported from the app: reason, note and the text go to the server', (tester) async {
    final sent = <Map<String, dynamic>>[];
    final client = MockClient((req) async {
      if (req.url.path == '/v1/report') {
        sent.add((jsonDecode(req.body) as Map).cast<String, dynamic>());
        return http.Response('{"ok":true}', 200, headers: {'content-type': 'application/json'});
      }
      return http.Response(
        jsonEncode({
          'token': 'tok',
          'user_id': 'u',
          'entitlements': {'tier': 'pro', 'used': 0, 'extra': 0},
        }),
        200,
        headers: {'content-type': 'application/json'},
      );
    });
    final ent = EntitlementService();
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: const AppConfig(backendUrl: 'https://api.test'),
      backend: BackendClient(baseUrl: 'https://api.test', inner: client, tokenLoader: () async => 'tok'),
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
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    final context = tester.element(find.byType(Scaffold).first);

    showReportAiDialog(context, kind: AiReportKind.research, text: 'NVDA fell because…', symbol: 'NVDA');
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('ai-report-dialog')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('ai-report-harmful')));
    await tester.enterText(find.byKey(const ValueKey('ai-report-note')), 'Made-up numbers');
    await tester.tap(find.byKey(const ValueKey('ai-report-send')));
    await tester.pumpAndSettle();

    expect(sent.single, containsPair('kind', 'research'));
    expect(sent.single, containsPair('reason', 'harmful'));
    expect(sent.single, containsPair('note', 'Made-up numbers'));
    expect(sent.single, containsPair('text', 'NVDA fell because…'));
    expect(sent.single, containsPair('symbol', 'NVDA'));
    expect(find.byKey(const ValueKey('ai-report-thanks')), findsOneWidget);
    expect(find.text("Thanks — we'll review it."), findsOneWidget);
    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('ai-report-dialog')), findsNothing);
  });

  testWidgets('a failed report says why inside the dialog and can be sent again', (tester) async {
    var fail = true;
    final client = MockClient((req) async {
      if (req.url.path == '/v1/report') {
        return fail
            ? http.Response('{"error":"rate_limited"}', 429, headers: {'content-type': 'application/json'})
            : http.Response('{"ok":true}', 200, headers: {'content-type': 'application/json'});
      }
      return http.Response(
        jsonEncode({
          'token': 'tok',
          'user_id': 'u',
          'entitlements': {'tier': 'pro', 'used': 0, 'extra': 0},
        }),
        200,
        headers: {'content-type': 'application/json'},
      );
    });
    final ent = EntitlementService();
    final s = AppServices(
      alertNotifier: FakeNotifier(),
      config: const AppConfig(backendUrl: 'https://api.test'),
      backend: BackendClient(baseUrl: 'https://api.test', inner: client, tokenLoader: () async => 'tok'),
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
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    final context = tester.element(find.byType(Scaffold).first);
    showReportAiDialog(context, kind: AiReportKind.ask, text: 'answer');
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('ai-report-send')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('ai-report-dialog')), findsOneWidget);
    expect(find.byKey(const ValueKey('ai-report-thanks')), findsNothing);
    fail = false;
    await tester.tap(find.byKey(const ValueKey('ai-report-send')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('ai-report-thanks')), findsOneWidget);
  });

  testWidgets('without a server (key or demo mode) there is no report button', (tester) async {
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    final context = tester.element(find.byType(Scaffold).first);
    final button = const ReportAiButton(kind: AiReportKind.ask, text: 'answer').build(context);
    expect(button, isA<SizedBox>());
  });
}
