import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/review/review_prompt.dart';
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

AppServices _services(AppPreferences prefs) => AppServices(
  alertNotifier: FakeNotifier(),
  config: const AppConfig(),
  capture: CaptureService(),
  recognizer: _NoRecognizer(),
  marketData: DemoMarketDataProvider(latency: Duration.zero),
  locale: LocaleController(),
  preferences: prefs,
  desktop: DesktopIntegration(),
  reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
  entitlements: EntitlementService(),
);

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('first launch: four onboarding pages, then the search; never again', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final prefs = AppPreferences(onboardingDone: false);
    await tester.pumpWidget(WhatStockApp(services: _services(prefs)));
    await tester.pumpAndSettle();

    expect(find.text('Photograph a stock'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('onboarding-next')));
    await tester.pumpAndSettle();
    expect(find.text('Understand it in minutes'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('onboarding-next')));
    await tester.pumpAndSettle();
    expect(find.text('Track your portfolio'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('onboarding-next')));
    await tester.pumpAndSettle();
    expect(find.text('Stay on top of it'), findsOneWidget);
    expect(find.text('Get started'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('onboarding-next')));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('onboarding')), findsNothing);
    expect(find.text('Which stock shall we look at?'), findsOneWidget);
    expect(prefs.onboardingDone, isTrue);
    expect((await SharedPreferences.getInstance()).getBool('onboarding_done'), isTrue);
  });

  testWidgets('the onboarding can be skipped', (tester) async {
    final prefs = AppPreferences(onboardingDone: false);
    await tester.pumpWidget(WhatStockApp(services: _services(prefs)));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('onboarding-skip')));
    await tester.pumpAndSettle();
    expect(find.text('Which stock shall we look at?'), findsOneWidget);
  });

  test('only a fresh install sees the onboarding, not existing users', () async {
    SharedPreferences.setMockInitialValues({});
    expect((await AppPreferences.load()).onboardingDone, isFalse);
    // Az első indításkor közben írt kulcsok (pl. a próbaidő) után sem tűnik régi felhasználónak.
    await (await SharedPreferences.getInstance()).setString('trial_started', 'x');
    expect((await AppPreferences.load()).onboardingDone, isFalse);
    SharedPreferences.setMockInitialValues({
      'recent_symbols': <String>['AAPL'],
    });
    expect((await AppPreferences.load()).onboardingDone, isTrue);
    SharedPreferences.setMockInitialValues({'onboarding_done': true});
    expect((await AppPreferences.load()).onboardingDone, isTrue);
  });

  test('one damaged stored value does not reset the other preferences', () async {
    SharedPreferences.setMockInitialValues({
      'global_hotkey': '"oops"',
      'favorite_symbols': <String>['AAPL'],
      'telemetry_consent': true,
      'keep_in_tray': 'not a bool',
    });
    final p = await AppPreferences.load();
    expect(p.hotkeyJson, isNull);
    expect(p.favorites, ['AAPL']);
    expect(p.telemetryConsent, isTrue);
    expect(p.keepInTray, isTrue);
  });

  test('the store review is requested once, after the third analysis', () async {
    var asked = 0;
    final original = requestStoreReview;
    requestStoreReview = () async => asked++;
    addTearDown(() => requestStoreReview = original);
    final prefs = AppPreferences();
    for (var i = 0; i < 2; i++) {
      await ReviewPrompt.onAnalysisDone(prefs);
    }
    expect(asked, 0);
    await ReviewPrompt.onAnalysisDone(prefs);
    expect(asked, 1);
    await ReviewPrompt.onAnalysisDone(prefs);
    expect(asked, 1);
    expect(prefs.analysesDone, 4);
    final reloaded = await AppPreferences.load();
    expect(reloaded.reviewAsked, isTrue);
    expect(reloaded.analysesDone, 4);
  });
}
