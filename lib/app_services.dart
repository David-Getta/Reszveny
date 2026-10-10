import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'core/app_preferences.dart';
import 'core/backend/backend_client.dart';
import 'core/config/app_config.dart';
import 'core/desktop/desktop_integration.dart';
import 'core/locale_controller.dart';
import 'features/analysis/analysis_options.dart';
import 'features/analysis/claude_stock_analyst.dart';
import 'features/analysis/report_store.dart';
import 'features/billing/billing_controller.dart';
import 'features/billing/billing_service.dart';
import 'features/billing/demo_billing_service.dart';
import 'features/billing/entitlement_service.dart';
import 'features/billing/store_billing_service.dart';
import 'features/capture/capture_service.dart';
import 'features/fx/fx_service.dart';
import 'features/market_data/demo_market_data_provider.dart';
import 'features/market_data/finnhub_market_data_provider.dart';
import 'features/market_data/market_data_provider.dart';
import 'features/recognition/claude_vision_recognizer.dart';
import 'features/recognition/stock_recognizer.dart';
import 'features/updates/update_service.dart';

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
    BillingService? billing,
    FxService? fx,
    UpdateService? updates,
  }) : fx = fx ?? FxService(),
       updates = updates ?? UpdateService(config: config) {
    this.billing = billing ?? _demoBilling(this.fx);
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
    );
  }

  /// Backend-módban a szerver szerinti jogosultság átvétele (indításkor,
  /// elemzés után, vásárlás után). Hálózati hiba esetén a helyi kép marad.
  Future<void> syncEntitlements() async {
    final b = backend;
    if (b == null) return;
    try {
      await entitlements.replace(await b.me());
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
  }) {
    final storeBilling = !kIsWeb && (Platform.isIOS || Platform.isAndroid || Platform.isMacOS);
    // Backend-módban minden külső hívás a hitelesített kliensen, a szerveren át megy.
    final backend = config.hasBackend ? BackendClient(baseUrl: config.backend) : null;
    final client = backend?.authenticated;
    late final AppServices services;
    services = AppServices(
      config: config,
      capture: CaptureService(),
      recognizer: ClaudeVisionRecognizer(config: config, client: client),
      marketData: config.hasFinnhubKey
          ? FinnhubMarketDataProvider(config: config, client: client)
          : DemoMarketDataProvider(),
      locale: locale,
      preferences: preferences,
      desktop: desktop ?? DesktopIntegration(),
      reports: ReportStore(
        analyst: ClaudeStockAnalyst(config: config, client: client),
        entitlements: entitlements,
        onQuotaChanged: backend == null ? null : () => services.syncEntitlements(),
      ),
      entitlements: entitlements,
      backend: backend,
      billing: storeBilling ? StoreBillingService() : null,
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

  /// A StockLens backend kliense, vagy `null` közvetlen (kulcsos/demó) módban.
  final BackendClient? backend;
  late final BillingService billing;
  late final BillingController billingController;
  final FxService fx;
  final UpdateService updates;

  /// Az elemzés beállításai: a felhasználó választása, a csomag szerinti
  /// webkeresés-szám és az olvasó régiója.
  AnalysisOptions analysisOptions() {
    final device = WidgetsBinding.instance.platformDispatcher.locale;
    final depth = preferences.analysisDepth;
    final appLocale = locale.override ?? device;
    return AnalysisOptions(
      depth: depth,
      readerLevel: preferences.readerLevel,
      counterArgument: preferences.counterArgument,
      webSearches: AnalysisOptions.searchesFor(entitlements.state.tier, depth),
      readerCountry: device.countryCode,
      readerCurrency: displayCurrency(appLocale),
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
