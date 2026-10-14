import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../app_services.dart';
import '../../../core/models/stock_report.dart';
import '../../../core/share/share_text.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';
import 'outlook_view.dart';

/// Megosztható kép-kártya egy elemzésről (4:5, Instagramra és üzenetbe is jó):
/// fejléc, piaci hangulat, a három forgatókönyv ársávval – a legvalószínűbb
/// kiemelve –, alul a WhatStock logó és a „nem befektetési tanács” sor.
/// Mindig sötét témában készül, hogy a márka egységes legyen.
class AnalysisShareCard extends StatelessWidget {
  const AnalysisShareCard({super.key, required this.report, required this.companyName, required this.fmt});

  /// A kártya logikai mérete; 3× nagyítással 1080×1350 képpont.
  static const size = Size(360, 450);

  final StockReport report;
  final String companyName;
  final Fmt fmt;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = AppTheme.build(Brightness.dark);
    final p = AppPalette.dark;
    final o = report.outlook;
    final ccy = o?.currency;
    final ml = o?.mostLikely;
    Color colorOf(ScenarioKind k) => switch (k) {
      ScenarioKind.bull => p.positive,
      ScenarioKind.base => p.accent,
      ScenarioKind.bear => p.negative,
    };
    final name = companyName.isEmpty || companyName == report.symbol ? report.symbol : companyName;
    return Theme(
      data: theme,
      child: DefaultTextStyle(
        style: theme.textTheme.bodyMedium!.copyWith(color: p.text),
        child: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 14),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [p.surfaceRaised, p.background],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(report.symbol, style: theme.textTheme.labelLarge?.copyWith(color: p.accent)),
                ],
              ),
              if (o?.currentPrice case final cur?)
                Text(l10n.outlookCurrentPrice(fmt.price(cur, ccy)), style: TextStyle(color: p.muted, fontSize: 12)),
              const SizedBox(height: 12),
              Text(
                report.headline,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium?.copyWith(height: 1.3, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 14),
              if (o?.marketMood case final mood?) MarketMoodBar(mood: mood),
              const SizedBox(height: 12),
              if (o != null)
                for (final s in o.scenarios)
                  Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: colorOf(s.kind).withValues(alpha: identical(s, ml) ? 0.20 : 0.08),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: colorOf(s.kind).withValues(alpha: identical(s, ml) ? 0.7 : 0.25)),
                    ),
                    child: Row(
                      children: [
                        if (identical(s, ml)) ...[
                          Icon(Icons.my_location_rounded, size: 14, color: colorOf(s.kind)),
                          const SizedBox(width: 6),
                        ],
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                scenarioLabel(l10n, s.kind),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: colorOf(s.kind), fontWeight: FontWeight.w700, fontSize: 12),
                              ),
                              if (s.priceLow != null && s.priceHigh != null)
                                Text(
                                  '${fmt.price(s.priceLow, null)}–${fmt.price(s.priceHigh, ccy)}',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${s.probability.round()}%',
                          style: TextStyle(color: colorOf(s.kind), fontWeight: FontWeight.w800, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
              // A legvalószínűbb forgatókönyv indoklása, ha elfér.
              if (o != null && o.mostLikelyReason.isNotEmpty) ...[
                const SizedBox(height: 4),
                Flexible(
                  child: Text(
                    o.mostLikelyReason,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: p.muted, fontSize: 12, height: 1.35),
                  ),
                ),
              ],
              const Spacer(),
              Row(
                children: [
                  Image.asset('assets/branding/logo_128.png', width: 22, height: 22),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      l10n.shareCardFooter,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(fmt.date(report.generatedAt), style: TextStyle(color: p.muted, fontSize: 11)),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                l10n.shareCardDisclaimer,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: p.muted, fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Megosztás: előnézet a kártyáról, alatta „Megosztás képként” és
/// „Megosztás szövegként”.
Future<void> showShareSheet(
  BuildContext context, {
  required StockReport report,
  required String companyName,
  required Fmt fmt,
  required String text,
}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (context) => _ShareSheet(report: report, companyName: companyName, fmt: fmt, text: text),
  );
}

class _ShareSheet extends StatefulWidget {
  const _ShareSheet({required this.report, required this.companyName, required this.fmt, required this.text});

  final StockReport report;
  final String companyName;
  final Fmt fmt;
  final String text;

  @override
  State<_ShareSheet> createState() => _ShareSheetState();
}

class _ShareSheetState extends State<_ShareSheet> {
  final _boundary = GlobalKey();
  bool _busy = false;

  String get _subject => '${widget.report.symbol} · WhatStock';

  Future<void> _shareImage(BuildContext buttonContext) async {
    final origin = shareOriginOf(buttonContext);
    AppServices.of(context).telemetry.track('share_image');
    setState(() => _busy = true);
    try {
      final box = _boundary.currentContext!.findRenderObject()! as RenderRepaintBoundary;
      final image = await box.toImage(pixelRatio: 3);
      final data = await image.toByteData(format: ui.ImageByteFormat.png);
      image.dispose();
      if (data == null) return;
      await shareImage(
        data.buffer.asUint8List(),
        fileName: 'whatstock-${widget.report.symbol.toLowerCase()}.png',
        text: widget.report.headline,
        subject: _subject,
        origin: origin,
      );
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.shareAnalysisTitle, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            // Az előnézet kicsinyítve fér el telefonon is; a kép teljes méretben készül.
            FittedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: RepaintBoundary(
                  key: _boundary,
                  child: AnalysisShareCard(report: widget.report, companyName: widget.companyName, fmt: widget.fmt),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                Builder(
                  builder: (btn) => FilledButton.icon(
                    key: const ValueKey('share-image'),
                    onPressed: _busy ? null : () => _shareImage(btn),
                    icon: _busy
                        ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
                        : const Icon(Icons.image_outlined, size: 18),
                    label: Text(l10n.shareAsImage),
                  ),
                ),
                Builder(
                  builder: (btn) => OutlinedButton.icon(
                    key: const ValueKey('share-text'),
                    onPressed: () {
                      AppServices.of(context).telemetry.track('share_text');
                      shareText(widget.text, subject: _subject, origin: shareOriginOf(btn));
                    },
                    icon: Icon(Icons.notes_rounded, size: 18, color: p.accent),
                    label: Text(l10n.shareAsText),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
