import 'package:flutter/material.dart';
import 'package:hotkey_manager/hotkey_manager.dart';

import '../../app_services.dart';
import '../../core/app_preferences.dart';
import '../../core/desktop/desktop_integration.dart';
import '../fx/fx_service.dart';
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
                  if (DesktopIntegration.isSupported) ...[
                    sectionTitle(l10n.hotkeyLabel),
                    Card(child: Column(children: [_HotkeyTile(), const Divider(height: 1), _LaunchAtLoginTile()])),
                  ],
                  sectionTitle(l10n.displayCurrency),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: services.preferences.displayCurrency == AppPreferences.currencyUnset
                              ? (services.displayCurrency(Localizations.localeOf(context)) ?? '')
                              : (services.preferences.displayCurrency ?? ''),
                          items: [
                            DropdownMenuItem(value: '', child: Text(l10n.displayCurrencyNone)),
                            for (final c in FxService.supportedCurrencies) DropdownMenuItem(value: c, child: Text(c)),
                          ],
                          onChanged: (v) => services.preferences.setDisplayCurrency(v == null || v.isEmpty ? null : v),
                        ),
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
                            title: Text(l10n.hotkeyHint(services.desktop.shortcutLabel)),
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

/// Gyorsbillentyű átállítása: kattintás után a következő lenyomott
/// kombináció lesz az új.
class _HotkeyTile extends StatefulWidget {
  @override
  State<_HotkeyTile> createState() => _HotkeyTileState();
}

class _HotkeyTileState extends State<_HotkeyTile> {
  bool _recording = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final p = AppPalette.of(context);
    return ListenableBuilder(
      listenable: services.desktop,
      builder: (context, _) {
        return ListTile(
          leading: const Icon(Icons.keyboard_command_key_rounded),
          title: Text(l10n.hotkeyLabel),
          subtitle: _recording
              ? Text(l10n.hotkeyRecordHint, style: TextStyle(color: p.accent))
              : Text(services.desktop.shortcutLabel),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_recording)
                SizedBox(
                  width: 160,
                  child: HotKeyRecorder(
                    onHotKeyRecorded: (hk) async {
                      if (hk.modifiers == null || hk.modifiers!.isEmpty) return;
                      setState(() => _recording = false);
                      await services.desktop.setHotKey(hk);
                      await services.preferences.setHotkeyJson(hk.toJson());
                    },
                  ),
                ),
              TextButton(
                onPressed: () async {
                  await services.desktop.setHotKey(null);
                  await services.preferences.setHotkeyJson(null);
                  if (mounted) setState(() => _recording = false);
                },
                child: Text(l10n.hotkeyReset),
              ),
            ],
          ),
          onTap: () => setState(() => _recording = !_recording),
        );
      },
    );
  }
}

class _LaunchAtLoginTile extends StatefulWidget {
  @override
  State<_LaunchAtLoginTile> createState() => _LaunchAtLoginTileState();
}

class _LaunchAtLoginTileState extends State<_LaunchAtLoginTile> {
  bool? _enabled;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_enabled != null) return;
    AppServices.of(context).desktop.isLaunchAtLoginEnabled().then((v) {
      if (mounted) setState(() => _enabled = v);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    return SwitchListTile(
      secondary: const Icon(Icons.login_rounded),
      title: Text(l10n.launchAtLogin),
      value: _enabled ?? false,
      onChanged: _enabled == null
          ? null
          : (v) async {
              setState(() => _enabled = v);
              final ok = await services.desktop.setLaunchAtLogin(v);
              if (!ok && mounted) setState(() => _enabled = !v);
            },
    );
  }
}
