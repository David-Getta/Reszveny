import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/features/home/watchlist_page.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('the favorites page: sort by daily change, remove with undo, reorder', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.preferences.setFavorites(['MSFT', 'AAPL', 'NVDA', 'OTP']);
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('favorites-see-all')));
    await tester.pumpAndSettle();
    expect(find.byType(WatchlistPage), findsOneWidget);

    List<String> order() => [
      for (final e in find.byWidgetPredicate((w) => w is Dismissible).evaluate())
        ((e.widget as Dismissible).key! as ValueKey<String>).value.substring(6),
    ];
    expect(order(), ['MSFT', 'AAPL', 'NVDA', 'OTP']);

    // Napi változás szerint (a demó adatok szerint).
    final changes = <String, double>{};
    await tester.runAsync(() async {
      for (final sym in ['MSFT', 'AAPL', 'NVDA', 'OTP']) {
        changes[sym] = (await s.marketData.quote(sym)).changePercent!;
      }
    });
    await tester.tap(find.byKey(const ValueKey('watch-sort')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-sort-gainers')));
    await tester.pumpAndSettle();
    final byGain = changes.keys.toList()..sort((a, b) => changes[b]!.compareTo(changes[a]!));
    expect(order(), byGain);
    // A saját sorrend nem változott.
    expect(s.preferences.favorites, ['MSFT', 'AAPL', 'NVDA', 'OTP']);

    // Eltávolítás elhúzással, majd visszavonás.
    await tester.tap(find.byKey(const ValueKey('watch-sort')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-sort-own')));
    await tester.pumpAndSettle();
    await tester.drag(find.byKey(const ValueKey('watch-NVDA')), const Offset(-600, 0));
    await tester.pumpAndSettle();
    expect(s.preferences.favorites, ['MSFT', 'AAPL', 'OTP']);
    await tester.tap(find.text('Undo'));
    await tester.pumpAndSettle();
    expect(s.preferences.favorites, ['MSFT', 'AAPL', 'NVDA', 'OTP']);

    // Átrendezés a fogantyúval: az OTP az első helyre.
    final handle = find.descendant(
      of: find.byKey(const ValueKey('watch-OTP')),
      matching: find.byIcon(Icons.drag_handle_rounded),
    );
    final first = tester.getCenter(find.byKey(const ValueKey('watch-MSFT')));
    final gesture = await tester.startGesture(tester.getCenter(handle));
    await tester.pump(const Duration(milliseconds: 100));
    final start = tester.getCenter(handle);
    final dy = first.dy - 20 - start.dy;
    for (var i = 1; i <= 10; i++) {
      await gesture.moveTo(Offset(start.dx, start.dy + dy * i / 10));
      await tester.pump(const Duration(milliseconds: 50));
    }
    await gesture.up();
    await tester.pumpAndSettle();
    expect(s.preferences.favorites.first, 'OTP');
  });
}
