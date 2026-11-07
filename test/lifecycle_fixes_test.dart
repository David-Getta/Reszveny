import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/desktop/quick_panel.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/features/home/home_page.dart';
import 'package:reszveny/features/home/search_field.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget_test.dart' show services;

/// Az erőforrás-életciklus átnézésének (62. kör) javításai.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('resizing a desktop window across the sidebar breakpoint keeps the search field and its typing', (
    tester,
  ) async {
    // Asztali gép: a széles elrendezésben a kezdőlapon ott a keret-chip és a gyorsbillentyű-tipp.
    NativeQuickPanel.debugSupportedOverride = false;
    DesktopIntegration.debugSupportedOverride = true;
    final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    for (final ch in ['window_manager', 'tray_manager', 'hotkey_manager', 'launch_at_startup']) {
      messenger.setMockMethodCallHandler(MethodChannel(ch), (call) async => null);
    }
    addTearDown(() {
      NativeQuickPanel.debugSupportedOverride = null;
      DesktopIntegration.debugSupportedOverride = null;
    });
    tester.view.physicalSize = const Size(1200, 2000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    final before = tester.state(find.byType(SearchField));
    await tester.enterText(find.byType(TextField).first, 'nvd');
    await tester.pump();

    // Széles → keskeny: átlépi a HomePage.sidebarBreakpoint küszöbét.
    tester.view.physicalSize = const Size(700, 2000);
    await tester.pumpAndSettle();
    // Ugyanaz az állapot marad (nem épül újra az egész oszlop), a gépelés megvan.
    expect(identical(before, tester.state(find.byType(SearchField))), isTrue);
    expect(tester.widget<TextField>(find.byType(TextField).first).controller!.text, 'nvd');
    expect(find.byType(HomePage), findsOneWidget);

    // Ha mégis újraépülne (pl. egy másik szülő miatt), a régi állapot figyelője nem hívhat
    // setState-et: a figyelő a dispose-ban lekerül a szülő vezérlőjéről.
    final errors = <FlutterErrorDetails>[];
    final prev = FlutterError.onError;
    FlutterError.onError = errors.add;
    await tester.enterText(find.byType(TextField).first, '');
    await tester.pump();
    await tester.enterText(find.byType(TextField).first, 'a');
    await tester.pump();
    FlutterError.onError = prev;
    expect(errors, isEmpty);
  });

  testWidgets('a search field created on a parent controller leaves no listener behind', (tester) async {
    final controller = TextEditingController();
    addTearDown(controller.dispose);
    Widget field() => MaterialApp(
      theme: AppTheme.build(Brightness.light),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [Locale('en')],
      home: Scaffold(
        body: SearchField(controller: controller, hint: 'hint', onSubmitted: (_) {}),
      ),
    );
    await tester.pumpWidget(field());
    await tester.pumpAndSettle();
    expect(find.byType(SearchField), findsOneWidget);
    await tester.pumpWidget(const MaterialApp(home: SizedBox()));
    // A figyelő lekerült: a vezérlő változása nem ér egy eldobott állapotot (debug módban az
    // „setState() called after dispose()” hiba lenne).
    final errors = <FlutterErrorDetails>[];
    final prev = FlutterError.onError;
    FlutterError.onError = errors.add;
    controller.text = 'x';
    controller.text = '';
    FlutterError.onError = prev;
    expect(errors, isEmpty);
  });

  test('a report viewer that leaves takes its empty slot with it', () {
    final store = ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig()));
    bool visible() => true;
    store.addViewer('AAPL', visible);
    expect(store.isOnScreen('AAPL'), isTrue);
    store.removeViewer('AAPL', visible);
    expect(store.isOnScreen('AAPL'), isFalse);
    expect(store.debugViewerSymbols, isEmpty);
  });

  test('the quick panel forgets a detached handler but keeps a newer one', () {
    final panel = NativeQuickPanel();
    final a = _Handler(), b = _Handler();
    panel.attach(a);
    panel.detach(b);
    expect(panel.debugHandler, same(a));
    panel.attach(b);
    panel.detach(a);
    expect(panel.debugHandler, same(b));
    panel.detach(b);
    expect(panel.debugHandler, isNull);
  });
}

class _Handler implements QuickPanelHandler {
  @override
  void noSuchMethod(Invocation invocation) {}
}
