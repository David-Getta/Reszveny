import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../app_services.dart';
import '../../../core/errors.dart';
import '../../../features/analysis/analysis_options.dart';
import '../../../features/analysis/stale_report.dart';
import '../../../features/alerts/alerts_view.dart';
import '../../../features/alerts/price_alert.dart';
import '../../../features/billing/paywall_page.dart';
import '../../../features/billing/trial_upsell.dart';
import '../../../core/models/stock_details.dart';
import '../../../core/models/stock_report.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/error_messages.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../l10n/supported_locales.dart';
import '../../../theme/app_theme.dart';
import 'outlook_view.dart';
import 'ask_sheet.dart';
import 'report_changes.dart';
import 'section_card.dart';
import 'share_card.dart';
import '../../../widgets/collapsible.dart';
import '../../../core/share/share_text.dart';

/// Az AI-elemzés kártyája: gombnyomásra készül (tokenköltség), utána a
/// szekciók – hírek összefoglalása, üzlet, erősségek, kockázatok és rejtett
/// tényezők, pénzügyek, értékeltség, tulajdonosok, mire figyelj – és források.
class AnalysisCard extends StatefulWidget {
  const AnalysisCard({super.key, required this.details});

  final StockDetails details;

  @override
  State<AnalysisCard> createState() => _AnalysisCardState();
}

class _AnalysisCardState extends State<AnalysisCard> {
  bool _restored = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_restored) return;
    _restored = true;
    final services = AppServices.of(context);
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    final restoring = services.reports.restore(widget.details.symbol, language: language);
    // Az előzményekből „új elemzés”-t kértek: a mentett betöltése után indul.
    if (services.reports.takeRefreshRequest(widget.details.symbol)) {
      restoring.then((_) {
        if (mounted) _generate(force: true);
      });
    }
  }

  static bool _isQuotaError(Object? e) =>
      e is AppException &&
      (e.code == AppErrorCode.quotaExceeded ||
          e.code == AppErrorCode.trialExpired ||
          e.code == AppErrorCode.noPlan ||
          e.code == AppErrorCode.notEnoughCredits);

  /// „Hossz · fogyasztás · webkeresés” – hogy látszódjon, mibe kerül az elemzés.
  static String _optionsLine(AppLocalizations l10n, AppServices services) {
    final o = services.analysisOptions();
    final depth = switch (o.depth) {
      AnalysisDepth.brief => l10n.aiDepthBrief,
      AnalysisDepth.standard => l10n.aiDepthStandard,
      AnalysisDepth.deep => l10n.aiDepthDeep,
    };
    return '$depth · ${l10n.aiDepthCost(o.cost)} · ${l10n.aiWebSearchesShort(o.webSearches)}';
  }

  Future<void> _generate({bool force = false}) {
    final services = AppServices.of(context);
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    return services.reports.generate(
      widget.details,
      outputLanguage: language,
      options: services.analysisOptions(symbol: widget.details.symbol),
      force: force,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final symbol = widget.details.symbol;

    return ListenableBuilder(
      listenable: Listenable.merge([services.reports, services.entitlements]),
      builder: (context, _) {
        final store = services.reports;
        final trial = services.isTrialAnalysis;
        final loading = store.isLoading(symbol);
        final error = store.error(symbol);
        final stale = store.needsStaleDecision(symbol) ? store.report(symbol) : null;
        // Régi elemzésnél előbb a kérdés: új kell, vagy jó a korábbi.
        final report = stale == null ? store.report(symbol) : null;

        return SectionCard(
          title: l10n.aiSectionTitle,
          collapseKey: 'ai',
          trailing: report == null
              ? null
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Megosztás: az elemzés lényege szövegként (WhatsApp, e-mail…).
                    Builder(
                      builder: (_) => IconButton(
                        key: const ValueKey('share-analysis'),
                        tooltip: MaterialLocalizations.of(context).shareButtonLabel,
                        icon: const Icon(Icons.ios_share_rounded, size: 20),
                        // Előnézet: képként (kártya) vagy szövegként.
                        onPressed: loading
                            ? null
                            : () => showShareSheet(
                                context,
                                report: report,
                                companyName: widget.details.profile?.name ?? '',
                                fmt: fmt,
                                text: reportShareText(
                                  report,
                                  companyName: widget.details.profile?.name ?? '',
                                  generatedLine: l10n.aiGeneratedAt(fmt.dateTime(report.generatedAt)),
                                  disclaimer: l10n.aiDisclaimer,
                                ),
                              ),
                      ),
                    ),
                    Flexible(
                      child: TextButton.icon(
                        onPressed: loading ? null : () => _generate(force: true),
                        icon: const Icon(Icons.refresh_rounded, size: 18),
                        label: Text(l10n.aiRegenerate, overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ],
                ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (stale != null && !loading) ...[
                if (error != null) ...[SectionError(errorMessage(l10n, error)), const SizedBox(height: 10)],
                if (_isQuotaError(error)) ...[
                  OutlinedButton.icon(
                    onPressed: () => PaywallPage.open(context),
                    icon: const Icon(Icons.workspace_premium_outlined, size: 18),
                    label: Text(l10n.viewPlans),
                  ),
                  const SizedBox(height: 10),
                ],
                StaleReportPrompt(
                  report: stale,
                  onKeep: () => store.keepStale(symbol),
                  onRefresh: () => _generate(force: true),
                ),
              ] else if (report == null && !loading) ...[
                Text(l10n.aiIntro, style: theme.textTheme.bodyMedium?.copyWith(color: p.muted)),
                const SizedBox(height: 8),
                Text(_optionsLine(l10n, services), style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                if (trial) ...[const SizedBox(height: 10), const TrialUpsellNote()],
                const SizedBox(height: 14),
                if (error != null) ...[SectionError(errorMessage(l10n, error)), const SizedBox(height: 10)],
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    FilledButton.icon(
                      onPressed: _generate,
                      icon: const Icon(Icons.auto_awesome_rounded, size: 18),
                      label: Text(l10n.aiGenerate),
                    ),
                    if (_isQuotaError(error))
                      OutlinedButton.icon(
                        onPressed: () => PaywallPage.open(context),
                        icon: const Icon(Icons.workspace_premium_outlined, size: 18),
                        label: Text(l10n.viewPlans),
                      ),
                  ],
                ),
              ],
              if (loading) ...[
                Row(
                  children: [
                    const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2.2)),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(l10n.aiGenerating, style: TextStyle(color: p.muted)),
                    ),
                    // Eltelt idő, hogy látszódjon: dolgozik, nem akadt el.
                    _Elapsed(since: services.reports.loadingSince(widget.details.symbol)),
                  ],
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(minHeight: 3, color: p.accent, backgroundColor: p.border),
                ),
              ],
              if (report != null && !loading) ...[
                if (error != null) ...[SectionError(errorMessage(l10n, error)), const SizedBox(height: 10)],
                if (report.headline.isNotEmpty)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: p.accent.withValues(alpha: 0.10),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: p.accent.withValues(alpha: 0.35)),
                    ),
                    child: Text(
                      report.headline,
                      style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                if ((store.changes(symbol), store.previous(symbol)) case (final diff?, final prev?)) ...[
                  const SizedBox(height: 12),
                  ReportChangesCard(diff: diff, previous: prev, fmt: fmt),
                ],
                if (report.outlook?.marketMood case final mood?) ...[
                  const SizedBox(height: 12),
                  MarketMoodBar(mood: mood, reason: report.outlook!.marketMoodReason),
                ],
                for (final s in report.sections)
                  _ReportSectionView(
                    section: s,
                    outlook: report.outlook,
                    fmt: fmt,
                    generatedAt: report.generatedAt,
                    symbol: symbol,
                  ),
                if (report.sources.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Text(l10n.aiSources, style: theme.textTheme.titleSmall),
                  const SizedBox(height: 6),
                  for (final src in report.sources.take(12))
                    InkWell(
                      onTap: () => launchUrl(Uri.parse(src.url), mode: LaunchMode.externalApplication),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.link_rounded, size: 16, color: p.muted),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                src.title.isEmpty ? src.url : src.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall?.copyWith(color: p.accent),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
                const SizedBox(height: 16),
                AskAnalysisButton(report: report, companyName: widget.details.profile?.name ?? ''),
                const SizedBox(height: 12),
                Text(
                  '${l10n.aiGeneratedAt(fmt.dateTime(report.generatedAt))} · ${l10n.aiDisclaimer}',
                  style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                ),
                if (trial) ...[const SizedBox(height: 12), const TrialUpsellNote()],
              ],
            ],
          ),
        );
      },
    );
  }
}

/// Árfolyam-riasztás az elemzés egyik kulcsszintjéből: a mostani ár fölötti
/// szintnél „fölé megy”, az alattinál „alá esik”, az értékkel előre kitöltve.
Future<void> alertFromKeyLevel(
  BuildContext context, {
  required String symbol,
  required KeyLevel level,
  required ReportOutlook outlook,
}) async {
  final l10n = AppLocalizations.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final cur = outlook.currentPrice;
  final above = cur == null ? level.kind != KeyLevelKind.support : level.price >= cur;
  final created = await showAlertDialog(
    context,
    symbol: symbol,
    currency: outlook.currency,
    currentPrice: cur,
    initialKind: above ? AlertKind.above : AlertKind.below,
    initialValue: level.price,
  );
  if (created) messenger.showSnackBar(SnackBar(content: Text(l10n.alertCreated(symbol))));
}

class _ReportSectionView extends StatelessWidget {
  const _ReportSectionView({
    required this.section,
    this.outlook,
    required this.fmt,
    required this.generatedAt,
    required this.symbol,
  });

  final String symbol;
  final ReportSection section;
  final ReportOutlook? outlook;
  final Fmt fmt;
  final DateTime generatedAt;

  IconData get _icon => switch (section.kind) {
    ReportSectionKind.summary => Icons.notes_rounded,
    ReportSectionKind.news => Icons.newspaper_rounded,
    ReportSectionKind.business => Icons.business_center_outlined,
    ReportSectionKind.strengths => Icons.thumb_up_alt_outlined,
    ReportSectionKind.risks => Icons.warning_amber_rounded,
    ReportSectionKind.financials => Icons.account_balance_outlined,
    ReportSectionKind.valuation => Icons.price_change_outlined,
    ReportSectionKind.ownership => Icons.groups_outlined,
    ReportSectionKind.outlook => Icons.explore_outlined,
    ReportSectionKind.longterm => Icons.timeline_rounded,
    ReportSectionKind.watch => Icons.visibility_outlined,
    ReportSectionKind.other => Icons.circle_outlined,
  };

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final body = theme.textTheme.bodyMedium?.copyWith(height: 1.45);
    // Minden rész külön összecsukható; a fajtája szerint marad meg (a „Hírek”
    // más részvénynél is összecsukva látszik).
    final store = CollapseStore.instance;
    final key = 'ai-section:${section.kind.name}:${section.kind == ReportSectionKind.other ? section.title : ''}';
    return ListenableBuilder(
      listenable: store,
      builder: (context, _) => _build(context, p, theme, body, store, key, store.isCollapsed(key)),
    );
  }

  Widget _build(
    BuildContext context,
    AppPalette p,
    ThemeData theme,
    TextStyle? body,
    CollapseStore store,
    String key,
    bool collapsed,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CollapsibleHeader(
            key: ValueKey('collapse-$key'),
            collapsed: collapsed,
            onTap: () => store.toggle(key),
            child: Row(
              children: [
                Icon(_icon, size: 18, color: section.kind == ReportSectionKind.risks ? p.negative : p.accent),
                const SizedBox(width: 8),
                Expanded(child: Text(section.title, style: theme.textTheme.titleSmall)),
              ],
            ),
          ),
          CollapsibleBody(collapsed: collapsed, child: _content(context, p, body)),
        ],
      ),
    );
  }

  Widget _content(BuildContext context, AppPalette p, TextStyle? body) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        if (section.kind == ReportSectionKind.outlook && outlook != null && outlook!.scenarios.isNotEmpty) ...[
          ScenarioChart(
            outlook: outlook!,
            fmt: fmt,
            onLevelTap: (k) => alertFromKeyLevel(context, symbol: symbol, level: k, outlook: outlook!),
          ),
          const SizedBox(height: 14),
        ],
        if (section.kind == ReportSectionKind.longterm && outlook?.longTerm != null) ...[
          LongTermChart(
            longTerm: outlook!.longTerm!,
            fmt: fmt,
            baseYear: generatedAt.year,
            currentPrice: outlook!.currentPrice,
            currency: outlook!.currency,
          ),
          const SizedBox(height: 14),
        ],
        if (section.kind == ReportSectionKind.watch && outlook != null && outlook!.catalysts.isNotEmpty) ...[
          CatalystTimeline(catalysts: outlook!.catalysts, fmt: fmt),
          const SizedBox(height: 10),
        ],
        for (final para in section.paragraphs)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: SelectableText(para, style: body),
          ),
        for (final b in section.bullets)
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(color: p.accent, shape: BoxShape.circle),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(child: SelectableText(b, style: body)),
              ],
            ),
          ),
      ],
    );
  }
}

/// Az elemzés indítása óta eltelt idő (`1:05`), másodpercenként frissítve.
class _Elapsed extends StatefulWidget {
  const _Elapsed({required this.since});

  final DateTime? since;

  @override
  State<_Elapsed> createState() => _ElapsedState();
}

class _ElapsedState extends State<_Elapsed> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final since = widget.since;
    if (since == null) return const SizedBox.shrink();
    final s = DateTime.now().difference(since).inSeconds.clamp(0, 5999);
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 8),
      child: Text(
        '${s ~/ 60}:${(s % 60).toString().padLeft(2, '0')}',
        key: const ValueKey('analysis-elapsed'),
        style: TextStyle(color: AppPalette.of(context).muted, fontFeatures: const [FontFeature.tabularFigures()]),
      ),
    );
  }
}
