import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
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
import 'features/events/events_service.dart';
import 'features/fx/fx_service.dart';
import 'features/market_data/caching_market_data_provider.dart';
import 'features/market_data/demo_market_data_provider.dart';
import 'features/market_data/finnhub_market_data_provider.dart';
import 'features/market_data/market_data_provider.dart';
import 'features/news/watch_news.dart';
import 'features/notes/notes_store.dart';
import 'features/portfolio/portfolio_review.dart';
import 'features/portfolio/portfolio_store.dart';
import 'features/sync/sync_service.dart';
import 'features/recognition/claude_vision_recognizer.dart';
import 'features/recognition/stock_recognizer.dart';
import 'features/updates/update_service.dart';
import 'l10n/generated/app_localizations.dart';
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
  }) : fx = fx ?? FxService(),
       updates = updates ?? UpdateService(config: config),
       portfolio = portfolio ?? PortfolioStore(),
       alerts = alerts ?? AlertStore(),
       notes = notes ?? NotesStore(),
       portfolioReviewer =
           portfolioReviewer ??
           PortfolioReviewer(config: config, marketData: marketData, client: backend?.authenticated),
       chat = chat ?? AnalysisChat(config: config, client: backend?.authenticated),
       telemetry = telemetry ?? Telemetry(preferences: preferences, sink: backend?.sendTelemetry) {
    this.telemetry.versionOf ??= () => this.updates.currentVersion;
    events = EventsService(
      marketData: marketData,
      preferences: preferences,
      portfolio: this.portfolio,
      reports: reports,
    );
    news = WatchNewsService(marketData: marketData, preferences: preferences, portfolio: this.portfolio);
    alertMonitor = AlertMonitor(
      store: this.alerts,
      marketData: marketData,
      notifier: alertNotifier ?? SystemNotifier(onClick: _openAlert),
      describe: describeAlertHit,
    );
    // Jó élmény után (a 3. elemzésnél) egyszer értékelést kérünk a boltban.
    reports.onGenerated = (_) {
      this.telemetry.track('analysis_done');
      ReviewPrompt.onAnalysisDone(preferences);
    };
    final b0 = backend;
    account = b0 == null ? null : AccountController(backend: b0, entitlements: entitlements, storedEmail: accountEmail);
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
            language: () => (locale.override ?? WidgetsBinding.instance.platformDispatcher.locale).languageCode,
          );
    final acc = account;
    this.billing =
        billing ??
        (platformStore
            ? FallbackBillingService(primary: StoreBillingService(), fallback: _demoBilling(this.fx))
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
    );
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
    return DemoBillingService(fx: fx, locale: device.toString(), currency: () => displayCurrency(device) ?? 'USD');
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
        ? CachingMarketDataProvider(FinnhubMarketDataProvider(config: config, client: client))
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

  /// Saját jegyzetek részvényenként (csak a készüléken).
  final NotesStore notes;

  /// AI-portfólióelemzés.
  final PortfolioReviewer portfolioReviewer;

  /// Szinkron az e-mailes fiókkal (backend-módban, belépve).
  late final SyncService? sync;

  /// Közelgő gyorsjelentések és az elemzések eseményei.
  late final EventsService events;

  /// A portfólió és a kedvencek friss hírei (kezdőképernyő).
  late final WatchNewsService news;

  /// Árfolyam-riasztások és a figyelőjük.
  final AlertStore alerts;
  late final AlertMonitor alertMonitor;

  /// Fiók törlése a szerveren, és ha kérik, a készüléken tárolt személyes adatoké
  /// is (portfólió, riasztások, kedvencek, előzmények, elmentett elemzések).
  Future<void> deleteAccount({required bool wipeLocalData}) async {
    await account?.deleteAccount();
    if (wipeLocalData) {
      await portfolio.clear();
      await alerts.clear();
      await preferences.clearPersonalData();
      await reports.clearCache();
      await notes.clear();
      await PortfolioReviewer.clearLast();
      await CachingMarketDataProvider.clear();
    }
    // Az app névtelen fiókkal megy tovább; a friss állapotot a szerver adja.
    await syncEntitlements();
  }

  /// A jogi szöveg címe az app nyelvén (`?lang=hu|en`); üres, ha nincs ilyen cím.
  Uri? legalUri(String url, Locale locale) {
    if (url.isEmpty) return null;
    final u = Uri.parse(url);
    return u.replace(queryParameters: {...u.queryParameters, 'lang': locale.languageCode == 'hu' ? 'hu' : 'en'});
  }

  /// Értesítésre koppintás: a riasztás részvénye nyíljon meg.
  void _openAlert(String id) {
    final alert = alerts.alerts.where((a) => a.id == id).firstOrNull;
    if (alert != null) alertMonitor.requestOpen(alert.symbol);
  }

  /// A riasztás értesítésének szövege a felhasználó nyelvén.
  ({String title, String body}) describeAlertHit(AlertHit hit) {
    final device = WidgetsBinding.instance.platformDispatcher.locale;
    final appLocale = locale.effective(device);
    AppLocalizations l10n;
    try {
      l10n = lookupAppLocalizations(appLocale);
    } catch (_) {
      l10n = lookupAppLocalizations(SupportedLocales.fallback);
    }
    final fmt = Fmt(appLocale.toString(), na: l10n.notAvailable);
    final a = hit.alert;
    final q = hit.quote;
    final change = fmt.percent(q.changePercent, decimals: 1, withSign: true);
    return (
      title: switch (a.kind) {
        AlertKind.above => l10n.alertHitAbove(a.symbol, fmt.price(a.value, a.currency)),
        AlertKind.below => l10n.alertHitBelow(a.symbol, fmt.price(a.value, a.currency)),
        AlertKind.move => l10n.alertHitMove(a.symbol, change),
      },
      body: '${l10n.alertHitBody(fmt.price(q.price, a.currency))} ($change)',
    );
  }

  /// A következő elemzés a próbaidő keretéből megy: rövid, és a szerver az
  /// olcsóbb modellen futtatja (a megvett extra elemzések már teljes értékűek).
  bool get isTrialAnalysis {
    final s = entitlements.state;
    return s.tier == PlanTier.trial && s.usedInPeriod < PlanSpec.trial.analysesPerPeriod;
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
            ),
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
