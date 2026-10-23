import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/features/portfolio/portfolio_move_watcher.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';

import 'app_widget_test.dart' show FakeNotifier, services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  PortfolioStore store() => PortfolioStore(
    lots: [
      PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD', date: DateTime(2025)),
      PortfolioLot(id: 'n', symbol: 'NVDA', quantity: 10, price: 100, currency: 'USD', date: DateTime(2025)),
    ],
  );

  /// A pillanatkép a megadott napi változásokkal (100-as záróárról).
  PortfolioSnapshot snap(PortfolioStore p, Map<String, double> change) => PortfolioSnapshot.compute(
    p.positions,
    quotes: {for (final e in change.entries) e.key: StockQuote(symbol: e.key, price: 100 + e.value, change: e.value)},
    rate: (_, _) => 1,
    currency: 'USD',
  );

  test(
    'the portfolio goal: one notification when reached (also without the move alert), again for a new goal',
    () async {
      final p = store();
      final prefs = AppPreferences(portfolioGoal: (amount: 2100, currency: 'USD'));
      final notifier = FakeNotifier();
      var change = {'AAPL': 0.0, 'NVDA': 0.0};
      final w = PortfolioMoveWatcher(
        portfolio: p,
        preferences: prefs,
        notifier: notifier,
        snapshot: () async => snap(p, change),
        describe: (s) => (title: 'move', body: ''),
        describeGoal: (s, g) => (title: 'goal ${g.amount}', body: 'value ${s.totalValue}'),
        clock: () => DateTime(2026, 10, 17, 10), // szombat: a mozgást nem nézi, a célt igen
      );
      expect(await w.check(), isFalse, reason: '2000 < 2100');
      change = {'AAPL': 6.0, 'NVDA': 5.0};
      expect(await w.check(), isTrue);
      expect((notifier.sent.single.id, notifier.sent.single.title), ('portfolio-goal', 'goal 2100.0'));
      expect(notifier.sent.single.body, 'value 2110.0');
      expect(await w.check(), isFalse, reason: 'célonként egyszer');
      // Más pénznemű cél nem számolható össze: nem szól.
      await prefs.setPortfolioGoal((amount: 100, currency: 'EUR'));
      expect(await w.check(), isFalse);
      await prefs.setPortfolioGoal((amount: 2050, currency: 'USD'));
      expect(await w.check(), isTrue, reason: 'új cél');
      expect(notifier.sent, hasLength(2));
    },
  );

  test('the move of a trading day is notified once: not again the next morning, but the next day’s move is', () async {
    final p = store();
    final prefs = AppPreferences(portfolioMoveAlert: 3);
    final notifier = FakeNotifier();
    var now = DateTime(2026, 10, 15, 16); // csütörtök
    var change = {'AAPL': -4.0, 'NVDA': -3.0};
    var session = DateTime.utc(2026, 10, 15, 14);
    final w = PortfolioMoveWatcher(
      portfolio: p,
      preferences: prefs,
      notifier: notifier,
      snapshot: () async => PortfolioSnapshot.compute(
        p.positions,
        quotes: {
          for (final e in change.entries)
            e.key: StockQuote(symbol: e.key, price: 100 + e.value, change: e.value, timestamp: session),
        },
        rate: (_, _) => 1,
        currency: 'USD',
      ),
      describe: (s) => (title: 'move ${s.dayGainPercent!.toStringAsFixed(1)}', body: ''),
      clock: () => now,
    );
    expect(await w.check(), isTrue);
    // A zárás: −4,5%; péntek hajnalban még a csütörtöki árak látszanak – nem szól újra.
    change = {'AAPL': -5.0, 'NVDA': -4.0};
    session = DateTime.utc(2026, 10, 15, 20);
    now = DateTime(2026, 10, 16, 0, 20);
    expect(await w.check(), isFalse);
    // Péntek délután az aznapi mozgás (−3,8%) már új kereskedési nap: szól.
    change = {'AAPL': -4.0, 'NVDA': -3.6};
    session = DateTime.utc(2026, 10, 16, 14);
    now = DateTime(2026, 10, 16, 16);
    expect(await w.check(), isTrue);
    expect(notifier.sent.map((n) => n.title), ['move -3.5', 'move -3.8']);
  });

  test('notifies once a day above the threshold, not on weekends, not twice for the same move', () async {
    final p = store();
    final prefs = AppPreferences(portfolioMoveAlert: 3);
    final notifier = FakeNotifier();
    var now = DateTime(2026, 10, 15, 18); // csütörtök
    var change = {'AAPL': -2.0, 'NVDA': -1.0};
    final w = PortfolioMoveWatcher(
      portfolio: p,
      preferences: prefs,
      notifier: notifier,
      snapshot: () async => snap(p, change),
      describe: (s) => (title: 'move ${s.dayGainPercent!.toStringAsFixed(1)}', body: '${biggestMover(s)}'),
      clock: () => now,
    );
    expect(await w.check(), isFalse, reason: '-1.5% is under 3%');

    change = {'AAPL': -6.0, 'NVDA': -1.0};
    expect(await w.check(), isTrue);
    expect(notifier.sent.single.id, 'portfolio-move-2026-10-15');
    expect(notifier.sent.single.title, 'move -3.5');
    expect(notifier.sent.single.body, contains('AAPL'));
    expect(await w.check(), isFalse, reason: 'once a day');

    now = DateTime(2026, 10, 17, 10); // szombat
    expect(await w.check(), isFalse);
    // Hétfő reggel még a csütörtöki/pénteki árak: ugyanaz a mozgás nem jelez újra.
    now = DateTime(2026, 10, 19, 9);
    expect(await w.check(), isFalse);
    change = {'AAPL': 4.0, 'NVDA': 3.0};
    expect(await w.check(), isTrue);
    expect(notifier.sent.last.title, 'move 3.5');

    await prefs.setPortfolioMoveAlert(0);
    now = DateTime(2026, 10, 20, 9);
    expect(await w.check(), isFalse, reason: 'turned off');
    expect(notifier.sent, hasLength(2));
  });

  test('the notification text names the direction and the biggest mover', () {
    final s = services();
    final p = store();
    final text = s.describePortfolioMove(snap(p, {'AAPL': -6.0, 'NVDA': -1.0}));
    expect(text.title, 'Your portfolio is down 3.5% today');
    expect(text.body, contains('AAPL -6.0%'));
    expect(s.describePortfolioMove(snap(p, {'AAPL': 1.0, 'NVDA': 6.0})).title, 'Your portfolio is up 3.5% today');
  });

  testWidgets('the threshold is chosen in the settings', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings').first);
    await tester.pumpAndSettle();
    final tile = find.byKey(const ValueKey('portfolio-move-alert'));
    await tester.ensureVisible(tile);
    await tester.tap(tile);
    await tester.pumpAndSettle();
    await tester.tap(find.text('±5%').last);
    await tester.pumpAndSettle();
    expect(s.preferences.portfolioMoveAlert, 5);
  });
}
