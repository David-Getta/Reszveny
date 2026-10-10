import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../app_services.dart';
import '../../../core/errors.dart';
import '../../../features/billing/paywall_page.dart';
import '../../../core/models/stock_details.dart';
import '../../../core/models/stock_report.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/error_messages.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../l10n/supported_locales.dart';
import '../../../theme/app_theme.dart';
import 'section_card.dart';

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
    services.reports.restore(widget.details.symbol, language: language);
  }

  static bool _isQuotaError(Object? e) =>
      e is AppException &&
      (e.code == AppErrorCode.quotaExceeded || e.code == AppErrorCode.trialExpired || e.code == AppErrorCode.noPlan);

  Future<void> _generate({bool force = false}) {
    final services = AppServices.of(context);
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    return services.reports.generate(widget.details, outputLanguage: language, force: force);
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
      listenable: services.reports,
      builder: (context, _) {
        final store = services.reports;
        final report = store.report(symbol);
        final loading = store.isLoading(symbol);
        final error = store.error(symbol);

        return SectionCard(
          title: l10n.aiSectionTitle,
          trailing: report == null
              ? null
              : TextButton.icon(
                  onPressed: loading ? null : () => _generate(force: true),
                  icon: const Icon(Icons.refresh_rounded, size: 18),
                  label: Text(l10n.aiRegenerate),
                ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (report == null && !loading) ...[
                Text(l10n.aiIntro, style: theme.textTheme.bodyMedium?.copyWith(color: p.muted)),
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
                  ],
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
                for (final s in report.sections) _ReportSectionView(section: s),
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
                const SizedBox(height: 12),
                Text(
                  '${l10n.aiGeneratedAt(fmt.dateTime(report.generatedAt))} · ${l10n.aiDisclaimer}',
                  style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

class _ReportSectionView extends StatelessWidget {
  const _ReportSectionView({required this.section});

  final ReportSection section;

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
    ReportSectionKind.watch => Icons.visibility_outlined,
    ReportSectionKind.other => Icons.circle_outlined,
  };

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final body = theme.textTheme.bodyMedium?.copyWith(height: 1.45);
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(_icon, size: 18, color: section.kind == ReportSectionKind.risks ? p.negative : p.accent),
              const SizedBox(width: 8),
              Expanded(child: Text(section.title, style: theme.textTheme.titleSmall)),
            ],
          ),
          const SizedBox(height: 8),
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
      ),
    );
  }
}
