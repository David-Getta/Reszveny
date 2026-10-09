import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/desktop/desktop_integration.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';

/// Beállítások: megjelenés, nyelv (a nyelv saját nevén) és információk.
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final hasSidebar = MediaQuery.sizeOf(context).width >= 860;

    Widget sectionTitle(String s) => Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Text(s.toUpperCase(), style: theme.textTheme.labelSmall?.copyWith(color: p.muted, letterSpacing: 0.8)),
    );

    return Scaffold(
      appBar: desktopAppBar(context, title: Text(l10n.settings), hasSidebar: hasSidebar),
      body: ListenableBuilder(
        listenable: Listenable.merge([services.locale, services.preferences]),
        builder: (context, _) {
          final current = services.locale.override;
          return Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 640),
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
                children: [
                  sectionTitle(l10n.appearance),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SegmentedButton<ThemeMode>(
                        showSelectedIcon: false,
                        segments: [
                          ButtonSegment(
                            value: ThemeMode.system,
                            label: Text(l10n.themeSystem),
                            icon: const Icon(Icons.brightness_auto_outlined),
                          ),
                          ButtonSegment(
                            value: ThemeMode.dark,
                            label: Text(l10n.themeDark),
                            icon: const Icon(Icons.dark_mode_outlined),
                          ),
                          ButtonSegment(
                            value: ThemeMode.light,
                            label: Text(l10n.themeLight),
                            icon: const Icon(Icons.light_mode_outlined),
                          ),
                        ],
                        selected: {services.preferences.themeMode},
                        onSelectionChanged: (s) => services.preferences.setThemeMode(s.first),
                      ),
                    ),
                  ),
                  sectionTitle(l10n.language),
                  Card(
                    child: RadioGroup<String?>(
                      groupValue: current?.toLanguageTag(),
                      onChanged: (tag) =>
                          services.locale.setLocale(tag == null ? null : SupportedLocales.byTag(tag)?.locale),
                      child: Column(
                        children: [
                          RadioListTile<String?>(value: null, title: Text(l10n.systemLanguage)),
                          const Divider(height: 1),
                          for (final lang in SupportedLocales.all)
                            RadioListTile<String?>(
                              value: lang.tag,
                              title: Text(lang.nativeName),
                              subtitle: lang.englishName == lang.nativeName ? null : Text(lang.englishName),
                            ),
                        ],
                      ),
                    ),
                  ),
                  sectionTitle(l10n.about),
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.storage_outlined),
                          title: Text(l10n.dataSource(services.marketData.name)),
                        ),
                        const Divider(height: 1),
                        ListTile(
                          leading: const Icon(Icons.visibility_outlined),
                          title: Text(l10n.recognizerSource(services.recognizer.name)),
                        ),
                        if (DesktopIntegration.isSupported) ...[
                          const Divider(height: 1),
                          ListTile(
                            leading: const Icon(Icons.keyboard_command_key_rounded),
                            title: Text(l10n.hotkeyHint(DesktopIntegration.shortcutLabel)),
                          ),
                        ],
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(l10n.disclaimer, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
