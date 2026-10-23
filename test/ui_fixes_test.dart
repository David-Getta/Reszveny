import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/compare/compare_page.dart';
import 'package:reszveny/features/home/home_page.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/listing_symbol.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/features/settings/settings_page.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

const _config = AppConfig();

AppServices _services({Duration latency = Duration.zero, AppPreferences? preferences}) => AppServices(
  alertNotifier: FakeNotifier(),
  config: _config,
  capture: CaptureService(),
  recognizer: _NoRecognizer(),
  marketData: DemoMarketDataProvider(latency: latency),
  locale: LocaleController(),
  preferences: preferences ?? AppPreferences(),
  desktop: DesktopIntegration(),
  reports: ReportStore(analyst: ClaudeStockAnalyst(config: _config)),
  entitlements: EntitlementService(),
);

Future<void> _openStock(WidgetTester tester, String symbol) async {
  await tester.enterText(find.byType(TextField).first, symbol);
  await tester.testTextInput.receiveAction(TextInputAction.search);
}

/// Egy kódátnézés felületi hibáinak ellenőrzése (részvényoldal, listák, összehasonlítás, keret).
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('tapping add to portfolio twice while the page loads opens one dialog', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: _services(latency: const Duration(milliseconds: 800))));
    await tester.pumpAndSettle();
    await _openStock(tester, 'AAPL');
    // A keresés után nyílik az oldal; az adatai még töltenek.
    for (var i = 0; i < 40 && find.byTooltip('Add to portfolio').evaluate().isEmpty; i++) {
      await tester.pump(const Duration(milliseconds: 50));
    }
    expect(find.text('Loading data…'), findsOneWidget);
    await tester.tap(find.byTooltip('Add to portfolio'));
    await tester.pump(const Duration(milliseconds: 200));
    await tester.tap(find.byTooltip('Add to portfolio'));
    await tester.pumpAndSettle();
    expect(find.byType(AlertDialog), findsOneWidget);
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(find.byType(AlertDialog), findsNothing);
    await tester.pump(const Duration(seconds: 5));
  });

  testWidgets('pull to refresh keeps the page instead of a full-screen spinner', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: _services(latency: const Duration(milliseconds: 300))));
    await tester.pumpAndSettle();
    await _openStock(tester, 'AAPL');
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('detail-price')), findsOneWidget);
    tester.state<RefreshIndicatorState>(find.byType(RefreshIndicator).first).show();
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.text('Loading data…'), findsNothing);
    expect(find.byKey(const ValueKey('detail-price')), findsOneWidget);
    await tester.pumpAndSettle();
  });

  testWidgets('a tab page stays open when the window widens from the phone layout', (tester) async {
    tester.view.physicalSize = const Size(800, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: _services()));
    await tester.pumpAndSettle();
    await tester.tap(find.descendant(of: find.byType(NavigationBar), matching: find.text('Settings')));
    await tester.pumpAndSettle();
    expect(find.byType(SettingsPage), findsOneWidget);
    tester.view.physicalSize = const Size(1200, 1600);
    await tester.pumpAndSettle();
    expect(find.byType(SettingsPage), findsOneWidget);
  });

  testWidgets('a compared ticker that does not load is marked as not available', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: _services()));
    await tester.pumpAndSettle();
    ComparePage.open(tester.element(find.byType(HomePage)), ['AAPL', 'ZZZZ']);
    await tester.pumpAndSettle();
    expect(find.text('n/a'), findsWidgets);
  });

  test('undoing a removed favorite puts back only that stock, keeping one added meanwhile', () async {
    final prefs = AppPreferences(favorites: const ['AAPL', 'MSFT', 'NVDA']);
    final since = DateTime(2026, 3, 2);
    await prefs.restoreFavorite('MSFT', at: 1, since: since);
    await prefs.toggleFavorite('MSFT');
    await prefs.toggleFavorite('OTP');
    await prefs.restoreFavorite('MSFT', at: 1, since: since);
    expect(prefs.favorites, containsAll(['OTP', 'MSFT', 'AAPL', 'NVDA']));
    expect(prefs.favoriteSince('MSFT'), since);
  });

  test('undoing a stock removed from a list puts it back where it was', () async {
    final prefs = AppPreferences();
    await prefs.addWatchList('Tech');
    for (final s in ['AAPL', 'MSFT', 'NVDA']) {
      await prefs.toggleInList('Tech', s);
    }
    await prefs.toggleInList('Tech', 'AAPL');
    await prefs.toggleInList('Tech', 'AAPL', at: 0);
    expect(prefs.watchLists.single.symbols, ['AAPL', 'MSFT', 'NVDA']);
  });

  test('a deleted list comes back with its stocks; a taken name is recognised', () async {
    final prefs = AppPreferences();
    await prefs.addWatchList('Chips');
    await prefs.addWatchList('Tech');
    await prefs.toggleInList('Tech', 'AAPL');
    final tech = prefs.watchLists[1];
    await prefs.removeWatchList('Tech');
    expect(await prefs.restoreWatchList(tech, at: 1), isTrue);
    expect(prefs.watchLists.map((l) => l.name), ['Chips', 'Tech']);
    expect(prefs.watchLists[1].symbols, ['AAPL']);
    expect(prefs.listNameTaken('tech'), isTrue);
    expect(prefs.listNameTaken('TECH', except: 'Tech'), isFalse);
    expect(prefs.listNameTaken('Tech', except: 'Chips'), isTrue);
    expect(await prefs.restoreWatchList(tech), isFalse);
  });

  test('the listing suffix suggests the trading currency', () {
    expect(currencyForListing('OTP.BD'), 'HUF');
    expect(currencyForListing('SIE.DE'), 'EUR');
    expect(currencyForListing('VOD.L'), 'GBP');
    expect(currencyForListing('7203.T'), 'JPY');
    expect(currencyForListing('AAPL'), isNull);
    expect(currencyForListing('BRK.B'), isNull);
  });
}
