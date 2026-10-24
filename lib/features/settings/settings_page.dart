import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/hotkey_hint.dart';

import '../../app_services.dart';
import '../../core/app_preferences.dart';
import '../../core/desktop/desktop_integration.dart';
import '../../core/util/formatters.dart';
import '../analysis/analysis_options.dart';
import '../billing/plan.dart';
import '../fx/fx_service.dart';
import '../updates/update_service.dart';
import '../account/referral_card.dart';
import '../account/sign_in_sheet.dart';
import '../billing/paywall_page.dart';
import '../billing/trial_upsell.dart';
import '../billing/usage_chip.dart';
import 'backup.dart';
import 'telemetry_consent.dart';
import 'glossary_page.dart';
import 'language_picker.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import '../../widgets/centered_scroll.dart';
import '../../widgets/fit_row.dart';

/// Fiók törlése megerősítéssel; a készüléken tárolt adatok törlése is választható.
/// Fióktörlés folyamatban: lassú hálózaton egy második koppintás ne indítson újabbat.
bool _deletingAccount = false;

Future<void> _confirmDeleteAccount(BuildContext context) async {
  if (_deletingAccount) return;
  final l10n = AppLocalizations.of(context);
  final services = AppServices.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final p = AppPalette.of(context);
  var wipe = true;
  final ok = await showDialog<bool>(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => AlertDialog(
        scrollable: true,
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
  if (ok != true || _deletingAccount || !context.mounted) return;
  _deletingAccount = true;
  // A törlés idejére egy nem bezárható folyamatjelző (és vele a lap sem koppintható).
  final navigator = Navigator.of(context, rootNavigator: true);
  unawaited(
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (_) => const PopScope(canPop: false, child: Center(child: CircularProgressIndicator())),
    ),
  );
  try {
    await services.deleteAccount(wipeLocalData: wipe);
    messenger.showSnackBar(SnackBar(content: Text(l10n.accountDeleted)));
  } catch (e) {
    debugPrint('Fiók törlése nem sikerült: $e');
    messenger.showSnackBar(SnackBar(content: Text(l10n.errDeleteAccount)));
  } finally {
    _deletingAccount = false;
    if (navigator.mounted) navigator.pop();
  }
}

/// Kijelentkezés folyamatban (a feltöltés eltarthat egy ideig): ne induljon kétszer.
bool _signingOut = false;

/// Kijelentkezés megerősítéssel: a fiók adatai lekerülnek a készülékről. Ha a még
/// fel nem töltött változások nem mennek fel, külön rákérdez, mert azok elvesznének.
Future<void> _confirmSignOut(BuildContext context) async {
  if (_signingOut) return;
  final l10n = AppLocalizations.of(context);
  final services = AppServices.of(context);
  final messenger = ScaffoldMessenger.of(context);
  Future<bool> ask(String body, String action) async =>
      await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          key: const ValueKey('sign-out-dialog'),
          title: Text(l10n.signOutTitle),
          content: SizedBox(width: 420, child: Text(body)),
          actions: [
            TextButton(onPressed: () => Navigator.of(context).pop(false), child: Text(l10n.cancel)),
            FilledButton(
              key: const ValueKey('sign-out-confirm'),
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(action),
            ),
          ],
        ),
      ) ==
      true;
  if (!await ask(l10n.signOutBody, l10n.signOut) || _signingOut || !context.mounted) return;
  _signingOut = true;
  try {
    if (!await services.signOut()) {
      if (!context.mounted || !await ask(l10n.signOutUnsaved, l10n.signOutAnyway)) return;
      await services.signOut(force: true);
    }
  } catch (e) {
    debugPrint('Kijelentkezés nem sikerült: $e');
    messenger.showSnackBar(SnackBar(content: Text(l10n.errorGeneric)));
  } finally {
    _signingOut = false;
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
          return CenteredScroll(
            maxWidth: 640,
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
            builder: (context, padding) => ListView(
              padding: padding,
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
                            // A gomb a szöveg alá kerül (nem mellé), hogy keskeny
                            // képernyőn és nagy betűnél se nyomja össze a szöveget.
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(account.isSignedIn ? l10n.accountSyncedNote : l10n.accountBenefit),
                                const SizedBox(height: 8),
                                account.isSignedIn
                                    ? TextButton(
                                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                                        key: const ValueKey('sign-out'),
                                        onPressed: () => _confirmSignOut(context),
                                        child: Text(l10n.signOut),
                                      )
                                    : FilledButton.tonal(
                                        onPressed: () => showSignInSheet(context, account),
                                        child: Text(l10n.signIn),
                                      ),
                              ],
                            ),
                          ),
                        ),
                        if (services.sync case final sync?)
                          ListenableBuilder(
                            listenable: Listenable.merge([account, sync, services.preferences]),
                            builder: (context, _) => !account.isSignedIn
                                ? const SizedBox.shrink()
                                : Column(
                                    children: [
                                      const Divider(height: 1),
                                      ListTile(
                                        key: const ValueKey('sync-tile'),
                                        leading: const Icon(Icons.sync_rounded),
                                        title: Text(l10n.syncInfo),
                                        subtitle: sync.failed
                                            ? Text(
                                                sync.tooLarge ? l10n.syncTooLarge : l10n.syncFailed,
                                                style: TextStyle(color: p.negative),
                                              )
                                            : sync.lastSynced == null
                                            ? null
                                            : Text(
                                                l10n.syncLast(
                                                  Fmt(
                                                    Localizations.localeOf(context).toString(),
                                                    na: l10n.notAvailable,
                                                  ).dateTime(sync.lastSynced),
                                                ),
                                              ),
                                        trailing: sync.busy
                                            ? const SizedBox(
                                                width: 20,
                                                height: 20,
                                                child: CircularProgressIndicator(strokeWidth: 2),
                                              )
                                            // Ikongomb: a „Szinkron most” felirat nagy betűvel
                                            // elfoglalná a sor teljes szélességét.
                                            : IconButton(
                                                key: const ValueKey('sync-now'),
                                                tooltip: l10n.syncNow,
                                                onPressed: sync.syncNow,
                                                icon: const Icon(Icons.refresh_rounded),
                                              ),
                                      ),
                                      SwitchListTile(
                                        key: const ValueKey('weekly-digest'),
                                        secondary: const Icon(Icons.mark_email_unread_outlined),
                                        title: Text(l10n.digestTitle),
                                        subtitle: Text(l10n.digestHint),
                                        value: services.preferences.weeklyDigest,
                                        onChanged: services.preferences.setWeeklyDigest,
                                      ),
                                    ],
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
                // Ajánlói program: csak szerverrel (a kódot és a jutalmat a szerver kezeli).
                if ((services.backend, services.account) case (final backend?, final account?)) ...[
                  sectionTitle(l10n.referralTitle),
                  ReferralCard(backend: backend, account: account),
                ],
                sectionTitle(l10n.subscription),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    // Telefonon egymás alatt: egymás mellett a keret szövege levágódna.
                    child: LayoutBuilder(
                      builder: (context, c) {
                        final plans = FilledButton.tonal(
                          onPressed: () => PaywallPage.open(context),
                          child: Text(l10n.viewPlans),
                        );
                        if (c.maxWidth < 440) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [const UsageChip(), const SizedBox(height: 10), plans],
                          );
                        }
                        return Row(
                          children: [
                            const Expanded(child: UsageChip()),
                            const SizedBox(width: 12),
                            plans,
                          ],
                        );
                      },
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
                        const Divider(height: 1),
                        ListenableBuilder(
                          listenable: services.preferences,
                          builder: (context, _) => SwitchListTile(
                            key: const ValueKey('earnings-reminders'),
                            secondary: const Icon(Icons.event_note_rounded),
                            title: Text(l10n.earningsRemindersTitle),
                            subtitle: Text(l10n.earningsRemindersSubtitle),
                            value: services.preferences.earningsReminders,
                            onChanged: services.preferences.setEarningsReminders,
                          ),
                        ),
                        const Divider(height: 1),
                        ListenableBuilder(
                          listenable: services.preferences,
                          builder: (context, _) => SwitchListTile(
                            key: const ValueKey('dividend-reminders'),
                            secondary: const Icon(Icons.payments_outlined),
                            title: Text(l10n.dividendRemindersTitle),
                            subtitle: Text(l10n.dividendRemindersSubtitle),
                            value: services.preferences.dividendReminders,
                            onChanged: services.preferences.setDividendReminders,
                          ),
                        ),
                        const Divider(height: 1),
                        ListenableBuilder(
                          listenable: services.preferences,
                          builder: (context, _) => SwitchListTile(
                            key: const ValueKey('signal-alerts'),
                            secondary: const Icon(Icons.show_chart_rounded),
                            title: Text(l10n.signalAlertsTitle),
                            subtitle: Text(l10n.signalAlertsSubtitle),
                            value: services.preferences.signalAlerts,
                            onChanged: services.preferences.setSignalAlerts,
                          ),
                        ),
                        const Divider(height: 1),
                        const _PortfolioMoveTile(),
                      ],
                    ),
                  ),
                ],
                // A kezdőképernyő részei ki- és bekapcsolhatók.
                sectionTitle(l10n.homeScreenTitle),
                Card(
                  child: ListenableBuilder(
                    listenable: services.preferences,
                    builder: (context, _) => Column(
                      children: [
                        for (final (i, (id, label)) in [
                          ('markets', l10n.marketsToday),
                          ('away', l10n.awayTitle),
                          ('brief', l10n.briefTitle),
                          ('portfolio', l10n.portfolio),
                          ('favorites', l10n.favorites),
                          ('events', l10n.upcomingEvents),
                          ('results', l10n.eventsRecentResults),
                          ('news', l10n.watchNewsTitle),
                          ('analyses', l10n.myAnalyses),
                        ].indexed) ...[
                          if (i > 0) const Divider(height: 1),
                          SwitchListTile(
                            key: ValueKey('home-section-$id'),
                            dense: true,
                            title: Text(label),
                            value: services.preferences.showsHome(id),
                            onChanged: (v) => services.preferences.setHomeSection(id, v),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
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
                sectionTitle(l10n.backupTitle),
                const BackupCard(),
                sectionTitle(l10n.updates),
                const Card(child: _UpdatesTile()),
                sectionTitle(l10n.about),
                Card(
                  child: Column(
                    children: [
                      // Fogalomtár: az összes mutató magyarázata egy helyen.
                      ListTile(
                        key: const ValueKey('settings-glossary'),
                        leading: const Icon(Icons.menu_book_outlined),
                        title: Text(l10n.glossaryPageTitle),
                        subtitle: Text(l10n.glossaryPageSubtitle),
                        trailing: const Icon(Icons.chevron_right_rounded),
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const GlossaryPage())),
                      ),
                      const Divider(height: 1),
                      if (services.telemetry.available) ...[const TelemetrySwitchTile(), const Divider(height: 1)],
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
        final trial = services.isTrialAnalysis;
        final depth = services.effectiveAnalysisDepth;
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
                    ButtonSegment(value: AnalysisDepth.standard, label: Text(l10n.aiDepthStandard), enabled: !trial),
                    ButtonSegment(value: AnalysisDepth.deep, label: Text(l10n.aiDepthDeep), enabled: !trial),
                  ],
                  selected: {depth},
                  onSelectionChanged: (s) => prefs.setAnalysisDepth(s.first),
                ),
              ),
              const SizedBox(height: 6),
              Text(depthDesc(depth), style: muted),
              if (trial) ...[const SizedBox(height: 10), const TrialUpsellNote(showButton: false)],
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
              SwitchListTile(
                key: const ValueKey('morning-brief'),
                contentPadding: EdgeInsets.zero,
                title: Text(l10n.briefAutoTitle),
                subtitle: Text(l10n.briefAutoSubtitle, style: muted),
                value: prefs.morningBrief,
                onChanged: prefs.setMorningBrief,
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
          // A gombok a felirat alatt vannak, nem mellette: keskeny ablakban így sem
          // a cím, sem a gombok nem szorulnak össze.
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _recording
                  ? Text(l10n.hotkeyRecordHint, style: TextStyle(color: p.accent))
                  : Text(services.desktop.shortcutLabelFor(space: l10n.keySpace)),
              if (_recording)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: SizedBox(
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
                ),
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero, visualDensity: VisualDensity.compact),
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
              // Keskeny képernyőn a gomb felirata két sorba törhet.
              trailing: storeOnly
                  ? null
                  : ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 130),
                      child: TextButton(
                        onPressed: u.status == UpdateStatus.checking ? null : () => u.check(),
                        child: Text(
                          l10n.checkForUpdates,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
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

/// Portfólió-riasztás: ki, vagy értesítés ±2 / 3 / 5%-os napi mozgásnál.
class _PortfolioMoveTile extends StatelessWidget {
  const _PortfolioMoveTile();

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final prefs = services.preferences;
    return ListenableBuilder(
      listenable: prefs,
      builder: (context, _) => ListTile(
        leading: const Icon(Icons.pie_chart_outline_rounded),
        // A választó a cím sorában; nagy betűméretnél a cím alá kerül.
        title: FitRow(
          lead: Text(l10n.portfolioMoveAlertTitle),
          // A saját szélessége, de ha az sem fér el (nagy betű, hosszú fordítás), a felirat rövidül.
          trailing: IntrinsicWidth(
            child: DropdownButton<double>(
              key: const ValueKey('portfolio-move-alert'),
              value: prefs.portfolioMoveAlert,
              isExpanded: true,
              underline: const SizedBox.shrink(),
              items: [
                DropdownMenuItem(value: 0, child: Text(l10n.portfolioMoveAlertOff, overflow: TextOverflow.ellipsis)),
                for (final v in AppPreferences.portfolioMoveSteps)
                  DropdownMenuItem(value: v, child: Text('±${fmt.percent(v, decimals: 0)}')),
              ],
              onChanged: (v) => prefs.setPortfolioMoveAlert(v ?? 0),
            ),
          ),
        ),
        subtitle: Text(l10n.portfolioMoveAlertSubtitle),
      ),
    );
  }
}
