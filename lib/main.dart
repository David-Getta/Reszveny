import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'app_services.dart';
import 'core/app_preferences.dart';
import 'core/config/app_config.dart';
import 'core/desktop/desktop_integration.dart';
import 'core/locale_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Dátumformázás minden támogatott nyelven.
  await initializeDateFormatting();
  final locale = await LocaleController.load();
  final preferences = await AppPreferences.load();
  final desktop = DesktopIntegration();
  await desktop.initialize(title: 'Reszveny', hotkeyJson: preferences.hotkeyJson);
  final services = AppServices.fromConfig(
    const AppConfig(),
    locale: locale,
    preferences: preferences,
    desktop: desktop,
  );
  runApp(ReszvenyApp(services: services));
}
