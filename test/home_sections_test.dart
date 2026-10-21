import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/app_preferences.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('parts of the home screen can be hidden in the settings, and it is remembered', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.preferences.setFavorites(['AAPL']);
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-markets')), findsOneWidget);
    expect(find.text('Favorites'), findsWidgets);
    // Friss gyorsjelentések a kezdőképernyőn (a demóban az AAPL jelentett).
    expect(find.byKey(const ValueKey('home-results')), findsOneWidget);
    expect(find.text('AAPL beat the expected EPS'), findsOneWidget);

    await tester.tap(find.text('Settings').first);
    await tester.pumpAndSettle();
    final toggle = find.byKey(const ValueKey('home-section-markets'));
    await tester.ensureVisible(toggle);
    await tester.pumpAndSettle();
    await tester.tap(toggle);
    await tester.pumpAndSettle();
    expect(s.preferences.showsHome('markets'), isFalse);
    expect((await AppPreferences.load()).showsHome('markets'), isFalse);

    // Vissza a kezdőképernyőre: a piacok sávja eltűnt.
    await tester.tap(find.byKey(const ValueKey('sidebar-home')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-markets')), findsNothing);

    await s.preferences.setHomeSection('markets', true);
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-markets')), findsOneWidget);
  });
}
