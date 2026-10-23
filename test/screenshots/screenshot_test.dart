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
import 'package:reszveny/features/stock_detail/stock_detail_page.dart';
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
import 'package:reszveny/features/home/away_summary.dart';
import 'package:reszveny/features/news/move_explainer.dart';
import 'package:reszveny/features/portfolio/holdings_reader.dart';
import 'package:reszveny/features/home/quick_bar.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/news/earnings_summarizer.dart';
import 'package:reszveny/features/news/daily_brief.dart';
import 'package:reszveny/features/news/watch_news.dart';
import 'package:reszveny/features/news/research_follow_up.dart';
import 'package:reszveny/features/portfolio/portfolio_page.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/features/stock_detail/widgets/outlook_view.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
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
    // Időszakos lekérés (a „Piacok ma” devizasora): két nap, +0,3%-os napi változással.
    if (req.url.path.contains('..')) {
      return http.Response(
        '{"amount":1,"base":"$from","rates":{"2026-10-08":{"$to":${rate / 1.003}},"2026-10-09":{"$to":$rate}}}',
        200,
      );
    }
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

/// A galéria helyett egy apró kép (képernyőképes portfólió-import).
class _ShotCapture extends CaptureService {
  @override
  Future<CapturedImage?> fromGallery() async =>
      CapturedImage(bytes: Uint8List.fromList([1, 2, 3]), mimeType: 'image/png');
}

/// Egy bróker-képernyőkép minta-beolvasása.
class _ShotReader extends HoldingsReader {
  _ShotReader() : super(config: const AppConfig());

  @override
  Future<List<ReadHolding>> read(CapturedImage image) async => const [
    ReadHolding(symbol: 'AAPL', companyName: 'Apple Inc.', quantity: 12, averagePrice: 150.2, currency: 'USD'),
    ReadHolding(
      symbol: 'MSFT',
      companyName: 'Microsoft Corporation',
      quantity: 4,
      averagePrice: 402.5,
      currency: 'USD',
    ),
    ReadHolding(symbol: 'NVDA', companyName: 'NVIDIA Corporation', quantity: 20, averagePrice: 96.1, currency: 'USD'),
    ReadHolding(symbol: 'OTP', companyName: 'OTP Bank', quantity: 15),
  ];
}

/// Egy kész szöveges AI-válasz (a kutatási lapokhoz).
http.Response _aiText(String text) => http.Response(
  jsonEncode({
    'stop_reason': 'end_turn',
    'content': [
      {'type': 'text', 'text': text},
    ],
  }),
  200,
  headers: {'content-type': 'application/json; charset=utf-8'},
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
  bool store = false,
  CaptureService? capture,
  HoldingsReader? holdingsReader,
  EarningsSummarizer? earningsSummarizer,
  MoveExplainer? moveExplainer,
  ResearchFollowUp? researchFollowUp,
  DailyBrief Function(WatchNewsService news)? dailyBrief,
}) {
  final ent = _entitlements();
  // Backend-módban fiók kártya és jogi linkek; a szerver egy utánzat.
  // A bolti képeken nincs „demó mód” sáv: a piaci adat itt is a minta, csak a jelzés marad el.
  final config = backend
      ? const AppConfig(backendUrl: 'https://api.whatstock.app')
      : (store ? const AppConfig(finnhubApiKey: 'store-shots') : const AppConfig());
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
    capture: capture ?? CaptureService(),
    holdingsReader: holdingsReader,
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
    earningsSummarizer: earningsSummarizer,
    moveExplainer: moveExplainer,
    researchFollowUp: researchFollowUp,
    dailyBrief: dailyBrief,
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

/// A bolti képek nyelvei (`--dart-define=STORE_LANGS=en,hu`); üresen nincs bolti kép.
final _storeLangs = [
  for (final l in const String.fromEnvironment('STORE_LANGS').split(','))
    if (l.trim().isNotEmpty && _outDir.isNotEmpty) l.trim(),
];

/// Bolti eszközméretek: a kép pixelben, a felület logikai méretben (a pixel / arány).
typedef _StoreDevice = ({String name, Size pixels, double ratio});

const List<_StoreDevice> _storeDevices = [
  (name: 'iphone69', pixels: Size(1320, 2868), ratio: 3), // App Store 6,9"
  (name: 'android', pixels: Size(1080, 2160), ratio: 2.5), // Google Play telefon (2:1)
  (name: 'ipad13', pixels: Size(2064, 2752), ratio: 2), // App Store 13" iPad
  (name: 'desktop', pixels: Size(2880, 1800), ratio: 2), // Mac App Store / Microsoft Store
];

/// A felirat (cím és alcím) a bolti kép tetején; tesztközben cserélhető.
final _caption = ValueNotifier<(String, String)>(('', ''));

Future<void> _setCaption(WidgetTester tester, String title, String body) async {
  _caption.value = (title, body);
  await tester.pump();
}

/// Az app egy keretben, felette a felirat; a háttér a márka sötét színe.
Future<void> _pumpStore(WidgetTester tester, AppServices s, _StoreDevice d, String title, String body) async {
  tester.view.physicalSize = d.pixels;
  tester.view.devicePixelRatio = d.ratio;
  addTearDown(tester.view.reset);
  // Telefonon és iPaden nincs asztali gyorsbillentyű-tipp.
  DesktopIntegration.debugSupportedOverride = d.name == 'desktop';
  addTearDown(() => DesktopIntegration.debugSupportedOverride = null);
  _caption.value = (title, body);
  final logical = d.pixels / d.ratio;
  final wide = logical.width > 700;
  final pad = wide ? 48.0 : 22.0;
  await tester.pumpWidget(
    RepaintBoundary(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF2B2A28), Color(0xFF191917)],
            ),
          ),
          padding: EdgeInsets.fromLTRB(pad, wide ? 40 : 34, pad, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ValueListenableBuilder(
                valueListenable: _caption,
                builder: (context, c, _) => Column(
                  children: [
                    Text(
                      c.$1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: wide ? 40 : 30,
                        height: 1.15,
                        color: const Color(0xFFF0EEE6),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      c.$2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: wide ? 20 : 16,
                        height: 1.35,
                        color: const Color(0xFFD9D6CE),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: wide ? 32 : 22),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(wide ? 18 : 30)),
                    border: Border.all(color: const Color(0xFFD97757), width: 1.5),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: LayoutBuilder(
                    builder: (context, box) => MediaQuery(
                      data: MediaQueryData(size: box.biggest, devicePixelRatio: d.ratio),
                      child: WhatStockApp(services: s),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
  await tester.runAsync(() async {
    final ctx = tester.element(find.byType(WhatStockApp));
    for (final a in ['assets/branding/logo_128.png', 'assets/branding/logo_256.png']) {
      await precacheImage(AssetImage(a), ctx);
    }
  });
  await tester.pumpAndSettle();
}

Future<void> _storeShot(WidgetTester tester, _StoreDevice d, String name) async {
  await tester.runAsync(() async {
    final boundary = tester.firstRenderObject<RenderRepaintBoundary>(find.byType(RepaintBoundary).first);
    final image = await boundary.toImage(pixelRatio: d.ratio);
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    Directory('$_outDir/store').createSync(recursive: true);
    File('$_outDir/store/$name.png').writeAsBytesSync(bytes!.buffer.asUint8List());
  });
}

/// A minta-elemzés magyarul (a bolti képekhez); a többi nyelven angol marad.
String _t(bool hu, String en) => hu ? (_huReport[en] ?? en) : en;

const _huReport = <String, String>{
  'Test headline': 'Az AI-gyorsítók piacán erős, de a növekedés lassul',
  'Summary': 'Összefoglaló',
  'NVIDIA dominates AI accelerators with ~80% share; growth is slowing from extreme levels.':
      'Az NVIDIA ~80%-os részesedéssel uralja az AI-gyorsítók piacát; a növekedés a szélsőséges szintről lassul.',
  'Recent news': 'Friss hírek',
  'Risks and hidden factors': 'Kockázatok és rejtett tényezők',
  'Where the price could go': 'Merre mehet az ár',
  'Psychology: sentiment is euphoric; retail flows and options activity point to crowded positioning, which raises air-pocket risk on any guidance miss.': 'Pszichológia: a hangulat eufórikus; a kisbefektetői pénzek és az opciós aktivitás zsúfolt pozíciókra utalnak, így egy gyengébb előrejelzés hirtelen esést hozhat.',
  'Sociology: AI adoption is now a mainstream cultural narrative; public-opinion-driven regulation (energy use, export policy) is the main social headwind.': 'Szociológia: az AI mára a fősodor része; a közvélemény nyomására jövő szabályozás (energiafelhasználás, exportpolitika) a fő társadalmi ellenszél.',
  'Technicals and macro: price sits above the 50- and 200-day averages with support near 170; rate cuts would favour long-duration growth names.': 'Technikai kép és makró: az ár az 50 és 200 napos átlag felett van, támasz 170 körül; a kamatcsökkentés a növekedési részvényeknek kedvez.',
  'Bull (~30%): guidance beat and China relief: 215–240 within 6–12 months.':
      'Optimista (~30%): jobb előrejelzés és enyhülés Kínában: 215–240 USD 6–12 hónapon belül.',
  'Base (~45%): growth normalises, multiple holds: 175–205.':
      'Alap (~45%): a növekedés normalizálódik, az értékeltség marad: 175–205 USD.',
  'Bear (~25%): capex digestion at hyperscalers: 130–160; invalidates the bull case.':
      'Pesszimista (~25%): a nagy felhőszolgáltatók visszafogják a beruházást: 130–160 USD.',
  'Most likely: Base (~45%), because growth is slowing but upward earnings revisions support the multiple.': 'Legvalószínűbb: alap (~45%), mert a növekedés lassul, de a felfelé módosuló profitvárakozások tartják az értékeltséget.',
  'What to watch': 'Mire figyelj',
  'Data-center revenue growth below 20% q/q would weaken the base case.':
      'Ha az adatközponti bevétel negyedéves növekedése 20% alá esik, az gyengíti az alapforgatókönyvet.',
  '6–12 months': '6–12 hónap',
  'Guidance beat and China relief.': 'Jobb előrejelzés és enyhülés Kínában.',
  'Growth normalises, multiple holds.': 'A növekedés normalizálódik, az értékeltség marad.',
  'Capex digestion at hyperscalers.': 'A felhőóriások visszafogják a beruházást.',
  '200-day average': '200 napos átlag',
  'round number': 'kerek szám',
  'all-time high': 'történelmi csúcs',
  'Q3 FY27 earnings': 'Gyorsjelentés (3. negyedév)',
  'Ex-dividend date': 'Osztalék-fordulónap',
  'GTC developer conference': 'GTC fejlesztői konferencia',
  'AI demand narrative is strong, but positioning is crowded.':
      'Az AI-kereslet története erős, de a pozíciók zsúfoltak.',
  'Growth is slowing, but upward earnings revisions support the multiple.':
      'A növekedés lassul, de a felfelé módosuló profitvárakozások tartják az értékeltséget.',
};

class _FakeAnalyst implements StockAnalyst {
  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async {
    final hu = outputLanguage == 'Hungarian';
    return StockReport(
      symbol: details.symbol,
      headline: _t(hu, 'Test headline'),
      sections: [
        ReportSection(
          kind: ReportSectionKind.summary,
          title: _t(hu, 'Summary'),
          paragraphs: [
            _t(hu, 'NVIDIA dominates AI accelerators with ~80% share; growth is slowing from extreme levels.'),
          ],
        ),
        ReportSection(
          kind: ReportSectionKind.news,
          title: _t(hu, 'Recent news'),
          bullets: [
            '2026-10-03: Q3 revenue guidance raised to \$62B.',
            '2026-09-28: New export rules for China announced.',
          ],
        ),
        ReportSection(
          kind: ReportSectionKind.risks,
          title: _t(hu, 'Risks and hidden factors'),
          bullets: ['Customer concentration: top 2 hyperscalers ≈ 40% of revenue.', 'Export controls on China.'],
        ),
        ReportSection(
          kind: ReportSectionKind.outlook,
          title: _t(hu, 'Where the price could go'),
          paragraphs: [
            _t(
              hu,
              'Psychology: sentiment is euphoric; retail flows and options activity point to crowded positioning, which raises air-pocket risk on any guidance miss.',
            ),
            _t(
              hu,
              'Sociology: AI adoption is now a mainstream cultural narrative; public-opinion-driven regulation (energy use, export policy) is the main social headwind.',
            ),
            _t(
              hu,
              'Technicals and macro: price sits above the 50- and 200-day averages with support near 170; rate cuts would favour long-duration growth names.',
            ),
          ],
          bullets: [
            _t(hu, 'Bull (~30%): guidance beat and China relief: 215–240 within 6–12 months.'),
            _t(hu, 'Base (~45%): growth normalises, multiple holds: 175–205.'),
            _t(hu, 'Bear (~25%): capex digestion at hyperscalers: 130–160; invalidates the bull case.'),
            _t(
              hu,
              'Most likely: Base (~45%), because growth is slowing but upward earnings revisions support the multiple.',
            ),
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
          title: _t(hu, 'What to watch'),
          bullets: [_t(hu, 'Data-center revenue growth below 20% q/q would weaken the base case.')],
        ),
      ],
      sources: [ReportSource(title: 'NVIDIA investor relations', url: 'https://investor.nvidia.com')],
      generatedAt: DateTime.now(),
      outlook: ReportOutlook(
        currentPrice: 187.6,
        currency: 'USD',
        scenarios: [
          Scenario(
            kind: ScenarioKind.bull,
            probability: 30,
            priceLow: 215,
            priceHigh: 240,
            horizon: _t(hu, '6–12 months'),
            summary: _t(hu, 'Guidance beat and China relief.'),
          ),
          Scenario(
            kind: ScenarioKind.base,
            probability: 45,
            priceLow: 175,
            priceHigh: 205,
            horizon: _t(hu, '6–12 months'),
            summary: _t(hu, 'Growth normalises, multiple holds.'),
          ),
          Scenario(
            kind: ScenarioKind.bear,
            probability: 25,
            priceLow: 130,
            priceHigh: 160,
            horizon: _t(hu, '6–12 months'),
            summary: _t(hu, 'Capex digestion at hyperscalers.'),
          ),
        ],
        keyLevels: [
          KeyLevel(price: 170, kind: KeyLevelKind.support, label: _t(hu, '200-day average')),
          KeyLevel(price: 200, kind: KeyLevelKind.anchor, label: _t(hu, 'round number')),
          KeyLevel(price: 212, kind: KeyLevelKind.resistance, label: _t(hu, 'all-time high')),
        ],
        catalysts: [
          Catalyst(date: '2026-11-19', event: _t(hu, 'Q3 FY27 earnings')),
          Catalyst(date: '2026-12-05', event: _t(hu, 'Ex-dividend date')),
          Catalyst(date: '2027-03', event: _t(hu, 'GTC developer conference')),
        ],
        marketMood: 1,
        marketMoodReason: _t(hu, 'AI demand narrative is strong, but positioning is crowded.'),
        mostLikelyReason: _t(hu, 'Growth is slowing, but upward earnings revisions support the multiple.'),
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
    // Egy idei osztalék: a főoldali kártyán az „Idei osztalék” sor is látszik.
    final portfolio = _samplePortfolio();
    await portfolio.addDividend(
      symbol: 'AAPL',
      amount: 4.68,
      currency: 'USD',
      date: DateTime(DateTime.now().year, 1, 15),
    );
    final s = _services(locale: const Locale('hu'), portfolio: portfolio, currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await _shot(tester, 'home_portfolio_phone_hu');
    // Kisebb képernyőn (vagy más betűkészlettel) a kártya az alsó menüsor alá csúszhat.
    await tester.ensureVisible(find.byType(PortfolioSummaryCard));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(PortfolioSummaryCard));
    await tester.pumpAndSettle();
    await s.preferences.setPortfolioGoal((amount: 8000000, currency: 'HUF'));
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_phone_hu');
    // Célarányokkal: mit kellene venni vagy eladni.
    await s.preferences.setTargets({'OTP': 25, 'AAPL': 25, 'NVDA': 25, 'MSFT': 25});
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('target-MSFT')));
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_targets_phone_hu');
    // Kockázat a megoszlás-kártya alján: súlyozott béta és a 3 legnagyobb pozíció súlya.
    final risk = find.byKey(const ValueKey('portfolio-risk'));
    await Scrollable.ensureVisible(tester.element(risk), alignment: 0.6);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('portfolio-top3')), findsOneWidget);
    await _shot(tester, 'portfolio_risk_phone_hu');
    // Index-összevetés: a Nasdaq 100 választva.
    final qqq = find.byKey(const ValueKey('benchmark-QQQ'));
    await Scrollable.ensureVisible(tester.element(qqq), alignment: 0.4);
    await tester.pumpAndSettle();
    await tester.tap(qqq);
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_benchmark_phone_hu');
  });

  testWidgets('portfolio accounts on a phone (hungarian)', (tester) async {
    // A minta tételei két számlán: az OTP TBSZ-en, a többi a normál számlán.
    final sample = _samplePortfolio();
    final portfolio = PortfolioStore(
      lots: [
        for (final l in sample.lots)
          PortfolioLot(
            id: l.id,
            symbol: l.symbol,
            quantity: l.quantity,
            price: l.price,
            currency: l.currency,
            date: l.date,
            sell: l.sell,
            account: l.symbol == 'OTP' ? 'TBSZ 2026' : 'Normál',
          ),
      ],
    );
    final s = _services(locale: const Locale('hu'), portfolio: portfolio, currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.tap(find.text('Portfólió').last);
    await tester.pumpAndSettle();
    // Előbb a megoszlás számlák szerint (Minden számla nézetben)…
    final segment = find.text('Számlák');
    await tester.ensureVisible(find.byKey(const ValueKey('allocation-by')));
    await tester.pumpAndSettle();
    await tester.drag(find.byKey(const ValueKey('allocation-by')), const Offset(-300, 0));
    await tester.pumpAndSettle();
    await tester.tap(segment);
    await tester.pumpAndSettle();
    // A kártya címe is látsszon.
    await tester.drag(find.byType(Scrollable).first, const Offset(0, 260));
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_allocation_accounts_phone_hu');
    // …aztán a TBSZ-számla nézete.
    await tester.drag(find.byType(Scrollable).first, const Offset(0, 3000));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('account-TBSZ 2026')));
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_account_phone_hu');
  });

  testWidgets('sharing the portfolio performance on a phone (hungarian)', (tester) async {
    final s = _services(locale: const Locale('hu'), portfolio: _samplePortfolio(), currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.tap(find.text('Portfólió').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-share')));
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_share_phone_hu');
  });

  testWidgets('investing new money towards the targets on a phone (hungarian)', (tester) async {
    final s = _services(locale: const Locale('hu'), portfolio: _samplePortfolio(), currency: 'HUF');
    await s.preferences.setTargets({'OTP': 25, 'AAPL': 25, 'NVDA': 25, 'MSFT': 25});
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.tap(find.text('Portfólió').last);
    await tester.pumpAndSettle();
    final open = find.byKey(const ValueKey('contribution-open'));
    await tester.ensureVisible(open);
    await tester.pumpAndSettle();
    await tester.tap(open);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('contribution-amount')), '500000');
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_contribution_phone_hu');
  });

  testWidgets('trying the app with a sample portfolio on a phone (hungarian)', (tester) async {
    final s = _services(locale: const Locale('hu'), currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.tap(find.text('Portfólió').last);
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_empty_phone_hu');
    await tester.tap(find.byKey(const ValueKey('portfolio-empty-sample')));
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_sample_phone_hu');
    await tester.pump(const Duration(minutes: 1));
  });

  testWidgets('trailing stops for all positions on a phone (hungarian)', (tester) async {
    final s = _services(locale: const Locale('hu'), portfolio: _samplePortfolio(), currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.tap(find.text('Portfólió').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-stops')));
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_stops_phone_hu');
  });

  testWidgets('annual summary on a phone (hungarian)', (tester) async {
    final portfolio = PortfolioStore(
      lots: [
        PortfolioLot(
          id: 'a',
          symbol: 'AAPL',
          quantity: 10,
          price: 168.4,
          currency: 'USD',
          date: DateTime(2024, 3, 1),
          fee: 2,
        ),
        PortfolioLot(
          id: 'b',
          symbol: 'AAPL',
          quantity: 4,
          price: 231.2,
          currency: 'USD',
          date: DateTime(2025, 5, 2),
          sell: true,
          fee: 1.5,
        ),
        PortfolioLot(
          id: 'c',
          symbol: 'OTP',
          quantity: 40,
          price: 21500,
          currency: 'HUF',
          date: DateTime(2023, 1, 5),
          account: 'TBSZ 2023',
        ),
        PortfolioLot(
          id: 'd',
          symbol: 'OTP',
          quantity: 15,
          price: 28900,
          currency: 'HUF',
          date: DateTime(2025, 8, 1),
          sell: true,
          account: 'TBSZ 2023',
          fee: 650,
        ),
      ],
      dividends: [
        DividendRecord(
          id: 'x',
          symbol: 'OTP',
          amount: 37400,
          currency: 'HUF',
          date: DateTime(2025, 6, 1),
          account: 'TBSZ 2023',
        ),
        DividendRecord(id: 'y', symbol: 'AAPL', amount: 2.6, currency: 'USD', date: DateTime(2025, 2, 13)),
      ],
    );
    final s = _services(locale: const Locale('hu'), portfolio: portfolio, currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.tap(find.text('Portfólió').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-annual-summary')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('annual-summary-year-2025')));
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_annual_summary_phone_hu');
  });

  testWidgets('selling from one of two accounts on a phone (hungarian)', (tester) async {
    final portfolio = PortfolioStore(lots: _samplePortfolio().lots);
    await portfolio.add(
      symbol: 'AAPL',
      quantity: 5,
      price: 180,
      currency: 'USD',
      date: DateTime(2024, 3, 4),
      account: 'TBSZ 2026',
    );
    final s = _services(locale: const Locale('hu'), portfolio: portfolio, currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.tap(find.text('Portfólió').last);
    await tester.pumpAndSettle();
    final menu = find.byKey(const ValueKey('position-menu-AAPL'));
    await tester.ensureVisible(menu);
    await tester.pumpAndSettle();
    await tester.tap(menu);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('position-sell')));
    await tester.pumpAndSettle();
    // A jutalék mezője is (egy gombbal kerül elő).
    await tester.tap(find.byKey(const ValueKey('lot-fee-add')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '5');
    await tester.enterText(find.byKey(const ValueKey('lot-fee')), '1,99');
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_sell_accounts_phone_hu');
  });

  testWidgets('home with the „while you were away” card on a phone (hungarian)', (tester) async {
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(days: 1)).toIso8601String().substring(0, 10);
    SharedPreferences.setMockInitialValues({
      AwaySummary.storeKey: jsonEncode({
        'at': now.subtract(const Duration(days: 3, hours: 2)).toIso8601String(),
        'prices': {'AAPL': 220.0, 'NVDA': 195.0, 'MSFT': 512.30},
        'earnings': {'NVDA': yesterday},
      }),
    });
    final s = _services(locale: const Locale('hu'), portfolio: _samplePortfolio(), currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-away')), findsOneWidget);
    await _shot(tester, 'home_away_phone_hu');
  });

  testWidgets('„why is it moving today?” on a phone (hungarian)', (tester) async {
    final client = MockClient(
      (req) async => _aiText(
        'A részvény a nyitás óta emelkedik, miután a cég a vártnál erősebb negyedéves eredményt és magasabb éves '
        'előrejelzést tett közzé: az adatközponti bevétel 60%-kal nőtt, és a menedzsment az új chipek iránti kereslet '
        'kifutását 2027-ig látja. Több elemzőház emelte a célárat. Figyelni érdemes a következő hetek szállítási '
        'adataira és az exportszabályok változására.',
      ),
    );
    final s = _services(
      locale: const Locale('hu'),
      moveExplainer: MoveExplainer(
        config: const AppConfig(backendUrl: 'https://api.test'),
        client: client,
      ),
    );
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.enterText(find.byType(TextField).first, 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final button = find.byKey(const ValueKey('move-why'));
    await tester.ensureVisible(button);
    await tester.tap(button);
    await tester.pumpAndSettle();
    await _shot(tester, 'move_why_phone_hu');
  });

  testWidgets('technical picture on a phone (hungarian)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 1000));
    await tester.enterText(find.byType(TextField).first, 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final card = find.byKey(const ValueKey('technical-card'));
    await tester.scrollUntilVisible(card, 300, scrollable: find.byType(Scrollable).first);
    await tester.pumpAndSettle();
    await _shot(tester, 'technical_phone_hu');
  });

  testWidgets('dividends received on a phone (hungarian)', (tester) async {
    final portfolio = _samplePortfolio();
    await portfolio.addDividend(symbol: 'AAPL', amount: 4.68, currency: 'USD', date: DateTime(2026, 8, 14));
    await portfolio.addDividend(symbol: 'MSFT', amount: 3.64, currency: 'USD', date: DateTime(2026, 9, 11));
    await portfolio.addDividend(symbol: 'OTP', amount: 58800, currency: 'HUF', date: DateTime(2026, 6, 2));
    await portfolio.addDividend(symbol: 'AAPL', amount: 4.32, currency: 'USD', date: DateTime(2026, 5, 15));
    await portfolio.addDividend(symbol: 'NVDA', amount: 0.2, currency: 'USD', date: DateTime(2026, 6, 26));
    // Két korábbi év is: az évenkénti listában az előző évhez képesti változás.
    await portfolio.addDividend(symbol: 'MSFT', amount: 14.2, currency: 'USD', date: DateTime(2025, 9, 11));
    await portfolio.addDividend(symbol: 'MSFT', amount: 13.1, currency: 'USD', date: DateTime(2024, 9, 12));
    final s = _services(locale: const Locale('hu'), portfolio: portfolio, currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.tap(find.text('Portfólió').last);
    await tester.pumpAndSettle();
    final card = find.byKey(const ValueKey('portfolio-dividends-received'));
    for (var i = 0; i < 30 && card.evaluate().isEmpty; i++) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    await tester.ensureVisible(card);
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_dividends_phone_hu');
    // Havi osztalékcél a kártya alján (a mai hozamokból várható havi átlaghoz).
    await s.preferences.setDividendGoal((amount: 50000, currency: 'HUF'));
    await tester.pumpAndSettle();
    final goal = find.byKey(const ValueKey('dividend-goal-bar'));
    await Scrollable.ensureVisible(tester.element(goal), alignment: 0.7);
    await tester.pumpAndSettle();
    await _shot(tester, 'portfolio_dividend_goal_phone_hu');
  });

  testWidgets('selling shares on a phone (hungarian)', (tester) async {
    final portfolio = _samplePortfolio();
    await portfolio.add(
      symbol: 'MSFT',
      quantity: 4,
      price: 560,
      currency: 'USD',
      date: DateTime(2026, 9, 2),
      sell: true,
    );
    // Egy régebbi felaprózás sora is látszik a lapon (a tételek előtti: a számok nem változnak).
    await portfolio.addSplit(symbol: 'AAPL', from: 1, to: 4, date: DateTime(2020, 8, 31));
    final s = _services(locale: const Locale('hu'), portfolio: portfolio, currency: 'HUF');
    await pumpApp(tester, s, const Size(430, 1000));
    await tester.tap(find.text('Portfólió').last);
    await tester.pumpAndSettle();
    final menu = find.byKey(const ValueKey('position-menu-AAPL'));
    for (var i = 0; i < 20 && menu.evaluate().isEmpty; i++) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    await tester.ensureVisible(menu);
    await tester.pumpAndSettle();
    await tester.tap(menu);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('position-sell')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('lot-quantity')), '6');
    await tester.pumpAndSettle();
    await _shot(tester, 'sell_dialog_phone_hu');
    await tester.tap(find.byKey(const ValueKey('lot-submit')));
    await tester.pumpAndSettle();
    // A még meglévő tételek (FIFO) a mai árral számolt nyereséggel.
    expect(find.byKey(const ValueKey('open-lot-0')), findsOneWidget);
    await _shot(tester, 'transactions_phone_hu');
    await tester.tapAt(const Offset(215, 40));
    await tester.pumpAndSettle();
    await tester.drag(find.byType(Scrollable).first, const Offset(0, -2000));
    await tester.pumpAndSettle();
    await _shot(tester, 'closed_positions_phone_hu');
    await tester.drag(find.byType(Scrollable).first, const Offset(0, 4000));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-menu')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('portfolio-export-realized')), findsOneWidget);
    await _shot(tester, 'portfolio_menu_realized_phone_hu');
  });

  testWidgets('metric explanation on a phone (hungarian)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 1000));
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final peg = find.byKey(const ValueKey('hint-PEG'));
    for (var i = 0; i < 30 && peg.evaluate().isEmpty; i++) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    await tester.ensureVisible(peg);
    await tester.pumpAndSettle();
    await _shot(tester, 'metrics_hints_phone_hu');
    await tester.tap(peg);
    await tester.pumpAndSettle();
    await _shot(tester, 'metric_explained_phone_hu');
  });

  testWidgets('portfolio import from a screenshot on a phone (hungarian)', (tester) async {
    await pumpApp(
      tester,
      _services(locale: const Locale('hu'), capture: _ShotCapture(), holdingsReader: _ShotReader()),
      const Size(430, 1000),
    );
    await tester.tap(find.text('Portfólió').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('portfolio-empty-photo')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('holdings-pick')));
    await tester.pumpAndSettle();
    await _shot(tester, 'holdings_review_phone_hu');
  });

  testWidgets('earnings card on a phone (hungarian)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu')), const Size(430, 1000));
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final card = find.byKey(const ValueKey('earnings-beats'));
    for (var i = 0; i < 40 && card.evaluate().isEmpty; i++) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    await tester.ensureVisible(find.byKey(const ValueKey('earnings-card')));
    await tester.pumpAndSettle();
    await _shot(tester, 'earnings_phone_hu');
    final returns = find.byKey(const ValueKey('returns-strip'));
    for (var i = 0; i < 20 && returns.evaluate().isEmpty; i++) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, 300));
      await tester.pumpAndSettle();
    }
    await tester.ensureVisible(returns);
    await tester.drag(find.byType(Scrollable).first, const Offset(0, 250));
    await tester.pumpAndSettle();
    await _shot(tester, 'returns_phone_hu');
    // „Mi lett volna, ha…” közvetlenül a grafikon alatt.
    await tester.ensureVisible(find.byKey(const ValueKey('what-if')));
    await tester.pumpAndSettle();
    await tester.drag(find.byType(Scrollable).first, const Offset(0, 420));
    await tester.pumpAndSettle();
    await _shot(tester, 'what_if_phone_hu');
    final insiders = find.byKey(const ValueKey('insiders-card'));
    for (var i = 0; i < 20 && insiders.evaluate().isEmpty; i++) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    await tester.ensureVisible(insiders);
    await tester.pumpAndSettle();
    await _shot(tester, 'insiders_phone_hu');
    final trend = find.byKey(const ValueKey('consensus-trend'));
    for (var i = 0; i < 40 && trend.evaluate().isEmpty; i++) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    await tester.ensureVisible(trend);
    await tester.drag(find.byType(Scrollable).first, const Offset(0, 250));
    await tester.pumpAndSettle();
    await _shot(tester, 'consensus_trend_phone_hu');
  });

  testWidgets('favorites page and news on a phone (hungarian)', (tester) async {
    final s = _services(locale: const Locale('hu'));
    await s.preferences.setFavorites(['AAPL', 'MSFT', 'NVDA', 'OTP']);
    // „Mióta figyeled”: a felvétel napjai.
    final today = DateTime.now();
    DateTime ago(int days) => DateTime(today.year, today.month, today.day - days);
    await s.preferences.setFavoriteSince({'AAPL': ago(120), 'NVDA': ago(45), 'OTP': ago(200)});
    await s.preferences.addWatchList('Tech');
    await s.preferences.addWatchList('Osztalék');
    await s.preferences.toggleInList('Tech', 'NVDA');
    await s.preferences.toggleInList('Tech', 'MSFT');
    await pumpApp(tester, s, const Size(430, 1000));
    final news = find.byKey(const ValueKey('home-news'));
    for (var i = 0; i < 20 && news.evaluate().isEmpty; i++) {
      await tester.drag(find.byType(Scrollable).first, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    Scrollable.ensureVisible(tester.element(news), alignment: 0.1);
    await tester.pumpAndSettle();
    await _shot(tester, 'home_news_phone_hu');
    await tester.drag(find.byType(Scrollable).first, const Offset(0, 3000));
    await tester.pumpAndSettle();
    final all = find.byKey(const ValueKey('favorites-see-all'));
    await tester.ensureVisible(all);
    await tester.pumpAndSettle();
    await tester.tap(all);
    await tester.pumpAndSettle();
    await _shot(tester, 'watchlist_phone_hu');
    await tester.tap(find.byKey(const ValueKey('watch-list-Tech')));
    await tester.pumpAndSettle();
    await _shot(tester, 'watchlist_list_phone_hu');
    await tester.tap(find.byKey(const ValueKey('watch-addto-NVDA')));
    await tester.pumpAndSettle();
    await _shot(tester, 'watchlist_addto_phone_hu');
  });

  testWidgets('detail with own position', (tester) async {
    // Két negyedéves AAPL-osztalék: a kártyán a kapott összeg és a várható következő.
    final portfolio = _samplePortfolio();
    final last = DateTime.now().subtract(const Duration(days: 80));
    await portfolio.addDividend(
      symbol: 'AAPL',
      amount: 4.32,
      currency: 'USD',
      date: last.subtract(const Duration(days: 91)),
    );
    await portfolio.addDividend(symbol: 'AAPL', amount: 4.68, currency: 'USD', date: last);
    await pumpApp(tester, _services(portfolio: portfolio), const Size(1200, 900));
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_position');
    // A saját vételek jelölése a grafikonon (5 éves nézet).
    final legend = find.byKey(const ValueKey('chart-markers-legend'));
    final fiveYears = find.text('5Y');
    // A részvény oldalát görgetjük (széles nézetben az első görgethető elem az oldalsáv).
    final page = find.descendant(of: find.byType(StockDetailPage), matching: find.byType(Scrollable)).first;
    for (var i = 0; i < 40 && fiveYears.evaluate().isEmpty; i++) {
      await tester.drag(page, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    await tester.ensureVisible(fiveYears.first);
    await tester.pumpAndSettle();
    await tester.tap(fiveYears.first);
    await tester.pumpAndSettle();
    expect(legend, findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('chart-benchmark')));
    await tester.pumpAndSettle();
    await Scrollable.ensureVisible(tester.element(fiveYears.first), alignment: 0.1);
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_chart_markers');
    await tester.tap(find.byTooltip('Add to portfolio'));
    await tester.pumpAndSettle();
    await _shot(tester, 'add_to_portfolio');
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    // Az „Osztalék” kártya: 5 éves növekedés és a saját részvényekre jutó évi osztalék.
    final dividend = find.byKey(const ValueKey('dividend-card'));
    for (var i = 0; i < 40 && dividend.evaluate().isEmpty; i++) {
      await tester.drag(page, const Offset(0, -300));
      await tester.pumpAndSettle();
    }
    await Scrollable.ensureVisible(tester.element(dividend), alignment: 0.3);
    await tester.pumpAndSettle();
    expect(find.text('On your shares, a year'), findsOneWidget);
    await _shot(tester, 'detail_dividend_card');
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
    await tester.tap(find.text('Esés a csúcsról'));
    await tester.pumpAndSettle();
    await _shot(tester, 'alert_trailing_phone_hu');
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

  testWidgets('latest earnings report summary (hungarian, phone)', (tester) async {
    final client = MockClient(
      (req) async => http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            if (req.body.contains('Question:'))
              {
                'type': 'text',
                'text':
                    'A számok jók voltak, de a cég a karácsonyi negyedévre a vártnál óvatosabb kilátást adott, '
                    'és a kínai eladások lassulása is nyomta a hangulatot. A piac előre a gyengébb kilátást árazta.',
              }
            else
              {
                'type': 'text',
                'text':
                    'Az Apple július 30-án jelentette a júniusi negyedévet. A bevétel 94 milliárd dollár lett '
                    '(+8%), az egy részvényre jutó eredmény 1,57 dollár, mindkettő a várakozás fölött.\n\n'
                    '- A szolgáltatások bevétele rekordot döntött.\n'
                    '- Kínában 4%-kal nőttek az eladások.\n\n'
                    'A cég a következő negyedévre is növekedést vár. A részvény másnap 2%-ot emelkedett. '
                    'Érdemes figyelni az iPhone-szezon első heteit.',
                'citations': [
                  {
                    'url': 'https://www.apple.com/newsroom/2026/07/apple-reports-third-quarter-results/',
                    'title': 'Apple reports third quarter results',
                  },
                  {'url': 'https://www.reuters.com/technology/apple-results', 'title': 'Apple beats estimates'},
                ],
              },
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      ),
    );
    const config = AppConfig(backendUrl: 'https://api.test');
    final summarizer = EarningsSummarizer(config: config, client: client);
    final followUp = ResearchFollowUp(config: config, client: client);
    await pumpApp(
      tester,
      _services(locale: const Locale('hu'), earningsSummarizer: summarizer, researchFollowUp: followUp),
      const Size(430, 932),
    );
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final button = find.byKey(const ValueKey('earnings-summary'));
    await tester.scrollUntilVisible(button, 300, scrollable: find.byType(Scrollable).first);
    await tester.pumpAndSettle();
    await tester.tap(button);
    await tester.pumpAndSettle();
    await _shot(tester, 'earnings_summary_phone_hu');
    // Kérdés az összefoglalóról: a válasz a lap alján.
    await tester.enterText(
      find.byKey(const ValueKey('followup-field')),
      'Miért esett az árfolyam a jó számok ellenére?',
    );
    await tester.testTextInput.receiveAction(TextInputAction.send);
    await tester.pumpAndSettle();
    await tester.drag(find.byKey(const ValueKey('earnings-summary-sheet')), const Offset(0, -400));
    await tester.pumpAndSettle();
    await _shot(tester, 'earnings_followup_phone_hu');
  });

  testWidgets('a description in the search: the "ask the AI" suggestion (hungarian, phone)', (tester) async {
    await pumpApp(tester, _services(locale: const Locale('hu'), backend: true), const Size(430, 932));
    await tester.enterText(find.byType(TextField), 'tech 100 etf');
    await tester.pump(const Duration(milliseconds: 450));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('suggestion-ai')), findsOneWidget);
    await _shot(tester, 'search_ai_suggestion_phone_hu');
  });

  testWidgets('the daily brief with a question (hungarian, phone)', (tester) async {
    const config = AppConfig(backendUrl: 'https://api.test');
    final client = MockClient((req) async {
      final question = req.body.contains('Question:');
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {
              'type': 'text',
              'text': question
                  ? 'Az NVIDIA azért emelkedett, mert a negyedéves számai és az adatközponti kilátása is a várakozás '
                        'fölött voltak; a többi papírodat inkább az általános hangulat mozgatta.'
                  : 'Nyugodt nap volt, a portfóliód enyhén pluszban zárt.\n\n'
                        '- NVDA +3,0%: a gyorsjelentés és az adatközponti kilátás a várt felett.\n'
                        '- AAPL +0,9%: iPhone-rendelések, nincs külön hír.\n'
                        '- OTP +1,1%: a bankszektor erősödött a régióban.',
            },
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    await pumpApp(
      tester,
      _services(
        locale: const Locale('hu'),
        backend: true,
        dailyBrief: (news) => DailyBrief(
          config: config,
          marketData: DemoMarketDataProvider(latency: Duration.zero),
          news: news,
          client: client,
        ),
        researchFollowUp: ResearchFollowUp(config: config, client: client),
      ),
      const Size(430, 932),
    );
    final run = find.byKey(const ValueKey('daily-brief-run'));
    await tester.scrollUntilVisible(run, 200, scrollable: find.byType(Scrollable).first);
    await tester.tap(run);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('followup-field')), 'Miért emelkedett az NVDA?');
    await tester.testTextInput.receiveAction(TextInputAction.send);
    await tester.pumpAndSettle();
    final panel = find.byKey(const ValueKey('daily-brief-followup'));
    Scrollable.ensureVisible(tester.element(panel), alignment: 0.6);
    await tester.pumpAndSettle();
    await _shot(tester, 'daily_brief_question_phone_hu');
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
    // Két negyedéves AAPL-osztalék: a következő ~11 nap múlva várható (esemény is).
    final portfolio = _samplePortfolio();
    final last = DateTime.now().subtract(const Duration(days: 80));
    await portfolio.addDividend(
      symbol: 'AAPL',
      amount: 4.32,
      currency: 'USD',
      date: last.subtract(const Duration(days: 91)),
    );
    await portfolio.addDividend(symbol: 'AAPL', amount: 4.68, currency: 'USD', date: last);
    await pumpApp(tester, _services(locale: const Locale('hu'), portfolio: portfolio), const Size(430, 932));
    final section = find.byKey(const ValueKey('home-events'));
    await tester.scrollUntilVisible(section, 200, scrollable: find.byType(Scrollable).first);
    Scrollable.ensureVisible(tester.element(section), alignment: 0.3);
    await tester.pumpAndSettle();
    await _shot(tester, 'events_home_phone_hu');
    // Friss gyorsjelentések a kezdőképernyőn, az események alatt.
    final results = find.byKey(const ValueKey('home-results'));
    await tester.scrollUntilVisible(results, 200, scrollable: find.byType(Scrollable).first);
    Scrollable.ensureVisible(tester.element(results), alignment: 0.2);
    await tester.pumpAndSettle();
    await _shot(tester, 'results_home_phone_hu');
    await tester.scrollUntilVisible(
      find.byKey(const ValueKey('events-see-all')),
      -200,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('events-see-all')));
    await tester.pumpAndSettle();
    await _shot(tester, 'events_page_phone_hu');
  });

  testWidgets('comparing three stocks (hungarian, phone)', (tester) async {
    const config = AppConfig(backendUrl: 'https://api.test');
    final followUp = ResearchFollowUp(
      config: config,
      client: MockClient(
        (req) async => http.Response(
          jsonEncode({
            'stop_reason': 'end_turn',
            'content': [
              {
                'type': 'text',
                'text':
                    'Értékeltségben az Apple az olcsóbb: alacsonyabb az előretekintő P/E-je és a P/S-e, miközben a '
                    'tőkearányos megtérülése a legmagasabb. Az NVIDIA a növekedésben vezet, de ezt az ára is tükrözi.',
              },
            ],
          }),
          200,
          headers: {'content-type': 'application/json; charset=utf-8'},
        ),
      ),
    );
    await pumpApp(
      tester,
      _services(locale: const Locale('hu'), backend: true, researchFollowUp: followUp),
      const Size(430, 932),
    );
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
    // Kérdés az összehasonlításról: a táblázat alatt.
    final panel = find.byKey(const ValueKey('compare-followup'));
    await tester.scrollUntilVisible(panel, 300, scrollable: find.byType(Scrollable).first);
    await tester.enterText(find.byKey(const ValueKey('followup-field')), 'Melyik az olcsóbb és miért?');
    await tester.testTextInput.receiveAction(TextInputAction.send);
    await tester.pumpAndSettle();
    await tester.drag(find.byType(Scrollable).first, const Offset(0, -600));
    await tester.pumpAndSettle();
    await _shot(tester, 'compare_question_phone_hu');
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

  // ---- Bolti képernyőképek (5k) ----
  // `flutter test --tags screenshot --dart-define=SHOTS=<mappa> --dart-define=STORE_LANGS=en,hu
  //  test/screenshots` – nyelvenként és eszközönként három feliratos kép a boltok méreteiben.
  for (final lang in _storeLangs) {
    for (final device in _storeDevices) {
      testWidgets('store ${device.name} $lang', (tester) async {
        final l10n = lookupAppLocalizations(Locale(lang));
        // A 4. kép: gyorsjelentés-összefoglaló kérdéssel (a válasz utánzat, a bolti nyelveken).
        const aiConfig = AppConfig(backendUrl: 'https://api.test');
        final aiClient = MockClient((req) async {
          final question = req.body.contains('Question:');
          final text = lang == 'hu'
              ? (question
                    ? 'A számok jók voltak, de a cég a karácsonyi negyedévre a vártnál óvatosabb kilátást adott, és a '
                          'kínai eladások lassulása is nyomta a hangulatot.'
                    : 'Az Apple július 30-án jelentette a júniusi negyedévet. A bevétel 94 milliárd dollár lett (+8%), '
                          'az egy részvényre jutó eredmény 1,57 dollár, mindkettő a várakozás fölött.\n\n'
                          '- A szolgáltatások bevétele rekordot döntött.\n- Kínában 4%-kal nőttek az eladások.\n\n'
                          'A cég a következő negyedévre is növekedést vár. A részvény másnap 2%-ot emelkedett.')
              : (question
                    ? 'The numbers were good, but guidance for the holiday quarter was more cautious than expected, '
                          'and slowing sales in China weighed on sentiment.'
                    : 'Apple reported its June quarter on 30 July. Revenue came in at \$94 billion (+8%) and earnings '
                          'per share at \$1.57, both above expectations.\n\n- Services revenue set a record.\n'
                          '- Sales in China grew 4%.\n\nThe company expects growth to continue next quarter. '
                          'The stock rose 2% the next day.');
          return http.Response(
            jsonEncode({
              'stop_reason': 'end_turn',
              'content': [
                {
                  'type': 'text',
                  'text': text,
                  'citations': [
                    {
                      'url': 'https://www.apple.com/newsroom/2026/07/apple-reports-third-quarter-results/',
                      'title': 'Apple reports third quarter results',
                    },
                    {'url': 'https://www.reuters.com/technology/apple-results', 'title': 'Apple beats estimates'},
                  ],
                },
              ],
            }),
            200,
            headers: {'content-type': 'application/json; charset=utf-8'},
          );
        });
        final s = _services(
          locale: Locale(lang),
          portfolio: _samplePortfolio(),
          alerts: _sampleAlerts(),
          store: true,
          earningsSummarizer: EarningsSummarizer(config: aiConfig, client: aiClient),
          researchFollowUp: ResearchFollowUp(config: aiConfig, client: aiClient),
        );
        await _pumpStore(tester, s, device, l10n.onboardTitle1, l10n.onboardBody1);
        await _storeShot(tester, device, '${lang}_${device.name}_1');

        await _setCaption(tester, l10n.onboardTitle2, l10n.onboardBody2);
        await tester.enterText(find.byType(TextField).first, 'NVDA');
        await tester.testTextInput.receiveAction(TextInputAction.search);
        await tester.pumpAndSettle();
        // A lista lusta: lefelé görgetünk, amíg a gomb megjelenik.
        final generate = find.text(l10n.aiGenerate);
        for (var i = 0; i < 20 && generate.evaluate().isEmpty; i++) {
          await tester.drag(find.byType(Scrollable).first, const Offset(0, -250));
          await tester.pumpAndSettle();
        }
        await tester.ensureVisible(generate.first);
        await tester.pumpAndSettle();
        await tester.tap(generate.first);
        await tester.pumpAndSettle();
        final chart = find.byType(ScenarioChart);
        for (var i = 0; i < 20 && chart.evaluate().isEmpty; i++) {
          await tester.drag(find.byType(Scrollable).first, const Offset(0, -250));
          await tester.pumpAndSettle();
        }
        Scrollable.ensureVisible(tester.element(chart), alignment: 0.05);
        await tester.pumpAndSettle();
        await _storeShot(tester, device, '${lang}_${device.name}_2');

        await tester.tap(find.byType(BackButton).first);
        await tester.pumpAndSettle();
        await _setCaption(tester, l10n.onboardTitle3, l10n.onboardBody3);
        // Széles elrendezésben az oldalsáv, telefonon az alsó sáv gombja.
        final tab = find.text(l10n.portfolio);
        await tester.tap(device.name == 'desktop' || device.name == 'ipad13' ? tab.first : tab.last);
        await tester.pumpAndSettle();
        await _storeShot(tester, device, '${lang}_${device.name}_3');

        // 4. kép: „Mi volt a legutóbbi gyorsjelentésben?” a kérdezz-vissza válasszal.
        await _setCaption(tester, l10n.earningsSummaryButton, l10n.earningsSummaryNote);
        // Vissza a kezdőképernyőre: széles elrendezésben az oldalsáv, telefonon az alsó sáv „Keresés” füle.
        if (device.name == 'desktop' || device.name == 'ipad13') {
          await tester.tap(find.byKey(const ValueKey('sidebar-home')));
        } else {
          await tester.tap(
            find.descendant(
              of: find.byKey(const ValueKey('phone-nav')),
              matching: find.text(
                MaterialLocalizations.of(tester.element(find.byType(Scaffold).first)).searchFieldLabel,
              ),
            ),
          );
        }
        await tester.pumpAndSettle();
        await tester.enterText(find.byType(TextField).first, 'AAPL');
        await tester.testTextInput.receiveAction(TextInputAction.search);
        await tester.pumpAndSettle();
        final summary = find.byKey(const ValueKey('earnings-summary'));
        // Széles elrendezésben az első görgethető az oldalsáv: a részvény oldalát görgetjük.
        final page = find.descendant(of: find.byType(StockDetailPage), matching: find.byType(Scrollable)).first;
        for (var i = 0; i < 30 && summary.evaluate().isEmpty; i++) {
          await tester.drag(page, const Offset(0, -250));
          await tester.pumpAndSettle();
        }
        await tester.ensureVisible(summary);
        await tester.pumpAndSettle();
        await tester.tap(summary);
        await tester.pumpAndSettle();
        await tester.enterText(
          find.byKey(const ValueKey('followup-field')),
          lang == 'hu'
              ? 'Miért esett az árfolyam a jó számok ellenére?'
              : 'Why did the stock fall despite good numbers?',
        );
        await tester.testTextInput.receiveAction(TextInputAction.send);
        await tester.pumpAndSettle();
        await tester.drag(
          find.byKey(const ValueKey('earnings-summary-sheet')),
          const Offset(0, -300),
          warnIfMissed: false,
        );
        await tester.pumpAndSettle();
        await _storeShot(tester, device, '${lang}_${device.name}_4');
        CollapseStore.instance.reset();
      });
    }
  }
}
