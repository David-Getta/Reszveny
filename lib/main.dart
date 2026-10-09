import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'app_services.dart';
import 'core/config/app_config.dart';
import 'core/locale_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Dátumformázás minden támogatott nyelven.
  await initializeDateFormatting();
  final locale = await LocaleController.load();
  final services = AppServices.fromConfig(const AppConfig(), locale);
  runApp(ReszvenyApp(services: services));
}
