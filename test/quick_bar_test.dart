import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/desktop/quick_panel.dart';
import 'package:reszveny/core/models/stock_candidate.dart';
import 'package:reszveny/features/home/quick_bar.dart';
import 'package:reszveny/features/stock_detail/stock_detail_page.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  Future<List<StockCandidate>> pump(WidgetTester tester) async {
    final opened = <StockCandidate>[];
    final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    // Nincs kép a vágólapon, csak szöveg.
    messenger.setMockMethodCallHandler(const MethodChannel('pasteboard'), (call) async => null);
    messenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async => call.method == 'Clipboard.getData' ? {'text': 'AAPL\n'} : null,
    );
    addTearDown(() {
      messenger.setMockMethodCallHandler(const MethodChannel('pasteboard'), null);
      messenger.setMockMethodCallHandler(SystemChannels.platform, null);
    });
    await tester.pumpWidget(
      AppServicesScope(
        services: services(),
        child: MaterialApp(
          theme: AppTheme.build(Brightness.light),
          localizationsDelegates: WhatStockApp.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: QuickBar(onOpenSymbol: opened.add, onOpenWindow: () {}),
        ),
      ),
    );
    await tester.pumpAndSettle();
    return opened;
  }

  testWidgets('Ctrl+V without an image pastes the text into the field', (tester) async {
    await pump(tester);
    await tester.sendKeyDownEvent(LogicalKeyboardKey.controlLeft);
    await tester.sendKeyEvent(LogicalKeyboardKey.keyV);
    await tester.sendKeyUpEvent(LogicalKeyboardKey.controlLeft);
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text, 'AAPL ');
  });

  testWidgets('a description nobody can place is not opened as a ticker', (tester) async {
    final opened = await pump(tester);
    await tester.enterText(find.byType(TextField), 'the biggest hungarian bank');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(opened, isEmpty);
    expect(find.textContaining('the biggest hungarian bank'), findsWidgets);

    await tester.enterText(find.byType(TextField), r'$nvda');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(opened.single.symbol, 'NVDA');
  });

  testWidgets('Windows/Linux: the quick bar keeps the open page underneath', (tester) async {
    NativeQuickPanel.debugSupportedOverride = false;
    DesktopIntegration.debugSupportedOverride = true;
    const window = MethodChannel('window_manager');
    final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    messenger.setMockMethodCallHandler(
      window,
      (call) async => switch (call.method) {
        'getBounds' => {'x': 0.0, 'y': 0.0, 'width': 1200.0, 'height': 900.0},
        final m when m.startsWith('is') => false,
        _ => null,
      },
    );
    // A sáv elhelyezéséhez a képernyő adatai (screen_retriever).
    const screens = MethodChannel('dev.leanflutter.plugins/screen_retriever');
    const display = {
      'id': '1',
      'size': {'width': 1920.0, 'height': 1080.0},
      'visibleSize': {'width': 1920.0, 'height': 1040.0},
      'visiblePosition': {'dx': 0.0, 'dy': 0.0},
      'scaleFactor': 1.0,
    };
    messenger.setMockMethodCallHandler(
      screens,
      (call) async => switch (call.method) {
        'getPrimaryDisplay' => display,
        'getAllDisplays' => {
          'displays': [display],
        },
        _ => {'dx': 10.0, 'dy': 10.0},
      },
    );
    addTearDown(() {
      NativeQuickPanel.debugSupportedOverride = null;
      DesktopIntegration.debugSupportedOverride = null;
      messenger.setMockMethodCallHandler(window, null);
      messenger.setMockMethodCallHandler(screens, null);
    });
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    s.alertMonitor.requestOpen('AAPL');
    await tester.pumpAndSettle();
    expect(find.byType(StockDetailPage), findsOneWidget);

    await s.desktop.showQuickBar();
    await tester.pumpAndSettle();
    expect(find.byType(QuickBar), findsOneWidget);
    await s.desktop.showFullWindow();
    await tester.pumpAndSettle();
    expect(find.byType(QuickBar), findsNothing);
    expect(find.byType(StockDetailPage), findsOneWidget, reason: 'the stock page is still open');
  });
}
