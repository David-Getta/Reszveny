import 'package:flutter/material.dart';

import 'app_services.dart';
import 'features/shell/app_shell.dart';
import 'l10n/fallback_delegates.dart';
import 'l10n/generated/app_localizations.dart';
import 'l10n/supported_locales.dart';
import 'theme/app_theme.dart';

class ReszvenyApp extends StatelessWidget {
  const ReszvenyApp({super.key, required this.services});

  final AppServices services;

  /// A fordítások delegate-jei (tesztekben is használjuk).
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    AppLocalizations.delegate,
    ...fallbackGlobalDelegates,
  ];

  @override
  Widget build(BuildContext context) {
    return AppServicesScope(
      services: services,
      child: ListenableBuilder(
        listenable: Listenable.merge([services.locale, services.preferences]),
        builder: (context, _) {
          return MaterialApp(
            onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.build(Brightness.light),
            darkTheme: AppTheme.build(Brightness.dark),
            themeMode: services.preferences.themeMode,
            locale: services.locale.override,
            supportedLocales: SupportedLocales.locales,
            localizationsDelegates: localizationsDelegates,
            localeListResolutionCallback: (deviceLocales, supported) {
              if (services.locale.override != null) return services.locale.override;
              for (final l in deviceLocales ?? const <Locale>[]) {
                final resolved = SupportedLocales.resolve(l);
                if (resolved != SupportedLocales.fallback || l.languageCode == 'en') return resolved;
              }
              return SupportedLocales.fallback;
            },
            home: const AppShell(),
          );
        },
      ),
    );
  }
}
