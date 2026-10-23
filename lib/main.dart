import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'app_services.dart';
import 'core/app_preferences.dart';
import 'core/config/app_config.dart';
import 'core/desktop/desktop_integration.dart';
import 'core/desktop/system_notifier.dart';
import 'core/locale_controller.dart';
import 'features/account/account_controller.dart';
import 'features/billing/entitlement_service.dart';
import 'features/alerts/price_alert.dart';
import 'features/notes/notes_store.dart';
import 'features/portfolio/portfolio_store.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Dátumformázás minden támogatott nyelven.
  await initializeDateFormatting();
  final locale = await LocaleController.load();
  final preferences = await AppPreferences.load();
  final entitlements = await EntitlementService.load();
  await entitlements.ensureTrial();
  final desktop = DesktopIntegration();
  await desktop.initialize(title: 'WhatStock', hotkeyJson: preferences.hotkeyJson, keepInTray: preferences.keepInTray);
  // macOS: dupla Option-nyomás; az engedélyt csak egyszer kérjük, utána a
  // beállításokból nyitható meg.
  if (DesktopIntegration.supportsDoubleOption && preferences.doubleOption) {
    await desktop.setDoubleOption(true, askPermission: !preferences.doubleOptionAsked);
    if (!preferences.doubleOptionAsked) await preferences.markDoubleOptionAsked();
  }
  final services = AppServices.fromConfig(
    const AppConfig(),
    locale: locale,
    preferences: preferences,
    entitlements: entitlements,
    desktop: desktop,
    accountEmail: await AccountController.loadStoredEmail(),
    portfolio: await PortfolioStore.load(),
    alerts: await AlertStore.load(),
    notes: await NotesStore.load(),
  );
  // Nem kezelt hibák jelentése (csak hozzájárulással; a Flutter saját
  // naplózása is megmarad).
  final telemetry = services.telemetry;
  final previousOnError = FlutterError.onError;
  FlutterError.onError = (details) {
    previousOnError?.call(details);
    telemetry.reportError(details.exception, details.stack);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    telemetry.reportError(error, stack);
    return false;
  };
  // Háttérbe kerüléskor elküldjük, ami összegyűlt.
  AppLifecycleListener(onHide: telemetry.flush, onDetach: telemetry.flush);
  await services.loadTexts();
  runApp(WhatStockApp(services: services));
  telemetry.track('app_open');
  // Belépett fióknál a portfólió, a kedvencek, a riasztások és a jegyzetek szinkronja.
  services.sync?.start();
  // Frissítés-ellenőrzés a háttérben, az első képkocka után.
  services.updates.initialize(autoInstall: preferences.autoUpdate);
  // Backend-módban a szerver szerinti csomag és keret átvétele.
  services.syncEntitlements();
  // Árfolyam-riasztások figyelése (5 percenként, amíg az app fut).
  services.alertMonitor.start();
  // Gyorsjelentés előtti napon értesítés (asztali gépen).
  if (SystemNotifier.isSupported) {
    services.earningsReminder.start();
    // Napi technikai jelzés-értesítés (ha bekapcsolva).
    services.signalNotifier.start();
    // Értesítés, ha a teljes portfólió nagyot mozdul (ha bekapcsolta).
    services.portfolioMoveWatcher.start();
  }
  // Reggeli összefoglaló (ha a felhasználó bekapcsolta).
  services.morningBrief.start();
}
