import 'dart:math' as math;

import 'package:flutter/material.dart';

/// Egysoros felirat, amely nem tör: ha nem fér el, kisebb betűvel látszik. Kapcsoló-
/// sávokba (`SegmentedButton`) és gombokba, ahol a szülő a belső méretét kérdezi
/// (ott `LayoutBuilder` nem állhat): keskeny kijelzőn, nagyításnál és hosszú szavas
/// nyelveken (német, finn) a „Syst/em”, „Järje/stel/mä” törés helyett.
class OneLineLabel extends StatelessWidget {
  const OneLineLabel(this.text, {super.key, this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => FittedBox(
    fit: BoxFit.scaleDown,
    child: Text(text, style: style, maxLines: 1, softWrap: false),
  );
}

/// Több soros szöveg, amely szó közben nem tör: ha a leghosszabb szava nem fér el egy
/// sorban, a betű annyival kisebb, hogy elférjen (legfeljebb [minScale]-ig; ennél
/// hosszabb szónál a szokásos tördelés marad). A „Marktkapitalisier/ung” helyett.
class WordFitText extends StatelessWidget {
  const WordFitText(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.minScale = 0.7,
  });

  final String text;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final double minScale;

  /// A [text] leghosszabb szavának szélessége a [style] betűjével.
  static double widestWord(String text, TextStyle style, TextDirection direction, TextScaler scaler) {
    var widest = 0.0;
    for (final word in text.split(RegExp(r'\s+'))) {
      if (word.isEmpty) continue;
      final painter = TextPainter(
        text: TextSpan(text: word, style: style),
        textDirection: direction,
        textScaler: scaler,
        maxLines: 1,
      )..layout();
      widest = math.max(widest, painter.width);
      painter.dispose();
    }
    return widest;
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final base = DefaultTextStyle.of(context).style.merge(style);
      var scale = 1.0;
      if (constraints.maxWidth.isFinite && constraints.maxWidth > 0) {
        final widest = widestWord(text, base, Directionality.of(context), MediaQuery.textScalerOf(context));
        // Egy kis ráhagyás: a kerekítés miatt a pontosan kitöltő szó is törne.
        if (widest > constraints.maxWidth - 0.5) scale = math.max(minScale, (constraints.maxWidth - 0.5) / widest);
      }
      final shown = scale == 1 ? style : base.copyWith(fontSize: (base.fontSize ?? 14) * scale);
      return Text(text, style: shown, maxLines: maxLines, overflow: overflow, textAlign: textAlign);
    },
  );
}
