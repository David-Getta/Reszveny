import 'package:flutter/material.dart';

import 'app_services.dart';
import 'features/home/home_page.dart';
import 'l10n/fallback_delegates.dart';
import 'l10n/generated/app_localizations.dart';
import 'l10n/supported_locales.dart';

class ReszvenyApp extends StatelessWidget {
  const ReszvenyApp({super.key, required this.services});

  final AppServices services;

  @override
  Widget build(BuildContext context) {
    return AppServicesScope(
      services: services,
      child: ListenableBuilder(
        listenable: services.locale,
        builder: (context, _) {
          return MaterialApp(
            onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
            debugShowCheckedModeBanner: false,
            theme: _theme(Brightness.light),
            darkTheme: _theme(Brightness.dark),
            locale: services.locale.override,
            supportedLocales: SupportedLocales.locales,
            localizationsDelegates: const [AppLocalizations.delegate, ...fallbackGlobalDelegates],
            localeListResolutionCallback: (deviceLocales, supported) {
              if (services.locale.override != null) return services.locale.override;
              for (final l in deviceLocales ?? const <Locale>[]) {
                final resolved = SupportedLocales.resolve(l);
                if (resolved != SupportedLocales.fallback || l.languageCode == 'en') return resolved;
              }
              return SupportedLocales.fallback;
            },
            home: const HomePage(),
          );
        },
      ),
    );
  }

  static ThemeData _theme(Brightness brightness) {
    final scheme = ColorScheme.fromSeed(seedColor: const Color(0xFF0B6E4F), brightness: brightness);
    return ThemeData(
      colorScheme: scheme,
      useMaterial3: true,
      cardTheme: const CardThemeData(clipBehavior: Clip.antiAlias, margin: EdgeInsets.zero),
      inputDecorationTheme: const InputDecorationTheme(border: OutlineInputBorder()),
    );
  }
}
