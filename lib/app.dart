import 'package:flutter/material.dart';

import 'app_services.dart';
import 'features/invite/invite_page.dart';
import 'features/shell/app_shell.dart';
import 'l10n/fallback_delegates.dart';
import 'l10n/generated/app_localizations.dart';
import 'l10n/supported_locales.dart';
import 'theme/app_theme.dart';

class WhatStockApp extends StatelessWidget {
  const WhatStockApp({super.key, required this.services});

  final AppServices services;

  /// A fordítások delegate-jei (tesztekben is használjuk).
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    AppLocalizations.delegate,
    ...fallbackGlobalDelegates,
  ];

  @override
  Widget build(BuildContext context) {
    final backend = services.backend;
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
            // Zárt előzetesben (a szerver meghívókódot kér) a meghívókód-képernyő,
            // és minden képernyő alján vízjel: kinek szól ez a példány.
            builder: backend == null
                ? null
                : (context, child) => ValueListenableBuilder(
                    valueListenable: backend.invite,
                    builder: (context, invite, _) => invite == null
                        ? child!
                        : Column(
                            children: [
                              // Az alsó biztonsági sávot (pl. iPhone kezdőcsík) a vízjel kapja.
                              Expanded(
                                child: MediaQuery.removePadding(context: context, removeBottom: true, child: child!),
                              ),
                              PreviewWatermark(invite: invite),
                            ],
                          ),
                  ),
            home: backend == null
                ? const AppShell()
                : ValueListenableBuilder(
                    valueListenable: backend.inviteProblem,
                    builder: (context, problem, _) =>
                        problem == null ? const AppShell() : InvitePage(backend: backend, problem: problem),
                  ),
          );
        },
      ),
    );
  }
}
