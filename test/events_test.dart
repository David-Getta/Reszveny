import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/analysis_extras.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/events/events_service.dart';
import 'package:reszveny/features/events/events_view.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';

import 'app_widget_test.dart' show FakeNotifier;

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

/// Rögzített gyorsjelentés-dátumok, a hívások számlálásával.
class _Market extends DemoMarketDataProvider {
  _Market(this.dates) : super(latency: Duration.zero);

  final Map<String, DateTime> dates;
  final calls = <String>[];

  /// Ha be van állítva, a lekérés megvárja (töltés közbeni változás teszteléséhez).
  Completer<void>? gate;

  @override
  Future<UpcomingEarnings?> nextEarnings(String symbol) async {
    calls.add(symbol);
    if (gate case final g?) await g.future;
    final d = dates[symbol];
    return d == null ? null : UpcomingEarnings(date: d, hour: 'amc', epsEstimate: 1.62);
  }
}

String _day(DateTime d) => d.toIso8601String().substring(0, 10);

void main() {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);

  setUp(() {
    SharedPreferences.setMockInitialValues({
      'report_NVDA': jsonEncode(
        StockReport(
          symbol: 'NVDA',
          headline: 'h',
          sections: const [],
          generatedAt: now.subtract(const Duration(hours: 2)),
          outlook: ReportOutlook(
            catalysts: [
              Catalyst(date: _day(today.add(const Duration(days: 9))), event: 'GTC keynote'),
              Catalyst(date: _day(today.subtract(const Duration(days: 3))), event: 'Old news'),
              Catalyst(date: _day(today.add(const Duration(days: 200))), event: 'Too far'),
              const Catalyst(date: 'Q1 2027', event: 'Undated'),
            ],
          ),
        ).toJson(),
      ),
      'report_AAPL': jsonEncode(
        StockReport(
          symbol: 'AAPL',
          headline: 'h',
          sections: const [],
          generatedAt: now.subtract(const Duration(hours: 2)),
          outlook: ReportOutlook(
            catalysts: [Catalyst(date: _day(today.add(const Duration(days: 4))), event: 'Q4 FY26 earnings')],
          ),
        ).toJson(),
      ),
    });
  });

  EventsService service(_Market market, {List<String> favorites = const ['AAPL', 'MSFT']}) {
    final portfolio = PortfolioStore();
    return EventsService(
      marketData: market,
      preferences: AppPreferences(favorites: favorites),
      portfolio: portfolio,
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
    );
  }

  test('results dates of favorites and dated events of analyses, in order; cached for 12 hours', () async {
    final market = _Market({'AAPL': today.add(const Duration(days: 5)), 'MSFT': today.add(const Duration(days: 40))});
    final s = service(market);
    await s.refresh();
    expect(s.events.map((e) => (e.symbol, e.kind, e.date.difference(today).inDays, e.text)), [
      ('AAPL', UpcomingEventKind.earnings, 5, ''),
      ('NVDA', UpcomingEventKind.catalyst, 9, 'GTC keynote'),
      ('MSFT', UpcomingEventKind.earnings, 40, ''),
    ]);
    expect(s.events.first.hour, 'amc');
    expect(market.calls..sort(), ['AAPL', 'MSFT']);
    // Friss eredmények: a demó utolsó negyedéve (1,15 a várt 1,12 helyett) mindkettőnél.
    expect(s.recent.map((r) => r.symbol), ['AAPL', 'MSFT']);
    expect(s.recent.first.result.actual, 1.15);

    await s.refresh();
    expect(market.calls, hasLength(2), reason: 'cached');
    await s.refresh(force: true);
    expect(market.calls, hasLength(4));
  });

  test('an expected dividend (from the recorded payments of a held stock) is an event too, with its amount', () async {
    final market = _Market({});
    final portfolio = PortfolioStore();
    await portfolio.add(symbol: 'KO', quantity: 10, price: 60, currency: 'USD');
    final last = today.subtract(const Duration(days: 50));
    await portfolio.addDividend(
      symbol: 'KO',
      amount: 4.85,
      currency: 'USD',
      date: last.subtract(const Duration(days: 91)),
    );
    await portfolio.addDividend(symbol: 'KO', amount: 5.1, currency: 'USD', date: last);
    // Nem birtokolt részvény osztaléka nem esemény.
    await portfolio.addDividend(
      symbol: 'PEP',
      amount: 1,
      currency: 'USD',
      date: last.subtract(const Duration(days: 91)),
    );
    await portfolio.addDividend(symbol: 'PEP', amount: 1, currency: 'USD', date: last);
    final s = EventsService(
      marketData: market,
      preferences: AppPreferences(),
      portfolio: portfolio,
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
    );
    await s.refresh();
    final div = s.events.where((e) => e.kind == UpcomingEventKind.dividend).toList();
    expect(div.map((e) => e.symbol), ['KO']);
    expect(div.single.date, DateTime(last.year, last.month, last.day + 91));
    expect(div.single.amount, 5.1);
    expect(div.single.currency, 'USD');
  });

  test('a dividend recorded later shows up without a new network round: the service follows the portfolio', () async {
    final market = _Market({});
    final portfolio = PortfolioStore();
    await portfolio.add(symbol: 'KO', quantity: 10, price: 60, currency: 'USD');
    final s = EventsService(
      marketData: market,
      preferences: AppPreferences(),
      portfolio: portfolio,
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
    );
    await s.refresh();
    Iterable<UpcomingEvent> dividends() => s.events.where((e) => e.kind == UpcomingEventKind.dividend);
    expect(dividends(), isEmpty);
    final calls = market.calls.length;
    final last = today.subtract(const Duration(days: 50));
    await portfolio.addDividend(
      symbol: 'KO',
      amount: 4.85,
      currency: 'USD',
      date: last.subtract(const Duration(days: 91)),
    );
    await portfolio.addDividend(symbol: 'KO', amount: 5.1, currency: 'USD', date: last);
    await Future<void>.delayed(Duration.zero);
    expect(dividends().map((e) => e.symbol), ['KO']);
    expect(market.calls.length, calls, reason: 'a gyorsjelentés-dátumok a gyorsítótárból');
    // Készpénz-változás nem építi újra a listát (nincs értesítés) – a függő kör lefutása után.
    for (var i = 0; i < 50 && s.loading; i++) {
      await Future<void>.delayed(Duration.zero);
    }
    var notified = 0;
    s.addListener(() => notified++);
    await portfolio.setCash('EUR', 100);
    await Future<void>.delayed(Duration.zero);
    expect(notified, 0);
    // Eladás után már nem várható.
    await portfolio.add(symbol: 'KO', quantity: 10, price: 70, currency: 'USD', sell: true);
    await Future<void>.delayed(Duration.zero);
    expect(dividends(), isEmpty);
    s.dispose();
  });

  test('a stock bought while a refresh is in flight gets its results date fetched right after', () async {
    final market = _Market({'MSFT': today.add(const Duration(days: 5))});
    final portfolio = PortfolioStore();
    await portfolio.add(symbol: 'AAPL', quantity: 1, price: 100, currency: 'USD');
    final s = EventsService(
      marketData: market,
      preferences: AppPreferences(),
      portfolio: portfolio,
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
    );
    await s.refresh();
    market.gate = Completer<void>();
    final running = s.refresh(force: true);
    await Future<void>.delayed(Duration.zero);
    expect(s.loading, isTrue);
    await portfolio.add(symbol: 'MSFT', quantity: 1, price: 300, currency: 'USD');
    market.gate!.complete();
    market.gate = null;
    await running;
    expect(s.events.where((e) => e.symbol == 'MSFT' && e.kind == UpcomingEventKind.earnings), hasLength(1));
    expect(market.calls, contains('MSFT'));
    s.dispose();
  });

  test('a dividend event in the calendar export: title, estimated amount and a stable uid', () async {
    final l10n = await lookupAppLocalizations(const Locale('en'));
    final fmt = Fmt('en', na: 'n/a');
    final entries = calendarEntries(l10n, fmt, [
      UpcomingEvent(
        symbol: 'KO',
        date: DateTime(2026, 10, 29),
        kind: UpcomingEventKind.dividend,
        amount: 5.1,
        currency: 'USD',
      ),
      UpcomingEvent(symbol: 'KO', date: DateTime(2026, 10, 29), kind: UpcomingEventKind.dividend),
    ]);
    expect(entries.first.uid, 'dividend-KO-2026-10-29');
    expect(entries.first.summary, 'KO · Dividend expected');
    expect(entries.first.description, '~ 5.10 USD · Estimated from your recorded payments');
    // Összeg nélkül csak a megjegyzés.
    expect(entries.last.description, 'Estimated from your recorded payments');
  });

  test('one failing stock does not hide the others', () async {
    final market = _Market({'MSFT': today.add(const Duration(days: 2))});
    final s = service(market, favorites: ['AAPL', 'MSFT', 'ZZZZ']);
    await s.refresh();
    expect(s.events.where((e) => e.kind == UpcomingEventKind.earnings).map((e) => e.symbol), ['MSFT']);
  });

  testWidgets('the home screen lists the next events; the page shows them all and opens a stock', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final market = _Market({'AAPL': today.add(const Duration(days: 5)), 'MSFT': today.add(const Duration(days: 1))});
    final prefs = AppPreferences(favorites: const ['AAPL', 'MSFT']);
    await tester.pumpWidget(
      WhatStockApp(
        services: AppServices(
          alertNotifier: FakeNotifier(),
          config: const AppConfig(),
          capture: CaptureService(),
          recognizer: _NoRecognizer(),
          marketData: market,
          locale: LocaleController(),
          preferences: prefs,
          desktop: DesktopIntegration(),
          reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
          entitlements: EntitlementService(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-events')), findsOneWidget);
    // A piacok sávja is látszik (demóban nem nyitható meg).
    expect(find.byKey(const ValueKey('home-markets')), findsOneWidget);
    // Az amerikai piac nyitvatartása a sáv fejlécében.
    expect(find.textContaining(RegExp(r'^US market (open|closed) · ')), findsOneWidget);
    expect(find.text('S&P 500'), findsOneWidget);
    expect(find.text('+0.42%'), findsOneWidget);
    expect(tester.widget<InkWell>(find.byKey(const ValueKey('market-SPY'))).onTap, isNull);
    expect(find.text('Upcoming events'), findsOneWidget);
    final msft = find.byKey(ValueKey('event-MSFT-earnings-${_day(today.add(const Duration(days: 1)))}'));
    expect(msft, findsOneWidget);
    expect(find.textContaining('Tomorrow'), findsOneWidget);
    expect(find.textContaining('in 5 days'), findsOneWidget);
    expect(find.text('Quarterly results · after the close\nEPS estimate: 1.62'), findsNWidgets(2));

    // A Kedvencek listán a közeli gyorsjelentés a ticker alatt.
    await tester.tap(find.byKey(const ValueKey('favorites-see-all')));
    await tester.pumpAndSettle();
    expect(
      find.descendant(of: find.byKey(const ValueKey('watch-earnings-MSFT')), matching: find.text('Tomorrow')),
      findsOneWidget,
    );
    expect(find.byKey(const ValueKey('watch-earnings-AAPL')), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey('events-see-all')));
    await tester.pumpAndSettle();
    expect(find.textContaining('Results dates of your favorites'), findsOneWidget);
    expect(find.text('GTC keynote\nFrom your analysis'), findsOneWidget);
    // Friss eredmények: várt felett, a számokkal; a ✨ gomb az AI-összefoglalót nyitja.
    expect(find.text('Recently reported'), findsOneWidget);
    expect(find.text('AAPL beat the expected EPS'), findsOneWidget);
    expect(find.textContaining('Reported EPS 1.15, expected 1.12 · +2.7%'), findsNWidgets(2));
    await tester.tap(find.byKey(const ValueKey('recent-summary-AAPL')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('earnings-summary-sheet')), findsOneWidget);
    Navigator.of(tester.element(find.byKey(const ValueKey('earnings-summary-sheet')))).pop();
    await tester.pumpAndSettle();

    // Az összes esemény a naptárba (.ics).
    final saved = <String, String>{};
    final original = saveCalendarFile;
    saveCalendarFile = (bytes, name) async => saved[name] = utf8.decode(bytes);
    addTearDown(() => saveCalendarFile = original);
    await tester.tap(find.byKey(const ValueKey('events-calendar')));
    await tester.pumpAndSettle();
    final ics = saved['whatstock-events.ics']!.replaceAll('\r\n ', '');
    expect('BEGIN:VEVENT'.allMatches(ics), hasLength(3));
    expect(ics, contains('SUMMARY:MSFT · Quarterly results · after the close\r\nDESCRIPTION:EPS estimate: 1.62\r\n'));
    expect(ics, contains('UID:earnings-MSFT-${_day(today.add(const Duration(days: 1)))}@whatstock.app'));
    expect(ics, contains('SUMMARY:NVDA · GTC keynote\r\nDESCRIPTION:From your analysis\r\n'));

    await tester.tap(find.text('GTC keynote\nFrom your analysis'));
    await tester.pumpAndSettle();
    expect(find.text('NVIDIA Corporation'), findsWidgets);
  });
}
