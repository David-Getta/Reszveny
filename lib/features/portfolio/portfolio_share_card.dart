import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../app_services.dart';
import '../../core/share/share_text.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'portfolio_valuation.dart';

/// A legnagyobb pozíciók súlya a részvények értékében (a készpénz nélkül), a
/// legnagyobb elöl; legfeljebb [count] darab.
List<({String symbol, double weight})> topHoldings(PortfolioSnapshot s, {int count = 5}) {
  if (s.value <= 0) return const [];
  final rows = [
    for (final r in s.rows)
      if (r.inTotal) (symbol: r.position.symbol, weight: r.value! * r.rate! / s.value),
  ]..sort((a, b) => b.weight.compareTo(a.weight));
  return rows.take(count).toList();
}

/// Megosztható kép a portfólió teljesítményéről (4:5): nyereség százalékban,
/// éves hozam, mai mozgás és a legnagyobb pozíciók súlya – összegek nélkül, hogy
/// a vagyon ne derüljön ki. Mindig sötét témában, mint az elemzés kártyája.
class PortfolioShareCard extends StatelessWidget {
  const PortfolioShareCard({super.key, required this.snapshot, required this.fmt, required this.date});

  /// A kártya logikai mérete; 3× nagyítással 1080×1350 képpont.
  static const size = Size(360, 450);

  final PortfolioSnapshot snapshot;
  final Fmt fmt;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = AppTheme.build(Brightness.dark);
    final p = AppPalette.dark;
    final s = snapshot;
    final top = topHoldings(s);
    final colors = [p.accent, p.positive, const Color(0xFF6C8EF5), const Color(0xFFE0B341), const Color(0xFFB07CE8)];
    Widget figure(String label, String value, Color color) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: p.muted, fontSize: 11)),
        Text(
          value,
          style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ],
    );
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
                      l10n.portfolioShareHeading,
                      style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
                    ),
                  ),
                  Text(fmt.date(date), style: TextStyle(color: p.muted, fontSize: 12)),
                ],
              ),
              const SizedBox(height: 14),
              Text(l10n.portfolioGainLoss, style: TextStyle(color: p.muted, fontSize: 12)),
              Text(
                fmt.percent(s.gainPercent, withSign: true),
                key: const ValueKey('share-gain'),
                style: TextStyle(color: gainColor(p, s.gain), fontSize: 46, fontWeight: FontWeight.w800, height: 1.15),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 28,
                runSpacing: 8,
                children: [
                  if (s.annualReturn case final r?)
                    figure(
                      l10n.portfolioAnnualReturn,
                      l10n.portfolioPerYear(fmt.percent(r * 100, withSign: true)),
                      gainColor(p, r),
                    ),
                  if (s.dayGainPercent case final d?)
                    figure(l10n.portfolioToday, fmt.percent(d, withSign: true), gainColor(p, d)),
                ],
              ),
              const SizedBox(height: 26),
              Row(
                children: [
                  Expanded(
                    child: Text(l10n.portfolioTopHoldings, style: TextStyle(color: p.muted, fontSize: 12)),
                  ),
                  Text(l10n.portfolioPositionsCount(s.rows.length), style: TextStyle(color: p.muted, fontSize: 12)),
                ],
              ),
              const SizedBox(height: 6),
              for (final (i, h) in top.indexed)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 64,
                        child: Text(
                          h.symbol,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                        ),
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: h.weight.clamp(0.0, 1.0),
                            minHeight: 10,
                            backgroundColor: p.surface,
                            color: colors[i % colors.length],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 52,
                        child: Text(
                          fmt.percent(h.weight * 100, decimals: 0),
                          textAlign: TextAlign.end,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              const Spacer(),
              Row(
                children: [
                  Image.asset('assets/branding/logo_128.png', width: 22, height: 22),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      l10n.shareCardFooter,
                      style: theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(l10n.shareNotAdvice, style: TextStyle(color: p.muted, fontSize: 10)),
            ],
          ),
        ),
      ),
    );
  }
}

/// A teljesítmény szövegként (ugyanazok a százalékok, mint a képen).
String portfolioShareText(PortfolioSnapshot s, AppLocalizations l10n, Fmt fmt) {
  final b = StringBuffer('${l10n.portfolioShareHeading} · ${l10n.shareCardFooter}\n');
  b.writeln('${l10n.portfolioGainLoss}: ${fmt.percent(s.gainPercent, withSign: true)}');
  if (s.annualReturn case final r?) {
    b.writeln('${l10n.portfolioAnnualReturn}: ${l10n.portfolioPerYear(fmt.percent(r * 100, withSign: true))}');
  }
  final top = topHoldings(s);
  if (top.isNotEmpty) {
    b.writeln(
      '${l10n.portfolioTopHoldings}: ${top.map((h) => '${h.symbol} ${fmt.percent(h.weight * 100, decimals: 0)}').join(', ')}',
    );
  }
  b.write(l10n.shareNotAdvice);
  return b.toString();
}

/// A megosztó lap: a kártya előnézete, alatta a megjegyzés (csak százalékok),
/// képként vagy szövegként osztható meg.
Future<void> showPortfolioShare(BuildContext context, PortfolioSnapshot snapshot) => showModalBottomSheet<void>(
  context: context,
  isScrollControlled: true,
  showDragHandle: true,
  builder: (_) => _PortfolioShareSheet(snapshot: snapshot),
);

class _PortfolioShareSheet extends StatefulWidget {
  const _PortfolioShareSheet({required this.snapshot});

  final PortfolioSnapshot snapshot;

  @override
  State<_PortfolioShareSheet> createState() => _PortfolioShareSheetState();
}

class _PortfolioShareSheetState extends State<_PortfolioShareSheet> {
  final _boundary = GlobalKey();
  final _date = DateTime.now();
  bool _busy = false;

  Future<Uint8List?> _capture() async {
    final box = _boundary.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    final image = await box.toImage(pixelRatio: 3);
    final data = await image.toByteData(format: ui.ImageByteFormat.png);
    image.dispose();
    return data?.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.portfolioShare, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            FittedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: RepaintBoundary(
                  key: _boundary,
                  child: PortfolioShareCard(snapshot: widget.snapshot, fmt: fmt, date: _date),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.portfolioShareNote,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted),
            ),
            const SizedBox(height: 12),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                Builder(
                  builder: (btn) => FilledButton.icon(
                    key: const ValueKey('portfolio-share-image'),
                    onPressed: _busy
                        ? null
                        : () async {
                            final origin = shareOriginOf(btn);
                            AppServices.of(context).telemetry.track('portfolio_share_image');
                            setState(() => _busy = true);
                            try {
                              final png = await _capture();
                              if (png != null) {
                                await shareImage(
                                  png,
                                  fileName: 'whatstock-portfolio.png',
                                  text: l10n.portfolioShareHeading,
                                  subject: '${l10n.portfolioShareHeading} · WhatStock',
                                  origin: origin,
                                );
                              }
                            } finally {
                              if (mounted) setState(() => _busy = false);
                            }
                          },
                    icon: _busy
                        ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
                        : const Icon(Icons.image_outlined, size: 18),
                    label: Text(l10n.shareAsImage),
                  ),
                ),
                Builder(
                  builder: (btn) => OutlinedButton.icon(
                    key: const ValueKey('portfolio-share-text'),
                    onPressed: _busy
                        ? null
                        : () => shareText(
                            portfolioShareText(widget.snapshot, l10n, fmt),
                            subject: '${l10n.portfolioShareHeading} · WhatStock',
                            origin: shareOriginOf(btn),
                          ),
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
