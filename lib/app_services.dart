import 'package:flutter/widgets.dart';

import 'core/app_preferences.dart';
import 'core/config/app_config.dart';
import 'core/desktop/desktop_integration.dart';
import 'core/locale_controller.dart';
import 'features/analysis/claude_stock_analyst.dart';
import 'features/analysis/report_store.dart';
import 'features/capture/capture_service.dart';
import 'features/fx/fx_service.dart';
import 'features/market_data/demo_market_data_provider.dart';
import 'features/market_data/finnhub_market_data_provider.dart';
import 'features/market_data/market_data_provider.dart';
import 'features/recognition/claude_vision_recognizer.dart';
import 'features/recognition/stock_recognizer.dart';

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
    FxService? fx,
  }) : fx = fx ?? FxService();

  factory AppServices.fromConfig(
    AppConfig config, {
    required LocaleController locale,
    required AppPreferences preferences,
    DesktopIntegration? desktop,
  }) {
    return AppServices(
      config: config,
      capture: CaptureService(),
      recognizer: ClaudeVisionRecognizer(config: config),
      marketData: config.hasFinnhubKey ? FinnhubMarketDataProvider(config: config) : DemoMarketDataProvider(),
      locale: locale,
      preferences: preferences,
      desktop: desktop ?? DesktopIntegration(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: config)),
    );
  }

  final AppConfig config;
  final CaptureService capture;
  final StockRecognizer recognizer;
  final MarketDataProvider marketData;
  final LocaleController locale;
  final AppPreferences preferences;
  final DesktopIntegration desktop;
  final ReportStore reports;
  final FxService fx;

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
