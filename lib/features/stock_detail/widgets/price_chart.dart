import 'package:flutter/material.dart';

import '../../../core/models/price_history.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';

enum ChartRange { week, month, threeMonths, year, fiveYears }

/// Vízszintes szint a grafikonon (pl. a saját átlagár vagy egy riasztás),
/// szaggatott vonallal és rövid címkével.
class ChartLevel {
  const ChartLevel({required this.price, required this.label, required this.color});

  final double price;
  final String label;
  final Color color;
}

/// Egyszerű, függőség nélküli vonaldiagram időtáv-választóval. Az egérrel
/// (asztali gép) vagy az ujj vízszintes húzásával (telefon) egy függőleges
/// vonal és pont követi a görbét, felette az adott nap dátumával és árával,
/// mint az Apple Részvények appjában.
class PriceChart extends StatefulWidget {
  const PriceChart({
    super.key,
    required this.history,
    required this.fmt,
    this.currency,
    this.levels = const [],
    this.showChange = true,
  });

  final PriceHistory history;
  final Fmt fmt;
  final String? currency;

  /// Kiemelt árszintek; a látható ársávtól nagyon távoliak nem jelennek meg.
  final List<ChartLevel> levels;

  /// Az időszak %-os változása a fejlécben (a portfóliónál félrevezető lenne,
  /// mert a közbeni vételek is benne vannak).
  final bool showChange;

  @override
  State<PriceChart> createState() => _PriceChartState();
}

class _PriceChartState extends State<PriceChart> {
  ChartRange _range = ChartRange.year;

  /// A kijelölt pont indexe a látható pontok között (`null`: nincs kijelölés).
  int? _hover;

  /// A diagram fölött a kijelölt nap címkéjének fenntartott sáv.
  static const double topPad = 30;

  void _select(Offset local, Size size, List<PricePoint> points) {
    final i = _LinePainter.indexAt(local.dx, size.width, points);
    if (i != _hover) setState(() => _hover = i);
  }

  void _clear() {
    if (_hover != null) setState(() => _hover = null);
  }

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
    final hover = _hover != null && _hover! < points.length ? _hover : null;
    final first = points.isEmpty ? null : points.first.close;
    // Kijelölésnél az időszak elejétől a kijelölt napig számolt változás.
    final last = points.isEmpty ? null : points[hover ?? points.length - 1].close;
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
                      onSelected: (_) => setState(() {
                        _range = r;
                        _hover = null;
                      }),
                      selectedColor: p.accent.withValues(alpha: 0.2),
                      side: BorderSide(color: _range == r ? p.accent : p.border),
                      labelStyle: TextStyle(color: _range == r ? p.text : p.muted, fontWeight: FontWeight.w600),
                      visualDensity: VisualDensity.compact,
                    ),
                ],
              ),
            ),
            if (change != null && widget.showChange)
              Text(
                widget.fmt.percent(change, withSign: true),
                style: theme.textTheme.titleMedium?.copyWith(color: color),
              ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 180 + topPad,
          child: points.length < 2
              ? Center(
                  child: Text(l10n.notAvailable, style: TextStyle(color: p.muted)),
                )
              : LayoutBuilder(
                  builder: (context, constraints) {
                    final size = constraints.biggest;
                    final labelStyle = (theme.textTheme.bodySmall ?? const TextStyle()).copyWith(
                      color: p.muted,
                      fontSize: 11,
                    );
                    return MouseRegion(
                      key: const ValueKey('price-chart-area'),
                      cursor: SystemMouseCursors.precise,
                      onHover: (e) => _select(e.localPosition, size, points),
                      onExit: (_) => _clear(),
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        // Vízszintes húzás: a függőleges görgetés megmarad az oldalnak.
                        onHorizontalDragStart: (d) => _select(d.localPosition, size, points),
                        onHorizontalDragUpdate: (d) => _select(d.localPosition, size, points),
                        onHorizontalDragEnd: (_) => _clear(),
                        onHorizontalDragCancel: _clear,
                        onTapDown: (d) => _select(d.localPosition, size, points),
                        child: CustomPaint(
                          painter: _LinePainter(
                            points: points,
                            color: color,
                            grid: p.border,
                            labelStyle: labelStyle,
                            fmt: widget.fmt,
                            topPad: topPad,
                            hover: hover,
                            cursorColor: p.text,
                            hoverDateStyle: labelStyle.copyWith(fontSize: 12),
                            hoverPriceStyle: labelStyle.copyWith(
                              color: color,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                            hoverPrice: hover == null ? null : widget.fmt.price(points[hover].close, widget.currency),
                            hoverDate: hover == null ? null : widget.fmt.date(points[hover].time),
                            background: theme.colorScheme.surface,
                            levels: widget.levels,
                          ),
                          child: const SizedBox.expand(),
                        ),
                      ),
                    );
                  },
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
    this.topPad = 0,
    this.hover,
    this.cursorColor = const Color(0xFFFFFFFF),
    this.hoverDateStyle,
    this.hoverPriceStyle,
    this.hoverPrice,
    this.hoverDate,
    this.background = const Color(0xFF000000),
    this.levels = const [],
  });

  final List<ChartLevel> levels;

  /// A látható ársávon kívül ennyivel (a sáv arányában) távolabbi szintet
  /// nem rajzolunk, hogy a görbe ne lapuljon össze.
  static const levelReach = 0.35;

  /// A megrajzolható szintek a görbe [min]–[max] sávjához.
  static List<ChartLevel> visibleLevels(List<ChartLevel> levels, double min, double max) {
    final reach = (max - min) * levelReach;
    return [
      for (final l in levels)
        if (l.price >= min - reach && l.price <= max + reach) l,
    ];
  }

  final List<PricePoint> points;
  final Color color;
  final Color grid;
  final TextStyle labelStyle;
  final Fmt fmt;
  final double topPad;
  final int? hover;
  final Color cursorColor;
  final TextStyle? hoverDateStyle;
  final TextStyle? hoverPriceStyle;
  final String? hoverPrice;
  final String? hoverDate;
  final Color background;

  static const rightPad = 56.0;

  /// Tengelyfelirat: nagy számnál tömören (1,2M), hogy elférjen.
  String _axis(double v) => v.abs() >= 100000 ? fmt.compact(v) : fmt.number(v, decimals: v.abs() < 10 ? 2 : 0);

  /// A vízszintes helyhez (x) legközelebb eső pont indexe – idő szerint, mert a
  /// pontok az idő arányában helyezkednek el (hétvégi hézagokkal).
  static int indexAt(double x, double width, List<PricePoint> points) {
    final w = width - rightPad;
    if (points.length < 2 || w <= 0) return 0;
    final minT = points.first.time.millisecondsSinceEpoch;
    final maxT = points.last.time.millisecondsSinceEpoch;
    final t = minT + (x.clamp(0, w) / w) * (maxT - minT);
    var lo = 0, hi = points.length - 1;
    while (hi - lo > 1) {
      final mid = (lo + hi) >> 1;
      if (points[mid].time.millisecondsSinceEpoch <= t) {
        lo = mid;
      } else {
        hi = mid;
      }
    }
    final dLo = (t - points[lo].time.millisecondsSinceEpoch).abs();
    final dHi = (points[hi].time.millisecondsSinceEpoch - t).abs();
    return dHi < dLo ? hi : lo;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width - rightPad;
    final h = size.height - topPad;
    canvas.save();
    canvas.translate(0, topPad);
    var min = points.first.close, max = points.first.close;
    for (final pt in points) {
      if (pt.close < min) min = pt.close;
      if (pt.close > max) max = pt.close;
    }
    // A közeli szintek is férjenek bele a sávba.
    final shown = visibleLevels(levels, min, max);
    for (final l in shown) {
      if (l.price < min) min = l.price;
      if (l.price > max) max = l.price;
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
        text: TextSpan(text: _axis(value), style: labelStyle),
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: rightPad - 6);
      tp.paint(canvas, Offset(w + 6, y - tp.height / 2));
    }

    // Szintek: szaggatott vonal, bal oldalt címke.
    for (final l in shown) {
      final y = h - (l.price - min) / span * (h - 8) - 4;
      final dash = Paint()
        ..color = l.color.withValues(alpha: 0.85)
        ..strokeWidth = 1.2;
      for (var x = 0.0; x < w; x += 9) {
        canvas.drawLine(Offset(x, y), Offset((x + 5).clamp(0, w), y), dash);
      }
      final tp = TextPainter(
        text: TextSpan(
          text: '${l.label} ${_axis(l.price)}',
          style: labelStyle.copyWith(color: l.color, fontWeight: FontWeight.w700),
        ),
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: w);
      final ty = (y - tp.height - 1).clamp(0.0, h - tp.height);
      canvas.drawRect(
        Rect.fromLTWH(2, ty, tp.width + 6, tp.height),
        Paint()..color = background.withValues(alpha: 0.75),
      );
      tp.paint(canvas, Offset(5, ty));
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

    // Kijelölés: függőleges vonal, pont a görbén, fölötte dátum és ár.
    final i = hover;
    if (i != null && i >= 0 && i < points.length) {
      final o = at(points[i]);
      canvas.drawLine(
        Offset(o.dx, 0),
        Offset(o.dx, h),
        Paint()
          ..color = cursorColor.withValues(alpha: 0.55)
          ..strokeWidth = 1,
      );
      canvas.drawCircle(o, 7, Paint()..color = color.withValues(alpha: 0.25));
      canvas.drawCircle(o, 4.5, Paint()..color = background);
      canvas.drawCircle(o, 3.5, Paint()..color = color);
      canvas.restore();
      final date = TextPainter(
        text: TextSpan(text: hoverDate ?? '', style: hoverDateStyle ?? labelStyle),
        textDirection: TextDirection.ltr,
      )..layout();
      final price = TextPainter(
        text: TextSpan(text: hoverPrice ?? '', style: hoverPriceStyle ?? labelStyle),
        textDirection: TextDirection.ltr,
      )..layout();
      const gap = 8.0;
      final total = date.width + gap + price.width;
      final left = (o.dx - total / 2).clamp(0.0, (size.width - total).clamp(0.0, double.infinity));
      final y = (topPad - price.height) / 2;
      date.paint(canvas, Offset(left, y + (price.height - date.height) / 2));
      price.paint(canvas, Offset(left + date.width + gap, y));
    } else {
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant _LinePainter old) =>
      old.points != points ||
      old.color != color ||
      old.grid != grid ||
      old.labelStyle != labelStyle ||
      old.hover != hover ||
      old.hoverPrice != hoverPrice ||
      old.topPad != topPad ||
      old.levels != levels;
}
