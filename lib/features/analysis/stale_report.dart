import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_report.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../stock_detail/widgets/earnings_card.dart' show showEarningsSummary;

/// „3 órája”, „2 napja”: mennyi ideje készült az elemzés.
String analysisAgeText(AppLocalizations l10n, DateTime generatedAt, {DateTime? now}) {
  final age = (now ?? DateTime.now()).difference(generatedAt);
  if (age.inHours < 24) return l10n.ageHours(age.inHours < 1 ? 1 : age.inHours);
  return l10n.ageDays(age.inDays);
}

/// A régi elemzés kérdésének szövege a gombok fölé: mennyibe kerül az új.
String _costLine(AppLocalizations l10n, AppServices services, String symbol) =>
    l10n.aiDepthCost(services.analysisOptions(symbol: symbol).cost);

/// „Mi volt a legutóbbi gyorsjelentésben?” link, ha az elemzés óta új jelentés
/// jött: az AI-összefoglaló lapja nyílik (a legutóbbi negyedévhez kötve).
class _SummaryLink extends StatelessWidget {
  const _SummaryLink({required this.report});

  final StockReport report;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return TextButton.icon(
      key: const ValueKey('stale-summary'),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        visualDensity: VisualDensity.compact,
      ),
      icon: const Icon(Icons.auto_awesome_outlined, size: 18),
      label: Text(l10n.earningsSummaryButton),
      onPressed: () async {
        final services = AppServices.of(context);
        DateTime? period;
        try {
          period = (await services.marketData.earnings(report.symbol)).history.firstOrNull?.period;
        } catch (_) {
          period = null;
        }
        if (!context.mounted) return;
        await showEarningsSummary(context, symbol: report.symbol, companyName: report.symbol, lastPeriod: period);
      },
    );
  }
}

/// Párbeszéd egy 12 óránál régebbi elemzés megnyitásakor: `true` = új elemzés,
/// `false` = a korábbi jó lesz, `null` = mégsem nyitja meg.
Future<bool?> askStaleChoice(BuildContext context, StockReport report) {
  final l10n = AppLocalizations.of(context);
  final services = AppServices.of(context);
  return showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(Icons.update_rounded),
      title: Text(l10n.staleTitle),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (services.reports.hasNewResults(report)) ...[
            Text(
              l10n.staleNewResults(
                report.symbol,
                Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable).date(report.nextEarnings),
              ),
              key: const ValueKey('stale-new-results'),
              style: TextStyle(color: AppPalette.of(context).accent, fontWeight: FontWeight.w600),
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: _SummaryLink(report: report),
            ),
            const SizedBox(height: 6),
          ],
          Text(l10n.staleBody(analysisAgeText(l10n, report.generatedAt))),
        ],
      ),
      actions: [
        TextButton(
          key: const ValueKey('stale-keep'),
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(l10n.staleKeep),
        ),
        FilledButton(
          key: const ValueKey('stale-refresh'),
          onPressed: () => Navigator.of(context).pop(true),
          child: Text('${l10n.staleRefresh} · ${_costLine(l10n, services, report.symbol)}'),
        ),
      ],
    ),
  );
}

/// Egy elmentett elemzés megnyitása az előzményekből: ha régi, előbb
/// megkérdezi, kell-e új; a válasz szerint a részletek oldalán vagy a korábbi
/// elemzés látszik, vagy azonnal új készül.
Future<void> openSavedAnalysis(BuildContext context, StockReport report, void Function() open) async {
  final services = AppServices.of(context);
  final store = services.reports;
  if (store.isStale(report)) {
    final refresh = await askStaleChoice(context, report);
    if (refresh == null || !context.mounted) return;
    if (refresh) {
      store.requestRefresh(report.symbol);
    } else {
      store.keepStale(report.symbol);
    }
  }
  open();
}

/// A kártyán, ha a részvényt máshonnan (keresés, kedvencek) nyitották meg, és
/// a mentett elemzés régi: ugyanaz a kérdés, a régi elemzés helyén.
class StaleReportPrompt extends StatelessWidget {
  const StaleReportPrompt({super.key, required this.report, required this.onKeep, required this.onRefresh});

  final StockReport report;
  final VoidCallback onKeep;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final o = services.analysisOptions(symbol: report.symbol);
    return Container(
      key: const ValueKey('stale-prompt'),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: p.accent.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: p.accent.withValues(alpha: 0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.update_rounded, size: 20, color: p.accent),
              const SizedBox(width: 8),
              Expanded(child: Text(l10n.staleTitle, style: theme.textTheme.titleSmall)),
            ],
          ),
          const SizedBox(height: 6),
          if (services.reports.hasNewResults(report)) ...[
            Text(
              l10n.staleNewResults(
                report.symbol,
                Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable).date(report.nextEarnings),
              ),
              key: const ValueKey('stale-new-results'),
              style: theme.textTheme.bodyMedium?.copyWith(color: p.accent, fontWeight: FontWeight.w600),
            ),
            _SummaryLink(report: report),
            const SizedBox(height: 4),
          ],
          Text(
            l10n.staleBody(analysisAgeText(l10n, report.generatedAt)),
            style: theme.textTheme.bodyMedium?.copyWith(color: p.muted),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              FilledButton.icon(
                key: const ValueKey('stale-refresh'),
                onPressed: onRefresh,
                icon: const Icon(Icons.auto_awesome_rounded, size: 18),
                label: Text('${l10n.staleRefresh} · ${l10n.aiDepthCost(o.cost)}'),
              ),
              OutlinedButton(key: const ValueKey('stale-keep'), onPressed: onKeep, child: Text(l10n.staleKeep)),
            ],
          ),
        ],
      ),
    );
  }
}
