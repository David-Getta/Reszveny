import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'core/app_preferences.dart';
import 'core/backend/backend_client.dart';
import 'core/review/review_prompt.dart';
import 'core/telemetry/telemetry.dart';
import 'core/config/app_config.dart';
import 'core/desktop/desktop_integration.dart';
import 'core/desktop/system_notifier.dart';
import 'core/util/formatters.dart';
import 'core/locale_controller.dart';
import 'core/models/analysis_extras.dart';
import 'features/account/account_controller.dart';
import 'features/alerts/alert_monitor.dart';
import 'features/alerts/price_alert.dart';
import 'features/analysis/analysis_chat.dart';
import 'features/analysis/analysis_options.dart';
import 'features/analysis/claude_stock_analyst.dart';
import 'features/analysis/report_store.dart';
import 'features/billing/billing_controller.dart';
import 'features/billing/billing_service.dart';
import 'features/billing/demo_billing_service.dart';
import 'features/billing/entitlement_service.dart';
import 'features/billing/fallback_billing_service.dart';
import 'features/billing/plan.dart';
import 'features/billing/store_billing_service.dart';
import 'features/billing/web_checkout_billing_service.dart';
import 'features/capture/capture_service.dart';
import 'features/events/earnings_reminder.dart';
import 'features/events/events_service.dart';
import 'features/home/away_summary.dart';
import 'features/home/signal_notifier.dart';
import 'features/home/watch_signals.dart';
import 'features/fx/fx_service.dart';
import 'features/market_data/caching_market_data_provider.dart';
import 'features/market_data/demo_market_data_provider.dart';
import 'features/market_data/finnhub_market_data_provider.dart';
import 'features/market_data/market_data_provider.dart';
import 'features/news/daily_brief.dart';
import 'features/news/morning_brief.dart';
import 'features/news/earnings_summarizer.dart';
import 'features/news/instrument_explainer.dart';
import 'features/news/move_explainer.dart';
import 'features/news/research_follow_up.dart';
import 'features/news/news_explainer.dart';
import 'features/news/watch_news.dart';
import 'features/notes/notes_store.dart';
import 'features/portfolio/portfolio_review.dart';
import 'features/portfolio/holdings_reader.dart';
import 'features/portfolio/portfolio_move_watcher.dart';
import 'features/portfolio/dividend_forecast.dart' show dividendsInLast12Months, dividendsLast12Months;
import 'features/portfolio/portfolio_store.dart';
import 'features/portfolio/portfolio_valuation.dart';
import 'features/sync/sync_service.dart';
import 'features/sync/tab_refresh.dart';
import 'features/recognition/claude_vision_recognizer.dart';
import 'features/recognition/description_resolver.dart';
import 'features/recognition/stock_recognizer.dart';
import 'features/updates/update_service.dart';
import 'l10n/app_l10n_delegate.dart';
import 'l10n/generated/app_localizations.dart';
// Az angol szövegek mindig a fő csomagban vannak (tartalék, amíg a választott nyelv betöltődik).
import 'l10n/generated/app_localizations_en.dart';
import 'l10n/supported_locales.dart';

/// Az app szolgáltatásainak egy helyen összerakott példányai. Egyszerű
/// függőség-befecskendezés: a widgetek `AppServices.of(context)`-tel érik el.
class AppServices {
  AppServices({
    required this.config,
    required this.capture,
    required this.recognizer,
    required this.marketData,
    required this.locale,
    required this.preferences,
    required this.desktop,
    required this.reports,
    required this.entitlements,
    this.backend,
    String? accountEmail,
    BillingService? billing,
    bool platformStore = false,
    FxService? fx,
    UpdateService? updates,
    PortfolioStore? portfolio,
    AlertStore? alerts,
    AlertNotifier? alertNotifier,
    Telemetry? telemetry,
    AnalysisChat? chat,
    NotesStore? notes,
    PortfolioReviewer? portfolioReviewer,
    DailyBrief Function(WatchNewsService news)? dailyBrief,
    HoldingsReader? holdingsReader,
    NewsExplainer? newsExplainer,
    EarningsSummarizer? earningsSummarizer,
    DescriptionResolver? descriptionResolver,
    InstrumentExplainer? instrumentExplainer,
    MoveExplainer? moveExplainer,
    ResearchFollowUp? researchFollowUp,
  }) : fx = fx ?? FxService(),
       updates = updates ?? UpdateService(config: config),
       portfolio = portfolio ?? PortfolioStore(),
       alerts = alerts ?? AlertStore(),
       notes = notes ?? NotesStore(),
       portfolioReviewer =
           portfolioReviewer ??
           PortfolioReviewer(config: config, marketData: marketData, client: backend?.authenticated),
       chat = chat ?? AnalysisChat(config: config, client: backend?.authenticated),
       holdingsReader = holdingsReader ?? HoldingsReader(config: config, client: backend?.authenticated),
       newsExplainer = newsExplainer ?? NewsExplainer(config: config, client: backend?.authenticated),
       earningsSummarizer = earningsSummarizer ?? EarningsSummarizer(config: config, client: backend?.authenticated),
       descriptionResolver = descriptionResolver ?? DescriptionResolver(config: config, client: backend?.authenticated),
       instrumentExplainer = instrumentExplainer ?? InstrumentExplainer(config: config, client: backend?.authenticated),
       moveExplainer = moveExplainer ?? MoveExplainer(config: config, client: backend?.authenticated),
       researchFollowUp = researchFollowUp ?? ResearchFollowUp(config: config, client: backend?.authenticated),
       telemetry = telemetry ?? Telemetry(preferences: preferences, sink: backend?.sendTelemetry) {
    this.telemetry.versionOf ??= () => this.updates.currentVersion;
    events = EventsService(
      marketData: marketData,
      preferences: preferences,
      portfolio: this.portfolio,
      reports: reports,
    );
    news = WatchNewsService(marketData: marketData, preferences: preferences, portfolio: this.portfolio);
    away = AwaySummary(
      marketData: marketData,
      preferences: preferences,
      portfolio: this.portfolio,
      alerts: this.alerts,
      events: events,
      fx: this.fx,
    );
    away.displayCurrency = () => displayCurrency(_appLocale);
    locale.addListener(() => unawaited(loadTexts()));
    brief =
        dailyBrief?.call(news) ??
        DailyBrief(config: config, marketData: marketData, news: news, client: backend?.authenticated);
    // A közelmúlt gyorsjelentései is (a friss eredményhez), a közeliek mellett.
    brief.upcoming ??= () => [...events.recentEarnings, ...events.events];
    brief.fx ??= () {
      final pair = FxService.homePair(displayCurrency(_appLocale));
      return this.fx.recent(pair.$1, pair.$2);
    };
    alertMonitor = AlertMonitor(
      store: this.alerts,
      marketData: marketData,
      notifier: alertNotifier ?? SystemNotifier(onClick: openNotification),
      describe: describeAlertHit,
    );
    morningBrief = MorningBrief(
      brief: brief,
      news: news,
      preferences: preferences,
      notifier: alertMonitor.notifier,
      language: () => SupportedLocales.languageFor(_appLocale).englishName,
      title: () => _l10n().$1.briefTitle,
      onMade: () => this.telemetry.track('morning_brief'),
    );
    portfolioMoveWatcher = PortfolioMoveWatcher(
      portfolio: this.portfolio,
      preferences: preferences,
      notifier: alertMonitor.notifier,
      snapshot: portfolioSnapshot,
      describe: describePortfolioMove,
      describeGoal: describePortfolioGoal,
      onNotified: () => this.telemetry.track('portfolio_move'),
    );
    earningsReminder = EarningsReminder(
      events: events,
      preferences: preferences,
      notifier: alertMonitor.notifier,
      describe: describeEarnings,
      describeResult: describeEarningsResult,
      describeDividend: describeDividend,
    );
    signalNotifier = SignalNotifier(
      marketData: marketData,
      preferences: preferences,
      portfolio: this.portfolio,
      notifier: alertMonitor.notifier,
      describe: describeSignals,
    );
    // Jó élmény után (a 3. elemzésnél) egyszer értékelést kérünk a boltban.
    reports.onGenerated = (_) {
      this.telemetry.track('analysis_done');
      ReviewPrompt.onAnalysisDone(preferences);
    };
    final b0 = backend;
    account = b0 == null ? null : AccountController(backend: b0, entitlements: entitlements, storedEmail: accountEmail);
    if (account case final acc?) b0?.onSessionLost = () => unawaited(acc.sessionLost());
    // Fizetés, mint a Claude-nál: telefonon a platform boltja (App Store /
    // Play, demó tartalékkal, amíg nincs felvett termék), asztali gépen és
    // weben böngészős fizetés a fiókhoz (Stripe), backend nélkül demó bolt.
    // Szinkron az e-mailes fiókkal (backend-módban).
    sync = (b0 == null || account == null)
        ? null
        : SyncService(
            backend: b0,
            account: account!,
            preferences: preferences,
            portfolio: this.portfolio,
            alerts: this.alerts,
            notes: this.notes,
            // Az app tényleges nyelve (a felület is ezt mutatja), nem a készülék első nyelve.
            language: () => locale.effectiveFor(WidgetsBinding.instance.platformDispatcher.locales).languageCode,
          );
    // Weben a többi lapon közben mentett változások átvétele, amikor ez a lap előtérbe kerül.
    tabRefresh = TabRefresh(
      preferences: preferences,
      portfolio: this.portfolio,
      alerts: this.alerts,
      notes: this.notes,
    );
    final acc = account;
    this.billing =
        billing ??
        (platformStore
            ? FallbackBillingService(
                primary: StoreBillingService(),
                fallback: _demoBilling(this.fx),
                // A boltba kerülő (kiadási) buildben nincs szimulált vásárlás.
                allowFallback: !kReleaseMode,
              )
            : (b0 != null && acc != null)
            ? WebCheckoutBillingService(
                backend: b0,
                account: acc,
                prices: _demoBilling(this.fx),
                openUrl: (u) => launchUrl(u, mode: LaunchMode.externalApplication),
              )
            : _demoBilling(this.fx));
    final b = backend;
    billingController = BillingController(
      billing: this.billing,
      entitlements: entitlements,
      verifier: b == null
          ? null
          : (e) => b.verifyPurchase(
              platform: e.platform ?? 'unknown',
              productId: e.productId,
              verificationData: e.verificationData ?? '',
            ),
      onPurchased: () => this.telemetry.track('purchase_done'),
      owner: () => account?.email ?? '',
      generation: () => account?.generation ?? 0,
    );
    // Egy korábban (hálózati hiba miatt) ellenőrizetlenül maradt vásárlás újra.
    if (b != null) unawaited(billingController.retryPending());
  }

  /// Backend-módban a szerver szerinti jogosultság átvétele (indításkor,
  /// elemzés után, vásárlás után). Hálózati hiba esetén a helyi kép marad.
  Future<void> syncEntitlements() async {
    final a = account;
    if (a == null) return;
    try {
      await a.refresh();
    } catch (e) {
      debugPrint('Jogosultság szinkron nem sikerült: $e');
    }
  }

  /// Demó bolt a rendszer régiójának pénznemével és ECB-árfolyammal.
  DemoBillingService _demoBilling(FxService fx) {
    final device = WidgetsBinding.instance.platformDispatcher.locale;
    // A boltok a régió pénznemében számláznak: az ár ehhez igazodik, nem a részvények
    // megjelenítési pénzneméhez (pl. „csak a részvény saját pénzneme”).
    return DemoBillingService(
      fx: fx,
      locale: device.toString(),
      currency: () => defaultCurrencyFor(countryCode: device.countryCode, languageCode: device.languageCode),
    );
  }

  factory AppServices.fromConfig(
    AppConfig config, {
    required LocaleController locale,
    required AppPreferences preferences,
    required EntitlementService entitlements,
    DesktopIntegration? desktop,
    String? accountEmail,
    PortfolioStore? portfolio,
    AlertStore? alerts,
    NotesStore? notes,
  }) {
    // A Mac-es app a weboldalról terjesztett (nem Mac App Store-os), ezért ott
    // is a böngészős fizetés fut, mint a Claude asztali appjában.
    final storeBilling = !kIsWeb && (Platform.isIOS || Platform.isAndroid);
    // Backend-módban minden külső hívás a hitelesített kliensen, a szerveren át megy.
    final backend = config.hasBackend ? BackendClient(baseUrl: config.backend) : null;
    final client = backend?.authenticated;
    // Valódi adatforrásnál offline gyorsítótárral: hálózat nélkül az utolsó ismert adat látszik.
    final MarketDataProvider marketData = config.hasFinnhubKey
        ? CachingMarketDataProvider(
            FinnhubMarketDataProvider(config: config, client: client),
            // Rövid memória (egy vétel vagy görgetés ne töltsön újra mindent), és ritkított
            // mentés (Windowson minden írás az egész beállítástárat újraírja).
            quoteMemo: const Duration(seconds: 20),
            dataMemo: const Duration(minutes: 10),
            // Óránként: a tálcán futó app figyelői (riasztás, tálca, portfólió) 5 percenként kérnek.
            persistQuoteEvery: const Duration(hours: 1),
            persistDataEvery: const Duration(hours: 6),
          )
        : DemoMarketDataProvider();
    late final AppServices services;
    services = AppServices(
      config: config,
      capture: CaptureService(),
      recognizer: ClaudeVisionRecognizer(config: config, client: client),
      marketData: marketData,
      locale: locale,
      preferences: preferences,
      desktop: desktop ?? DesktopIntegration(),
      reports: ReportStore(
        analyst: ClaudeStockAnalyst(config: config, client: client),
        entitlements: entitlements,
        onQuotaChanged: backend == null ? null : () => services.syncEntitlements(),
        extrasLoader: marketData.analysisExtras,
      ),
      entitlements: entitlements,
      backend: backend,
      accountEmail: accountEmail,
      platformStore: storeBilling,
      portfolio: portfolio,
      alerts: alerts,
      notes: notes,
    );
    return services;
  }

  final AppConfig config;
  final CaptureService capture;
  final StockRecognizer recognizer;
  final MarketDataProvider marketData;
  final LocaleController locale;
  final AppPreferences preferences;
  final DesktopIntegration desktop;
  final ReportStore reports;
  final EntitlementService entitlements;

  /// A WhatStock backend kliense, vagy `null` közvetlen (kulcsos/demó) módban.
  final BackendClient? backend;

  /// Fiók (belépés e-mail kóddal); csak backend-módban.
  late final AccountController? account;
  late final BillingService billing;
  late final BillingController billingController;
  final FxService fx;
  final UpdateService updates;

  /// A saját részvények (csak a készüléken tárolva).
  final PortfolioStore portfolio;

  /// Névtelen használati statisztika és hibajelentés (hozzájárulással).
  final Telemetry telemetry;

  /// „Kérdezz az elemzésről” beszélgetések.
  final AnalysisChat chat;

  /// Bróker-képernyőkép beolvasása a portfólió-importhoz.
  final HoldingsReader holdingsReader;

  /// „Mit jelent ez?” – rövid AI-magyarázat egy hírről.
  final NewsExplainer newsExplainer;

  /// „Mi volt a legutóbbi gyorsjelentésben?” – AI-összefoglaló webes forrásokkal.
  final EarningsSummarizer earningsSummarizer;

  /// Szöveges leírás („tech 100 etf”) → részvény vagy ETF, ha a kereső nem találja.
  final DescriptionResolver descriptionResolver;

  /// „Mi ez a papír?” – AI-magyarázat ETF-hez, alaphoz (cégprofil nélküli tickerhez).
  final InstrumentExplainer instrumentExplainer;

  /// „Miért mozog ma?” – AI-magyarázat a nagy napi mozgásra.
  final MoveExplainer moveExplainer;

  /// Kérdés egy AI-kutatás szövegéről (a kutatási lapok alján).
  final ResearchFollowUp researchFollowUp;

  /// Saját jegyzetek részvényenként (csak a készüléken).
  final NotesStore notes;

  /// AI-portfólióelemzés.
  final PortfolioReviewer portfolioReviewer;

  /// Szinkron az e-mailes fiókkal (backend-módban, belépve).
  late final SyncService? sync;
  late final TabRefresh tabRefresh;

  /// Közelgő gyorsjelentések és az elemzések eseményei.
  late final EventsService events;

  /// „Amíg távol voltál”: a figyelt részvények mozgása a legutóbbi látogatás óta.
  late final AwaySummary away;

  /// A portfólió és a kedvencek friss hírei (kezdőképernyő).
  late final WatchNewsService news;

  /// „A nap a részvényeiddel” AI-összefoglaló.
  late final DailyBrief brief;

  /// Árfolyam-riasztások és a figyelőjük.
  final AlertStore alerts;
  late final AlertMonitor alertMonitor;

  /// Asztali értesítés a figyelt részvények gyorsjelentése előtt.
  late final EarningsReminder earningsReminder;

  /// Napi technikai jelzés-értesítés (RSI, 200 napos átlag) a figyelt részvényekről.
  late final SignalNotifier signalNotifier;

  /// Értesítés a teljes portfólió nagy napi mozgásáról (ha be van kapcsolva).
  late final PortfolioMoveWatcher portfolioMoveWatcher;

  /// Reggelente magától elkészülő napi összefoglaló (ha be van kapcsolva).
  late final MorningBrief morningBrief;

  /// A személyes adatok törlésekor eltávolított további helyi tárolók.
  static const wipedKeys = [
    'research_followups',
    AwaySummary.storeKey,
    'move_notes',
    'news_explanations',
    'earnings_summaries',
    'instrument_notes',
    // Az értesítések jelzései (bennük a portfólió és a kedvencek tickerei).
    'earnings_reminded',
    'earnings_known_period',
    'signals_notified',
    // Egy régebbi változat eszközazonosítója.
    'backend_device_id',
  ];

  /// Fiók törlése a szerveren, és ha kérik, a készüléken tárolt személyes adatoké
  /// is (portfólió, riasztások, kedvencek, előzmények, elmentett elemzések).
  Future<void> deleteAccount({required bool wipeLocalData}) async {
    await account?.deleteAccount();
    await sync?.forgetAccount();
    if (wipeLocalData) await _wipeLocalData();
    // Az app névtelen fiókkal megy tovább; a friss állapotot a szerver adja.
    await syncEntitlements();
  }

  /// Kijelentkezés: előbb felmegy, ami még nem ment fel, aztán a fiók adatai
  /// (portfólió, listák, riasztások, jegyzetek, elemzések) lekerülnek a készülékről –
  /// a fiókban megmaradnak, és belépéskor visszajönnek. Így a következő belépő (akár
  /// egy másik fiók) nem látja és nem kapja meg őket; a kijelentkezve tett változások
  /// pedig a következő belépéskor összefésülődnek. Hamis, ha a feltöltés nem sikerült,
  /// és [force] nélkül nem lépett ki (a felület megkérdezi, kilépjen-e így is).
  Future<bool> signOut({bool force = false}) async {
    final a = account;
    if (a == null) return true;
    if (!(await sync?.flush() ?? true) && !force) return false;
    await a.signOut();
    await _wipeLocalData();
    await sync?.forgetAccount();
    return true;
  }

  Future<void> _wipeLocalData() async {
    await portfolio.clear();
    await alerts.clear();
    await preferences.clearPersonalData();
    await reports.clearCache();
    await notes.clear();
    await PortfolioReviewer.clearLast();
    await brief.forget();
    await CachingMarketDataProvider.clear();
    chat.clear();
    // Az AI-utánanézések, a kérdezz-vissza beszélgetések és a távollét-pillanatkép is.
    try {
      final prefs = await SharedPreferences.getInstance();
      for (final k in wipedKeys) {
        await prefs.remove(k);
      }
    } catch (_) {}
  }

  /// A jogi szöveg címe az app nyelvén (`?lang=hu|en`); üres, ha nincs ilyen cím.
  Uri? legalUri(String url, Locale locale) {
    if (url.isEmpty) return null;
    final u = Uri.parse(url);
    return u.replace(queryParameters: {...u.queryParameters, 'lang': locale.languageCode == 'hu' ? 'hu' : 'en'});
  }

  /// Értesítésről kért oldal; a héj figyeli, és a teljes ablakban megnyitja.
  final ValueNotifier<ShellPage?> pageRequest = ValueNotifier(null);

  void requestPage(ShellPage page) {
    pageRequest.value = null;
    pageRequest.value = page;
  }

  /// Koppintás egy rendszerértesítésre: a hozzá tartozó részvény vagy oldal nyílik meg;
  /// ismeretlen azonosítónál (pl. azóta törölt riasztás) legalább az ablak előjön.
  void openNotification(String id) {
    // Gyorsjelentés eredménye: `result-<ticker>-<nap>` – a részvény és az AI-összefoglaló.
    final result = RegExp(r'^result-(.+)-\d{4}-\d{2}-\d{2}$').firstMatch(id);
    if (result != null) return alertMonitor.requestOpen(result[1]!, summary: true);
    // Gyorsjelentés-emlékeztető: `earnings-<ticker>-<nap>`.
    final earnings = RegExp(r'^earnings-(.+)-\d{4}-\d{2}-\d{2}$').firstMatch(id);
    if (earnings != null) return alertMonitor.requestOpen(earnings[1]!);
    // Technikai jelzés: `signals-<nap>-<ticker>` – az első jelzett részvény.
    final signal = RegExp(r'^signals-\d{4}-\d{2}-\d{2}-(.+)$').firstMatch(id);
    if (signal != null) return alertMonitor.requestOpen(signal[1]!);
    // Osztalék-emlékeztető: `dividend-<ticker>-<pénznem>-<nap>`.
    final dividend = RegExp(r'^dividend-(.+)-[A-Z]{0,3}-\d{4}-\d{2}-\d{2}$').firstMatch(id);
    if (dividend != null) return alertMonitor.requestOpen(dividend[1]!);
    // A portfólió napi mozgása és célja: a portfólió; a reggeli összefoglaló: a kezdőlap.
    if (id.startsWith('portfolio-')) return requestPage(ShellPage.portfolio);
    final alert = alerts.alerts.where((a) => a.id == id).firstOrNull;
    if (alert != null) return alertMonitor.requestOpen(alert.symbol);
    requestPage(ShellPage.home);
  }

  /// A jelzés-értesítés címe és szövege (részvényenként egy sor).
  ({String title, String body}) describeSignals(List<WatchSignal> signals) {
    final (l10n, fmt) = _l10n();
    return (
      title: l10n.signalAlertsNotification,
      body: [for (final x in signals) '${x.symbol}: ${describeSignal(l10n, fmt, x)}'].join('\n'),
    );
  }

  /// Az értesítések szövegei az app nyelvén. A webes változatban a nyelvek igény
  /// szerint töltődnek (külön fájlban), ezért előre betöltjük: induláskor és
  /// nyelvváltáskor ([loadTexts]); addig angolul.
  AppLocalizations? _texts;
  Locale? _textsLocale;

  Locale get _appLocale => locale.effectiveFor(WidgetsBinding.instance.platformDispatcher.locales);

  /// Az app nyelvének szövegei az értesítésekhez (a felületen kívül).
  Future<void> loadTexts() async {
    final l = _appLocale;
    AppLocalizations texts;
    try {
      texts = await AppL10nDelegate.preload(l);
    } catch (_) {
      texts = AppLocalizationsEn();
    }
    _texts = texts;
    _textsLocale = l;
  }

  /// Az app nyelve és szövegei (értesítésekhez, a felületen kívül).
  (AppLocalizations, Fmt) _l10n() {
    final appLocale = _appLocale;
    // A rendszer nyelve közben változhatott: a következő értesítéstől az új nyelven.
    if (_textsLocale != appLocale) unawaited(loadTexts());
    final l10n = _texts ?? AppLocalizationsEn();
    return (l10n, Fmt(appLocale.toString(), na: l10n.notAvailable));
  }

  /// A portfólió pillanatképe a felületen kívül (értesítésekhez), az app nyelve
  /// szerinti összesítő pénznemben.
  Future<PortfolioSnapshot> portfolioSnapshot() {
    final positions = portfolio.positions;
    return PortfolioSnapshot.load(
      positions,
      marketData: marketData,
      fx: fx,
      currency: PortfolioSnapshot.totalCurrency(positions, displayCurrency(_appLocale)),
      cash: portfolio.cash,
    );
  }

  /// A portfólió-riasztás szövege: irány és %, az összeg és a legnagyobb mozgó.
  ({String title, String body}) describePortfolioMove(PortfolioSnapshot s) {
    final (l10n, fmt) = _l10n();
    final pct = fmt.percent(s.dayGainPercent!.abs(), decimals: 1);
    final mover = biggestMover(s);
    return (
      title: s.dayGain >= 0 ? l10n.portfolioMoveUp(pct) : l10n.portfolioMoveDown(pct),
      body: [
        fmt.money(s.dayGain, s.currency, withSign: true),
        if (mover != null) '${mover.symbol} ${fmt.percent(mover.percent, decimals: 1, withSign: true)}',
      ].join(' · '),
    );
  }

  /// A portfólió-cél elérésének szövege: a cél és a mostani összérték.
  ({String title, String body}) describePortfolioGoal(PortfolioSnapshot s, ({double amount, String currency}) goal) {
    final (l10n, fmt) = _l10n();
    return (
      title: l10n.portfolioGoalReached(fmt.money(goal.amount, goal.currency)),
      body: l10n.portfolioGoalReachedBody(fmt.money(s.totalValue, s.currency)),
    );
  }

  /// A gyorsjelentés-emlékeztető szövege a felhasználó nyelvén.
  ({String title, String body}) describeEarnings(UpcomingEvent e, {required bool tomorrow}) {
    final (l10n, fmt) = _l10n();
    return (
      title: tomorrow ? l10n.earningsReminderTomorrow(e.symbol) : l10n.earningsReminderToday(e.symbol),
      body: [
        ?switch (e.hour) {
          'bmo' => l10n.eventBeforeOpen,
          'amc' => l10n.eventAfterClose,
          _ => null,
        },
        if (e.epsEstimate != null) l10n.eventEpsEstimate(fmt.number(e.epsEstimate!)),
      ].join(' · '),
    );
  }

  /// A várható osztalék értesítése a napján: a becsült összeg és a teendő.
  ({String title, String body}) describeDividend(UpcomingEvent e) {
    final (l10n, fmt) = _l10n();
    final amount = e.amount, currency = e.currency;
    return (
      title: l10n.dividendReminderTitle(e.symbol),
      body: l10n.dividendReminderBody(
        // A szöveg maga mondja, hogy közelítés („Kb.”): itt nincs „~”.
        amount == null || currency == null ? l10n.notAvailable : fmt.money(amount, currency),
      ),
    );
  }

  /// A gyorsjelentés eredményének értesítése (várakozás felett vagy alatt).
  ({String title, String body}) describeEarningsResult(String symbol, EarningsSurprise r) {
    final (l10n, fmt) = _l10n();
    final surprise = r.surprise;
    return (
      title: r.beat == true ? l10n.earningsResultBeat(symbol) : l10n.earningsResultMiss(symbol),
      body: [
        l10n.earningsResultBody(fmt.number(r.actual), fmt.number(r.estimate)),
        if (surprise != null) fmt.percent(surprise, decimals: 1, withSign: true),
      ].join(' · '),
    );
  }

  /// A riasztás értesítésének szövege a felhasználó nyelvén.
  ({String title, String body}) describeAlertHit(AlertHit hit) {
    final (l10n, fmt) = _l10n();
    final a = hit.alert;
    final q = hit.quote;
    final change = fmt.percent(q.changePercent, decimals: 1, withSign: true);
    return (
      title: switch (a.kind) {
        AlertKind.above => l10n.alertHitAbove(a.symbol, fmt.price(a.value, a.currency)),
        AlertKind.below => l10n.alertHitBelow(a.symbol, fmt.price(a.value, a.currency)),
        AlertKind.move => l10n.alertHitMove(a.symbol, change),
        AlertKind.trailing => l10n.alertHitTrailing(
          a.symbol,
          fmt.percent(a.value, decimals: a.value == a.value.roundToDouble() ? 0 : 1),
        ),
      },
      body: '${l10n.alertHitBody(fmt.price(q.price, a.currency))} ($change)',
    );
  }

  /// A következő elemzés a próbaidő keretéből megy: rövid, és a szerver az
  /// olcsóbb modellen futtatja (a megvett extra elemzések már teljes értékűek).
  bool get isTrialAnalysis {
    final s = entitlements.state;
    // Lejárt próbaidő után (mint a szerveren) a vett extra elemzések teljes értékűek.
    return s.tier == PlanTier.trial &&
        s.usedInPeriod < PlanSpec.trial.analysesPerPeriod &&
        !entitlements.isTrialExpired;
  }

  /// A ténylegesen használt hossz: a próbaidő alatt mindig rövid.
  AnalysisDepth get effectiveAnalysisDepth => isTrialAnalysis ? AnalysisDepth.brief : preferences.analysisDepth;

  /// Az elemzés beállításai: a felhasználó választása, a csomag szerinti
  /// webkeresés-szám, az olvasó régiója és – ha van – a pozíciója a [symbol]-ban.
  AnalysisOptions analysisOptions({String? symbol}) {
    final held = symbol == null ? null : portfolio.positionOf(symbol);
    final device = WidgetsBinding.instance.platformDispatcher.locale;
    final depth = effectiveAnalysisDepth;
    final appLocale = locale.override ?? device;
    return AnalysisOptions(
      depth: depth,
      readerLevel: preferences.readerLevel,
      counterArgument: preferences.counterArgument,
      webSearches: AnalysisOptions.searchesFor(entitlements.state.tier, depth),
      readerCountry: device.countryCode,
      readerCurrency: displayCurrency(appLocale),
      readerNote: symbol == null ? null : notes.of(symbol)?.text,
      position: held == null
          ? null
          : PositionContext(
              quantity: held.quantity,
              averageCost: held.averageCost,
              currency: held.currency,
              firstDate: held.firstDate,
              lastDate: held.lastDate,
              dividendsReceived12m: _dividendsReceived12m(held.symbol, held.currency),
            ),
    );
  }

  /// Az elmúlt 12 hónapban a részvényből kapott osztalék a megadott pénznemben;
  /// a más pénznemű tételek a már ismert (gyorsítótárazott) árfolyammal – az
  /// elemzés indítása előtt [prefetchDividendRates] frissíti; `null`, ha nincs.
  double? _dividendsReceived12m(String symbol, String currency) => dividendsLast12Months(
    portfolio.dividendsOf(symbol),
    now: DateTime.now(),
    rate: (d) => d.currency == currency ? 1.0 : fx.cachedRate(d.currency, currency)?.rate,
  );

  /// A részvény 12 havi, a pozíció pénznemétől eltérő osztalékainak árfolyamát
  /// lekéri (a gyorsítótárba), hogy az elemzés osztalékadata ne a korábbi
  /// képernyőktől függjön; azonos pénznemnél nincs hálózat.
  /// Felaprózás törlése: a részvény riasztásai is visszaállnak a régi egységre (a
  /// felvételkor átszámoltuk őket).
  Future<void> removeSplit(String id) async {
    final s = portfolio.splits.where((x) => x.id == id).firstOrNull;
    await portfolio.removeSplit(id);
    if (s != null) await alerts.applySplit(s.symbol, from: s.to, to: s.from, date: s.date);
  }

  /// Törölt felaprózás visszavétele (visszavonás), a riasztások újbóli átszámolásával.
  Future<void> restoreSplit(SplitRecord s) async {
    await portfolio.restoreSplit(s);
    await alerts.applySplit(s.symbol, from: s.from, to: s.to, date: s.date);
  }

  Future<void> prefetchDividendRates(String symbol) async {
    final held = portfolio.positionOf(symbol);
    if (held == null) return;
    // Az azonos pénznem hálózat nélkül 1, üres listánál nincs kérés ([FxService.ratesFor]).
    await fx.ratesFor(
      dividendsInLast12Months(portfolio.dividendsOf(symbol), now: DateTime.now()).map((d) => d.currency),
      held.currency,
    );
  }

  /// A ténylegesen használt megjelenítési pénznem (beállítás vagy a rendszerből).
  String? displayCurrency(Locale locale) {
    final pref = preferences.displayCurrency;
    if (pref == AppPreferences.currencyUnset) {
      final device = WidgetsBinding.instance.platformDispatcher.locale;
      return defaultCurrencyFor(countryCode: device.countryCode, languageCode: locale.languageCode);
    }
    return (pref == null || pref.isEmpty) ? null : pref;
  }

  static AppServices of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<AppServicesScope>();
    assert(scope != null, 'AppServicesScope nincs a widget-fában');
    return scope!.services;
  }
}

class AppServicesScope extends InheritedWidget {
  const AppServicesScope({super.key, required this.services, required super.child});

  final AppServices services;

  @override
  bool updateShouldNotify(AppServicesScope oldWidget) => services != oldWidget.services;
}

/// A héj oldalai, amelyeket egy értesítés kérhet.
enum ShellPage { home, portfolio }
