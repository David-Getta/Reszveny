import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/stock_candidate.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/home/candidate_sheet.dart';
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

  testWidgets('several stocks in one photo: star one, or add all to favorites', (tester) async {
    tester.view.physicalSize = const Size(1200, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final prefs = AppPreferences(favorites: const ['MSFT']);
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
    );
    await tester.pumpWidget(WhatStockApp(services: services));
    await tester.pumpAndSettle();
    const result = RecognitionResult(
      summary: 'A watchlist',
      candidates: [
        StockCandidate(symbol: 'AAPL', companyName: 'Apple Inc.', confidence: 0.95),
        StockCandidate(symbol: 'MSFT', companyName: 'Microsoft', confidence: 0.9),
        StockCandidate(symbol: 'NVDA', companyName: 'NVIDIA', confidence: 0.9),
      ],
    );
    StockCandidate? chosen;
    showCandidateSheet(tester.element(find.byType(Scaffold).first), result).then((c) => chosen = c);
    await tester.pumpAndSettle();

    expect(find.text('Add all to favorites (2)'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('cand-fav-AAPL')));
    await tester.pumpAndSettle();
    expect(prefs.favorites, ['AAPL', 'MSFT'], reason: 'newest first, like the star on a stock page');
    expect(find.text('Add all to favorites (1)'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('cand-fav-all')));
    await tester.pumpAndSettle();
    expect(prefs.favorites, ['NVDA', 'AAPL', 'MSFT']);
    expect(find.byKey(const ValueKey('cand-fav-all')), findsNothing);

    // A sorra koppintva az a részvény nyílik meg.
    await tester.tap(find.text('NVIDIA'));
    await tester.pumpAndSettle();
    expect(chosen?.symbol, 'NVDA');
  });
}
