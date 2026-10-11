import 'package:flutter/material.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/hotkey_hint.dart';

import '../../app_services.dart';
import '../../core/app_preferences.dart';
import '../../core/desktop/desktop_integration.dart';
import '../analysis/analysis_options.dart';
import '../billing/plan.dart';
import '../fx/fx_service.dart';
import '../updates/update_service.dart';
import '../account/sign_in_sheet.dart';
import '../billing/paywall_page.dart';
import '../billing/usage_chip.dart';
import 'language_picker.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';

/// Fiók törlése megerősítéssel; a készüléken tárolt adatok törlése is választható.
Future<void> _confirmDeleteAccount(BuildContext context) async {
  final l10n = AppLocalizations.of(context);
  final services = AppServices.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final p = AppPalette.of(context);
  var wipe = true;
  final ok = await showDialog<bool>(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => AlertDialog(
        title: Text(l10n.deleteAccountTitle),
        content: SizedBox(
          width: 420,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.deleteAccountBody),
              const SizedBox(height: 8),
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                value: wipe,
                onChanged: (v) => setState(() => wipe = v ?? false),
                title: Text(l10n.deleteLocalData),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: Text(l10n.cancel)),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: p.negative, foregroundColor: Colors.white),
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.deleteAccountConfirm),
          ),
        ],
      ),
    ),
  );
  if (ok != true) return;
  try {
    await services.deleteAccount(wipeLocalData: wipe);
    messenger.showSnackBar(SnackBar(content: Text(l10n.accountDeleted)));
  } catch (e) {
    debugPrint('Fiók törlése nem sikerült: $e');
    messenger.showSnackBar(SnackBar(content: Text(l10n.errDeleteAccount)));
  }
}

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
                  if (services.account case final account?) ...[
                    sectionTitle(l10n.accountTitle),
                    Card(
                      child: Column(
                        children: [
                          ListenableBuilder(
                            listenable: account,
                            builder: (context, _) => ListTile(
                              leading: CircleAvatar(
                                backgroundColor: p.accent.withValues(alpha: 0.18),
                                child: Text(
                                  account.isSignedIn ? account.email!.substring(0, 1).toUpperCase() : '?',
                                  style: TextStyle(color: p.accent, fontWeight: FontWeight.w700),
                                ),
                              ),
                              title: Text(account.isSignedIn ? account.email! : l10n.notSignedIn),
                              subtitle: Text(account.isSignedIn ? l10n.accountSyncedNote : l10n.accountBenefit),
                              trailing: account.isSignedIn
                                  ? TextButton(onPressed: account.signOut, child: Text(l10n.signOut))
                                  : FilledButton.tonal(
                                      onPressed: () => showSignInSheet(context, account),
                                      child: Text(l10n.signIn),
                                    ),
                            ),
                          ),
                          const Divider(height: 1),
                          ListTile(
                            leading: Icon(Icons.delete_forever_outlined, color: p.negative),
                            title: Text(l10n.deleteAccount, style: TextStyle(color: p.negative)),
                            onTap: () => _confirmDeleteAccount(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                  sectionTitle(l10n.subscription),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          const Expanded(child: UsageChip()),
                          const SizedBox(width: 12),
                          FilledButton.tonal(onPressed: () => PaywallPage.open(context), child: Text(l10n.viewPlans)),
                        ],
                      ),
                    ),
                  ),
                  sectionTitle(l10n.aiSettings),
                  const Card(child: _AnalysisSettings()),
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
                    Card(
                      child: Column(
                        children: [
                          _HotkeyTile(),
                          if (DesktopIntegration.supportsDoubleOption) ...[
                            const Divider(height: 1),
                            const _DoubleOptionTile(),
                          ],
                          const Divider(height: 1),
                          _LaunchAtLoginTile(),
                          const Divider(height: 1),
                          ListenableBuilder(
                            listenable: services.preferences,
                            builder: (context, _) => SwitchListTile(
                              secondary: const Icon(Icons.notifications_none_rounded),
                              title: Text(l10n.keepInTrayTitle),
                              subtitle: Text(l10n.keepInTraySubtitle),
                              value: services.preferences.keepInTray,
                              onChanged: (v) {
                                services.preferences.setKeepInTray(v);
                                services.desktop.setKeepInTray(v);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
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
                    child: ListTile(
                      leading: const Icon(Icons.translate_rounded),
                      title: Text(
                        current == null ? l10n.systemLanguage : SupportedLocales.languageFor(current).nativeName,
                      ),
                      subtitle: current == null
                          ? Text(SupportedLocales.languageFor(Localizations.localeOf(context)).nativeName)
                          : (SupportedLocales.languageFor(current).englishName ==
                                    SupportedLocales.languageFor(current).nativeName
                                ? null
                                : Text(SupportedLocales.languageFor(current).englishName)),
                      trailing: const Icon(Icons.expand_more_rounded),
                      onTap: () async {
                        final tag = await showLanguagePicker(context, currentTag: current?.toLanguageTag());
                        if (tag == null) return;
                        await services.locale.setLocale(tag.isEmpty ? null : SupportedLocales.byTag(tag)?.locale);
                      },
                    ),
                  ),
                  sectionTitle(l10n.updates),
                  const Card(child: _UpdatesTile()),
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
                            title: Text(hotkeyHintText(l10n, services)),
                          ),
                        ],
                        for (final (icon, label, url) in [
                          (Icons.description_outlined, l10n.termsOfUse, services.config.termsUrl),
                          (Icons.privacy_tip_outlined, l10n.privacyPolicy, services.config.privacyUrl),
                        ])
                          if (services.legalUri(url, Localizations.localeOf(context)) case final uri?) ...[
                            const Divider(height: 1),
                            ListTile(
                              leading: Icon(icon),
                              title: Text(label),
                              trailing: Icon(Icons.open_in_new_rounded, size: 18, color: p.muted),
                              onTap: () => launchUrl(uri, mode: LaunchMode.externalApplication),
                            ),
                          ],
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(l10n.disclaimer, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                  ),
                  const _VersionFooter(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

/// Az AI-elemzés beállításai: hossz (a mély két elemzést fogyaszt), olvasói
/// szint, ellenérv, és tájékoztatás a csomag webkeresés-keretéről.
class _AnalysisSettings extends StatelessWidget {
  const _AnalysisSettings();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final prefs = services.preferences;
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final muted = theme.textTheme.bodySmall?.copyWith(color: p.muted);
    final fmt = NumberFormat.decimalPattern(Localizations.localeOf(context).toString());

    String depthDesc(AnalysisDepth d) {
      final (lo, hi) = AnalysisOptions.wordRangeOf(d);
      final what = switch (d) {
        AnalysisDepth.brief => l10n.aiDepthBriefDesc,
        AnalysisDepth.standard => l10n.aiDepthStandardDesc,
        AnalysisDepth.deep => l10n.aiDepthDeepDesc,
      };
      return '$what ${l10n.aiDepthWords(fmt.format(lo), fmt.format(hi))} · ${l10n.aiDepthCost(AnalysisOptions.costOf(d))}';
    }

    return ListenableBuilder(
      listenable: Listenable.merge([prefs, services.entitlements]),
      builder: (context, _) {
        final depth = prefs.analysisDepth;
        final searches = AnalysisOptions.searchesFor(services.entitlements.state.tier, depth);
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.aiLength, style: theme.textTheme.titleSmall),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: SegmentedButton<AnalysisDepth>(
                  showSelectedIcon: false,
                  segments: [
                    ButtonSegment(value: AnalysisDepth.brief, label: Text(l10n.aiDepthBrief)),
                    ButtonSegment(value: AnalysisDepth.standard, label: Text(l10n.aiDepthStandard)),
                    ButtonSegment(value: AnalysisDepth.deep, label: Text(l10n.aiDepthDeep)),
                  ],
                  selected: {depth},
                  onSelectionChanged: (s) => prefs.setAnalysisDepth(s.first),
                ),
              ),
              const SizedBox(height: 6),
              Text(depthDesc(depth), style: muted),
              const SizedBox(height: 16),
              Text(l10n.aiReaderLevel, style: theme.textTheme.titleSmall),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: SegmentedButton<ReaderLevel>(
                  showSelectedIcon: false,
                  segments: [
                    ButtonSegment(value: ReaderLevel.beginner, label: Text(l10n.aiReaderBeginner)),
                    ButtonSegment(value: ReaderLevel.experienced, label: Text(l10n.aiReaderExperienced)),
                  ],
                  selected: {prefs.readerLevel},
                  onSelectionChanged: (s) => prefs.setReaderLevel(s.first),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                prefs.readerLevel == ReaderLevel.beginner ? l10n.aiReaderBeginnerDesc : l10n.aiReaderExperiencedDesc,
                style: muted,
              ),
              const SizedBox(height: 4),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(l10n.aiCounterArgument),
                subtitle: Text(l10n.aiCounterArgumentDesc, style: muted),
                value: prefs.counterArgument,
                onChanged: prefs.setCounterArgument,
              ),
              const Divider(height: 1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.travel_explore_rounded, color: p.muted),
                title: Text(l10n.aiWebSearchesInfo(searches)),
                subtitle: Text(
                  l10n.aiWebSearchesPlans(
                    PlanSpec.normal.webSearches,
                    PlanSpec.pro.webSearches,
                    PlanSpec.max.webSearches,
                    PlanSpec.ultra.webSearches,
                  ),
                  style: muted,
                ),
              ),
            ],
          ),
        );
      },
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
              : Text(services.desktop.shortcutLabelFor(space: l10n.keySpace)),
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

/// Verzió, automatikus frissítés kapcsoló, kézi ellenőrzés és állapot.
class _UpdatesTile extends StatelessWidget {
  const _UpdatesTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final p = AppPalette.of(context);
    return ListenableBuilder(
      listenable: Listenable.merge([services.updates, services.preferences]),
      builder: (context, _) {
        final u = services.updates;
        final String statusText = switch (u.status) {
          UpdateStatus.checking => l10n.updateChecking,
          UpdateStatus.upToDate => l10n.updateUpToDate,
          UpdateStatus.available => l10n.updateAvailable(u.latestVersion ?? ''),
          UpdateStatus.downloading => l10n.updateDownloading,
          UpdateStatus.downloaded => l10n.updateDownloaded,
          UpdateStatus.failed => l10n.updateCheckFailed,
          UpdateStatus.idle => u.channel == UpdateChannel.store ? l10n.updatesViaStore : '',
        };
        final storeOnly = u.channel == UpdateChannel.store;
        return Column(
          children: [
            ListTile(
              leading: const Icon(Icons.info_outline_rounded),
              title: Text(l10n.currentVersion(u.displayVersion ?? '–')),
              subtitle: statusText.isEmpty ? null : Text(statusText, style: TextStyle(color: p.muted)),
              trailing: storeOnly
                  ? null
                  : TextButton(
                      onPressed: u.status == UpdateStatus.checking ? null : () => u.check(),
                      child: Text(l10n.checkForUpdates),
                    ),
            ),
            if (!storeOnly) ...[
              const Divider(height: 1),
              SwitchListTile(
                secondary: const Icon(Icons.system_update_alt_rounded),
                title: Text(l10n.autoUpdate),
                value: services.preferences.autoUpdate,
                onChanged: (v) {
                  services.preferences.setAutoUpdate(v);
                  u.setAutoInstall(v);
                },
              ),
            ],
          ],
        );
      },
    );
  }
}

/// A beállítások legalja: logó, név és a használt verzió (kijelölhető, másolható).
class _VersionFooter extends StatefulWidget {
  const _VersionFooter();

  @override
  State<_VersionFooter> createState() => _VersionFooterState();
}

class _VersionFooterState extends State<_VersionFooter> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    AppServices.of(context).updates.loadVersion();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final updates = AppServices.of(context).updates;
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return ListenableBuilder(
      listenable: updates,
      builder: (context, _) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
        child: Column(
          children: [
            Image.asset('assets/branding/logo_128.png', height: 28),
            const SizedBox(height: 6),
            Text('WhatStock', style: theme.textTheme.titleSmall),
            const SizedBox(height: 2),
            SelectableText(
              l10n.currentVersion(updates.displayVersion ?? '–'),
              key: const ValueKey('settings-version'),
              style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
            ),
          ],
        ),
      ),
    );
  }
}

/// macOS: a dupla Option-nyomás kapcsolója, és ha kell, az engedély megadásának útja.
class _DoubleOptionTile extends StatelessWidget {
  const _DoubleOptionTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return ListenableBuilder(
      listenable: Listenable.merge([services.desktop, services.preferences]),
      builder: (context, _) {
        final on = services.preferences.doubleOption;
        return Column(
          children: [
            SwitchListTile(
              secondary: const Icon(Icons.keyboard_double_arrow_up_rounded),
              title: Text(l10n.doubleOptionTitle),
              subtitle: Text(l10n.doubleOptionSubtitle, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
              value: on,
              onChanged: (v) async {
                await services.preferences.setDoubleOption(v);
                await services.desktop.setDoubleOption(v, askPermission: true);
              },
            ),
            if (on && !services.desktop.doubleOptionGlobal)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline_rounded, size: 18, color: p.accent),
                    const SizedBox(width: 8),
                    Expanded(child: Text(l10n.doubleOptionPermission, style: theme.textTheme.bodySmall)),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: services.desktop.openInputMonitoringSettings,
                      child: Text(l10n.openSystemSettings),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
