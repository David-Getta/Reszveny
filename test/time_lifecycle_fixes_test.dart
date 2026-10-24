import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/util/us_market_hours.dart';
import 'package:reszveny/features/account/account_controller.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/billing_service.dart';
import 'package:reszveny/features/billing/demo_billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/billing/web_checkout_billing_service.dart';
import 'package:reszveny/features/events/events_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/market_data/finnhub_market_data_provider.dart';
import 'package:reszveny/features/news/daily_brief.dart';
import 'package:reszveny/features/news/morning_brief.dart';
import 'package:reszveny/features/news/watch_news.dart';
import 'package:reszveny/features/notes/notes_card.dart';
import 'package:reszveny/features/portfolio/portfolio_move_watcher.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/portfolio/portfolio_valuation.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';

import 'app_widget_test.dart' show FakeNotifier, services;

/// Egy időzóna- és egy életciklus-átnézés javításainak ellenőrzése. A tesztkörnyezet
/// UTC-ben fut: New Yorktól keletre van, mint Európa és Ázsia.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test("today's gain on shares bought in the last session is measured from the buy price on the weekend too", () {
    final store = PortfolioStore(
      lots: [
        PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 10, price: 105, currency: 'USD', date: DateTime(2026, 10, 23)),
      ],
    );
    // Péntek esti zárás (New York): +10 a 100-as előző záráshoz.
    final s = PortfolioSnapshot.compute(
      store.positions,
      quotes: {'AAPL': StockQuote(symbol: 'AAPL', price: 110, change: 10, timestamp: DateTime.utc(2026, 10, 23, 20))},
      rate: (_, _) => 1,
      currency: 'USD',
    );
    expect(s.rows.single.dayGain, 50);
    expect(s.dayGain, 50);
  });

  test('after a weekend the morning brief stays in the morning, not at the evening close', () async {
    var calls = 0;
    final client = MockClient((req) async {
      calls++;
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': 'Brief $calls.'},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    var now = DateTime.utc(2026, 10, 17, 8); // szombat reggel
    final market = DemoMarketDataProvider(latency: Duration.zero);
    final prefs = AppPreferences(favorites: const ['NVDA']);
    await prefs.setMorningBrief(true);
    final news = WatchNewsService(marketData: market, preferences: prefs, portfolio: PortfolioStore());
    final brief = DailyBrief(
      config: const AppConfig(backendUrl: 'https://api.test'),
      marketData: market,
      news: news,
      client: client,
      clock: () => now,
    );
    final morning = MorningBrief(
      brief: brief,
      news: news,
      preferences: prefs,
      notifier: FakeNotifier(),
      language: () => 'English',
      title: () => 'Today',
      clock: () => now,
    );
    expect(await morning.check(), isTrue);
    now = DateTime.utc(2026, 10, 19, 8); // hétfő reggel: azóta nem zárt kereskedési nap
    expect(await morning.check(), isFalse);
    now = DateTime.utc(2026, 10, 19, 21); // hétfő este, a zárás után: nem este készül
    expect(await morning.check(), isFalse);
    now = DateTime.utc(2026, 10, 20, 8); // kedd reggel
    expect(await morning.check(), isTrue);
    expect(calls, 2);
  });

  test("a same-day New York report is still upcoming when it is already the next day east of New York", () {
    // 2026-10-29 02:00 UTC = 10-28 22:00 New York: az aznapi, zárás utáni jelentés még várható.
    final now = DateTime.utc(2026, 10, 29, 2);
    expect(UsMarketHours.eventToday(now), DateTime(2026, 10, 28));
    final x = FinnhubMarketDataProvider.parseAnalysisExtras(
      'AAPL',
      calendar: {
        'earningsCalendar': [
          {'date': '2026-10-28', 'hour': 'amc', 'epsEstimate': 1.6, 'symbol': 'AAPL'},
        ],
      },
      now: now,
    );
    expect(x.nextEarnings?.date, DateTime(2026, 10, 28));
  });

  test('a new favorite counts from the New York trading day', () async {
    final prefs = AppPreferences();
    await prefs.toggleFavorite('AAPL');
    expect(prefs.favoriteSince('AAPL'), UsMarketHours.sessionDate(DateTime.now().toUtc()));
  });

  test("Friday's move is notified east of New York, where it is already Saturday", () async {
    final p = PortfolioStore(
      lots: [PortfolioLot(id: 'a', symbol: 'AAPL', quantity: 10, price: 100, currency: 'USD', date: DateTime(2025))],
    );
    final notifier = FakeNotifier();
    final w = PortfolioMoveWatcher(
      portfolio: p,
      preferences: AppPreferences(portfolioMoveAlert: 3),
      notifier: notifier,
      snapshot: () async => PortfolioSnapshot.compute(
        p.positions,
        quotes: {'AAPL': StockQuote(symbol: 'AAPL', price: 95, change: -5, timestamp: DateTime.utc(2026, 10, 23, 20))},
        rate: (_, _) => 1,
        currency: 'USD',
      ),
      describe: (s) => (title: 'move', body: ''),
      // Szombat 00:30 helyben (UTC), péntek 20:30 New Yorkban.
      clock: () => DateTime(2026, 10, 24, 0, 30),
    );
    expect(await w.check(), isTrue);
    expect(notifier.sent.single.title, 'move');
  });

  test('the market clock steps a calendar day to the next opening', () {
    // Csütörtök zárás után: péntek 9:30 New York (13:30 UTC).
    final s = UsMarketHours.status(DateTime.utc(2026, 10, 29, 20, 30));
    expect((s.open, s.next), (false, DateTime.utc(2026, 10, 30, 13, 30)));
  });

  test('a slow account check during a browser checkout reports the purchase once', () async {
    var tier = 'trial';
    final client = MockClient((req) async {
      http.Response json(Object o, [int s = 200]) => http.Response(jsonEncode(o), s);
      final ent = {'tier': tier, 'used': 0, 'extra': 0};
      return switch (req.url.path) {
        '/v1/auth/anonymous' => json({'user_id': 'u1', 'token': 'anon', 'entitlements': ent}),
        '/v1/me' => await Future.delayed(
          const Duration(milliseconds: 50),
          () => json({'user_id': 'u1', 'email': 'me@example.com', 'entitlements': ent}),
        ),
        '/v1/billing/checkout' => json({'url': 'https://checkout.stripe.com/c/1'}),
        _ => json({'error': 'nf'}, 404),
      };
    });
    final backend = BackendClient(baseUrl: 'https://x.test', inner: client);
    final ent = EntitlementService(initial: const EntitlementState(tier: PlanTier.trial));
    final account = AccountController(backend: backend, entitlements: ent, storedEmail: 'me@example.com');
    final billing = WebCheckoutBillingService(
      backend: backend,
      account: account,
      prices: DemoBillingService(latency: Duration.zero),
      openUrl: (u) async => true,
      pollInterval: const Duration(milliseconds: 10),
      pollTimeout: const Duration(seconds: 5),
    );
    final events = <BillingStatus>[];
    final sub = billing.events.listen((e) => events.add(e.status));
    await billing.buy(
      const StoreProduct(
        id: 'whatstock.sub.pro',
        title: 'Pro',
        price: r'$9.99',
        rawPrice: 9.99,
        currency: 'USD',
        kind: StoreProductKind.subscription,
      ),
    );
    await Future<void>.delayed(const Duration(milliseconds: 30));
    tier = 'pro';
    await Future<void>.delayed(const Duration(milliseconds: 300));
    expect(events.where((s) => s == BillingStatus.purchased), hasLength(1));
    await sub.cancel();
    billing.dispose();
  });

  test('dropping an analysis of another language notifies after the current frame, not inside it', () async {
    final report = StockReport(
      symbol: 'AAPL',
      headline: 'x',
      sections: const [],
      generatedAt: DateTime.utc(2026, 10, 20),
      language: 'English',
    );
    SharedPreferences.setMockInitialValues({'report_AAPL': jsonEncode(report.toJson())});
    final store = ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig()));
    expect(await store.restore('AAPL', language: 'English'), isNotNull);
    var notified = 0;
    store.addListener(() => notified++);
    final restoring = store.restore('AAPL', language: 'German');
    expect(notified, 0);
    expect(await restoring, isNull);
    await Future<void>.delayed(Duration.zero);
    expect(notified, 1);
  });

  testWidgets('closing a stock page right after typing a note saves it without a build error', (tester) async {
    final s = services();
    var marks = 0;
    Widget app(bool withCard) => AppServicesScope(
      services: s,
      child: MaterialApp(
        theme: AppTheme.build(Brightness.light),
        localizationsDelegates: WhatStockApp.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: Column(
            children: [
              // Mint a Kedvencek jegyzet-jele: a jegyzettárat figyeli.
              ListenableBuilder(
                listenable: s.notes,
                builder: (_, _) {
                  marks++;
                  return const SizedBox();
                },
              ),
              if (withCard)
                const Expanded(
                  child: SingleChildScrollView(child: NotesCard(symbol: 'AAPL')),
                ),
            ],
          ),
        ),
      ),
    );
    await tester.pumpWidget(app(true));
    await tester.enterText(find.byKey(const ValueKey('notes-field')), 'Buy the dip');
    await tester.pump(const Duration(milliseconds: 100));
    final before = marks;
    await tester.pumpWidget(app(false));
    expect(tester.takeException(), isNull);
    await tester.pump();
    expect(s.notes.of('AAPL')?.text, 'Buy the dip');
    expect(marks, greaterThan(before));
  });

  test('a report weeks away gives no fresh result, whatever the time of day', () async {
    final sent = <String>[];
    final client = MockClient((req) async {
      sent.add((((jsonDecode(req.body) as Map)['messages'] as List).single as Map)['content'] as String);
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': 'Brief.'},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    final market = DemoMarketDataProvider(latency: Duration.zero);
    final prefs = AppPreferences(favorites: const ['AAPL', 'MSFT']);
    // Csütörtök 20:00 New Yorkban: a nyitás és a zárás is elmúlt.
    final now = DateTime.utc(2026, 10, 23, 0);
    final brief =
        DailyBrief(
            config: const AppConfig(backendUrl: 'https://api.test'),
            marketData: market,
            news: WatchNewsService(marketData: market, preferences: prefs, portfolio: PortfolioStore()),
            client: client,
            clock: () => now,
          )
          ..upcoming = () => [
            UpcomingEvent(symbol: 'AAPL', date: DateTime(2026, 11, 20), kind: UpcomingEventKind.earnings, hour: 'bmo'),
            UpcomingEvent(symbol: 'MSFT', date: DateTime(2026, 11, 20), kind: UpcomingEventKind.earnings, hour: 'amc'),
          ];
    await brief.generate(symbols: ['AAPL', 'MSFT'], language: 'English');
    expect(sent.single, isNot(contains('"reported"')));
  });
}
