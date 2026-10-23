import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/ticker_change.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('a ticker change moves the transactions, dividends, splits, note, alerts, favorite and target', () async {
    final s = services();
    final lot = await s.portfolio.add(
      symbol: 'FB',
      quantity: 10,
      price: 180,
      currency: 'USD',
      date: DateTime(2020, 1, 2),
    );
    await s.portfolio.add(symbol: 'META', quantity: 2, price: 500, currency: 'USD', date: DateTime(2024, 5, 2));
    await s.portfolio.addDividend(symbol: 'FB', amount: 5, currency: 'USD', date: DateTime(2024, 3, 26));
    await s.portfolio.addSplit(symbol: 'FB', from: 1, to: 2, date: DateTime(2021, 1, 4));
    await s.notes.set('FB', 'Reels.');
    await s.notes.set('META', 'AI capex.');
    await s.alerts.add(symbol: 'FB', kind: AlertKind.above, value: 700, currency: 'USD');
    await s.preferences.setFavorites(['AAPL', 'FB']);
    await s.preferences.setTargets({'FB': 10, 'AAPL': 20});
    await s.preferences.addWatchList('Tech');
    await s.preferences.toggleInList('Tech', 'FB');

    await changeTicker(s, 'fb', 'meta');

    expect(s.portfolio.lots.map((l) => l.symbol).toSet(), {'META'});
    final moved = s.portfolio.lots.firstWhere((l) => l.id == lot.id);
    expect(moved.edited, isNotNull, reason: 'a szinkron az újat viszi át');
    expect(s.portfolio.positionOf('META')!.quantity, 22, reason: 'a felaprózás is átjött: 10×2 + 2');
    expect(s.portfolio.dividends.single.symbol, 'META');
    expect(s.portfolio.splits.single.symbol, 'META');
    expect(s.notes.of('FB'), isNull);
    expect(s.notes.of('META')!.text, 'AI capex.\n\nReels.');
    expect(s.alerts.alerts.single.symbol, 'META');
    expect(s.preferences.favorites, ['AAPL', 'META']);
    expect(s.preferences.targets, {'META': 10.0, 'AAPL': 20.0});
    expect(s.preferences.watchLists.single.symbols, ['META']);
  });

  test('the same split already recorded on the new ticker stays once', () async {
    final store = PortfolioStore();
    await store.addSplit(symbol: 'SQ', from: 1, to: 2, date: DateTime(2021, 1, 4));
    final keep = await store.addSplit(symbol: 'XYZ', from: 1, to: 2, date: DateTime(2021, 1, 4));
    await store.add(symbol: 'SQ', quantity: 1, price: 50, currency: 'USD', date: DateTime(2020, 1, 2));
    expect(await store.renameSymbol('SQ', 'XYZ'), 2);
    expect(store.splits.map((s) => s.id), [keep!.id]);
    expect(store.deletedJson, hasLength(1), reason: 'a kimaradó másodpéldány nem jön vissza szinkronnal');
  });
}
