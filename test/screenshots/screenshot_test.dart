@Tags(['screenshot'])
library;

import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/features/analysis/analysis_chat.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/stock_analyst.dart';
import 'package:reszveny/features/billing/demo_billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/home/quick_bar.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/portfolio/portfolio_page.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/features/stock_detail/widgets/outlook_view.dart';
import 'package:reszveny/theme/app_theme.dart';
import 'package:reszveny/widgets/collapsible.dart';

/// Képernyőképek a felületről a teszt-harnessben (valódi betűkkel). Csak
/// kézzel futtatjuk: `flutter test --tags screenshot --dart-define=SHOTS=<mappa>`.
const _outDir = String.fromEnvironment('SHOTS');

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'Claude Vision';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

/// Rögzített ECB-árfolyamok (USD-ben), hogy a képek hálózat nélkül is ugyanazok legyenek.
const _usdPer = {'USD': 1.0, 'HUF': 1 / 362.4, 'EUR': 1.092};

FxService _fx() => FxService(
  client: MockClient((req) async {
    final from = req.url.queryParameters['from']!, to = req.url.queryParameters['to']!;
    final rate = _usdPer[from]! / _usdPer[to]!;
    return http.Response('{"amount":1,"base":"$from","date":"2026-10-09","rates":{"$to":$rate}}', 200);
  }),
);

/// Minta-portfólió a képekhez.
PortfolioStore _samplePortfolio() => PortfolioStore(
  lots: [
    PortfolioLot(id: 'a1', symbol: 'AAPL', quantity: 12, price: 168.40, currency: 'USD', date: DateTime(2024, 11, 4)),
    PortfolioLot(id: 'a2', symbol: 'AAPL', quantity: 6, price: 205.10, currency: 'USD', date: DateTime(2025, 8, 19)),
    PortfolioLot(id: 'n1', symbol: 'NVDA', quantity: 20, price: 121.80, currency: 'USD', date: DateTime(2025, 2, 3)),
    PortfolioLot(id: 'm1', symbol: 'MSFT', quantity: 4, price: 530.00, currency: 'USD', date: DateTime(2026, 7, 21)),
    PortfolioLot(id: 'o1', symbol: 'OTP', quantity: 60, price: 24150, currency: 'HUF', date: DateTime(2025, 5, 12)),
  ],
);

/// Minta-riasztások a képekhez: két aktív és egy teljesült.
AlertStore _sampleAlerts() => AlertStore(
  alerts: [
    PriceAlert(
      id: 'r1',
      symbol: 'NVDA',
      kind: AlertKind.below,
      value: 170,
      currency: 'USD',
      createdAt: DateTime(2026, 10, 1),
      triggeredAt: DateTime(2026, 10, 9, 15, 42),
      triggeredPrice: 169.80,
    ),
    PriceAlert(id: 'r2', symbol: 'OTP', kind: AlertKind.move, value: 4, createdAt: DateTime(2026, 10, 5)),
    PriceAlert(
      id: 'r3',
      symbol: 'AAPL',
      kind: AlertKind.above,
      value: 245,
      currency: 'USD',
      createdAt: DateTime(2026, 10, 8),
    ),
  ],
);

AppServices _services({
  ThemeMode mode = ThemeMode.dark,
  Locale? locale,
  PortfolioStore? portfolio,
  String? currency,
  AlertStore? alerts,
  bool backend = false,
  bool invite = false,
  String? email,
  AnalysisChat? chat,
}) {
  final ent = _entitlements();
  // Backend-módban fiók kártya és jogi linkek; a szerver egy utánzat.
  final config = backend ? const AppConfig(backendUrl: 'https://api.whatstock.app') : const AppConfig();
  return AppServices(
    portfolio: portfolio,
    alerts: alerts,
    fx: _fx(),
    config: config,
    backend: backend
        ? BackendClient(
            baseUrl: config.backend,
            inner: invite ? _inviteBackend() : _fakeBackend(),
            tokenLoader: () async => 'tok',
          )
        : null,
    accountEmail: email,
    capture: CaptureService(),
    recognizer: _NoRecognizer(),
    marketData: DemoMarketDataProvider(latency: Duration.zero),
    locale: LocaleController(initial: locale),
    preferences: AppPreferences(
      themeMode: mode,
      recent: const ['AAPL', 'NVDA', 'OTP'],
      favorites: const ['AAPL', 'MSFT'],
      displayCurrency: currency,
    ),
    desktop: DesktopIntegration(),
    reports: ReportStore(analyst: _FakeAnalyst(), entitlements: ent),
    entitlements: ent,
    billing: DemoBillingService(latency: Duration.zero),
    chat: chat,
  );
}

/// A backend utánzata: a fiók Pro csomagon van, a törlés sikerül.
Map<String, Object> _proEntitlements() => {
  'tier': 'pro',
  'period_start': DateTime.now().subtract(const Duration(days: 3)).toUtc().toIso8601String(),
  'period_end': DateTime.now().add(const Duration(days: 27)).toUtc().toIso8601String(),
  'used': 5,
  'extra': 0,
};

http.Client _fakeBackend() => MockClient(
  (req) async => http.Response(
    jsonEncode(switch (req.url.path) {
      _ when req.method == 'DELETE' => {'deleted': true},
      '/v1/referral' => {'code': 'WS-7K2QXM', 'invited': 4, 'rewarded': 2, 'bonus': 5, 'redeemed': false},
      _ => {'token': 'tok', 'entitlements': _proEntitlements()},
    }),
    200,
    headers: {'content-type': 'application/json'},
  ),
);

/// Zárt előzetes: kód nélkül 403, a `GABOR-7K2Q` kóddal a Pro fiók és a vízjel neve.
http.Client _inviteBackend() => MockClient((req) async {
  if (req.headers['x-whatstock-invite'] != 'GABOR-7K2Q') {
    return http.Response(jsonEncode({'error': 'invite_required'}), 403, headers: {'content-type': 'application/json'});
  }
  final body = {
    'token': 'tok',
    'entitlements': _proEntitlements(),
    'invite': {'label': 'Schulz Gábor', 'expires': '2026-11-30'},
  };
  return http.Response(jsonEncode(body), 200, headers: {'content-type': 'application/json; charset=utf-8'});
});

EntitlementService _entitlements() => EntitlementService(
  initial: EntitlementState(
    tier: PlanTier.pro,
    periodStart: DateTime.now().subtract(const Duration(days: 3)),
    periodEnd: DateTime.now().add(const Duration(days: 27)),
    usedInPeriod: 5,
  ),
);

Future<void> _loadFonts() async {
  final dir = Directory('/opt/flutter/bin/cache/artifacts/material_fonts');
  Future<void> load(String family, String file) async {
    final f = File('${dir.path}/$file');
    if (!f.existsSync()) return;
    final loader = FontLoader(family)..addFont(f.readAsBytes().then((b) => ByteData.view(b.buffer)));
    await loader.load();
  }

  await load('Roboto', 'Roboto-Regular.ttf');
  await load('Roboto', 'Roboto-Medium.ttf');
  await load('Roboto', 'Roboto-Bold.ttf');
  await load('MaterialIcons', 'MaterialIcons-Regular.otf');
}

Future<void> _shot(WidgetTester tester, String name) async {
  if (_outDir.isEmpty) return;
  await tester.runAsync(() async {
    final boundary = tester.firstRenderObject<RenderRepaintBoundary>(find.byType(RepaintBoundary).first);
    final image = await boundary.toImage(pixelRatio: 1);
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    File('$_outDir/$name.png').writeAsBytesSync(bytes!.buffer.asUint8List());
  });
}

class _FakeAnalyst implements StockAnalyst {
  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async => StockReport(
    symbol: details.symbol,
    headline: 'Test headline',
    sections: const [
      ReportSection(
        kind: ReportSectionKind.summary,
        title: 'Summary',
        paragraphs: ['NVIDIA dominates AI accelerators with ~80% share; growth is slowing from extreme levels.'],
      ),
      ReportSection(
        kind: ReportSectionKind.news,
        title: 'Recent news',
        bullets: [
          '2026-10-03: Q3 revenue guidance raised to \$62B.',
          '2026-09-28: New export rules for China announced.',
        ],
      ),
      ReportSection(
        kind: ReportSectionKind.risks,
        title: 'Risks and hidden factors',
        bullets: ['Customer concentration: top 2 hyperscalers ≈ 40% of revenue.', 'Export controls on China.'],
      ),
      ReportSection(
        kind: ReportSectionKind.outlook,
        title: 'Where the price could go',
        paragraphs: [
          'Psychology: sentiment is euphoric; retail flows and options activity point to crowded positioning, which raises air-pocket risk on any guidance miss.',
          'Sociology: AI adoption is now a mainstream cultural narrative; public-opinion-driven regulation (energy use, export policy) is the main social headwind.',
          'Technicals and macro: price sits above the 50- and 200-day averages with support near 170; rate cuts would favour long-duration growth names.',
        ],
        bullets: [
          'Bull (~30%): guidance beat and China relief: 215–240 within 6–12 months.',
          'Base (~45%): growth normalises, multiple holds: 175–205.',
          'Bear (~25%): capex digestion at hyperscalers: 130–160; invalidates the bull case.',
          'Most likely: Base (~45%), because growth is slowing but upward earnings revisions support the multiple.',
        ],
      ),
      ReportSection(
        kind: ReportSectionKind.longterm,
        title: 'Long-term view: 3, 5 and 10 years',
        paragraphs: [
          'Over a decade the question is how long data-center spending keeps compounding and how much share custom chips '
              'take. Base path: revenue growth slowing from ~60% to ~10% a year, net margin easing from 55% to 45%, and the '
              'P/E drifting from 45 toward 20 as growth matures.',
        ],
        bullets: [
          '3 years (2029): 170–300 USD, most likely about 235 USD, −9% to +60%, about −3% to +17% a year.',
          '5 years (2031): 150–420 USD, most likely about 280 USD, −20% to +124%.',
          '10 years (2036): 110–700 USD, most likely about 380 USD; the implied ~7% a year is close to the long-run market.',
          'Main long-term risks: custom silicon at hyperscalers, a capex peak priced as permanent, export controls.',
        ],
      ),
      ReportSection(
        kind: ReportSectionKind.watch,
        title: 'What to watch',
        bullets: ['Data-center revenue growth below 20% q/q would weaken the base case.'],
      ),
    ],
    sources: const [ReportSource(title: 'NVIDIA investor relations', url: 'https://investor.nvidia.com')],
    generatedAt: DateTime.now(),
    outlook: const ReportOutlook(
      currentPrice: 187.6,
      currency: 'USD',
      scenarios: [
        Scenario(
          kind: ScenarioKind.bull,
          probability: 30,
          priceLow: 215,
          priceHigh: 240,
          horizon: '6–12 months',
          summary: 'Guidance beat and China relief.',
        ),
        Scenario(
          kind: ScenarioKind.base,
          probability: 45,
          priceLow: 175,
          priceHigh: 205,
          horizon: '6–12 months',
          summary: 'Growth normalises, multiple holds.',
        ),
        Scenario(
          kind: ScenarioKind.bear,
          probability: 25,
          priceLow: 130,
          priceHigh: 160,
          horizon: '6–12 months',
          summary: 'Capex digestion at hyperscalers.',
        ),
      ],
      keyLevels: [
        KeyLevel(price: 170, kind: KeyLevelKind.support, label: '200-day average'),
        KeyLevel(price: 200, kind: KeyLevelKind.anchor, label: 'round number'),
        KeyLevel(price: 212, kind: KeyLevelKind.resistance, label: 'all-time high'),
      ],
      catalysts: [
        Catalyst(date: '2026-11-19', event: 'Q3 FY27 earnings'),
        Catalyst(date: '2026-12-05', event: 'Ex-dividend date'),
        Catalyst(date: '2027-03', event: 'GTC developer conference'),
      ],
      marketMood: 1,
      marketMoodReason: 'AI demand narrative is strong, but positioning is crowded.',
      mostLikelyReason: 'Growth is slowing, but upward earnings revisions support the multiple.',
      longTerm: LongTermOutlook(
        summary: 'Long-run value depends on how long AI data-center spending compounds and how much share custom chips take.',
        horizons: [
          LongTermHorizon(
            years: 3,
            priceLow: 170,
            priceHigh: 300,
            priceLikely: 235,
            basis: 'EPS 8.5–10.5 USD in 2029 × 22–28.',
            confidence: Confidence.medium,
          ),
          LongTermHorizon(
            years: 5,
            priceLow: 150,
            priceHigh: 420,
            priceLikely: 280,
            basis: 'EPS 11–14 USD in 2031 × 15–30.',
          ),
          LongTermHorizon(
            years: 10,
            priceLow: 110,
            priceHigh: 700,
            priceLikely: 380,
            basis: 'EPS 18–26 USD in 2036 × 12–28; share lost to custom chips is the swing factor.',
          ),
        ],
      ),
    ),
  );
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));
  setUpAll(() async {
    await _loadFonts();
  });

  Future<void> pumpApp(WidgetTester tester, AppServices s, Size size) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(RepaintBoundary(child: WhatStockApp(services: s)));
    await tester.pumpAndSettle();
    // A logó-képek aszinkron töltődnek; itt megvárjuk őket.
    await tester.runAsync(() async {
      final ctx = tester.element(find.byType(WhatStockApp));
      for (final a in ['assets/branding/logo_128.png', 'assets/branding/logo_256.png']) {
        await precacheImage(AssetImage(a), ctx);
      }
    });
    await tester.pumpAndSettle();
  }

  testWidgets('home wide dark', (tester) async {
    await pumpApp(tester, _services(), const Size(1200, 780));
    await _shot(tester, 'home_wide_dark');
  });

  testWidgets('home wide light', (tester) async {
    await pumpApp(tester, _services(mode: ThemeMode.light), const Size(1200, 780));
    await _shot(tester, 'home_wide_light');
  });

  testWidgets('home phone hungarian', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 900));
    await _shot(tester, 'home_phone_hu');
  });

  testWidgets('phone: bottom bar, recent searches and my analyses (hungarian)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 1000));
    for (final symbol in ['AAPL', 'NVDA']) {
      await tester.enterText(find.byType(TextField), symbol);
      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Elemzés készítése'));
      await tester.pumpAndSettle();
      // A megosztás gomb az AI-elemzés fejlécében.
      if (symbol == 'NVDA') await _shot(tester, 'detail_ai_share_phone_hu');
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();
    }
    await tester.drag(find.byType(Scrollable).first, const Offset(0, -500));
    await tester.pumpAndSettle();
    await _shot(tester, 'home_analyses_phone_hu');
    await tester.tap(find.text('Beállítások').last);
    await tester.pumpAndSettle();
    await _shot(tester, 'settings_tab_phone_hu');
  });

  testWidgets('detail wide dark', (tester) async {
    await pumpApp(tester, _services(), const Size(1200, 1600));
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_wide_dark');
    // Árfolyamgrafikon egérrel: függőleges vonal, pont és a nap ára.
    final chart = find.byKey(const ValueKey('price-chart-area'));
    await tester.ensureVisible(chart);
    await tester.pumpAndSettle();
    final r = tester.getRect(chart);
    final mouse = await tester.createGesture(kind: PointerDeviceKind.mouse);
    await mouse.addPointer(location: r.center);
    await mouse.moveTo(r.centerLeft + Offset(r.width * 0.42, 0));
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_chart_hover');
    await mouse.removePointer();
  });

  testWidgets('detail with AI report', (tester) async {
    await pumpApp(tester, _services(), const Size(1200, 3300));
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_ai_report');
    // Összecsukott részek: a fejlécükre kattintva csak a cím marad.
    final parts = find.byWidgetPredicate(
      (w) => w.key is ValueKey<String> && (w.key! as ValueKey<String>).value.startsWith('collapse-ai-section:'),
    );
    final n = parts.evaluate().length;
    for (var i = 1; i < n; i++) {
      await tester.tap(parts.at(i));
      await tester.pumpAndSettle();
    }
    await tester.tap(find.text('Price chart'));
    await tester.pumpAndSettle();
    await tester.drag(find.byType(Scrollable).last, const Offset(0, -350));
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_ai_collapsed');
    CollapseStore.instance.reset();
  });

  testWidgets('long-term view on a phone (hungarian)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 1100));
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    // A fejléc telefonon: az ár a cégnév alatt.
    await _shot(tester, 'detail_top_phone_hu');
    await tester.tap(find.text('Elemzés készítése'));
    await tester.pumpAndSettle();
    final chart = find.byType(LongTermChart);
    await tester.scrollUntilVisible(chart, 400, scrollable: find.byType(Scrollable).first);
    Scrollable.ensureVisible(tester.element(chart), alignment: 0.02);
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_longterm_phone_hu');
  });

  testWidgets('portfolio wide', (tester) async {
    await pumpApp(tester, _services(portfolio: _samplePortfolio()), const Size(1200, 1000));
    await tester.tap(find.text('Portfolio').first); // az oldalsáv gombja
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_wide');
  });

  testWidgets('portfolio on a phone (hungarian, HUF totals)', (tester) async {
    final s = _services(locale: const Locale('hu'), portfolio: _samplePortfolio(), currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await _shot(tester, 'home_portfolio_phone_hu');
    await tester.tap(find.byType(PortfolioSummaryCard));
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_phone_hu');
  });

  testWidgets('detail with own position', (tester) async {
    await pumpApp(tester, _services(portfolio: _samplePortfolio()), const Size(1200, 900));
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_position');
    await tester.tap(find.byTooltip('Add to portfolio'));
    await tester.pumpAndSettle();
    await _shot(tester, 'add_to_portfolio');
  });

  testWidgets('price alerts', (tester) async {
    await pumpApp(tester, _services(alerts: _sampleAlerts()), const Size(1200, 760));
    await tester.tap(find.text('Price alerts'));
    await tester.pumpAndSettle();
    await _shot(tester, 'alerts_page');
    await tester.tap(find.text('AAPL · Above 245.00 USD'));
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_alerts');
    await tester.tap(find.byTooltip('Set price alert'));
    await tester.pumpAndSettle();
    await _shot(tester, 'alert_dialog');
  });

  testWidgets('price alert dialog on a phone (hungarian)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu'), alerts: _sampleAlerts()), const Size(430, 900));
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Árfolyam-riasztás beállítása'));
    await tester.pumpAndSettle();
    await _shot(tester, 'alert_dialog_phone_hu');
  });

  testWidgets('paywall', (tester) async {
    await pumpApp(tester, _services(backend: true), const Size(1200, 1100));
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('View plans').first);
    await tester.pumpAndSettle();
    await _shot(tester, 'paywall');
    await tester.tap(find.textContaining('Yearly', findRichText: true));
    await tester.pumpAndSettle();
    await _shot(tester, 'paywall_yearly');
  });

  testWidgets('settings: account with delete, legal links (hungarian)', (tester) async {
    final s = _services(locale: const Locale('hu'), backend: true, email: 'david@example.com');
    await pumpApp(tester, s, const Size(1200, 900));
    await tester.tap(find.text('Beállítások'));
    await tester.pumpAndSettle();
    await _shot(tester, 'settings_account_hu');
    await tester.tap(find.text('Fiók törlése'));
    await tester.pumpAndSettle();
    await _shot(tester, 'delete_account_dialog_hu');
    await tester.tap(find.text('Mégse'));
    await tester.pumpAndSettle();
    final privacy = find.text('Adatkezelési tájékoztató');
    await tester.scrollUntilVisible(privacy, 300, scrollable: find.byType(Scrollable).last);
    await tester.pumpAndSettle();
    await _shot(tester, 'settings_legal_hu');
  });

  testWidgets('settings: AI analysis (hungarian, in-depth)', (tester) async {
    final s = _services(locale: const Locale('hu'));
    await pumpApp(tester, s, const Size(1200, 1000));
    await tester.tap(find.text('Beállítások'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Részletes'));
    await tester.pumpAndSettle();
    await _shot(tester, 'settings_ai_hu');
  });

  testWidgets('trial: brief analyses and the plan upsell (hungarian)', (tester) async {
    final s = _services(locale: const Locale('hu'));
    await s.entitlements.replace(
      EntitlementState(
        tier: PlanTier.trial,
        periodStart: DateTime.now().subtract(const Duration(days: 1)),
        periodEnd: DateTime.now().add(const Duration(days: 2)),
        usedInPeriod: 1,
        trialStartedAt: DateTime.now().subtract(const Duration(days: 1)),
      ),
    );
    await pumpApp(tester, s, const Size(1200, 1000));
    await tester.tap(find.text('Beállítások'));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('AI-ELEMZÉS'), 200, scrollable: find.byType(Scrollable).last);
    await tester.pumpAndSettle();
    await _shot(tester, 'trial_settings_hu');
    await tester.tap(find.text('Új keresés'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('Elemzés készítése'), 200, scrollable: find.byType(Scrollable).last);
    await _shot(tester, 'trial_detail_hu');
  });

  testWidgets('detail: analysis card shows length and cost (hungarian)', (tester) async {
    final s = _services(locale: const Locale('hu'));
    await s.preferences.setAnalysisDepth(AnalysisDepth.deep);
    await pumpApp(tester, s, const Size(1200, 1000));
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('Elemzés készítése'), 200, scrollable: find.byType(Scrollable).last);
    await _shot(tester, 'detail_ai_options_hu');
  });

  testWidgets('settings bottom with version (hungarian)', (tester) async {
    PackageInfo.setMockInitialValues(
      appName: 'WhatStock',
      packageName: 'hu.reszveny.reszveny',
      version: '0.2.4',
      buildNumber: '7',
      buildSignature: '',
    );
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(1200, 900));
    await tester.tap(find.text('Beállítások'));
    await tester.pumpAndSettle();
    final version = find.byKey(const ValueKey('settings-version'));
    await tester.scrollUntilVisible(version, 300, scrollable: find.byType(Scrollable).last);
    await tester.pumpAndSettle();
    await _shot(tester, 'settings_version_hu');
  });

  testWidgets('language picker', (tester) async {
    await pumpApp(tester, _services(), const Size(1200, 900));
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('System default'), 200, scrollable: find.byType(Scrollable).last);
    await tester.ensureVisible(find.text('System default'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('System default'));
    await tester.pumpAndSettle();
    await tester.enterText(find.widgetWithText(TextField, 'Search languages…'), 'ma');
    await tester.pumpAndSettle();
    await _shot(tester, 'language_picker');
  });

  testWidgets('closed preview: invite code and watermark (hungarian, phone)', (tester) async {
    final s = _services(locale: const Locale('hu'), backend: true, invite: true);
    await pumpApp(tester, s, const Size(430, 900));
    await s.syncEntitlements();
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('invite-code')), 'gabor-7k2q');
    await tester.pump();
    await _shot(tester, 'invite_phone_hu');
    await tester.tap(find.text('Tovább'));
    await tester.pumpAndSettle();
    await _shot(tester, 'invite_watermark_phone_hu');
  });

  testWidgets('old analysis: the update question and the history page (hungarian, phone)', (tester) async {
    final now = DateTime.now();
    final values = <String, Object>{};
    for (final (symbol, headline, hours) in [
      ('NVDA', 'Az AI-kereslet erős, de a várakozások már magasak.', 50),
      ('AAPL', 'Lassuló iPhone-eladások, erősödő szolgáltatások.', 5),
      ('OTP', 'Erős tőkehelyzet, kamatcsökkenés a láthatáron.', 30),
      ('MSFT', 'A felhős növekedés tartja a magas értékeltséget.', 80),
      ('KO', 'Stabil osztalékfizető, lassú növekedéssel.', 120),
      ('ASML', 'A kínai export korlátozása a fő kockázat.', 200),
    ]) {
      values['report_$symbol'] = jsonEncode(
        StockReport(
          symbol: symbol,
          headline: headline,
          sections: const [],
          generatedAt: now.subtract(Duration(hours: hours)),
          language: 'Hungarian',
        ).toJson(),
      );
    }
    SharedPreferences.setMockInitialValues(values);
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 900));
    final seeAll = find.byKey(const ValueKey('analyses-see-all'));
    await tester.scrollUntilVisible(seeAll, 200, scrollable: find.byType(Scrollable).first);
    await tester.tap(seeAll);
    await tester.pumpAndSettle();
    await _shot(tester, 'history_phone_hu');
    await tester.tap(find.byKey(const ValueKey('analysis-NVDA')));
    await tester.pumpAndSettle();
    await _shot(tester, 'stale_dialog_phone_hu');
  });

  testWidgets('re-run analysis: what changed since the previous one (hungarian, phone)', (tester) async {
    SharedPreferences.setMockInitialValues({
      'report_NVDA': jsonEncode(
        StockReport(
          symbol: 'NVDA',
          headline: 'Az AI-kereslet erős, de a várakozások már magasak.',
          sections: const [],
          generatedAt: DateTime.now().subtract(const Duration(days: 3)),
          language: 'Hungarian',
          outlook: const ReportOutlook(
            currentPrice: 176.2,
            currency: 'USD',
            marketMood: 0,
            scenarios: [
              Scenario(kind: ScenarioKind.bull, probability: 20),
              Scenario(kind: ScenarioKind.base, probability: 50),
              Scenario(kind: ScenarioKind.bear, probability: 30),
            ],
          ),
        ).toJson(),
      ),
    });
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 932));
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final refresh = find.textContaining('Új elemzés');
    await tester.ensureVisible(refresh);
    await tester.pumpAndSettle();
    await tester.tap(refresh);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('report-changes-previous')));
    await tester.pumpAndSettle();
    final card = find.byKey(const ValueKey('report-changes'));
    Scrollable.ensureVisible(tester.element(card), alignment: 0.15);
    await tester.pumpAndSettle();
    expect(card, findsOneWidget);
    await _shot(tester, 'changes_phone_hu');
  });

  testWidgets('share sheet with the picture card (hungarian, phone)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 932));
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Elemzés készítése'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('share-analysis')));
    await tester.pumpAndSettle();
    await _shot(tester, 'share_sheet_phone_hu');
  });

  testWidgets('invite friends card in the settings (hungarian, phone)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu'), backend: true), const Size(430, 932));
    await tester.tap(find.text('Beállítások').last);
    await tester.pumpAndSettle();
    final card = find.byKey(const ValueKey('referral-card'));
    await tester.scrollUntilVisible(card, 200, scrollable: find.byType(Scrollable).last);
    Scrollable.ensureVisible(tester.element(card), alignment: 0.15);
    await tester.pumpAndSettle();
    await _shot(tester, 'referral_phone_hu');
  });

  testWidgets('asking for anonymous statistics on the home screen (hungarian, phone)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu'), backend: true), const Size(430, 932));
    final card = find.byKey(const ValueKey('telemetry-consent'));
    await tester.scrollUntilVisible(card, 200, scrollable: find.byType(Scrollable).first);
    Scrollable.ensureVisible(tester.element(card), alignment: 0.5);
    await tester.pumpAndSettle();
    await _shot(tester, 'telemetry_consent_phone_hu');
  });

  testWidgets('asking about the analysis (hungarian, phone)', (tester) async {
    final chat = AnalysisChat(
      config: const AppConfig(backendUrl: 'https://api.test'),
      client: MockClient(
        (req) async => http.Response(
          jsonEncode({
            'stop_reason': 'end_turn',
            'content': [
              {
                'type': 'text',
                'text':
                    'A legnagyobb kockázat a hiperskálázók beruházási ciklusa: ha a nagy felhőszolgáltatók '
                    'lassítanak, az adatközponti bevétel gyorsan csökkenhet.\n\n'
                    '- A bevétel kb. 40%-a két ügyféltől jön.\n'
                    '- A kínai exportkorlátozás a második legnagyobb tényező.\n\n'
                    'Ezt a pesszimista forgatókönyv 130–160 USD-s sávja tükrözi.',
              },
            ],
          }),
          200,
          headers: {'content-type': 'application/json; charset=utf-8'},
        ),
      ),
    );
    await pumpApp(tester, _services(locale: const Locale('hu'), chat: chat), const Size(430, 932));
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Elemzés készítése'));
    await tester.pumpAndSettle();
    final open = find.byKey(const ValueKey('ask-open'));
    await tester.scrollUntilVisible(open, 400, scrollable: find.byType(Scrollable).first);
    Scrollable.ensureVisible(tester.element(open), alignment: 0.5);
    await tester.pumpAndSettle();
    await tester.tap(open);
    await tester.pumpAndSettle();
    await _shot(tester, 'ask_empty_phone_hu');
    await tester.tap(find.byKey(const ValueKey('ask-suggest-0')));
    await tester.pumpAndSettle();
    await _shot(tester, 'ask_answer_phone_hu');
  });

  testWidgets('upcoming events on the home screen and their page (hungarian, phone)', (tester) async {
    final day = DateTime.now().add(const Duration(days: 12)).toIso8601String().substring(0, 10);
    SharedPreferences.setMockInitialValues({
      'report_NVDA': jsonEncode(
        StockReport(
          symbol: 'NVDA',
          headline: 'Az AI-kereslet erős, de a várakozások már magasak.',
          sections: const [],
          generatedAt: DateTime.now().subtract(const Duration(hours: 3)),
          language: 'Hungarian',
          outlook: ReportOutlook(
            catalysts: [Catalyst(date: day, event: 'GTC fejlesztői konferencia, új chipek')],
          ),
        ).toJson(),
      ),
    });
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 932));
    final section = find.byKey(const ValueKey('home-events'));
    await tester.scrollUntilVisible(section, 200, scrollable: find.byType(Scrollable).first);
    Scrollable.ensureVisible(tester.element(section), alignment: 0.3);
    await tester.pumpAndSettle();
    await _shot(tester, 'events_home_phone_hu');
    await tester.tap(find.byKey(const ValueKey('events-see-all')));
    await tester.pumpAndSettle();
    await _shot(tester, 'events_page_phone_hu');
  });

  testWidgets('comparing three stocks (hungarian, phone)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 932));
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('compare-open')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('compare-pick-MSFT')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('compare-add')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('compare-pick-NVDA')));
    await tester.pumpAndSettle();
    await _shot(tester, 'compare_phone_hu');
  });

  testWidgets('first launch onboarding (hungarian, phone)', (tester) async {
    final s = _services(locale: const Locale('hu'))..preferences.onboardingDone = false;
    await pumpApp(tester, s, const Size(430, 900));
    await _shot(tester, 'onboarding1_phone_hu');
    await tester.tap(find.byKey(const ValueKey('onboarding-next')));
    await tester.pumpAndSettle();
    await _shot(tester, 'onboarding2_phone_hu');
  });

  testWidgets('quick bar', (tester) async {
    tester.view.physicalSize = const Size(680, 72);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      RepaintBoundary(
        child: AppServicesScope(
          services: _services(),
          child: MaterialApp(
            theme: AppTheme.build(Brightness.dark),
            localizationsDelegates: WhatStockApp.localizationsDelegates,
            supportedLocales: const [Locale('en')],
            home: QuickBar(onOpenSymbol: (_) {}, onOpenWindow: () {}),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await _shot(tester, 'quick_bar');
  });
}
