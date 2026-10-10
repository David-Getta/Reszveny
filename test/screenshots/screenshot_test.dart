@Tags(['screenshot'])
library;

import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/stock_analyst.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/home/quick_bar.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/theme/app_theme.dart';

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

AppServices _services({ThemeMode mode = ThemeMode.dark, Locale? locale}) => AppServices(
  config: const AppConfig(),
  capture: CaptureService(),
  recognizer: _NoRecognizer(),
  marketData: DemoMarketDataProvider(latency: Duration.zero),
  locale: LocaleController(initial: locale),
  preferences: AppPreferences(
    themeMode: mode,
    recent: const ['AAPL', 'NVDA', 'OTP'],
    favorites: const ['AAPL', 'MSFT'],
  ),
  desktop: DesktopIntegration(),
  reports: ReportStore(analyst: _FakeAnalyst()),
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
  Future<StockReport> analyze(StockDetails details, {String outputLanguage = 'English'}) async => StockReport(
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
        ],
      ),
    ],
    sources: const [ReportSource(title: 'NVIDIA investor relations', url: 'https://investor.nvidia.com')],
    generatedAt: DateTime.now(),
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
    await tester.pumpWidget(RepaintBoundary(child: StockLensApp(services: s)));
    await tester.pumpAndSettle();
    // A logó-képek aszinkron töltődnek; itt megvárjuk őket.
    await tester.runAsync(() async {
      final ctx = tester.element(find.byType(StockLensApp));
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

  testWidgets('detail wide dark', (tester) async {
    await pumpApp(tester, _services(), const Size(1200, 1600));
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_wide_dark');
  });

  testWidgets('detail with AI report', (tester) async {
    await pumpApp(tester, _services(), const Size(1200, 1500));
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    await _shot(tester, 'detail_ai_report');
  });

  testWidgets('quick bar', (tester) async {
    tester.view.physicalSize = const Size(680, 84);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      RepaintBoundary(
        child: AppServicesScope(
          services: _services(),
          child: MaterialApp(
            theme: AppTheme.build(Brightness.dark),
            localizationsDelegates: StockLensApp.localizationsDelegates,
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
