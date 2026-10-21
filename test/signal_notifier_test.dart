import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/features/home/signal_notifier.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';

import 'app_widget_test.dart' show FakeNotifier;

/// A demó piaci adat, de a DOWN ticker árai tíz napja esnek (RSI túladott).
class _Market extends DemoMarketDataProvider {
  _Market() : super(latency: Duration.zero);

  @override
  Future<PriceHistory> history(String symbol, {int years = 5}) async {
    if (symbol != 'DOWN') return super.history(symbol, years: years);
    final closes = [for (var i = 0; i < 220; i++) 100.0, for (var i = 1; i <= 10; i++) 100.0 - i * 0.3];
    return PriceHistory(
      symbol: symbol,
      points: [
        for (final (i, c) in closes.indexed)
          PricePoint(
            time: DateTime(2025, 1, 1).add(Duration(days: i)),
            close: c,
          ),
      ],
    );
  }
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('one notification a day listing the signals; none when switched off or without signals', () async {
    var now = DateTime(2026, 10, 21, 18);
    final notifier = FakeNotifier();
    final prefs = AppPreferences(favorites: ['DOWN', 'AAPL']);
    final n = SignalNotifier(
      marketData: _Market(),
      preferences: prefs,
      portfolio: PortfolioStore(),
      notifier: notifier,
      clock: () => now,
      describe: (signals) => (
        title: 'Signals',
        body: [for (final x in signals) '${x.symbol}: ${x.kind.name} ${x.value.round()}'].join('\n'),
      ),
    );
    expect(await n.check(), 'signals-2026-10-21-DOWN');
    expect(notifier.sent.single.body, contains('DOWN: rsiOversold'));
    expect(notifier.sent.single.body, isNot(contains('AAPL')));
    // Ugyanaznap még egyszer: nem.
    expect(await n.check(), isNull);
    now = DateTime(2026, 10, 22, 18);
    expect(await n.check(), 'signals-2026-10-22-DOWN');
    // Kikapcsolva: nem.
    await prefs.setSignalAlerts(false);
    now = DateTime(2026, 10, 23, 18);
    expect(await n.check(), isNull);
    expect(notifier.sent, hasLength(2));
    // Jelzés nélkül (csak demó részvények): nem.
    await prefs.setSignalAlerts(true);
    await prefs.setFavorites(['AAPL']);
    expect(await n.check(), isNull);
  });
}
