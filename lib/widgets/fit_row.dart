import 'dart:math' as math;

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

/// Egy sor: elöl a címke (kitölti a helyet, mint egy `Expanded`), a végén az érték
/// (és a gombjai). Ha a végén álló rész mellett a címkének nem marad elég hely
/// (nagy betűméret, keskeny képernyő), a címke teljes szélességben áll, az érték
/// alatta, a sor végéhez igazítva – nem csúszik ki semmi.
class FitRow extends MultiChildRenderObjectWidget {
  FitRow({super.key, required Widget lead, required Widget trailing, this.spacing = 8})
    : super(children: [lead, trailing]);

  final double spacing;

  @override
  RenderObject createRenderObject(BuildContext context) => RenderFitRow(spacing, Directionality.of(context));

  @override
  void updateRenderObject(BuildContext context, RenderFitRow renderObject) => renderObject
    ..spacing = spacing
    ..textDirection = Directionality.of(context);
}

class _FitRowParentData extends ContainerBoxParentData<RenderBox> {}

/// A [FitRow] elrendezése (a címke és a végén álló rész).
class RenderFitRow extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, _FitRowParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, _FitRowParentData> {
  RenderFitRow(this._spacing, this._textDirection);

  /// Ennyi helynél a címke a sorban marad akkor is, ha több sorba tördelődik.
  static const _minLeadShare = 0.5;

  /// A címke és az alá került érték távolsága.
  static const _stackGap = 2.0;

  double _spacing;
  set spacing(double v) {
    if (v == _spacing) return;
    _spacing = v;
    markNeedsLayout();
  }

  TextDirection _textDirection;
  set textDirection(TextDirection v) {
    if (v == _textDirection) return;
    _textDirection = v;
    markNeedsLayout();
  }

  RenderBox get _lead => firstChild!;
  RenderBox get _trailing => lastChild!;

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! _FitRowParentData) child.parentData = _FitRowParentData();
  }

  /// Üres végrész (pl. `SizedBox.shrink`) előtt nincs térköz.
  double _gap(double trailingWidth) => trailingWidth > 0 ? _spacing : 0;

  /// A címke helye a sorban, vagy null, ha az érték alá kerül.
  double? _room(double maxWidth, double trailingWidth) {
    if (!maxWidth.isFinite) return double.infinity;
    final room = maxWidth - trailingWidth - _gap(trailingWidth);
    if (room >= maxWidth * _minLeadShare) return room;
    return room > 0 && _lead.getMaxIntrinsicWidth(double.infinity) <= room ? room : null;
  }

  ({Size size, Offset lead, Offset trailing}) _layout(
    BoxConstraints constraints,
    Size Function(RenderBox child, BoxConstraints c) layoutChild,
  ) {
    final maxWidth = constraints.maxWidth;
    final trailing = layoutChild(_trailing, BoxConstraints(maxWidth: maxWidth));
    final room = _room(maxWidth, trailing.width);
    final rtl = _textDirection == TextDirection.rtl;
    if (room != null) {
      // Korlátlan szélességben (pl. belső méret számításakor) a címke a saját szélességét kapja.
      // (Rögzített szélesség, mert a címkében lehet `Expanded`, ami korlátlan szélességben hibát adna.)
      final lead = layoutChild(
        _lead,
        BoxConstraints.tightFor(width: room.isFinite ? room : _lead.getMaxIntrinsicWidth(double.infinity)),
      );
      final width = room.isFinite ? maxWidth : lead.width + _gap(trailing.width) + trailing.width;
      final h = math.max(lead.height, trailing.height);
      return (
        size: constraints.constrain(Size(width, h)),
        lead: Offset(rtl ? width - lead.width : 0, (h - lead.height) / 2),
        trailing: Offset(rtl ? 0 : width - trailing.width, (h - trailing.height) / 2),
      );
    }
    final lead = layoutChild(_lead, BoxConstraints(maxWidth: maxWidth));
    return (
      size: constraints.constrain(Size(maxWidth, lead.height + _stackGap + trailing.height)),
      lead: Offset(rtl ? maxWidth - lead.width : 0, 0),
      trailing: Offset(rtl ? 0 : maxWidth - trailing.width, lead.height + _stackGap),
    );
  }

  @override
  void performLayout() {
    final r = _layout(constraints, (child, c) {
      child.layout(c, parentUsesSize: true);
      return child.size;
    });
    size = r.size;
    (_lead.parentData! as _FitRowParentData).offset = r.lead;
    (_trailing.parentData! as _FitRowParentData).offset = r.trailing;
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) => _layout(constraints, (child, c) => child.getDryLayout(c)).size;

  @override
  double computeMinIntrinsicWidth(double height) =>
      math.max(_lead.getMinIntrinsicWidth(height), _trailing.getMinIntrinsicWidth(height));

  @override
  double computeMaxIntrinsicWidth(double height) {
    final trailing = _trailing.getMaxIntrinsicWidth(height);
    return _lead.getMaxIntrinsicWidth(height) + _gap(trailing) + trailing;
  }

  @override
  double computeMinIntrinsicHeight(double width) => computeDryLayout(BoxConstraints(maxWidth: width)).height;

  @override
  double computeMaxIntrinsicHeight(double width) => computeMinIntrinsicHeight(width);

  @override
  void paint(PaintingContext context, Offset offset) => defaultPaint(context, offset);

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) =>
      defaultHitTestChildren(result, position: position);
}
