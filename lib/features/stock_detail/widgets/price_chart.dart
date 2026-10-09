import 'package:flutter/material.dart';

import '../../../core/models/price_history.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';

enum ChartRange { week, month, threeMonths, year, fiveYears }

/// Egyszerű, függőség nélküli vonaldiagram időtáv-választóval.
class PriceChart extends StatefulWidget {
  const PriceChart({super.key, required this.history, required this.fmt, this.currency});

  final PriceHistory history;
  final Fmt fmt;
  final String? currency;

  @override
  State<PriceChart> createState() => _PriceChartState();
}

class _PriceChartState extends State<PriceChart> {
  ChartRange _range = ChartRange.year;

  int _days(ChartRange r) => switch (r) {
    ChartRange.week => 7,
    ChartRange.month => 31,
    ChartRange.threeMonths => 92,
    ChartRange.year => 366,
    ChartRange.fiveYears => 5 * 366,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final points = widget.history.lastDays(_days(_range));
    final first = points.isEmpty ? null : points.first.close;
    final last = points.isEmpty ? null : points.last.close;
    final change = first == null || last == null || first == 0 ? null : (last - first) / first * 100;
    final up = (change ?? 0) >= 0;
    final color = up ? p.positive : p.negative;

    String label(ChartRange r) => switch (r) {
      ChartRange.week => l10n.rangeOneWeek,
      ChartRange.month => l10n.rangeOneMonth,
      ChartRange.threeMonths => l10n.rangeThreeMonths,
      ChartRange.year => l10n.rangeOneYear,
      ChartRange.fiveYears => l10n.rangeFiveYears,
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Wrap(
                spacing: 6,
                children: [
                  for (final r in ChartRange.values)
                    ChoiceChip(
                      label: Text(label(r)),
                      selected: _range == r,
                      showCheckmark: false,
                      onSelected: (_) => setState(() => _range = r),
                      selectedColor: p.accent.withValues(alpha: 0.2),
                      side: BorderSide(color: _range == r ? p.accent : p.border),
                      labelStyle: TextStyle(color: _range == r ? p.text : p.muted, fontWeight: FontWeight.w600),
                      visualDensity: VisualDensity.compact,
                    ),
                ],
              ),
            ),
            if (change != null)
              Text(
                widget.fmt.percent(change, withSign: true),
                style: theme.textTheme.titleMedium?.copyWith(color: color),
              ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 180,
          child: points.length < 2
              ? Center(
                  child: Text(l10n.notAvailable, style: TextStyle(color: p.muted)),
                )
              : CustomPaint(
                  painter: _LinePainter(
                    points: points,
                    color: color,
                    grid: p.border,
                    labelStyle: (theme.textTheme.bodySmall ?? const TextStyle()).copyWith(color: p.muted, fontSize: 11),
                    fmt: widget.fmt,
                  ),
                  child: const SizedBox.expand(),
                ),
        ),
        const SizedBox(height: 6),
        if (points.length >= 2)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.fmt.date(points.first.time), style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
              Text(widget.fmt.date(points.last.time), style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
            ],
          ),
      ],
    );
  }
}

class _LinePainter extends CustomPainter {
  _LinePainter({
    required this.points,
    required this.color,
    required this.grid,
    required this.labelStyle,
    required this.fmt,
  });

  final List<PricePoint> points;
  final Color color;
  final Color grid;
  final TextStyle labelStyle;
  final Fmt fmt;

  @override
  void paint(Canvas canvas, Size size) {
    const rightPad = 56.0;
    final w = size.width - rightPad;
    final h = size.height;
    var min = points.first.close, max = points.first.close;
    for (final pt in points) {
      if (pt.close < min) min = pt.close;
      if (pt.close > max) max = pt.close;
    }
    if (max == min) max = min + 1;
    final span = max - min;
    final minT = points.first.time.millisecondsSinceEpoch.toDouble();
    final maxT = points.last.time.millisecondsSinceEpoch.toDouble();
    final spanT = (maxT - minT) == 0 ? 1 : (maxT - minT);

    Offset at(PricePoint pt) =>
        Offset((pt.time.millisecondsSinceEpoch - minT) / spanT * w, h - (pt.close - min) / span * (h - 8) - 4);

    // Rács és ár-címkék (3 vízszintes vonal).
    final gridPaint = Paint()
      ..color = grid
      ..strokeWidth = 1;
    for (var i = 0; i <= 2; i++) {
      final y = 4 + (h - 8) * i / 2;
      canvas.drawLine(Offset(0, y), Offset(w, y), gridPaint);
      final value = max - span * i / 2;
      final tp = TextPainter(
        text: TextSpan(
          text: fmt.number(value, decimals: value.abs() < 10 ? 2 : 0),
          style: labelStyle,
        ),
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: rightPad - 6);
      tp.paint(canvas, Offset(w + 6, y - tp.height / 2));
    }

    final path = Path()..moveTo(at(points.first).dx, at(points.first).dy);
    for (final pt in points.skip(1)) {
      final o = at(pt);
      path.lineTo(o.dx, o.dy);
    }
    final fill = Path.from(path)
      ..lineTo(w, h)
      ..lineTo(0, h)
      ..close();
    canvas.drawPath(
      fill,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [color.withValues(alpha: 0.28), color.withValues(alpha: 0.0)],
        ).createShader(Rect.fromLTWH(0, 0, w, h)),
    );
    canvas.drawPath(
      path,
      Paint()
        ..color = color
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke
        ..strokeJoin = StrokeJoin.round,
    );
  }

  @override
  bool shouldRepaint(covariant _LinePainter old) =>
      old.points != points || old.color != color || old.grid != grid || old.labelStyle != labelStyle;
}
