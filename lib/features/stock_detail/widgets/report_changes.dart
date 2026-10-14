import 'package:flutter/material.dart';

import '../../../core/models/stock_report.dart';
import '../../../core/util/formatters.dart';
import '../../../features/analysis/report_diff.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';
import 'outlook_view.dart';

/// „Az előző elemzés óta”: újraelemzés után röviden, mi mozdult el – az ár, a
/// piaci hangulat, a forgatókönyvek valószínűsége, a legvalószínűbb
/// forgatókönyv –, és lenyitva az előző elemzés lényege.
class ReportChangesCard extends StatefulWidget {
  const ReportChangesCard({super.key, required this.diff, required this.previous, required this.fmt});

  final ReportDiff diff;
  final StockReport previous;
  final Fmt fmt;

  @override
  State<ReportChangesCard> createState() => _ReportChangesCardState();
}

class _ReportChangesCardState extends State<ReportChangesCard> {
  bool _showPrevious = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final d = widget.diff;
    final fmt = widget.fmt;
    final label = theme.textTheme.bodyMedium?.copyWith(color: p.muted);
    final value = theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600);

    Color tone(num v) => v > 0
        ? p.positive
        : v < 0
        ? p.negative
        : p.muted;

    Widget line(String name, List<InlineSpan> spans) => Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: '$name: ', style: label),
            ...spans,
          ],
        ),
        style: value,
      ),
    );

    // Nyíl ikonként: a „→” jel nem minden beágyazott betűtípusban van meg.
    InlineSpan arrow([Color? color]) => WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Icon(Icons.arrow_forward_rounded, size: 14, color: color ?? p.muted),
      ),
    );

    // Jó hír, ha az optimista nő vagy a pesszimista csökken.
    Color shiftTone(ScenarioShift s) => switch (s.kind) {
      ScenarioKind.bull => tone(s.delta),
      ScenarioKind.bear => tone(-s.delta),
      ScenarioKind.base => p.accent,
    };

    final move = d.priceMove;
    final shifted = d.scenarios.where((s) => s.delta.abs() >= ReportDiff.minShift).toList();

    return Container(
      key: const ValueKey('report-changes'),
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(14, 12, 14, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: p.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.compare_arrows_rounded, size: 20, color: p.accent),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  l10n.changesTitle(fmt.dateTime(d.previousAt)),
                  style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          if (move != null)
            line(l10n.changesPrice, [
              TextSpan(text: fmt.price(d.priceBefore, d.currency)),
              arrow(),
              TextSpan(text: '${fmt.price(d.priceAfter, d.currency)} '),
              TextSpan(
                text: '(${fmt.percent(move, decimals: 1, withSign: true)})',
                style: TextStyle(color: d.priceChanged ? tone(move) : p.muted),
              ),
            ]),
          if (d.moodChanged)
            line(l10n.outlookMarketMood, [
              TextSpan(text: moodLabel(l10n, d.moodBefore!)),
              arrow(),
              TextSpan(
                text: moodLabel(l10n, d.moodAfter!),
                style: TextStyle(color: tone(d.moodAfter! - d.moodBefore!)),
              ),
            ]),
          if (d.mostLikelyChanged)
            line(l10n.scenarioMostLikely, [
              TextSpan(text: scenarioLabel(l10n, d.mostLikelyBefore!)),
              arrow(),
              TextSpan(text: scenarioLabel(l10n, d.mostLikelyAfter!)),
            ]),
          if (shifted.isNotEmpty) ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                for (final s in shifted)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: shiftTone(s).withValues(alpha: 0.10),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text.rich(
                      key: ValueKey('scenario-shift-${s.kind.name}'),
                      TextSpan(
                        children: [
                          TextSpan(text: '${scenarioLabel(l10n, s.kind)}: ${fmt.percent(s.before, decimals: 0)}'),
                          arrow(shiftTone(s)),
                          TextSpan(text: fmt.percent(s.after, decimals: 0)),
                        ],
                      ),
                      style: theme.textTheme.bodySmall?.copyWith(color: shiftTone(s), fontWeight: FontWeight.w600),
                    ),
                  ),
              ],
            ),
          ],
          if (!d.outlookChanged)
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(l10n.changesNoMajor, style: label),
            ),
          if (widget.previous.headline.isNotEmpty) ...[
            const SizedBox(height: 4),
            TextButton.icon(
              key: const ValueKey('report-changes-previous'),
              style: TextButton.styleFrom(padding: EdgeInsets.zero, visualDensity: VisualDensity.compact),
              onPressed: () => setState(() => _showPrevious = !_showPrevious),
              icon: Icon(_showPrevious ? Icons.expand_less_rounded : Icons.expand_more_rounded, size: 18),
              label: Text(l10n.changesPreviousSummary),
            ),
            if (_showPrevious) Text(widget.previous.headline, style: label),
          ],
        ],
      ),
    );
  }
}
