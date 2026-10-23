import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/features/home/watchlist_page.dart';
import 'package:reszveny/features/stock_detail/stock_detail_page.dart';
import 'package:reszveny/features/alerts/alerts_view.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';

import 'app_widget_test.dart' show services;

/// Akadálymentesség: 200%-os rendszer-betűméretnél, kis telefonon sem csúszik ki
/// semmi a fő oldalakon és dialógusokban (a túlcsordulás a tesztben hibaként jelenik
/// meg; itt összegyűjtjük, hol történt).
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  for (final lang in ['en', 'hu']) {
    testWidgets('large text (200%) on a small phone ($lang): no overflow on the main pages', (tester) async {
      tester.view.physicalSize = const Size(360, 780);
      tester.view.devicePixelRatio = 1;
      tester.platformDispatcher.textScaleFactorTestValue = 2.0;
      addTearDown(tester.view.reset);
      addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
      final problems = <String>{};
      final original = FlutterError.onError;
      var where = 'start';
      FlutterError.onError = (d) {
        final at = RegExp(r'lib/[\w/]+\.dart:\d+').allMatches(d.toString()).map((m) => m[0]).join(', ');
        problems.add('[$where] ${d.exceptionAsString().split('\n').first} $at');
      };

      // Végiggörgeti az oldalt (vagy a dialógust), hogy a lusta listák minden eleme felépüljön.
      Future<void> scrollAll(String label, {Finder? within}) async {
        where = label;
        await tester.pumpAndSettle();
        final scrollables = within == null
            ? find.byType(Scrollable)
            : find.descendant(of: within, matching: find.byType(Scrollable));
        ScrollPosition? main() {
          final all = tester
              .stateList<ScrollableState>(scrollables)
              .map((s) => s.position)
              .where((p) => p.axis == Axis.vertical && p.hasContentDimensions)
              .toList();
          if (all.isEmpty) return null;
          return all.reduce((a, b) => b.viewportDimension > a.viewportDimension ? b : a);
        }

        for (var i = 0; i < 60; i++) {
          final pos = main();
          if (pos == null || pos.pixels >= pos.maxScrollExtent) break;
          pos.jumpTo(math.min(pos.pixels + pos.viewportDimension * 0.7, pos.maxScrollExtent));
          await tester.pumpAndSettle();
        }
        main()?.jumpTo(0);
        await tester.pumpAndSettle();
      }

      Future<void> tapOn(Finder f, String label) async {
        // A lusta listában (pl. Beállítások) még fel nem épült elemig görgetünk.
        if (f.evaluate().isEmpty) {
          final page = tester
              .stateList<ScrollableState>(find.byType(Scrollable))
              .where((s) => s.position.axis == Axis.vertical)
              .reduce((a, b) => b.position.viewportDimension > a.position.viewportDimension ? b : a)
              .position;
          page.jumpTo(0);
          await tester.pumpAndSettle();
          while (f.evaluate().isEmpty && page.pixels < page.maxScrollExtent) {
            page.jumpTo(math.min(page.pixels + page.viewportDimension * 0.7, page.maxScrollExtent));
            await tester.pumpAndSettle();
          }
        }
        expect(f, findsWidgets, reason: 'nincs: $label');
        await tester.ensureVisible(f.first);
        await tester.pumpAndSettle();
        await tester.tap(f.first);
        await tester.pumpAndSettle();
      }

      Future<void> tapKey(String key) => tapOn(find.byKey(ValueKey(key)), key);

      // Egy dialógus megnyitása, végiggörgetése és bezárása (vissza gombbal).
      Future<void> dialog(Finder opener, String label) async {
        await tapOn(opener, label);
        expect(find.byType(Dialog), findsOneWidget, reason: label);
        await scrollAll('dialog $label', within: find.byType(Dialog));
        await tester.binding.handlePopRoute();
        await tester.pumpAndSettle();
      }

      Future<void> dialogKey(String key) => dialog(find.byKey(ValueKey(key)), key);

      try {
        final nav = find.byType(NavigationDestination);
        final s = services(locale: Locale(lang));
        await s.portfolio.loadSample();
        await s.preferences.setFavorites(['AAPL', 'MSFT', 'NVDA']);
        await tester.pumpWidget(WhatStockApp(services: s));
        await scrollAll('home');

        final l10n = AppLocalizations.of(tester.element(find.byType(Scaffold).first));
        Future<void> back() async {
          await tester.binding.handlePopRoute();
          await tester.pumpAndSettle();
        }

        await tapKey('favorites-see-all');
        expect(find.byType(WatchlistPage), findsOneWidget);
        await scrollAll('favorites page');
        await back();
        await tapKey('events-see-all');
        await scrollAll('events page');
        await back();

        await tester.tap(nav.at(1));
        await scrollAll('portfolio');
        await dialogKey('dividend-add');
        await tapKey('portfolio-menu');
        await dialogKey('portfolio-cash-edit');
        await tapKey('portfolio-menu');
        where = 'portfolio menu';
        await tapKey('portfolio-activity');
        await scrollAll('all transactions');
        await back();
        await tapKey('portfolio-menu');
        await tapKey('portfolio-annual-summary');
        await scrollAll('annual summary', within: find.byType(BottomSheet));
        await back();
        await tapKey('portfolio-menu');
        await dialogKey('portfolio-stops');

        await tester.tap(nav.at(2));
        await scrollAll('alerts');
        await tester.tap(nav.at(3));
        await scrollAll('settings');
        await tapKey('settings-glossary');
        await scrollAll('glossary');
        await back();
        await tapOn(find.text(l10n.viewPlans), 'plans');
        await scrollAll('plans');
        await back();

        await tester.tap(nav.at(0));
        await tester.pumpAndSettle();
        where = 'search';
        await tester.enterText(find.byType(TextField).first, 'AAPL');
        await tester.testTextInput.receiveAction(TextInputAction.search);
        await tester.pumpAndSettle();
        expect(find.byType(StockDetailPage), findsOneWidget);
        await scrollAll('stock page');
        await dialog(find.byIcon(Icons.add_chart_rounded), 'add to portfolio');
        await dialog(find.byType(AlertBellButton), 'price alert');
        await tapKey('compare-open');
        // Egy részvénnyel a második kiválasztása nyílik meg először.
        if (find.byType(Dialog).evaluate().isNotEmpty) {
          await scrollAll('compare picker', within: find.byType(Dialog));
          await back();
        }
        await scrollAll('compare');
        await back();
        expect(find.byType(StockDetailPage), findsOneWidget);
        await tapOn(find.text(l10n.aiGenerate), 'analysis');
        await scrollAll('analysis');
      } finally {
        // Hibás lépésnél is vissza kell állítani, különben a teszt-keretrendszer elakad.
        FlutterError.onError = original;
        if (problems.isNotEmpty) debugPrint('Túlcsordulások:\n${problems.join('\n')}');
      }
      await tester.pump(const Duration(minutes: 1));
      expect(problems, isEmpty, reason: problems.join('\n'));
    });
  }
}
