import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/features/alerts/alert_monitor.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';

import 'app_widget_test.dart' show FakeNotifier, services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  PriceAlert alert(AlertKind kind, double value) =>
      PriceAlert(id: 'x', symbol: 'AAPL', kind: kind, value: value, currency: 'USD', createdAt: DateTime(2026));

  test('conditions: above, below and daily move in either direction', () {
    const up = StockQuote(symbol: 'AAPL', price: 241, changePercent: 3.2);
    const down = StockQuote(symbol: 'AAPL', price: 199, changePercent: -6.1);
    expect(alert(AlertKind.above, 240).isHit(up), isTrue);
    expect(alert(AlertKind.above, 240).isHit(down), isFalse);
    expect(alert(AlertKind.below, 200).isHit(down), isTrue);
    expect(alert(AlertKind.below, 200).isHit(up), isFalse);
    expect(alert(AlertKind.move, 5).isHit(down), isTrue);
    expect(alert(AlertKind.move, 5).isHit(up), isFalse);
    // Már teljesült szintre nem lehet riasztást tenni.
    expect(PriceAlert.alreadyMet(AlertKind.above, 230, 231.45), isTrue);
    expect(PriceAlert.alreadyMet(AlertKind.below, 240, 231.45), isTrue);
    expect(PriceAlert.alreadyMet(AlertKind.above, 240, 231.45), isFalse);
    expect(PriceAlert.alreadyMet(AlertKind.above, 240, null), isFalse);
    expect(PriceAlert.alreadyMet(AlertKind.move, 1, 231.45), isFalse);
  });

  test('alerts survive a restart; triggering and re-arming change the state', () async {
    final store = AlertStore();
    final a = await store.add(symbol: 'aapl', kind: AlertKind.above, value: 240, currency: 'USD');
    await store.add(symbol: 'MSFT', kind: AlertKind.move, value: 4);
    await store.markTriggered(a.id, DateTime.utc(2026, 10, 12, 15), 241.5);
    final loaded = await AlertStore.load();
    expect(loaded.alerts.map((x) => x.symbol), ['MSFT', 'AAPL']); // legújabb elöl
    final back = loaded.forSymbol('AAPL').single;
    expect(back.isActive, isFalse);
    expect(back.triggeredPrice, 241.5);
    expect(loaded.hasActive('AAPL'), isFalse);
    expect(loaded.hasActive('msft'), isTrue);
    await loaded.rearm(back.id);
    expect(loaded.forSymbol('AAPL').single.isActive, isTrue);
    await loaded.remove(back.id);
    expect((await AlertStore.load()).alerts.length, 1);
    expect(
      AlertStore.parse('[{"symbol":"A","kind":"above","value":1},{"symbol":"B","kind":"sideways","value":1},"x"]')
          .length,
      1,
    );
  });

  test('the monitor notifies once per alert and skips stocks without a price', () async {
    final store = AlertStore();
    await store.add(symbol: 'AAPL', kind: AlertKind.above, value: 230, currency: 'USD'); // 231,45 → teljesül
    await store.add(symbol: 'AAPL', kind: AlertKind.below, value: 200, currency: 'USD'); // nem
    await store.add(symbol: 'MSFT', kind: AlertKind.move, value: 0.5); // −0,72% → teljesül
    await store.add(symbol: 'ZZZZ', kind: AlertKind.above, value: 1); // nincs ára a demóban
    final notifier = FakeNotifier();
    var notified = 0;
    final monitor = AlertMonitor(
      store: store,
      marketData: DemoMarketDataProvider(latency: Duration.zero),
      notifier: notifier,
      describe: (h) => (title: '${h.alert.symbol} ${h.alert.kind.name}', body: '${h.quote.price}'),
      clock: () => DateTime.utc(2026, 10, 12, 15),
    )..addListener(() => notified++);
    final hits = await monitor.check();
    expect(hits.map((h) => '${h.alert.symbol} ${h.alert.kind.name}'), ['AAPL above', 'MSFT move']);
    expect(notifier.sent.map((n) => n.title), ['AAPL above', 'MSFT move']);
    expect(notified, 1);
    expect(store.active.map((a) => a.symbol), ['AAPL', 'ZZZZ']);
    expect(store.alerts.firstWhere((a) => a.kind == AlertKind.above && a.symbol == 'AAPL').triggeredPrice, 231.45);
    // Másodszor már nem szól.
    expect(await monitor.check(), isEmpty);
    expect(notifier.sent.length, 2);
  });

  testWidgets('an alert set on the stock page fires with a localized message and opens the stock', (tester) async {
    final notifier = FakeNotifier();
    final s = services(notifier: notifier);
    await tester.pumpWidget(StockLensApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Set price alert'));
    await tester.pumpAndSettle();
    expect(find.text('Price alert · AAPL'), findsOneWidget);
    expect(find.widgetWithText(TextField, '243'), findsOneWidget); // +5%
    await tester.enterText(find.byKey(const ValueKey('alert-value')), '230');
    await tester.tap(find.widgetWithText(FilledButton, 'Set alert'));
    await tester.pumpAndSettle();
    expect(find.text('The price is already past this level.'), findsOneWidget);
    await tester.tap(find.text('Falls below'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('alert-value')), '235');
    await tester.tap(find.widgetWithText(FilledButton, 'Set alert'));
    await tester.pumpAndSettle();
    expect(find.text('The price is already past this level.'), findsOneWidget); // 231,45 már 235 alatt
    await tester.tap(find.text('Rises above'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('alert-value')), '231');
    // A jelenlegi ár fölötti szintet is elfogadja: itt 231 < 231,45, ezért ez is hiba.
    await tester.tap(find.widgetWithText(FilledButton, 'Set alert'));
    await tester.pumpAndSettle();
    expect(find.text('The price is already past this level.'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('alert-value')), '232');
    await tester.tap(find.widgetWithText(FilledButton, 'Set alert'));
    await tester.pumpAndSettle();
    expect(find.text('Alert set for AAPL.'), findsOneWidget);
    expect(find.text('Price alerts'), findsOneWidget);
    expect(find.text('Above 232.00 USD'), findsOneWidget);

    // A demó ár 231,45, így nem teljesül; a szintet lejjebb téve igen.
    final a = s.alerts.alerts.single;
    await s.alerts.remove(a.id);
    await s.alerts.add(symbol: 'AAPL', kind: AlertKind.move, value: 0.5);
    final checking = s.alertMonitor.check();
    await tester.pumpAndSettle();
    await checking;
    await tester.pumpAndSettle();
    expect(notifier.sent.single.title, 'AAPL moved +0.9% today');
    expect(notifier.sent.single.body, 'Current price: 231.45 (+0.9%)');
    expect(find.textContaining('AAPL moved +0.9% today'), findsOneWidget); // az appon belüli jelzés
    await tester.pumpAndSettle(const Duration(seconds: 9));
    expect(find.textContaining('Triggered'), findsOneWidget);
  });
}
