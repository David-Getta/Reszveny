import 'package:flutter/material.dart';

import '../../analysis/ai_consent.dart';
import '../../../app_services.dart';
import '../../../core/models/analysis_extras.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../l10n/supported_locales.dart';
import '../../../theme/app_theme.dart';
import '../../../widgets/research_sheet.dart';
import '../../events/events_view.dart' show eventWhen;
import 'section_card.dart';

/// „Gyorsjelentések”: a következő jelentés napja és a várt EPS, alatta az utolsó
/// negyedévek várt (üres kör) és jelentett (teli kör) EPS-e, a meglepetéssel.
/// Ha nincs adat (pl. nem USA-részvény), a kártya nem jelenik meg.
class EarningsCard extends StatefulWidget {
  const EarningsCard({super.key, required this.symbol, String? companyName, this.now})
    : companyName = companyName ?? symbol;

  final String symbol;
  final String companyName;

  /// Ennyi napon belül lezárt negyedévről kérhető AI-összefoglaló (a jelentés
  /// általában 3–6 héttel a negyedév vége után jön ki).
  static const summaryMaxAgeDays = 150;

  /// Tesztben rögzített „ma”.
  final DateTime? now;

  @override
  State<EarningsCard> createState() => _EarningsCardState();
}

class _EarningsCardState extends State<EarningsCard> {
  Future<EarningsOverview>? _data;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _data ??= AppServices.of(context).marketData
        .earnings(widget.symbol)
        .then((e) => e, onError: (Object _) => const EarningsOverview());
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return FutureBuilder<EarningsOverview>(
      future: _data,
      builder: (context, snap) {
        final data = snap.data;
        if (data == null || data.isEmpty) return const SizedBox.shrink();
        final next = data.next;
        // Időrendben balról jobbra; csak ahol mindkét szám megvan.
        final quarters = [
          for (final e in data.history.reversed)
            if (e.actual != null && e.estimate != null) e,
        ];
        final beats = quarters.where((e) => e.beat == true).length;
        final latest = data.history.where((e) => e.actual != null).firstOrNull;
        final today = widget.now ?? DateTime.now();
        final canSummarize = latest != null && today.difference(latest.period).inDays <= EarningsCard.summaryMaxAgeDays;
        final muted = theme.textTheme.bodySmall?.copyWith(color: p.muted);
        return SectionCard(
          key: const ValueKey('earnings-card'),
          title: l10n.sectionEarnings,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (next != null)
                Row(
                  key: const ValueKey('earnings-next'),
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: p.accent.withValues(alpha: 0.15),
                      child: Icon(Icons.event_note_rounded, size: 18, color: p.accent),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.earningsNext(fmt.date(next.date)),
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            [
                              eventWhen(l10n, next.date, widget.now ?? DateTime.now()),
                              ?switch (next.hour) {
                                'bmo' => l10n.eventBeforeOpen,
                                'amc' => l10n.eventAfterClose,
                                _ => null,
                              },
                              if (next.epsEstimate != null) l10n.eventEpsEstimate(fmt.number(next.epsEstimate!)),
                            ].join(' · '),
                            style: muted,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              if (next != null && quarters.isNotEmpty) const SizedBox(height: 16),
              if (quarters.isNotEmpty) ...[
                _EpsChart(quarters: quarters, fmt: fmt),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 16,
                  runSpacing: 4,
                  children: [
                    _Legend(filled: false, color: p.muted, label: l10n.earningsExpected),
                    _Legend(filled: true, color: p.positive, label: l10n.earningsReported),
                  ],
                ),
                const SizedBox(height: 6),
                Text(l10n.earningsBeats(beats, quarters.length), key: const ValueKey('earnings-beats'), style: muted),
              ],
              if (canSummarize) ...[
                const SizedBox(height: 8),
                TextButton.icon(
                  key: const ValueKey('earnings-summary'),
                  style: TextButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 8)),
                  icon: const Icon(Icons.auto_awesome_outlined, size: 18),
                  label: Text(l10n.earningsSummaryButton),
                  onPressed: () => showEarningsSummary(
                    context,
                    symbol: widget.symbol,
                    companyName: widget.companyName,
                    lastPeriod: latest.period,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

/// „Mi volt a legutóbbi gyorsjelentésben?” alsó lapon: az AI utánanéz a cég
/// közleményének és a sajtónak, a végén a források.
Future<void> showEarningsSummary(
  BuildContext context, {
  required String symbol,
  required String companyName,
  DateTime? lastPeriod,
}) async {
  if (!await ensureAiConsent(context) || !context.mounted) return;
  final services = AppServices.of(context);
  final l10n = AppLocalizations.of(context);
  final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
  final answer = services.earningsSummarizer.summarize(
    symbol: symbol,
    companyName: companyName,
    language: language,
    lastPeriod: lastPeriod,
  );
  services.telemetry.track('earnings_summary');
  return showResearchSheet(
    context,
    sheetKey: const ValueKey('earnings-summary-sheet'),
    eyebrow: '$symbol · $companyName',
    title: l10n.earningsSummaryButton,
    answer: answer,
    note: l10n.earningsSummaryNote,
    sourceKeyPrefix: 'earnings-source',
    symbol: symbol,
  );
}

/// Negyedévenként egy oszlop: fent a meglepetés, középen a két pont, lent a hónap.
class _EpsChart extends StatelessWidget {
  const _EpsChart({required this.quarters, required this.fmt});

  final List<EarningsSurprise> quarters;
  final Fmt fmt;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final values = [
      for (final e in quarters) ...[e.actual!, e.estimate!],
    ];
    var lo = values.reduce((a, b) => a < b ? a : b), hi = values.reduce((a, b) => a > b ? a : b);
    if (hi - lo < 1e-9) {
      lo -= 1;
      hi += 1;
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final (i, e) in quarters.indexed)
          Expanded(
            // Képernyőolvasónak egyben: a negyedév, a jelentett és a várt EPS, a meglepetés.
            child: Semantics(
              container: true,
              label: [
                fmt.monthYear(e.period),
                '${l10n.earningsReported} ${fmt.number(e.actual)}',
                '${l10n.earningsExpected} ${fmt.number(e.estimate)}',
                if (e.surprise != null) fmt.percent(e.surprise, withSign: true, decimals: 1),
              ].join(', '),
              child: ExcludeSemantics(
                child: Column(
                  key: ValueKey('earnings-q-$i'),
                  children: [
                    Text(
                      e.surprise == null ? '' : fmt.percent(e.surprise, withSign: true, decimals: 1),
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: e.beat == true ? p.positive : p.negative,
                      ),
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      height: 84,
                      width: double.infinity,
                      child: CustomPaint(
                        painter: _DotsPainter(
                          estimate: (e.estimate! - lo) / (hi - lo),
                          actual: (e.actual! - lo) / (hi - lo),
                          guide: p.muted.withValues(alpha: 0.25),
                          estimateColor: p.muted,
                          actualColor: e.beat == true ? p.positive : p.negative,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(fmt.number(e.actual), style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                    Text(
                      fmt.monthYear(e.period),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _DotsPainter extends CustomPainter {
  _DotsPainter({
    required this.estimate,
    required this.actual,
    required this.guide,
    required this.estimateColor,
    required this.actualColor,
  });

  /// 0..1 közötti magasságok (0 = a legkisebb érték).
  final double estimate;
  final double actual;
  final Color guide;
  final Color estimateColor;
  final Color actualColor;

  static const _r = 7.0;

  @override
  void paint(Canvas canvas, Size size) {
    final x = size.width / 2;
    double y(double v) => _r + (1 - v) * (size.height - 2 * _r);
    canvas.drawLine(
      Offset(x, 0),
      Offset(x, size.height),
      Paint()
        ..color = guide
        ..strokeWidth = 1,
    );
    canvas.drawCircle(
      Offset(x, y(estimate)),
      _r,
      Paint()
        ..color = estimateColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2,
    );
    canvas.drawCircle(Offset(x, y(actual)), _r - 1, Paint()..color = actualColor);
  }

  @override
  bool shouldRepaint(_DotsPainter old) =>
      old.estimate != estimate || old.actual != actual || old.actualColor != actualColor || old.guide != guide;
}

class _Legend extends StatelessWidget {
  const _Legend({required this.filled, required this.color, required this.label});

  final bool filled;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: filled ? color : null,
          border: filled ? null : Border.all(color: color, width: 2),
        ),
      ),
      const SizedBox(width: 6),
      Flexible(child: Text(label, style: Theme.of(context).textTheme.bodySmall)),
    ],
  );
}
