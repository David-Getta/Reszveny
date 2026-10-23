import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/util/bidi.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/widgets/collapsible.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

const _config = AppConfig();

AppServices _services({Locale? locale}) => AppServices(
  alertNotifier: FakeNotifier(),
  config: _config,
  capture: CaptureService(),
  recognizer: _NoRecognizer(),
  marketData: DemoMarketDataProvider(latency: Duration.zero),
  locale: LocaleController(initial: locale),
  preferences: AppPreferences(),
  desktop: DesktopIntegration(),
  reports: ReportStore(analyst: ClaudeStockAnalyst(config: _config)),
  entitlements: EntitlementService(),
);

/// Egy kódátnézés akadálymentességi és jobbról balra író nyelvi hibáinak ellenőrzése.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the direction of provider text follows its content', () {
    expect(contentDirection('Apple Inc.'), TextDirection.ltr);
    expect(contentDirection('شركة أبل للتكنولوجيا'), TextDirection.rtl);
  });

  testWidgets('in Arabic the English company name keeps its full stop at the end', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: _services(locale: const Locale('ar'))));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(tester.widget<Text>(find.text('Apple Inc.').first).textDirection, TextDirection.ltr);
  });

  testWidgets('the search button is a 48 point button for screen readers', (tester) async {
    tester.view.physicalSize = const Size(400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final handle = tester.ensureSemantics();
    await tester.pumpWidget(WhatStockApp(services: _services()));
    await tester.pumpAndSettle();
    final size = tester.getSize(find.byTooltip('Look up'));
    expect(size.width, greaterThanOrEqualTo(48));
    expect(size.height, greaterThanOrEqualTo(48));
    expect(tester.getSemantics(find.byTooltip('Look up')), isSemantics(isButton: true, hasTapAction: true));
    handle.dispose();
  });

  testWidgets('a collapsed section arrow points towards its title in both directions', (tester) async {
    double turns(TextDirection d) {
      return tester.widget<AnimatedRotation>(find.byType(AnimatedRotation)).turns;
    }

    for (final d in TextDirection.values) {
      await tester.pumpWidget(
        MaterialApp(
          home: Directionality(
            textDirection: d,
            child: Material(
              child: CollapsibleHeader(collapsed: true, onTap: () {}, child: const Text('Notes')),
            ),
          ),
        ),
      );
      expect(turns(d), d == TextDirection.rtl ? 0.25 : -0.25);
    }
  });

  test('Kabyle and Macedonian texts do not mix in look-alike letters of another script', () {
    expect(File('lib/l10n/arb/app_kab.arb').readAsStringSync().contains('ε'), isFalse);
    expect(File('lib/l10n/arb/app_mk.arb').readAsStringSync().contains('è'), isFalse);
  });
}
