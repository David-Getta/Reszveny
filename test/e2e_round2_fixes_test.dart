import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/market_data/finnhub_market_data_provider.dart';
import 'package:reszveny/features/billing/billing_controller.dart';
import 'package:reszveny/features/billing/billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/paywall_page.dart';
import 'package:reszveny/features/compare/compare_page.dart';
import 'package:reszveny/features/home/search_field.dart';
import 'package:reszveny/features/notes/notes_card.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/widgets/collapsible.dart';
import 'package:reszveny/widgets/fit_text.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/portfolio/portfolio_csv.dart';
import 'package:reszveny/features/portfolio/portfolio_page.dart';
import 'package:reszveny/features/settings/settings_page.dart';
import 'package:reszveny/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget_test.dart' show services;

/// A második böngészős végigjátszás (valódi Chromium) javításai.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the snackbar action is drawn in the accent colour, not white on the light bar', () {
    for (final b in Brightness.values) {
      final theme = AppTheme.build(b);
      final p = b == Brightness.dark ? AppPalette.dark : AppPalette.light;
      expect(theme.snackBarTheme.actionTextColor, p.accent);
      expect(theme.snackBarTheme.actionTextColor, isNot(theme.snackBarTheme.backgroundColor));
    }
  });

  testWidgets('sidebar pages do not pile up: one Back after many sidebar clicks is home', (tester) async {
    tester.view.physicalSize = const Size(1280, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    Future<void> sidebar(IconData icon) async {
      await tester.tap(find.byIcon(icon).first);
      await tester.pumpAndSettle();
    }

    await sidebar(Icons.pie_chart_outline_rounded);
    await sidebar(Icons.pie_chart_outline_rounded);
    await sidebar(Icons.tune_rounded);
    await sidebar(Icons.pie_chart_outline_rounded);
    expect(find.byType(PortfolioPage), findsOneWidget);
    expect(find.byType(SettingsPage), findsNothing);
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(find.byType(PortfolioPage), findsNothing);
    expect(find.byType(SettingsPage), findsNothing);
  });

  group('headerless CSV', () {
    test('a sell written in any known word is a sell, an unknown direction is skipped', () {
      final r = parsePortfolioCsv(
        'MSFT;5;380,5;USD;2025.01.02.\n'
        'MSFT;2;401,5;USD;2025.04.02.;eladás\n'
        'MSFT;1;402;USD;2025.04.03.;Sold\n'
        'MSFT;1;403;USD;2025.04.04.;Verkauf\n'
        'MSFT;1;404;USD;2025.04.05.;vétel\n'
        'MSFT;1;405;USD;2025.04.06.;whatever\n',
      );
      expect([for (final l in r.lots) l.sell], [false, true, true, true, false]);
      expect(r.skipped, 1);
    });

    test('a row dated in the future is skipped, not booked as held today', () {
      final now = DateTime(2026, 11, 5);
      final r = parsePortfolioCsv('AAPL,1,200,USD,2026-11-05\nAAPL,1,200,USD,2027-01-01\n', now: now);
      expect(r.lots, hasLength(1));
      expect(r.skipped, 1);
      final header = parsePortfolioCsv(
        'Symbol,Quantity,Price,Currency,Date\nAAPL,1,200,USD,2026-11-04\nAAPL,1,200,USD,2027-01-01\n',
        now: now,
      );
      expect(header.lots, hasLength(1));
      expect(header.skipped, 1);
    });
  });

  test('Arabic dates use the same digits as the amounts next to them', () async {
    await initializeDateFormatting();
    final fmt = Fmt('ar');
    expect(fmt.dateLocale, 'ar');
    final zero = fmt.number(0, decimals: 0);
    final date = fmt.date(DateTime(2026, 7, 15));
    final latin = RegExp('[0-9]').hasMatch(zero);
    expect(RegExp('[0-9]').hasMatch(date), latin, reason: '$zero / $date');
    expect(RegExp('[٠-٩]').hasMatch(date), !latin, reason: '$zero / $date');
  });

  Widget host(AppServices s, Widget child, {Size size = const Size(430, 900)}) => AppServicesScope(
    services: s,
    child: MaterialApp(
      theme: AppTheme.build(Brightness.light),
      localizationsDelegates: WhatStockApp.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: child,
    ),
  );

  testWidgets('compare on a phone: three stocks side by side without scrolling; a ticker without a price is refused', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(430, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(host(s, const ComparePage(symbols: ['AAPL', 'MSFT', 'NVDA'])));
    await tester.pumpAndSettle();
    for (final sym in ['AAPL', 'MSFT', 'NVDA']) {
      expect(tester.getRect(find.text(sym).first).right, lessThanOrEqualTo(430), reason: sym);
    }
  });

  testWidgets('the compare picker keeps the dialog open for a ticker without a price', (tester) async {
    final s = services();
    await tester.pumpWidget(host(s, const ComparePage(symbols: ['AAPL'])));
    await tester.pumpAndSettle();
    // Egy részvénnyel indulva rögtön a választó nyílik.
    await tester.enterText(find.byKey(const ValueKey('compare-ticker')), 'zzzz9');
    await tester.tap(find.byKey(const ValueKey('compare-pick-ok')));
    await tester.pumpAndSettle();
    expect(find.text('No stocks found for “ZZZZ9”.'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('compare-ticker')), 'msft');
    await tester.tap(find.byKey(const ValueKey('compare-pick-ok')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('compare-ticker')), findsNothing);
    expect(find.text('MSFT'), findsWidgets);
  });

  testWidgets('at 200% zoom the search box keeps room for the text: the buttons move under it', (tester) async {
    tester.view.physicalSize = const Size(430, 900);
    tester.view.devicePixelRatio = 2;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.build(Brightness.light),
        localizationsDelegates: WhatStockApp.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SearchField(
              hint: 'Ticker or company',
              onSubmitted: (_) {},
              leading: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.image_outlined)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.photo_camera_outlined)),
              ],
            ),
          ),
        ),
      ),
    );
    expect(tester.getSize(find.byType(TextField)).width, greaterThan(140));
  });

  testWidgets('a card title is not squeezed to a syllable per line: the extra goes below it', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 170,
              child: CollapsibleHeader(
                collapsed: false,
                onTap: () {},
                trailing: TextButton(onPressed: () {}, child: const Text('Transactions')),
                child: const Text('Position'),
              ),
            ),
          ),
        ),
      ),
    );
    final title = tester.getRect(find.text('Position'));
    final extra = tester.getRect(find.text('Transactions'));
    expect(extra.top, greaterThanOrEqualTo(title.bottom - 1));
    // A cím egy sorban marad.
    expect(title.height, lessThan(30));
  });

  testWidgets('segmented labels in settings never break inside a word', (tester) async {
    tester.view.physicalSize = const Size(320, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    expect(find.byType(OneLineLabel), findsAtLeastNWidgets(5));
    for (final t in tester.widgetList<Text>(
      find.descendant(of: find.byType(OneLineLabel), matching: find.byType(Text)),
    )) {
      expect(t.maxLines, 1);
    }
  });

  testWidgets('a note typed just before the app is hidden (tab closed) is saved at once', (tester) async {
    final s = services();
    await tester.pumpWidget(
      host(
        s,
        const Scaffold(
          body: SingleChildScrollView(child: NotesCard(symbol: 'AAPL')),
        ),
      ),
    );
    await tester.enterText(find.byKey(const ValueKey('notes-field')), 'Hold until earnings');
    await tester.pump(const Duration(milliseconds: 100));
    expect(s.notes.of('AAPL'), isNull);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.hidden);
    await tester.pump();
    expect(s.notes.of('AAPL')?.text, 'Hold until earnings');
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
  });

  testWidgets('portfolio dialogs: cash 0 is fine and a negative amount says so; a failed import keeps the text', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1200, 2600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD', date: DateTime(2025, 5, 2));
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-cash-edit')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('cash-amount')), '-5');
    await tester.tap(find.byKey(const ValueKey('cash-submit')));
    await tester.pumpAndSettle();
    expect(find.text('Enter an amount of 0 or more.'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('cash-amount')), '0');
    await tester.tap(find.byKey(const ValueKey('cash-submit')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('cash-amount')), findsNothing);

    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-import')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('portfolio-import-text')), 'just some words\nnot a trade');
    await tester.tap(find.byKey(const ValueKey('portfolio-import-ok')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('portfolio-import-text')), findsOneWidget);
    expect(find.textContaining('No transactions could be read'), findsOneWidget);
    expect(find.text('just some words\nnot a trade'), findsOneWidget);
  });

  testWidgets('a target outside 0–100% is marked and cannot be saved', (tester) async {
    tester.view.physicalSize = const Size(1200, 4000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.portfolio.add(symbol: 'AAPL', quantity: 10, price: 200, currency: 'USD');
    await s.portfolio.add(symbol: 'MSFT', quantity: 2, price: 400, currency: 'USD');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Portfolio').first);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('targets-edit')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('target-field-AAPL')), '150');
    await tester.pumpAndSettle();
    expect(find.text('0–100'), findsOneWidget);
    expect(tester.widget<FilledButton>(find.byKey(const ValueKey('targets-save'))).onPressed, isNull);
    await tester.enterText(find.byKey(const ValueKey('target-field-AAPL')), '60');
    await tester.pumpAndSettle();
    expect(find.text('0–100'), findsNothing);
    expect(tester.widget<FilledButton>(find.byKey(const ValueKey('targets-save'))).onPressed, isNotNull);
  });

  testWidgets('a glossary search without a match says so', (tester) async {
    tester.view.physicalSize = const Size(430, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    final tile = find.byKey(const ValueKey('settings-glossary'));
    await tester.scrollUntilVisible(tile, 300, scrollable: find.byType(Scrollable).first);
    await tester.tap(tile);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('glossary-search')), 'zzzz');
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('glossary-no-match')), findsOneWidget);
  });

  testWidgets('a price ten times off today’s price asks once before saving', (tester) async {
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Add to portfolio'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '1');
    await tester.enterText(find.byKey(const ValueKey('lot-price')), '1000000000');
    await tester.tap(find.widgetWithText(FilledButton, 'Add'));
    await tester.pumpAndSettle();
    expect(find.textContaining('far from today’s price (231.45 USD)'), findsOneWidget);
    expect(s.portfolio.positionOf('AAPL'), isNull);
    // Másodszorra (ugyanazzal az árral) elfogadja.
    await tester.tap(find.widgetWithText(FilledButton, 'Add'));
    await tester.pumpAndSettle();
    expect(s.portfolio.positionOf('AAPL')?.quantity, 1);
  });

  test('a 502 "upstream unavailable" from the server is a temporary outage, not an error code', () async {
    final busy = MockClient((_) async => http.Response('{"error":"upstream_unavailable"}', 502));
    final analyst = ClaudeStockAnalyst(
      config: const AppConfig(anthropicApiKey: 'k'),
      client: busy,
    );
    await expectLater(
      analyst.analyze(const StockDetails(symbol: 'AAPL')),
      throwsA(isA<AppException>().having((e) => e.code, 'code', AppErrorCode.aiUnavailable)),
    );
    final market = FinnhubMarketDataProvider(
      config: const AppConfig(finnhubApiKey: 'k'),
      client: busy,
    );
    await expectLater(
      market.quote('AAPL'),
      throwsA(isA<AppException>().having((e) => e.code, 'code', AppErrorCode.marketUnavailable)),
    );
  });

  test('purchases switched off on the server say so; a later restore is not hidden behind the old failure', () async {
    final l10n = await lookupAppLocalizations(const Locale('en'));
    final off = BillingEvent(productId: 'x', status: BillingStatus.error, message: 'billing_unavailable');
    expect(billingEventText(l10n, off), 'Purchases are not available right now. Try again later.');
    final store = _FailingStore();
    final c = BillingController(billing: store, entitlements: EntitlementService(), restoreGrace: Duration.zero);
    await c.buy(
      const StoreProduct(
        id: 'whatstock.sub.pro',
        title: 'Pro',
        price: '\$1',
        rawPrice: 1,
        currency: 'USD',
        kind: StoreProductKind.subscription,
      ),
    );
    expect(c.lastEvent?.status, BillingStatus.error);
    await c.restore();
    expect(c.lastEvent, isNull);
    expect(c.restoreOutcome, RestoreOutcome.nothing);
  });
}

class _FailingStore implements BillingService {
  @override
  String get name => 'Store';
  @override
  bool get isDemo => false;
  @override
  Stream<BillingEvent> get events => const Stream.empty();
  @override
  Future<bool> isAvailable() async => true;
  @override
  Future<List<StoreProduct>> products() async => const [];
  @override
  Future<void> buy(StoreProduct product) async => throw StateError('billing_unavailable');
  @override
  Future<void> restore() async {}
}
