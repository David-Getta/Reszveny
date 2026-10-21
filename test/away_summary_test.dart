import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/features/alerts/alerts_view.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/events/events_view.dart';
import 'package:reszveny/features/home/away_summary.dart';

import 'app_widget_test.dart' show services;

String _snapshot(DateTime at, Map<String, double> prices, {Map<String, String> earnings = const {}}) =>
    jsonEncode({'at': at.toIso8601String(), 'prices': prices, 'earnings': earnings});

void main() {
  testWidgets('after a day away: biggest moves, triggered alerts and reported results; dismiss; new snapshot', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1200, 2600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final since = DateTime.now().subtract(const Duration(days: 2, hours: 3));
    final yesterday = DateTime.now().subtract(const Duration(days: 1)).toIso8601String().substring(0, 10);
    SharedPreferences.setMockInitialValues({
      AwaySummary.storeKey: _snapshot(since, {'AAPL': 220, 'MSFT': 512.30}, earnings: {'AAPL': yesterday}),
    });
    final s = services(preferences: AppPreferences(favorites: ['AAPL', 'MSFT']));
    // 10 AAPL és 10 MSFT: 2200 + 5123 → 2314,5 + 5123: +1,56%.
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await s.portfolio.add(symbol: 'MSFT', quantity: 10, price: 500, currency: 'USD');
    final alert = await s.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: 225, currency: 'USD');
    await s.alerts.markTriggered(alert.id, DateTime.now().subtract(const Duration(hours: 5)), 231.45);
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('home-away')), findsOneWidget);
    expect(find.text('While you were away'), findsOneWidget);
    // Az AAPL 220-ról 231,45-re: +5,2%; az MSFT nem mozdult, nincs a listában.
    expect(find.byKey(const ValueKey('away-move-AAPL')), findsOneWidget);
    expect(find.textContaining('+5.2%'), findsOneWidget);
    expect(find.byKey(const ValueKey('away-move-MSFT')), findsNothing);
    expect(find.text('1 alert triggered'), findsOneWidget);
    expect(find.text('Reported results: AAPL'), findsOneWidget);
    expect(find.byKey(const ValueKey('away-quiet')), findsNothing);
    final r = s.away.report!;
    expect(r.since, since);
    expect(r.portfolioPercent, closeTo(1.56, 0.01));
    expect(find.byKey(const ValueKey('away-portfolio')), findsOneWidget);
    expect(find.textContaining('+1.6%'), findsOneWidget);
    expect(AwayReport.percent(r.moves.single), closeTo(5.2, 0.01));

    // Új pillanatkép a mai árakkal, mostani időponttal.
    final saved = jsonDecode((await SharedPreferences.getInstance()).getString(AwaySummary.storeKey)!) as Map;
    expect(DateTime.parse(saved['at'] as String).isAfter(DateTime.now().subtract(const Duration(minutes: 1))), isTrue);
    expect((saved['prices'] as Map)['AAPL'], 231.45);
    expect((saved['prices'] as Map)['MSFT'], 512.30);

    // A riasztás-sor a riasztások oldalát nyitja, az eredmény-sor az eseményekét.
    await tester.tap(find.byKey(const ValueKey('away-alerts')));
    await tester.pumpAndSettle();
    expect(find.byType(AlertsPage), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('away-reported')));
    await tester.pumpAndSettle();
    expect(find.byType(EventsPage), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();

    // Elvetés.
    await tester.ensureVisible(find.byKey(const ValueKey('away-dismiss')));
    await tester.tap(find.byKey(const ValueKey('away-dismiss')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-away')), findsNothing);
    expect(s.away.report, isNull);
  });

  testWidgets('no card without a previous visit, or within a day; quiet when nothing moved', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(
      WhatStockApp(
        services: services(preferences: AppPreferences(favorites: ['AAPL'])),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-away')), findsNothing);
    // Az első indítás pillanatképet ment.
    expect((await SharedPreferences.getInstance()).getString(AwaySummary.storeKey), contains('AAPL'));

    await tester.pumpWidget(const SizedBox());
    SharedPreferences.setMockInitialValues({
      AwaySummary.storeKey: _snapshot(DateTime.now().subtract(const Duration(hours: 5)), {'AAPL': 100}),
    });
    await tester.pumpWidget(
      WhatStockApp(
        services: services(preferences: AppPreferences(favorites: ['AAPL'])),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-away')), findsNothing, reason: 'nem telt el egy nap');

    await tester.pumpWidget(const SizedBox());
    SharedPreferences.setMockInitialValues({
      AwaySummary.storeKey: _snapshot(DateTime.now().subtract(const Duration(days: 3)), {'AAPL': 231.45}),
    });
    await tester.pumpWidget(
      WhatStockApp(
        services: services(preferences: AppPreferences(favorites: ['AAPL'])),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-away')), findsOneWidget);
    expect(find.byKey(const ValueKey('away-quiet')), findsOneWidget);
    expect(find.text('Nothing moved much.'), findsOneWidget);
  });

  test('a second check within a day is skipped; after a day away it reports against the earlier snapshot', () async {
    SharedPreferences.setMockInitialValues({});
    var now = DateTime(2026, 10, 20, 9);
    final s = services(preferences: AppPreferences(favorites: ['AAPL']));
    final away = AwaySummary(
      marketData: s.marketData,
      preferences: s.preferences,
      portfolio: s.portfolio,
      alerts: s.alerts,
      events: s.events,
      fx: s.fx,
      clock: () => now,
    );
    await away.check();
    expect(away.report, isNull);
    now = DateTime(2026, 10, 20, 15);
    await away.check();
    expect(away.report, isNull, reason: 'még aznap: nincs újabb ellenőrzés');
    // A mentett pillanatképben az ár; egy nappal később ehhez mér (nem mozdult: csendes).
    now = DateTime(2026, 10, 21, 12);
    await away.check();
    expect(away.report, isNotNull);
    expect(away.report!.since, DateTime(2026, 10, 20, 9));
    expect(away.report!.isQuiet, isTrue);
  });

  testWidgets('the section can be hidden in settings', (tester) async {
    SharedPreferences.setMockInitialValues({
      AwaySummary.storeKey: _snapshot(DateTime.now().subtract(const Duration(days: 3)), {'AAPL': 200}),
    });
    final prefs = AppPreferences(favorites: ['AAPL']);
    await prefs.setHomeSection('away', false);
    await tester.pumpWidget(WhatStockApp(services: services(preferences: prefs)));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-away')), findsNothing);
  });
}
