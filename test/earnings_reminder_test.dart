import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/models/analysis_extras.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/events/earnings_reminder.dart';
import 'package:reszveny/features/events/events_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _Market extends DemoMarketDataProvider {
  _Market(this.dates) : super(latency: Duration.zero);

  final Map<String, DateTime> dates;

  @override
  Future<UpcomingEarnings?> nextEarnings(String symbol) async {
    final d = dates[symbol];
    return d == null ? null : UpcomingEarnings(date: d, hour: 'amc', epsEstimate: 1.62);
  }

  /// A jelentés után megjelenő eredmény (tesztben kézzel állítható).
  final results = <String, EarningsSurprise>{};

  @override
  Future<EarningsOverview> earnings(String symbol) async =>
      EarningsOverview(history: [?results[symbol]], next: await nextEarnings(symbol));
}

void main() {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);

  setUp(() => SharedPreferences.setMockInitialValues({}));

  EarningsReminder reminder(
    _Market market,
    FakeNotifier notifier,
    AppPreferences prefs, {
    DateTime Function()? clock,
  }) => EarningsReminder(
    events: EventsService(
      marketData: market,
      preferences: prefs,
      portfolio: PortfolioStore(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
    ),
    preferences: prefs,
    notifier: notifier,
    describe: (e, {required tomorrow}) => (title: '${e.symbol} ${tomorrow ? 'tomorrow' : 'today'}', body: e.hour ?? ''),
    describeResult: (symbol, r) => (title: '$symbol ${r.beat == true ? 'beat' : 'missed'}', body: '${r.actual}'),
    clock: clock,
  );

  test('one notification for results tomorrow or today, never twice, none for later ones', () async {
    final market = _Market({
      'AAPL': today.add(const Duration(days: 1)),
      'MSFT': today,
      'NVDA': today.add(const Duration(days: 5)),
    });
    final notifier = FakeNotifier();
    final prefs = AppPreferences(favorites: const ['AAPL', 'MSFT', 'NVDA']);
    final r = reminder(market, notifier, prefs);

    final sent = await r.check();
    expect(sent.length, 2);
    expect(notifier.sent.map((n) => n.title).toSet(), {'AAPL tomorrow', 'MSFT today'});
    expect(notifier.sent.first.body, 'amc');
    expect(notifier.sent.first.id, startsWith('earnings-'));

    // Újra (akár újraindítás után is) már nem szól.
    expect(await reminder(market, notifier, prefs).check(), isEmpty);
    expect(notifier.sent.length, 2);
  });

  test('after the report: one notification with the result, once it is out', () async {
    final market = _Market({'AAPL': today.add(const Duration(days: 1))});
    final notifier = FakeNotifier();
    final prefs = AppPreferences(favorites: const ['AAPL']);
    await reminder(market, notifier, prefs).check();
    expect(notifier.sent.single.title, 'AAPL tomorrow');

    // Másnap még nincs eredmény: csend.
    final later = today.add(const Duration(days: 2));
    expect(await reminder(market, notifier, prefs, clock: () => later).check(), isEmpty);
    // Megjelent: egyszer szól.
    market.results['AAPL'] = EarningsSurprise(
      period: today.subtract(const Duration(days: 20)),
      actual: 1.7,
      estimate: 1.62,
    );
    expect(await reminder(market, notifier, prefs, clock: () => later).check(), hasLength(1));
    expect(notifier.sent.last.title, 'AAPL beat');
    expect(await reminder(market, notifier, prefs, clock: () => later).check(), isEmpty);
  });

  test('off in Settings, or nothing watched: no notification', () async {
    final market = _Market({'AAPL': today.add(const Duration(days: 1))});
    final notifier = FakeNotifier();
    final prefs = AppPreferences(favorites: const ['AAPL'], earningsReminders: false);
    expect(await reminder(market, notifier, prefs).check(), isEmpty);
    expect(await reminder(market, notifier, AppPreferences()).check(), isEmpty);
    expect(notifier.sent, isEmpty);
  });

  test('the notification id carries the ticker and the day', () {
    final e = UpcomingEvent(symbol: 'BRK.B', date: DateTime(2026, 10, 30), kind: UpcomingEventKind.earnings);
    expect(EarningsReminder.idOf(e), 'earnings-BRK.B-2026-10-30');
  });
}
