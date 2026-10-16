import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/features/stock_detail/widgets/section_card.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/desktop/system_notifier.dart';
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
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:reszveny/widgets/collapsible.dart';

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

AppServices services({Locale? locale, AlertNotifier? notifier}) {
  final ent = _entitlements();
  return AppServices(
    alertNotifier: notifier ?? FakeNotifier(),
    config: const AppConfig(),
    capture: CaptureService(),
    recognizer: _NoRecognizer(),
    marketData: DemoMarketDataProvider(latency: Duration.zero),
    locale: LocaleController(initial: locale),
    preferences: AppPreferences(),
    desktop: DesktopIntegration(),
    reports: ReportStore(analyst: _FakeAnalyst(), entitlements: ent),
    entitlements: ent,
    billing: DemoBillingService(latency: Duration.zero),
  );
}

/// Rendszerértesítés helyett feljegyzi, mit küldött volna.
class FakeNotifier implements AlertNotifier {
  final sent = <({String id, String title, String body})>[];

  @override
  Future<bool> show({required String id, required String title, required String body}) async {
    sent.add((id: id, title: title, body: body));
    return true;
  }
}

EntitlementService _entitlements() => EntitlementService(
  initial: EntitlementState(
    tier: PlanTier.pro,
    periodStart: DateTime.now().subtract(const Duration(days: 3)),
    periodEnd: DateTime.now().add(const Duration(days: 27)),
    usedInPeriod: 5,
  ),
);

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
      ReportSection(kind: ReportSectionKind.summary, title: 'Summary', paragraphs: ['Para']),
      ReportSection(kind: ReportSectionKind.news, title: 'News', paragraphs: ['News para'], bullets: ['News bullet']),
    ],
    generatedAt: DateTime.now(),
  );
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));
  testWidgets('manual ticker lookup shows the detail page with all sections', (tester) async {
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();

    expect(find.text('Which stock shall we look at?'), findsOneWidget);
    expect(find.textContaining('Demo mode'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'aapl');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();

    expect(find.text('Apple Inc.'), findsOneWidget);
    expect(find.text('AI analysis'), findsOneWidget);
    expect(find.text('Generate analysis'), findsOneWidget);
    for (final section in [
      'Price chart',
      'Price',
      'Valuation',
      'Financials',
      'Financial statements (annual)',
      'Dividend',
      'Company profile',
      'Analyst ratings',
      'News',
    ]) {
      await tester.scrollUntilVisible(find.text(section), 200, scrollable: find.byType(Scrollable).first);
      expect(find.text(section), findsOneWidget);
    }
  });

  testWidgets('company name search lists matches and opens the chosen one', (tester) async {
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'micro');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    // Egyetlen találat → közvetlenül a részletek nyílnak meg.
    expect(find.text('Microsoft Corporation'), findsOneWidget);
    expect(find.text('AI analysis'), findsOneWidget);
  });

  testWidgets('AI analysis renders the generated report', (tester) async {
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    expect(find.text('Test headline'), findsOneWidget);
    expect(find.text('Summary'), findsOneWidget);
    expect(find.text('Regenerate'), findsOneWidget);
  });

  testWidgets('star adds a favorite that shows on the home screen with a price', (tester) async {
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Add to favorites'));
    await tester.pumpAndSettle();
    expect(find.byTooltip('Remove from favorites'), findsOneWidget);
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();
    expect(find.text('Favorites'), findsOneWidget);
    expect(find.textContaining('231.45'), findsOneWidget);
  });

  testWidgets('paywall lists the four plans and a demo purchase upgrades the plan', (tester) async {
    tester.view.physicalSize = const Size(1200, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('View plans').first);
    await tester.pumpAndSettle();
    expect(find.text('Normal'), findsOneWidget);
    expect(find.text('Ultra'), findsOneWidget);
    expect(find.text('70 analyses per month'), findsOneWidget);
    expect(find.text('Current plan'), findsWidgets);
    // A Max csomag megvétele a demó boltban azonnal aktiválódik.
    final subscribeButtons = find.widgetWithText(FilledButton, 'Subscribe');
    expect(subscribeButtons, findsNWidgets(3));
    await tester.tap(subscribeButtons.at(1));
    await tester.pumpAndSettle();
    expect(
      s.entitlements.plan?.tier,
      PlanTier.max,
      reason: 'event=${s.billingController.lastEvent?.status} products=${s.billingController.products.length}',
    );
    expect(find.text('Thanks! Your purchase is active.'), findsOneWidget);
  });

  testWidgets('yearly billing: Pro and Max for 10 months, the cheapest per analysis is the best value', (tester) async {
    tester.view.physicalSize = const Size(1200, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('View plans').first);
    await tester.pumpAndSettle();
    Finder card(String name) => find.ancestor(
      of: find.text(name),
      matching: find.byWidgetPredicate((w) => w.runtimeType.toString() == '_PlanCard'),
    );
    // Havi nézet: elemzésenként az Ultra a legolcsóbb, a Pro a legnépszerűbb.
    expect(find.text('Best value'), findsOneWidget);
    expect(find.descendant(of: card('Ultra'), matching: find.text('Best value')), findsOneWidget);
    expect(find.descendant(of: card('Pro'), matching: find.text('Most popular')), findsOneWidget);
    expect(find.textContaining('\$18.99', findRichText: true), findsOneWidget);
    expect(find.textContaining('\$41.99', findRichText: true), findsOneWidget);
    await tester.tap(find.textContaining('Yearly', findRichText: true));
    await tester.pumpAndSettle();
    expect(find.text('Normal'), findsNothing);
    expect(find.text('Ultra'), findsNothing);
    // Éves nézet: havonta a korábbi havi ár, és a Max a legjobb ár/érték.
    expect(find.textContaining('\$189.99', findRichText: true), findsOneWidget);
    expect(find.textContaining('\$419.99', findRichText: true), findsOneWidget);
    expect(find.text('≈ \$15.83 per month'), findsOneWidget);
    expect(find.text('≈ \$35.00 per month'), findsOneWidget);
    expect(find.descendant(of: card('Max'), matching: find.text('Best value')), findsOneWidget);
    await tester.tap(find.widgetWithText(FilledButton, 'Subscribe').last);
    await tester.pumpAndSettle();
    expect(s.entitlements.plan?.tier, PlanTier.max);
    expect(s.entitlements.quota, 40);
  });

  testWidgets('analysis is blocked when the allowance is used up and offers the plans', (tester) async {
    final s = services();
    for (var i = 0; i < 20; i++) {
      await s.entitlements.consume();
    }
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    expect(find.textContaining('no analyses left'), findsOneWidget);
    expect(find.text('View plans'), findsOneWidget);
    expect(find.text('Test headline'), findsNothing);
  });

  testWidgets('language picker opens on tap, filters by search and switches the language', (tester) async {
    tester.view.physicalSize = const Size(1200, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    // A lista zárva: a 44 nyelv nem látszik, csak az aktuális.
    expect(find.text('Magyar'), findsNothing);
    await tester.scrollUntilVisible(find.text('System default'), 200, scrollable: find.byType(Scrollable).last);
    await tester.ensureVisible(find.text('System default'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('System default'));
    await tester.pumpAndSettle();
    expect(find.text('English'), findsWidgets);
    expect(find.text('Deutsch'), findsNothing); // a lista lusta: csak a látható elemek épülnek fel
    await tester.enterText(find.widgetWithText(TextField, 'Search languages…'), 'magy');
    await tester.pumpAndSettle();
    expect(find.text('Magyar'), findsOneWidget);
    expect(find.text('Deutsch'), findsNothing);
    await tester.tap(find.text('Magyar'));
    await tester.pumpAndSettle();
    expect(s.locale.override, const Locale('hu'));
    expect(find.text('Beállítások'), findsWidgets);
  });

  testWidgets('recent searches appear in the sidebar on wide screens', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    expect(find.text('New search'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    expect(find.text('NVIDIA Corporation'), findsOneWidget);
    expect(find.widgetWithText(InkWell, 'NVDA'), findsWidgets);
  });

  testWidgets('the logo and name in the sidebar lead back to the home page', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('View plans').first);
    await tester.pumpAndSettle();
    expect(find.text('Choose a plan'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('sidebar-home')));
    await tester.pumpAndSettle();
    expect(find.text('Choose a plan'), findsNothing);
    expect(find.text('View plans'), findsNothing);
    expect(find.byType(TextField), findsOneWidget);
  });

  testWidgets('on a phone the price goes below the company name instead of squeezing it', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final name = find.text('NVIDIA Corporation').first;
    final price = find.byKey(const ValueKey('detail-price'));
    expect(price, findsOneWidget);
    // A név szinte a teljes szélességet kapja (legfeljebb két sor, nem betűnként tördelve).
    expect(tester.getSize(name).width, greaterThan(200));
    expect(tester.getSize(name).height, lessThan(100));
    expect(tester.getTopLeft(price).dy, greaterThan(tester.getBottomLeft(name).dy));
  });

  testWidgets('price chart: hovering or dragging shows the price of the chosen day', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    final area = find.byKey(const ValueKey('price-chart-area'));
    await tester.ensureVisible(area);
    await tester.pumpAndSettle();
    // Kijelölés nélkül az egész időszak változása látszik.
    final percent = find.textContaining(RegExp(r'^[+-]?\d+\.\d\d%$'));
    final whole = tester.widget<Text>(percent.first).data;
    final rect = tester.getRect(area);

    // A grafikon kijelölt napjának felirata (ár és változás az időszak elejéhez képest).
    String? hoverLabel() {
      final paint = tester.widget<CustomPaint>(find.descendant(of: area, matching: find.byType(CustomPaint)).first);
      return (paint.painter as dynamic).hoverPrice as String?;
    }

    // Egér a görbe elején: a kijelölt nap 0%-on áll, a jobb felső szám és a
    // vonal színe viszont marad a teljes időszaké.
    final mouse = await tester.createGesture(kind: PointerDeviceKind.mouse);
    await mouse.addPointer(location: rect.centerLeft + const Offset(0.4, 0));
    await tester.pump();
    await mouse.moveTo(rect.centerLeft + const Offset(0.2, 0));
    await tester.pumpAndSettle();
    expect(hoverLabel(), endsWith('(0.00%)'));
    expect(find.text(whole!), findsWidgets);
    // Az egér elvitele után nincs kijelölés.
    await mouse.moveTo(rect.topLeft - const Offset(0, 40));
    await tester.pumpAndSettle();
    expect(hoverLabel(), isNull);
    expect(find.text(whole), findsWidgets);
    await mouse.removePointer();

    // Ujjal húzva ugyanígy, és elengedés után eltűnik a kijelölés.
    final drag = await tester.startGesture(rect.centerLeft + const Offset(40, 0));
    await drag.moveTo(rect.centerLeft + const Offset(0.2, 0));
    await tester.pump();
    expect(hoverLabel(), endsWith('(0.00%)'));
    await drag.up();
    await tester.pumpAndSettle();
    expect(hoverLabel(), isNull);
  });

  testWidgets('on a wide window the page also scrolls with the mouse wheel over the empty side areas', (tester) async {
    tester.view.physicalSize = const Size(1800, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'NVDA');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    // Az oldal listája (nem a jegyzetmező saját görgetője).
    final list = find.ancestor(of: find.byType(SectionCard).first, matching: find.byType(Scrollable)).first;
    final position = tester.state<ScrollableState>(list).position;
    expect(position.pixels, 0);
    // A jobb szélső üres sáv, jóval a 720 px-es tartalomoszlopon kívül.
    final pointer = TestPointer(1, PointerDeviceKind.mouse);
    pointer.hover(const Offset(1780, 450));
    await tester.sendEventToBinding(pointer.scroll(const Offset(0, 400)));
    await tester.pumpAndSettle();
    expect(position.pixels, greaterThan(0));
  });

  testWidgets('the AI analysis, each of its parts and the other cards can be collapsed and expanded', (tester) async {
    tester.view.physicalSize = const Size(1200, 3000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    addTearDown(CollapseStore.instance.reset);
    await tester.pumpWidget(WhatStockApp(services: services()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'AAPL');
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Generate analysis'));
    await tester.pumpAndSettle();
    expect(find.text('Para'), findsOneWidget);
    expect(find.text('News para'), findsOneWidget);

    // Egy rész összecsukása: csak az ő szövege tűnik el, a többi rész marad.
    await tester.tap(find.byKey(const ValueKey('collapse-ai-section:summary:')));
    await tester.pumpAndSettle();
    expect(find.text('Para'), findsNothing);
    expect(find.text('Summary'), findsOneWidget);
    expect(find.text('News para'), findsOneWidget);

    // Az egész elemzés összecsukása, majd kinyitása (a rész összecsukva marad).
    await tester.tap(find.byKey(const ValueKey('collapse-card:ai')));
    await tester.pumpAndSettle();
    expect(find.text('News para'), findsNothing);
    expect(find.text('Test headline'), findsNothing);
    await tester.tap(find.byKey(const ValueKey('collapse-card:ai')));
    await tester.pumpAndSettle();
    expect(find.text('News para'), findsOneWidget);
    expect(find.text('Para'), findsNothing);
    await tester.tap(find.byKey(const ValueKey('collapse-ai-section:summary:')));
    await tester.pumpAndSettle();
    expect(find.text('Para'), findsOneWidget);

    // A többi kártya (pl. Árfolyam) is összecsukható.
    expect(find.text('Last price'), findsOneWidget);
    await tester.tap(find.text('Price'));
    await tester.pumpAndSettle();
    expect(find.text('Last price'), findsNothing);
  });

  testWidgets('hungarian locale renders translated strings', (tester) async {
    await tester.pumpWidget(WhatStockApp(services: services(locale: const Locale('hu'))));
    await tester.pumpAndSettle();
    expect(find.text('Which stock shall we look at?'), findsNothing);
    expect(find.byType(TextField), findsOneWidget);
  });

  testWidgets('a locale without built-in Material strings still renders (fallback delegate)', (tester) async {
    await tester.pumpWidget(WhatStockApp(services: services(locale: const Locale('jv'))));
    await tester.pumpAndSettle();
    expect(find.byType(TextField), findsOneWidget);
    expect(Localizations.localeOf(tester.element(find.byType(TextField))), const Locale('jv'));
  });

  testWidgets('right-to-left locale flips the text direction', (tester) async {
    await tester.pumpWidget(WhatStockApp(services: services(locale: const Locale('ar'))));
    await tester.pumpAndSettle();
    expect(Directionality.of(tester.element(find.byType(TextField))), TextDirection.rtl);
  });

  // Az ujgurt a Flutter balról jobbra írja, a szindhit és a szoráni kurdot nem ismeri.
  for (final code in ['ug', 'sd', 'ckb', 'he', 'ps']) {
    testWidgets('$code is right-to-left', (tester) async {
      await tester.pumpWidget(WhatStockApp(services: services(locale: Locale(code))));
      await tester.pumpAndSettle();
      final field = tester.element(find.byType(TextField));
      expect(Localizations.localeOf(field), Locale(code));
      expect(Directionality.of(field), TextDirection.rtl);
    });
  }

  testWidgets('a new left-to-right language without Material strings renders (yoruba)', (tester) async {
    await tester.pumpWidget(WhatStockApp(services: services(locale: const Locale('yo'))));
    await tester.pumpAndSettle();
    final field = tester.element(find.byType(TextField));
    expect(Localizations.localeOf(field), const Locale('yo'));
    expect(Directionality.of(field), TextDirection.ltr);
  });

  testWidgets('AI analysis settings: length shows its cost, reader level and counter-argument persist', (tester) async {
    tester.view.physicalSize = const Size(1200, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    expect(find.text('AI ANALYSIS'), findsOneWidget);
    expect(find.textContaining('uses 1 analysis'), findsOneWidget);
    await tester.tap(find.text('In-depth'));
    await tester.pumpAndSettle();
    expect(s.preferences.analysisDepth, AnalysisDepth.deep);
    expect(find.textContaining('uses 2 analyses'), findsOneWidget);
    // Pro csomag: 6 + 2 webkeresés a részletes elemzéshez.
    expect(find.text('Up to 8 web searches per analysis with your plan'), findsOneWidget);
    await tester.tap(find.text('Experienced'));
    await tester.pumpAndSettle();
    expect(s.preferences.readerLevel, ReaderLevel.experienced);
    await tester.tap(find.text('Strongest counter-argument'));
    await tester.pumpAndSettle();
    expect(s.preferences.counterArgument, isFalse);
    final o = s.analysisOptions();
    expect(o.cost, 2);
    expect(o.webSearches, 8);
    expect(o.readerLevel, ReaderLevel.experienced);
    expect(o.counterArgument, isFalse);
  });

  testWidgets('trial: analyses are brief, the longer lengths are locked and the plans are advertised', (tester) async {
    tester.view.physicalSize = const Size(1200, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.entitlements.replace(
      EntitlementState(
        tier: PlanTier.trial,
        periodStart: DateTime.now(),
        periodEnd: DateTime.now().add(const Duration(days: 3)),
        usedInPeriod: 1,
        trialStartedAt: DateTime.now(),
      ),
    );
    await s.preferences.setAnalysisDepth(AnalysisDepth.deep);
    expect(s.isTrialAnalysis, isTrue);
    expect(s.analysisOptions().depth, AnalysisDepth.brief);
    expect(s.analysisOptions().cost, 1);

    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('trial-upsell')), findsOneWidget);
    expect(find.textContaining('most capable AI'), findsOneWidget);
    // A részletes nem választható; a mentett választás az előfizetés utánra megmarad.
    await tester.tap(find.text('In-depth'));
    await tester.pumpAndSettle();
    expect(s.preferences.analysisDepth, AnalysisDepth.deep);
    expect(s.analysisOptions().depth, AnalysisDepth.brief);

    // A próba-keret elfogyott (a további elemzés extra csomagból megy): a választott hossz él.
    await s.entitlements.replace(
      EntitlementState(
        tier: PlanTier.trial,
        periodStart: DateTime.now(),
        periodEnd: DateTime.now().add(const Duration(days: 3)),
        usedInPeriod: 3,
        extraCredits: 5,
        trialStartedAt: DateTime.now(),
      ),
    );
    await tester.pumpAndSettle();
    expect(s.isTrialAnalysis, isFalse);
    expect(s.analysisOptions().depth, AnalysisDepth.deep);
    expect(find.byKey(const ValueKey('trial-upsell')), findsNothing);
  });

  testWidgets('the bottom of the settings shows the app version', (tester) async {
    PackageInfo.setMockInitialValues(
      appName: 'WhatStock',
      packageName: 'hu.reszveny.reszveny',
      version: '0.2.4',
      buildNumber: '7',
      buildSignature: '',
    );
    tester.view.physicalSize = const Size(1200, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    final version = find.byKey(const ValueKey('settings-version'));
    await tester.scrollUntilVisible(version, 300, scrollable: find.byType(Scrollable).last);
    await tester.pumpAndSettle();
    expect(find.text('Version 0.2.4 (7)'), findsWidgets);
    expect(tester.widget<SelectableText>(version).data, 'Version 0.2.4 (7)');
  });
}
