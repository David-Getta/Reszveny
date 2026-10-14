import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/telemetry/telemetry.dart';
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

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  (Telemetry, List<Map<String, dynamic>>) make({bool? consent}) {
    final sent = <Map<String, dynamic>>[];
    final t = Telemetry(
      preferences: AppPreferences(telemetryConsent: consent),
      sink: (b) async => sent.add(b),
      platform: 'android',
      versionOf: () => '0.2.34+37',
    );
    return (t, sent);
  }

  test('nothing is collected or sent without consent', () async {
    final (t, sent) = make();
    expect(t.shouldAsk, isTrue);
    t.track('app_open');
    t.reportError(StateError('x'), StackTrace.current);
    await t.flush();
    expect(sent, isEmpty);

    final (declined, sent2) = make(consent: false);
    expect(declined.shouldAsk, isFalse);
    declined.track('app_open');
    await declined.flush();
    expect(sent2, isEmpty);
  });

  test('with consent: counted events and scrubbed errors in one batch', () async {
    final (t, sent) = make(consent: true);
    t
      ..track('app_open')
      ..track('analysis_done')
      ..track('analysis_done')
      ..track('Bad Name!');
    t.reportError(StateError('login failed for anna@example.com'), StackTrace.current);
    t.reportError(StateError('login failed for anna@example.com'), StackTrace.current);
    await t.flush();
    expect(sent, hasLength(1));
    final b = sent.single;
    expect(b['platform'], 'android');
    expect(b['version'], '0.2.34+37');
    expect(b['events'], {'app_open': 1, 'analysis_done': 2});
    final errors = b['errors'] as List;
    expect(errors, hasLength(1));
    expect(errors.single['message'], 'StateError: Bad state: login failed for <email>');
    await t.flush();
    expect(sent, hasLength(1));
  });

  test('withdrawing consent drops what was not sent yet', () async {
    final (t, sent) = make(consent: true);
    t.track('app_open');
    await t.setConsent(false);
    await t.flush();
    expect(sent, isEmpty);
    expect((await SharedPreferences.getInstance()).getBool('telemetry_consent'), isFalse);
  });

  test('scrub hides e-mails, tokens and URL parameters', () {
    expect(
      Telemetry.scrub(
        'GET https://x.io/v1/me?token=abc failed for a.b@c.hu key abcdefghijklmnopqrstuvwxyz0123456789ABCD',
      ),
      'GET https://x.io/v1/me?<…> failed for <email> key <…>',
    );
  });

  testWidgets('the home screen asks once; the answer is kept and can be changed in Settings', (tester) async {
    tester.view.physicalSize = const Size(430, 932);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final sent = <Map<String, dynamic>>[];
    final prefs = AppPreferences();
    final services = AppServices(
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
      telemetry: Telemetry(preferences: prefs, sink: (b) async => sent.add(b)),
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    final card = find.byKey(const ValueKey('telemetry-consent'));
    await tester.scrollUntilVisible(card, 200, scrollable: find.byType(Scrollable).first);
    expect(find.text('Help improve WhatStock'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('telemetry-allow')));
    await tester.pumpAndSettle();
    expect(card, findsNothing);
    expect(prefs.telemetryConsent, isTrue);

    await services.telemetry.flush();
    expect(sent.single['events'], {'telemetry_on': 1});

    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    final toggle = find.byKey(const ValueKey('telemetry-switch'));
    await tester.scrollUntilVisible(toggle, 300, scrollable: find.byType(Scrollable).last);
    Scrollable.ensureVisible(tester.element(toggle), alignment: 0.5);
    await tester.pumpAndSettle();
    expect(tester.widget<SwitchListTile>(toggle).value, isTrue);
    await tester.tap(toggle);
    await tester.pumpAndSettle();
    expect(prefs.telemetryConsent, isFalse);
    expect(services.telemetry.enabled, isFalse);
  });
}
