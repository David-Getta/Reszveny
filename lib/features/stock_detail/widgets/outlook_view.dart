import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../core/models/stock_report.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';

String scenarioLabel(AppLocalizations l10n, ScenarioKind k) => switch (k) {
  ScenarioKind.bull => l10n.scenarioBull,
  ScenarioKind.base => l10n.scenarioBase,
  ScenarioKind.bear => l10n.scenarioBear,
};

String moodLabel(AppLocalizations l10n, int mood) => switch (mood) {
  <= -2 => l10n.moodVeryPessimistic,
  -1 => l10n.moodPessimistic,
  0 => l10n.moodNeutral,
  1 => l10n.moodOptimistic,
  _ => l10n.moodVeryOptimistic,
};

/// Piaci hangulat: öt fokozatú sáv a pesszimistától az optimistáig, indoklással.
class MarketMoodBar extends StatelessWidget {
  const MarketMoodBar({super.key, required this.mood, this.reason = ''});

  final int mood;
  final String reason;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    Color tone(int m) => switch (m) {
      < 0 => Color.lerp(p.muted, p.negative, m == -2 ? 1 : 0.6)!,
      0 => p.muted,
      _ => Color.lerp(p.muted, p.positive, m == 2 ? 1 : 0.6)!,
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(l10n.outlookMarketMood, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
            const SizedBox(width: 8),
            Text(
              moodLabel(l10n, mood),
              style: theme.textTheme.labelLarge?.copyWith(color: tone(mood), fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            for (var m = -2; m <= 2; m++) ...[
              Expanded(
                child: Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: m == mood ? tone(m) : tone(m).withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
              if (m < 2) const SizedBox(width: 4),
            ],
          ],
        ),
        if (reason.isNotEmpty) ...[
          const SizedBox(height: 6),
          Text(reason, style: theme.textTheme.bodySmall?.copyWith(color: p.muted, height: 1.4)),
        ],
      ],
    );
  }
}

/// Forgatókönyvek közös ártengelyen: minden sáv a bear/base/bull ársávja, a
/// függőleges vonal a jelenlegi ár, a sáv telítettsége a valószínűség.
class ScenarioChart extends StatelessWidget {
  const ScenarioChart({super.key, required this.outlook, required this.fmt});

  final ReportOutlook outlook;
  final Fmt fmt;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final cur = outlook.currentPrice;
    final ccy = outlook.currency;
    final ranged = outlook.scenarios.where((s) => s.priceLow != null && s.priceHigh != null).toList();

    final values = [
      for (final s in ranged) ...[s.priceLow!, s.priceHigh!],
      ?cur,
      for (final k in outlook.keyLevels) k.price,
    ];
    if (values.isEmpty && outlook.keyLevels.isEmpty) return const SizedBox.shrink();
    var lo = values.isEmpty ? 0.0 : values.reduce(math.min);
    var hi = values.isEmpty ? 1.0 : values.reduce(math.max);
    final pad = math.max((hi - lo) * 0.06, hi.abs() * 0.01);
    lo -= pad;
    hi += pad;

    Color colorOf(ScenarioKind k) => switch (k) {
      ScenarioKind.bull => p.positive,
      ScenarioKind.base => p.accent,
      ScenarioKind.bear => p.negative,
    };

    final small = theme.textTheme.bodySmall?.copyWith(color: p.muted);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (cur != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(l10n.outlookCurrentPrice(fmt.price(cur, ccy)), style: small),
          ),
        for (final s in outlook.scenarios)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      scenarioLabel(l10n, s.kind),
                      style: theme.textTheme.labelLarge?.copyWith(color: colorOf(s.kind), fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(width: 8),
                    Text('${s.probability.round()}%', style: theme.textTheme.labelLarge),
                    const Spacer(),
                    if (s.priceLow != null && s.priceHigh != null)
                      Text(
                        '${fmt.price(s.priceLow, null)}–${fmt.price(s.priceHigh, ccy)}'
                        '${cur != null && cur > 0 ? '  (${fmt.percent((s.priceLow! / cur - 1) * 100, decimals: 0, withSign: true)} … ${fmt.percent((s.priceHigh! / cur - 1) * 100, decimals: 0, withSign: true)})' : ''}',
                        style: theme.textTheme.labelMedium,
                      ),
                  ],
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 14,
                  child: LayoutBuilder(
                    builder: (context, c) {
                      double x(double v) => (v - lo) / (hi - lo) * c.maxWidth;
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned.fill(
                            top: 6,
                            bottom: 6,
                            child: Container(
                              decoration: BoxDecoration(color: p.border, borderRadius: BorderRadius.circular(1)),
                            ),
                          ),
                          if (s.priceLow != null && s.priceHigh != null)
                            Positioned(
                              left: x(s.priceLow!),
                              width: math.max(4, x(s.priceHigh!) - x(s.priceLow!)),
                              top: 1,
                              bottom: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: colorOf(s.kind).withValues(alpha: 0.35 + 0.65 * s.probability / 100),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                          if (cur != null)
                            Positioned(
                              left: x(cur) - 1,
                              width: 2,
                              top: -2,
                              bottom: -2,
                              child: ColoredBox(color: p.text),
                            ),
                        ],
                      );
                    },
                  ),
                ),
                if (s.horizon.isNotEmpty || s.summary.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    [if (s.horizon.isNotEmpty) s.horizon, if (s.summary.isNotEmpty) s.summary].join(' · '),
                    style: small,
                  ),
                ],
              ],
            ),
          ),
        if (outlook.keyLevels.isNotEmpty) ...[
          Text(l10n.outlookKeyLevels, style: theme.textTheme.labelLarge),
          const SizedBox(height: 6),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              for (final k in outlook.keyLevels)
                _Chip(
                  color: switch (k.kind) {
                    KeyLevelKind.support => p.positive,
                    KeyLevelKind.resistance => p.negative,
                    KeyLevelKind.anchor => p.accent,
                  },
                  text:
                      '${switch (k.kind) {
                        KeyLevelKind.support => l10n.keyLevelSupport,
                        KeyLevelKind.resistance => l10n.keyLevelResistance,
                        KeyLevelKind.anchor => l10n.keyLevelAnchor,
                      }} ${fmt.price(k.price, ccy)}${k.label.isEmpty ? '' : ' · ${k.label}'}',
                ),
            ],
          ),
        ],
        const SizedBox(height: 8),
        Text(l10n.outlookChartNote, style: small?.copyWith(fontStyle: FontStyle.italic)),
      ],
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.color, required this.text});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: color.withValues(alpha: 0.12),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: color.withValues(alpha: 0.4)),
    ),
    child: Text(text, style: Theme.of(context).textTheme.labelMedium),
  );
}

/// Közelgő események dátummal, időrendben.
class CatalystTimeline extends StatelessWidget {
  const CatalystTimeline({super.key, required this.catalysts, required this.fmt});

  final List<Catalyst> catalysts;
  final Fmt fmt;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.upcomingEvents, style: theme.textTheme.labelLarge),
        const SizedBox(height: 6),
        for (final c in catalysts)
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 104,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: p.accent.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    c.parsedDate != null && c.date.length >= 10 ? fmt.date(c.parsedDate) : c.date,
                    style: theme.textTheme.labelMedium?.copyWith(color: p.accent, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(child: Text(c.event, style: theme.textTheme.bodyMedium?.copyWith(height: 1.4))),
              ],
            ),
          ),
      ],
    );
  }
}
