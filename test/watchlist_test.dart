import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/features/compare/compare_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/share/share_text.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/sync/sync_service.dart';
import 'package:reszveny/features/home/watchlist_page.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('favorites remember the day they were added; removing forgets it; sync merges per ticker', () async {
    final prefs = AppPreferences();
    await prefs.toggleFavorite('aapl');
    final now = DateTime.now();
    expect(prefs.favoriteSince('AAPL'), DateTime(now.year, now.month, now.day));
    await prefs.toggleFavorite('AAPL');
    expect(prefs.favoriteSince('AAPL'), isNull);
    await prefs.addSymbols(['MSFT']);
    expect((await AppPreferences.load()).favoriteSince('MSFT'), isNotNull, reason: 'tárolva');
    expect(AppPreferences.parseFavoriteSince({'x': 'bad', 'nvda': '2026-01-05'}), {'NVDA': DateTime(2026, 1, 5)});
    final merged = SyncService.merge(
      {
        'favorites': ['A'],
        'favorite_since': {'A': '2026-03-01', 'B': '2026-02-01'},
      },
      {
        'favorites': ['A'],
        'favorite_since': {'A': '2026-01-01'},
      },
    );
    // Azonos tickernél a helyi nap marad (pl. levétel és újrafelvétel után a mai).
    expect(merged['favorite_since'], {'A': '2026-03-01', 'B': '2026-02-01'});
    // A szinkron csak a kedvencekhez tartja meg.
    await prefs.setFavorites(['A'], since: AppPreferences.parseFavoriteSince(merged['favorite_since']));
    expect((prefs.favoriteSince('A'), prefs.favoriteSince('B')), (DateTime(2026, 3, 1), null));
    // Egy a mezőt még nem ismerő eszköz üres listája nem törli a dátumokat.
    await prefs.setFavorites(['A']);
    expect(prefs.favoriteSince('A'), DateTime(2026, 3, 1));
    await prefs.clearPersonalData();
    expect(prefs.favoriteSince('A'), isNull);
  });

  testWidgets('a favorite shows how its price moved since it was added; undo keeps the day', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final added = DateTime.now().subtract(const Duration(days: 60));
    final day = DateTime(added.year, added.month, added.day);
    final s = services(
      preferences: AppPreferences(favorites: ['AAPL', 'MSFT'], favoriteSince: {'AAPL': day}),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('favorites-see-all')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('watch-since-AAPL')), findsOneWidget);
    expect(
      find.byKey(const ValueKey('watch-since-MSFT')),
      findsNothing,
      reason: 'régebbi kedvenc: nincs felvételi nap',
    );
    await tester.drag(find.byKey(const ValueKey('watch-AAPL')), const Offset(-600, 0));
    await tester.pumpAndSettle();
    expect(s.preferences.favoriteSince('AAPL'), isNull);
    await tester.tap(find.text('Undo'));
    await tester.pumpAndSettle();
    expect(s.preferences.favoriteSince('AAPL'), day);
  });

  test('change since added: from the close on the day (or the next trading day); not before the series', () {
    final pts = [
      for (final (d, c) in [(3, 100.0), (6, 110.0), (7, 120.0)])
        PricePoint(time: DateTime.utc(2026, 1, d, 21), close: c),
    ];
    // Hétvégén felvéve: a következő kereskedési nap (jan. 6.) záróárához.
    expect(sinceAddedPercent(132, pts, DateTime(2026, 1, 4)), closeTo(20, 1e-9));
    expect(sinceAddedPercent(132, pts, DateTime(2026, 1, 3)), closeTo(32, 1e-9));
    // A sorozat előtt felvéve, vagy még nincs utána nap: nincs mit mondani.
    expect(sinceAddedPercent(132, pts, DateTime(2025, 12, 1)), isNull);
    expect(sinceAddedPercent(132, pts, DateTime(2026, 1, 7)), isNull);
  });

  testWidgets('favorites sorted by the change since added; those without a date at the end', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    final today = DateTime.now();
    DateTime ago(int days) => DateTime(today.year, today.month, today.day - days);
    await s.preferences.setFavorites(
      ['OTP', 'MSFT', 'AAPL', 'NVDA'],
      since: {'AAPL': ago(200), 'MSFT': ago(30), 'NVDA': ago(90)},
    );
    // A várt sorrend a demó adatokból.
    final pct = <String, double>{};
    await tester.runAsync(() async {
      for (final sym in ['AAPL', 'MSFT', 'NVDA']) {
        final q = await s.marketData.quote(sym);
        final h = await s.marketData.history(sym, years: 1);
        pct[sym] = sinceAddedPercent(q.price, h.points, s.preferences.favoriteSince(sym)!)!;
      }
    });
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('favorites-see-all')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-sort')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-sort-since')));
    await tester.pumpAndSettle();
    final order = [
      for (final e in find.byWidgetPredicate((w) => w is Dismissible).evaluate())
        ((e.widget as Dismissible).key! as ValueKey<String>).value.substring(6),
    ];
    expect(order, [...(pct.keys.toList()..sort((a, b) => pct[b]!.compareTo(pct[a]!))), 'OTP']);
    expect(s.preferences.sortOf('watch'), 'since');
  });

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

  test('own lists: names unique (any case), adding a stock also makes it a favorite, restart keeps them', () async {
    final p = AppPreferences(favorites: const ['MSFT']);
    expect(await p.addWatchList(' Tech '), isTrue);
    expect(await p.addWatchList('tech'), isFalse);
    expect(await p.addWatchList(''), isFalse);
    // A név hossza karakterre számít, mint a szövegmezőben (emodzsi is egy karakter).
    expect(await p.addWatchList('🚀' * AppPreferences.maxListName), isTrue);
    expect(await p.addWatchList('🚀' * (AppPreferences.maxListName + 1)), isFalse);
    await p.removeWatchList('🚀' * AppPreferences.maxListName);
    await p.toggleInList('Tech', 'nvda');
    expect(p.watchLists.single.symbols, ['NVDA']);
    expect(p.favorites, ['NVDA', 'MSFT']);
    expect(p.listsOf('NVDA'), ['Tech']);
    expect(await p.renameWatchList('Tech', 'Chips'), isTrue);
    final loaded = await AppPreferences.load();
    expect(loaded.watchLists.single.name, 'Chips');
    expect(loaded.watchLists.single.symbols, ['NVDA']);
    await loaded.toggleInList('Chips', 'NVDA');
    expect(loaded.watchLists.single.symbols, isEmpty);
    expect(loaded.favorites, contains('NVDA'), reason: 'leaving a list keeps the favorite');
    await loaded.removeWatchList('chips');
    expect(loaded.watchLists, isEmpty);
  });

  test('sync: lists merged by name, symbols united, local first', () {
    final merged = SyncService.merge(
      {
        'watch_lists': [
          {
            'name': 'Tech',
            'symbols': ['AAPL'],
          },
        ],
      },
      {
        'watch_lists': [
          {
            'name': 'tech',
            'symbols': ['NVDA', 'AAPL'],
          },
          {
            'name': 'Dividend',
            'symbols': ['KO'],
          },
        ],
      },
    );
    expect(merged['watch_lists'], [
      {
        'name': 'Tech',
        'symbols': ['AAPL', 'NVDA'],
      },
      {
        'name': 'Dividend',
        'symbols': ['KO'],
      },
    ]);
  });

  test('sync: targets per ticker, the local side wins', () {
    final merged = SyncService.merge(
      {
        'targets': {'AAPL': 40},
      },
      {
        'targets': {'AAPL': 30, 'MSFT': 20},
      },
    );
    expect(merged['targets'], {'AAPL': 40.0, 'MSFT': 20.0});
  });

  testWidgets('own lists on the favorites page: create one, add a stock, filter, remove from the list', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.preferences.setFavorites(['MSFT', 'AAPL', 'NVDA']);
    await s.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: 300, currency: 'USD');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    // A kezdőképernyő kedvenc-csempéin a nagy napi mozgás (NVDA +2,98%) ✨ jellel.
    expect(find.byKey(const ValueKey('fav-move-NVDA')), findsOneWidget);
    expect(find.byKey(const ValueKey('fav-move-AAPL')), findsNothing);
    await tester.tap(find.byKey(const ValueKey('favorites-see-all')));
    await tester.pumpAndSettle();

    // Az aktív riasztás kis haranggal látszik.
    expect(find.byKey(const ValueKey('watch-alert-AAPL')), findsOneWidget);
    expect(find.byKey(const ValueKey('watch-alert-MSFT')), findsNothing);
    // A saját jegyzet kis ikonnal.
    expect(find.byKey(const ValueKey('watch-note-MSFT')), findsNothing);
    await s.notes.set('MSFT', 'Felhő-üzletág figyelése');
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('watch-note-MSFT')), findsOneWidget);
    // Friss negyedéves eredmény a ticker alatt (a demó: 1,15 a várt 1,12 helyett).
    expect(find.byKey(const ValueKey('watch-result-MSFT')), findsOneWidget);
    expect(find.text('EPS +2.7%'), findsWidgets);
    // Nagy napi mozgás (NVDA +2,98%): koppintható jel; a többinél nincs.
    expect(find.byKey(const ValueKey('watch-move-NVDA')), findsOneWidget);
    // A demó árak nem adnak technikai jelzést: a sáv nem látszik.
    expect(find.byKey(const ValueKey('watch-signals')), findsNothing);
    expect(find.byKey(const ValueKey('watch-move-AAPL')), findsNothing);

    // A részvény melletti gombbal: új lista, benne a részvénnyel.
    await tester.tap(find.byKey(const ValueKey('watch-addto-NVDA')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-in-new')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('watch-list-name')), 'Chips');
    await tester.tap(find.byKey(const ValueKey('watch-list-ok')));
    await tester.pumpAndSettle();
    expect(s.preferences.watchLists.single.symbols, ['NVDA']);

    // Szűrés a listára: csak az NVDA látszik; elhúzva csak a listáról kerül le.
    await tester.tap(find.byKey(const ValueKey('watch-list-Chips')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('watch-NVDA')), findsOneWidget);
    expect(find.byKey(const ValueKey('watch-MSFT')), findsNothing);
    await tester.drag(find.byKey(const ValueKey('watch-NVDA')), const Offset(-600, 0));
    await tester.pumpAndSettle();
    expect(s.preferences.watchLists.single.symbols, isEmpty);
    expect(s.preferences.favorites, contains('NVDA'));
    expect(find.text('No stocks in this list yet. Tap the list button next to a stock to add it.'), findsOneWidget);

    // Tömeges riasztás a lista részvényeire (most üres a lista: a Mind nézetben próbáljuk).
    await tester.tap(find.byKey(const ValueKey('watch-list-*')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-list-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-alert-all')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('watch-alert-percent')), '4');
    await tester.tap(find.byKey(const ValueKey('watch-alert-save')));
    await tester.pumpAndSettle();
    expect(s.alerts.active.where((a) => a.kind == AlertKind.move).map((a) => a.symbol).toSet(), {
      'MSFT',
      'AAPL',
      'NVDA',
    });
    expect(s.alerts.active.firstWhere((a) => a.kind == AlertKind.move).value, 4);
    expect(find.text('3 alerts set'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('watch-list-Chips')));
    await tester.pumpAndSettle();

    // Átnevezés és törlés a menüből.
    await tester.tap(find.byKey(const ValueKey('watch-list-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-list-delete')));
    await tester.pumpAndSettle();
    expect(s.preferences.watchLists, isEmpty);
    expect(find.byKey(const ValueKey('watch-MSFT')), findsOneWidget);
  });

  test('tickers are read from pasted text', () {
    expect(parseTickers('aapl, MSFT;  \$nvda\nOTP.BD 2024 brk-b aapl ##'), ['AAPL', 'MSFT', 'NVDA', 'OTP.BD', 'BRK-B']);
    expect(parseTickers(''), isEmpty);
    expect(parseTickers('"AAPL","MSFT","NVDA"'), ['AAPL', 'MSFT', 'NVDA']);
    expect(parseTickers('AAPL: 10, MSFT: 5 | (OTP.BD)'), ['AAPL', 'MSFT', 'OTP.BD']);
    expect(parseTickers('Apple (AAPL) Microsoft (MSFT)'), ['AAPL', 'MSFT']);
    expect(parseTickers('I hold AAPL, MSFT and NVDA.'), ['AAPL', 'MSFT', 'NVDA']);
    expect(parseTickers('Mostly \$tsla and BRK.B.'), ['TSLA', 'BRK.B']);
  });

  testWidgets('removing the last favorite keeps the own lists reachable', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.preferences.addWatchList('Tech');
    await s.preferences.toggleInList('Tech', 'NVDA');
    await s.preferences.toggleFavorite('NVDA');
    expect(s.preferences.favorites, isEmpty);
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('favorites-see-all')));
    await tester.pumpAndSettle();
    expect(find.text('No favorites yet. Tap the star on a stock to add it.'), findsWidgets);
    await tester.tap(find.byKey(const ValueKey('watch-list-Tech')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('watch-NVDA')), findsOneWidget);
    expect(find.byKey(const ValueKey('watch-list-new')), findsOneWidget);
  });

  test('deleting or renaming a list also marks its members, so an old device cannot bring them back', () async {
    final p = AppPreferences();
    await p.addWatchList('Tech');
    await p.toggleInList('Tech', 'AAPL');
    await p.removeWatchList('Tech');
    expect(
      p.listsRemovedJson.keys,
      containsAll([AppPreferences.listKey('Tech'), AppPreferences.itemKey('Tech', 'AAPL')]),
    );
    await p.addWatchList('Chips');
    await p.toggleInList('Chips', 'NVDA');
    await p.renameWatchList('Chips', 'Semis');
    expect(p.listsRemovedJson.keys, contains(AppPreferences.itemKey('Chips', 'NVDA')));
  });

  test('favorites are kept upper-case and without repeats', () async {
    final p = AppPreferences();
    await p.setFavorites(['aapl', 'AAPL', ' msft', '']);
    expect(p.favorites, ['AAPL', 'MSFT']);
  });

  testWidgets('share a list as text and paste tickers into another one', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final shared = <String>[];
    final original = shareText;
    shareText = (text, {subject, origin}) async => shared.add('$subject|$text');
    addTearDown(() => shareText = original);
    final s = services();
    await s.preferences.setFavorites(['MSFT', 'AAPL']);
    await s.preferences.addWatchList('Chips');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('favorites-see-all')));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey('watch-list-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-share')));
    await tester.pumpAndSettle();
    expect(shared.single, 'WhatStock · Favorites|MSFT, AAPL');

    // A „Chips” listába beillesztve: a kedvencekhez és a listához is bekerülnek.
    await tester.tap(find.byKey(const ValueKey('watch-list-Chips')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-list-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-import')));
    await tester.pumpAndSettle();
    expect(tester.widget<FilledButton>(find.byKey(const ValueKey('watch-import-ok'))).onPressed, isNull);
    await tester.enterText(find.byKey(const ValueKey('watch-import-text')), 'nvda, AMD\nmsft');
    await tester.pumpAndSettle();
    expect(find.text('NVDA · AMD · MSFT'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('watch-import-ok')));
    await tester.pumpAndSettle();
    expect(s.preferences.favorites, ['MSFT', 'AAPL', 'NVDA', 'AMD']);
    expect(s.preferences.watchLists.single.symbols, ['NVDA', 'AMD', 'MSFT']);
    expect(find.text('3 stocks added'), findsOneWidget);
  });

  testWidgets('compare from the favorites and from the portfolio: the first three side by side', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.preferences.setFavorites(['MSFT', 'AAPL', 'NVDA', 'OTP']);
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await s.portfolio.add(symbol: 'MSFT', quantity: 1, price: 400, currency: 'USD');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('favorites-see-all')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('watch-compare')));
    await tester.pumpAndSettle();
    expect(find.byType(ComparePage), findsOneWidget);
    expect(tester.widget<ComparePage>(find.byType(ComparePage)).symbols, ['MSFT', 'AAPL', 'NVDA']);
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    final compare = find.byKey(const ValueKey('positions-compare'));
    await tester.ensureVisible(compare);
    await tester.pumpAndSettle();
    await tester.tap(compare);
    await tester.pumpAndSettle();
    expect(tester.widget<ComparePage>(find.byType(ComparePage)).symbols, ['AAPL', 'MSFT'], reason: 'súly szerint');
  });
}
