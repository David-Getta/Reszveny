import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/util/storage_room.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/notes/notes_store.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/sync/tab_refresh.dart';

/// A böngészős változat átnézésének javításai.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('every header the app sends to the server is allowed by its CORS answer', () {
    final sent = <String>{};
    for (final f in Directory('lib').listSync(recursive: true).whereType<File>()) {
      if (!f.path.endsWith('.dart') || f.path.contains('l10n/generated')) continue;
      for (final m in RegExp(r"'(x-whatstock-[a-z-]+)'\s*:").allMatches(f.readAsStringSync())) {
        sent.add(m.group(1)!);
      }
    }
    expect(sent, containsAll(['x-whatstock-depth', 'x-whatstock-request-id', 'x-whatstock-continuation']));
    final api = File('server/lib/src/api.dart').readAsStringSync();
    final allowed = RegExp(r'allowedRequestHeaders =\s*([^;]+);').firstMatch(api)!.group(1)!;
    for (final h in sent) {
      expect(allowed.contains(h), isTrue, reason: '$h nincs az access-control-allow-headers listában');
    }
    expect(api, contains("'access-control-expose-headers': 'x-whatstock-continuation"));
  });

  test('when storage is full, the market cache makes room for the user data', () async {
    SharedPreferences.setMockInitialValues({'mdc_quote_AAPL': 'x' * 100, 'mdc_index': 'AAPL', 'portfolio_lots': '[]'});
    var attempts = 0;
    final ok = await writeWithRoom((prefs) async {
      attempts++;
      if (prefs.getKeys().any((k) => k.startsWith(marketCachePrefix))) throw StateError('QuotaExceededError');
      await prefs.setString('portfolio_lots', '[1]');
    });
    final prefs = await SharedPreferences.getInstance();
    expect((ok, attempts), (true, 2));
    expect(prefs.getKeys().where((k) => k.startsWith(marketCachePrefix)), isEmpty);
    expect(prefs.getString('portfolio_lots'), '[1]');
  });

  test("a tab coming back to the front takes over what another tab saved meanwhile", () async {
    // Két lap: mindkettő a saját tárolóit tartja a memóriában, a tároló közös.
    final a = (
      preferences: await AppPreferences.load(),
      portfolio: await PortfolioStore.load(),
      alerts: await AlertStore.load(),
      notes: await NotesStore.load(),
    );
    final b = await PortfolioStore.load();
    await a.portfolio.add(symbol: 'AAPL', quantity: 1, price: 100, currency: 'USD');
    final bAgain = await PortfolioStore.load();
    await bAgain.add(symbol: 'MSFT', quantity: 2, price: 300, currency: 'USD');
    expect(b.lots, isEmpty);
    final refresh = TabRefresh(preferences: a.preferences, portfolio: a.portfolio, alerts: a.alerts, notes: a.notes);
    expect(await refresh.refresh(), isTrue);
    expect(a.portfolio.lots.map((l) => l.symbol).toSet(), {'AAPL', 'MSFT'});
    // A következő mentése már nem írja felül a másik lapét.
    await a.portfolio.add(symbol: 'GOOG', quantity: 1, price: 150, currency: 'USD');
    expect((await PortfolioStore.load()).lots.map((l) => l.symbol).toSet(), {'AAPL', 'MSFT', 'GOOG'});
    expect(await refresh.refresh(), isFalse, reason: 'nincs új változás');
  });
}
