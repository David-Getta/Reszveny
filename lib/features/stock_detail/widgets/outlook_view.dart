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
        // A legvalószínűbb forgatókönyv kiemelve, hogy ne a százalékokból kelljen kiolvasni.
        if (outlook.mostLikely case final ml? when outlook.scenarios.length > 1)
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colorOf(ml.kind).withValues(alpha: 0.10),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: colorOf(ml.kind).withValues(alpha: 0.35)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 6,
                  runSpacing: 2,
                  children: [
                    Icon(Icons.my_location_rounded, size: 16, color: colorOf(ml.kind)),
                    Text(l10n.scenarioMostLikely, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                    Text(
                      '${scenarioLabel(l10n, ml.kind)} · ${ml.probability.round()}%',
                      style: theme.textTheme.labelLarge?.copyWith(color: colorOf(ml.kind), fontWeight: FontWeight.w700),
                    ),
                    if (ml.priceLow != null && ml.priceHigh != null)
                      Text(
                        '${fmt.price(ml.priceLow, null)}–${fmt.price(ml.priceHigh, ccy)}'
                        '${ml.horizon.isNotEmpty ? ' · ${ml.horizon}' : ''}',
                        style: theme.textTheme.labelMedium,
                      ),
                  ],
                ),
                if (outlook.mostLikelyReason.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(outlook.mostLikelyReason, style: theme.textTheme.bodySmall?.copyWith(height: 1.4)),
                ],
              ],
            ),
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
                    const SizedBox(width: 12),
                    // Keskeny képernyőn (telefon, hosszú forgatókönyv-nevek) a sáv tördelődik.
                    Expanded(
                      child: s.priceLow != null && s.priceHigh != null
                          ? Text(
                              '${fmt.price(s.priceLow, null)}–${fmt.price(s.priceHigh, ccy)}'
                              '${cur != null && cur > 0 ? '  (${fmt.percent((s.priceLow! / cur - 1) * 100, decimals: 0, withSign: true)} … ${fmt.percent((s.priceHigh! / cur - 1) * 100, decimals: 0, withSign: true)})' : ''}',
                              style: theme.textTheme.labelMedium,
                              textAlign: TextAlign.end,
                            )
                          : const SizedBox.shrink(),
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

/// Hosszú távú kilátás: legyező-diagram a mai ártól a 3, 5 és 10 éves sávokig
/// (logaritmikus ártengelyen, hogy az azonos százalékos mozgások egyforma
/// nagynak látsszanak), alatta időtávonként a sáv, a teljes és az évesített
/// változás, a legvalószínűbb ár, a számítás alapja és a bizonyosság.
class LongTermChart extends StatelessWidget {
  const LongTermChart({
    super.key,
    required this.longTerm,
    required this.fmt,
    required this.baseYear,
    this.currentPrice,
    this.currency,
  });

  final LongTermOutlook longTerm;
  final Fmt fmt;

  /// Az elemzés éve; ehhez adódik az időtáv a céldátumhoz.
  final int baseYear;
  final double? currentPrice;
  final String? currency;

  String _price(double v, {bool withCurrency = true}) {
    final n = fmt.number(v, decimals: v >= 100 ? 0 : (v >= 1 ? 2 : 4));
    return withCurrency && currency != null ? '$n $currency' : n;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final small = theme.textTheme.bodySmall?.copyWith(color: p.muted, height: 1.4);
    final cur = currentPrice != null && currentPrice! > 0 ? currentPrice : null;
    String pct(double v, int decimals) => fmt.percent(v, decimals: decimals, withSign: true);
    String perYear(LongTermHorizon h) =>
        '${pct(LongTermHorizon.annualised(cur, h.priceLow, h.years)!, 1)} … '
        '${pct(LongTermHorizon.annualised(cur, h.priceHigh, h.years)!, 1)}';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (longTerm.summary.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(longTerm.summary, style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600)),
          ),
        SizedBox(
          height: 190,
          width: double.infinity,
          child: CustomPaint(
            painter: _FanPainter(
              horizons: longTerm.horizons,
              current: cur,
              baseYear: baseYear,
              todayLabel: l10n.longTermToday,
              priceLabel: (v) => _price(v, withCurrency: false),
              fill: p.accent,
              line: p.accent,
              grid: p.border,
              muted: p.muted,
              labelStyle: theme.textTheme.labelSmall?.copyWith(color: p.muted) ?? TextStyle(color: p.muted),
            ),
          ),
        ),
        const SizedBox(height: 12),
        for (final h in longTerm.horizons)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '${l10n.longTermYears(h.years)} · ${baseYear + h.years}',
                      style: theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        '${_price(h.priceLow, withCurrency: false)}–${_price(h.priceHigh)}',
                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        [
                          // Teljes változás, zárójelben az évesített hozam.
                          if (cur != null)
                            '${pct((h.priceLow / cur - 1) * 100, 0)} … ${pct((h.priceHigh / cur - 1) * 100, 0)} '
                                '(${l10n.longTermPerYear(perYear(h))})',
                          if (h.priceLikely != null) l10n.longTermLikely(_price(h.priceLikely!)),
                        ].join(' · '),
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    const SizedBox(width: 8),
                    _Chip(
                      color: switch (h.confidence) {
                        Confidence.high => p.positive,
                        Confidence.medium => p.accent,
                        Confidence.low => p.muted,
                      },
                      text: switch (h.confidence) {
                        Confidence.high => l10n.confidenceHigh,
                        Confidence.medium => l10n.confidenceMedium,
                        Confidence.low => l10n.confidenceLow,
                      },
                    ),
                  ],
                ),
                if (h.basis.isNotEmpty) ...[const SizedBox(height: 4), Text(h.basis, style: small)],
              ],
            ),
          ),
        Text(l10n.longTermNote, style: small?.copyWith(fontStyle: FontStyle.italic)),
      ],
    );
  }
}

class _FanPainter extends CustomPainter {
  _FanPainter({
    required this.horizons,
    required this.current,
    required this.baseYear,
    required this.todayLabel,
    required this.priceLabel,
    required this.fill,
    required this.line,
    required this.grid,
    required this.muted,
    required this.labelStyle,
  });

  final List<LongTermHorizon> horizons;
  final double? current;
  final int baseYear;
  final String todayLabel;
  final String Function(double) priceLabel;
  final Color fill;
  final Color line;
  final Color grid;
  final Color muted;
  final TextStyle labelStyle;

  static const double _axis = 18; // alul az évszámoknak
  static const double _gutter = 52; // jobbra az árcímkéknek

  TextPainter _text(String s) => TextPainter(
    text: TextSpan(text: s, style: labelStyle),
    textDirection: TextDirection.ltr,
  )..layout();

  @override
  void paint(Canvas canvas, Size size) {
    if (horizons.isEmpty) return;
    final w = size.width - _gutter;
    final h = size.height - _axis;
    final maxYears = horizons.last.years.toDouble();
    final cur = current;

    final values = [
      for (final e in horizons) ...[e.priceLow, e.priceHigh],
      ?cur,
    ];
    var lo = math.log(values.reduce(math.min));
    var hi = math.log(values.reduce(math.max));
    final pad = math.max((hi - lo) * 0.08, 0.02);
    lo -= pad;
    hi += pad;
    double x(double years) => 4 + years / maxYears * (w - 8);
    double y(double v) => h - (math.log(v) - lo) / (hi - lo) * h;

    // Függőleges rácsvonalak az időtávoknál.
    final gridPaint = Paint()
      ..color = grid
      ..strokeWidth = 1;
    for (final e in horizons) {
      canvas.drawLine(Offset(x(e.years.toDouble()), 0), Offset(x(e.years.toDouble()), h), gridPaint);
    }

    // A legyező: a mai árból (ha ismert) a sávok felső, majd alsó szélén vissza.
    final upper = [
      if (cur != null) Offset(x(0), y(cur)),
      for (final e in horizons) Offset(x(e.years.toDouble()), y(e.priceHigh)),
    ];
    final lower = [
      if (cur != null) Offset(x(0), y(cur)),
      for (final e in horizons) Offset(x(e.years.toDouble()), y(e.priceLow)),
    ];
    final fan = Path()..addPolygon([...upper, ...lower.reversed], true);
    canvas.drawPath(fan, Paint()..color = fill.withValues(alpha: 0.16));
    final edge = Paint()
      ..color = line.withValues(alpha: 0.55)
      ..strokeWidth = 1.2
      ..style = PaintingStyle.stroke;
    canvas.drawPath(Path()..addPolygon(upper, false), edge);
    canvas.drawPath(Path()..addPolygon(lower, false), edge);

    // A mai ár szaggatott vízszintes vonala.
    if (cur != null) {
      final dash = Paint()
        ..color = muted.withValues(alpha: 0.7)
        ..strokeWidth = 1;
      for (var dx = 0.0; dx < w; dx += 6) {
        canvas.drawLine(Offset(dx, y(cur)), Offset(math.min(dx + 3, w), y(cur)), dash);
      }
    }

    // A legvalószínűbb árak vonala.
    final likely = [
      if (cur != null) Offset(x(0), y(cur)),
      for (final e in horizons)
        if (e.priceLikely != null) Offset(x(e.years.toDouble()), y(e.priceLikely!)),
    ];
    if (likely.length > 1) {
      canvas.drawPath(
        Path()..addPolygon(likely, false),
        Paint()
          ..color = line
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke,
      );
    }
    for (final o in likely) {
      canvas.drawCircle(o, 3.5, Paint()..color = line);
    }

    // Árcímkék jobbra: a legmagasabb és a legalacsonyabb sávszél, meg a mai ár.
    final top = horizons.map((e) => e.priceHigh).reduce(math.max);
    final bottom = horizons.map((e) => e.priceLow).reduce(math.min);
    final placed = <double>[];
    for (final v in [top, ?cur, bottom]) {
      final tp = _text(priceLabel(v));
      final ty = (y(v) - tp.height / 2).clamp(0.0, h - tp.height);
      if (placed.any((p) => (p - ty).abs() < tp.height)) continue;
      placed.add(ty);
      tp.paint(canvas, Offset(w + 6, ty));
    }

    // Évszámok alul.
    final labels = [
      if (cur != null) (0.0, todayLabel),
      for (final e in horizons) (e.years.toDouble(), '${baseYear + e.years}'),
    ];
    for (final (years, label) in labels) {
      final tp = _text(label);
      final dx = (x(years) - tp.width / 2).clamp(0.0, w - tp.width);
      tp.paint(canvas, Offset(dx, h + 4));
    }
  }

  @override
  bool shouldRepaint(_FanPainter old) =>
      old.horizons != horizons || old.current != current || old.fill != fill || old.labelStyle != labelStyle;
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
