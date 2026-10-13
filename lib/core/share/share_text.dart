import 'package:flutter/widgets.dart';
import 'package:share_plus/share_plus.dart';

import '../models/stock_report.dart';

/// Szöveg megosztása a rendszer megosztás-menüjével (WhatsApp, Messenger,
/// e-mail…). Tesztben lecserélhető.
typedef ShareHandler = Future<void> Function(String text, {String? subject, Rect? origin});

ShareHandler shareText = (text, {subject, origin}) async {
  await SharePlus.instance.share(ShareParams(text: text, subject: subject, sharePositionOrigin: origin));
};

/// A megosztott elemzés szövege: cím, lényeg, az összefoglaló első bekezdése,
/// a kilátások pontjai és a jogi figyelmeztetés – mind a felhasználó nyelvén,
/// ahogy az elemzés készült.
String reportShareText(
  StockReport r, {
  required String companyName,
  required String generatedLine,
  required String disclaimer,
}) {
  final b = StringBuffer();
  final name = companyName.isEmpty || companyName == r.symbol ? r.symbol : '$companyName (${r.symbol})';
  b.writeln('$name · WhatStock');
  if (r.headline.isNotEmpty) {
    b
      ..writeln()
      ..writeln(r.headline);
  }
  final summary = r.sections.where((s) => s.kind == ReportSectionKind.summary).firstOrNull;
  final firstPara = summary?.paragraphs.firstOrNull;
  if (firstPara != null && firstPara.isNotEmpty) {
    b
      ..writeln()
      ..writeln(firstPara);
  }
  final outlook = r.sections.where((s) => s.kind == ReportSectionKind.outlook).firstOrNull;
  if (outlook != null && outlook.bullets.isNotEmpty) {
    b
      ..writeln()
      ..writeln(outlook.title);
    for (final bullet in outlook.bullets.take(4)) {
      b.writeln('• $bullet');
    }
  }
  b
    ..writeln()
    ..writeln(generatedLine)
    ..write(disclaimer);
  return b.toString();
}

/// A widget helye a képernyőn (iPadon és macOS-en a megosztás-menü ide nyílik).
Rect? shareOriginOf(BuildContext context) {
  final box = context.findRenderObject();
  if (box is! RenderBox || !box.hasSize) return null;
  return box.localToGlobal(Offset.zero) & box.size;
}
