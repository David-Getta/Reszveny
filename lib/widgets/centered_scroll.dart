import 'package:flutter/widgets.dart';

/// Középre igazított, legfeljebb [maxWidth] széles görgethető tartalom, de a
/// görgethető terület a teljes szélesség: így az egérgörgő és a görgetősáv a két
/// oldalsó üres sávban is működik, nem csak a tartalom fölött.
///
/// A [builder] a kész belső margót kapja (a [padding] plusz a középre igazításhoz
/// szükséges oldalsó sáv), ezt kell a `ListView` `padding`-jének átadni.
class CenteredScroll extends StatelessWidget {
  const CenteredScroll({super.key, required this.maxWidth, required this.padding, required this.builder});

  final double maxWidth;
  final EdgeInsets padding;
  final Widget Function(BuildContext context, EdgeInsets padding) builder;

  static EdgeInsets paddingFor(double width, double maxWidth, EdgeInsets padding) {
    final side = width > maxWidth ? (width - maxWidth) / 2 : 0.0;
    return padding.copyWith(left: padding.left + side, right: padding.right + side);
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) => builder(context, paddingFor(constraints.maxWidth, maxWidth, padding)),
  );
}
