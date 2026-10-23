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

/// Egy saját tranzakció a grafikonon: vétel (▲ a görbe alatt) vagy eladás (▼ fölötte).
class ChartMarker {
  const ChartMarker({required this.date, required this.sell, this.quantity});

  final DateTime date;
  final bool sell;

  /// Darabszám (a kijelölt nap feliratához).
  final double? quantity;
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
    this.markers = const [],
    this.showChange = true,
    this.loadBenchmark,
  });

  /// Az S&P 500 (SPY) története az összevetéshez; ha meg van adva, egy kapcsoló
  /// a grafikon alatt ugyanarról a pontról indítva rárajzolja.
  final Future<PriceHistory> Function()? loadBenchmark;

  /// A saját vételek és eladások napjai (a látható időtávon kívüliek nem jelennek meg).
  final List<ChartMarker> markers;

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

/// Az összevetés görbéje a fő görbe pontjaihoz igazítva: minden napra a
/// legközelebbi korábbi (vagy első) benchmark-záróár, a fő görbe első árára
/// skálázva. `null`, ha nincs elég adat.
List<double>? alignBenchmark(List<PricePoint> points, List<PricePoint> bench) {
  if (points.length < 2 || bench.length < 2) return null;
  final base = bench[nearestChartIndex(bench, points.first.time)].close;
  if (base <= 0) return null;
  final scale = points.first.close / base;
  return [for (final pt in points) bench[nearestChartIndex(bench, pt.time)].close * scale];
}

class _PriceChartState extends State<PriceChart> {
  ChartRange _range = ChartRange.year;

  /// Az S&P 500 összevetés be van-e kapcsolva, és a betöltött története.
  bool _bench = false;
  Future<PriceHistory>? _benchLoad;
  PriceHistory? _benchData;

  void _toggleBenchmark() {
    setState(() => _bench = !_bench);
    _benchLoad ??= widget.loadBenchmark!().then((h) {
      if (mounted) setState(() => _benchData = h);
      return h;
    });
  }

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
    final shownMarkers = points.length < 2
        ? const <ChartMarker>[]
        : [
            for (final m in widget.markers)
              if (!m.date.isBefore(_day(points.first.time)) && !_day(m.date).isAfter(points.last.time)) m,
          ];
    final first = points.isEmpty ? null : points.first.close;
    double? changeTo(double? v) => first == null || v == null || first == 0 ? null : (v - first) / first * 100;
    // A vonal színe és a jobb felső szám mindig a teljes időszak változása;
    // kijelölésnél a kijelölt nap változása (az időszak elejéhez képest) az ár
    // mellett látszik, a saját színével.
    final change = changeTo(points.isEmpty ? null : points.last.close);
    final color = (change ?? 0) >= 0 ? p.positive : p.negative;
    final hoverChange = hover == null ? null : changeTo(points[hover].close);
    final bench = _bench && _benchData != null ? alignBenchmark(points, _benchData!.points) : null;
    final benchChange = bench == null ? null : changeTo(bench.last);
    final hoverColor = (hoverChange ?? 0) >= 0 ? p.positive : p.negative;

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
        // Képernyőolvasónak: az időszak, az első és az utolsó ár, a változás.
        Semantics(
          container: true,
          label: points.length < 2
              ? null
              : '${label(_range)}: ${widget.fmt.date(points.first.time)} '
                    '${widget.fmt.price(points.first.close, widget.currency)} → '
                    '${widget.fmt.date(points.last.time)} ${widget.fmt.price(points.last.close, widget.currency)}'
                    '${change == null ? '' : ' (${widget.fmt.percent(change, withSign: true)})'}',
          child: SizedBox(
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
                                color: hoverColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                              hoverPrice: hover == null
                                  ? null
                                  : [
                                      widget.fmt.price(points[hover].close, widget.currency),
                                      if (hoverChange != null && widget.showChange)
                                        '(${widget.fmt.percent(hoverChange, withSign: true)})',
                                    ].join(' '),
                              hoverDate: hover == null ? null : _hoverDate(points[hover].time, shownMarkers),
                              background: theme.colorScheme.surface,
                              levels: widget.levels,
                              markers: shownMarkers,
                              compare: bench,
                              compareColor: p.muted,
                              buyColor: p.accent,
                              sellColor: p.text,
                            ),
                            child: const SizedBox.expand(),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ),
        const SizedBox(height: 6),
        if (widget.loadBenchmark != null && points.length >= 2) ...[
          Wrap(
            spacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              FilterChip(
                key: const ValueKey('chart-benchmark'),
                label: Text(l10n.benchmarkTitle),
                selected: _bench,
                onSelected: (_) => _toggleBenchmark(),
                visualDensity: VisualDensity.compact,
                avatar: _bench ? null : Icon(Icons.show_chart_rounded, size: 16, color: p.muted),
              ),
              if (benchChange != null)
                Text(
                  'S&P 500 ${widget.fmt.percent(benchChange, withSign: true)}',
                  key: const ValueKey('chart-benchmark-change'),
                  style: theme.textTheme.bodySmall?.copyWith(color: p.muted, fontWeight: FontWeight.w600),
                ),
            ],
          ),
          const SizedBox(height: 2),
        ],
        if (shownMarkers.isNotEmpty) ...[
          Wrap(
            key: const ValueKey('chart-markers-legend'),
            spacing: 12,
            children: [
              if (shownMarkers.any((m) => !m.sell))
                _LegendItem(icon: Icons.arrow_drop_up_rounded, color: p.accent, label: l10n.chartMyBuys),
              if (shownMarkers.any((m) => m.sell))
                _LegendItem(icon: Icons.arrow_drop_down_rounded, color: p.text, label: l10n.chartMySells),
            ],
          ),
          const SizedBox(height: 2),
        ],
        if (points.length >= 2)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (final t in [points.first.time, points.last.time])
                Flexible(
                  child: Text(
                    widget.fmt.date(t),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                  ),
                ),
            ],
          ),
      ],
    );
  }
}

/// A [t] időponthoz legközelebbi pont indexe (a pontok időrendben).
int nearestChartIndex(List<PricePoint> points, DateTime t) {
  var lo = 0, hi = points.length - 1;
  while (hi - lo > 1) {
    final mid = (lo + hi) >> 1;
    if (points[mid].time.isAfter(t)) {
      hi = mid;
    } else {
      lo = mid;
    }
  }
  return (t.difference(points[lo].time).abs() <= points[hi].time.difference(t).abs()) ? lo : hi;
}

DateTime _day(DateTime t) => DateTime(t.year, t.month, t.day);

extension on _PriceChartState {
  /// A kijelölt nap dátuma, és ha aznap vettél vagy adtál el: „· ▲ 6” / „· ▼ 4”.
  String _hoverDate(DateTime t, List<ChartMarker> markers) {
    final day = _day(t);
    final trades = [
      for (final m in markers)
        if (_day(m.date) == day)
          '${m.sell ? '▼' : '▲'}${m.quantity == null ? '' : ' ${widget.fmt.number(m.quantity!, decimals: m.quantity! == m.quantity!.roundToDouble() ? 0 : 2)}'}',
    ];
    return [widget.fmt.date(t), ...trades].join(' · ');
  }
}

class _LegendItem extends StatelessWidget {
  const _LegendItem({required this.icon, required this.color, required this.label});

  final IconData icon;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 20, color: color),
        // Nagy betűméretnél és hosszú fordításnál tördelődik.
        Flexible(
          child: Text(label, style: theme.textTheme.bodySmall?.copyWith(color: AppPalette.of(context).muted)),
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
    this.markers = const [],
    this.compare,
    this.compareColor = const Color(0xFF888888),
    this.buyColor = const Color(0xFF00C853),
    this.sellColor = const Color(0xFFFFFFFF),
  });

  final List<ChartLevel> levels;
  final List<ChartMarker> markers;

  /// Összevetés (pl. S&P 500) a pontokhoz igazítva, a fő görbe skáláján.
  final List<double>? compare;
  final Color compareColor;
  final Color buyColor;
  final Color sellColor;

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
    for (final v in compare ?? const <double>[]) {
      if (v < min) min = v;
      if (v > max) max = v;
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

    // Összevetés: halvány vonal a fő görbe alatt.
    if (compare case final c? when c.length == points.length) {
      final y0 = h - (c.first - min) / span * (h - 8) - 4;
      final cmp = Path()..moveTo(at(points.first).dx, y0);
      for (var i = 1; i < c.length; i++) {
        cmp.lineTo(at(points[i]).dx, h - (c[i] - min) / span * (h - 8) - 4);
      }
      canvas.drawPath(
        cmp,
        Paint()
          ..color = compareColor.withValues(alpha: 0.8)
          ..strokeWidth = 1.5
          ..style = PaintingStyle.stroke
          ..strokeJoin = StrokeJoin.round,
      );
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

    // Saját vételek (▲ a görbe alatt) és eladások (▼ fölötte).
    for (final m in markers) {
      final o = at(points[nearestChartIndex(points, m.date)]);
      final dir = m.sell ? -1.0 : 1.0;
      final tip = Offset(o.dx, o.dy + dir * 5);
      final tri = Path()
        ..moveTo(tip.dx, tip.dy)
        ..lineTo(tip.dx - 5, tip.dy + dir * 8)
        ..lineTo(tip.dx + 5, tip.dy + dir * 8)
        ..close();
      canvas.drawPath(
        tri,
        Paint()
          ..color = background
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2,
      );
      canvas.drawPath(tri, Paint()..color = m.sell ? sellColor : buyColor);
    }

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
      old.levels != levels ||
      old.markers.length != markers.length ||
      old.compare != compare;
}
