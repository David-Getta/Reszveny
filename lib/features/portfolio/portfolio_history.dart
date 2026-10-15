import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/price_history.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../stock_detail/widgets/price_chart.dart';
import 'portfolio_store.dart';
import 'portfolio_valuation.dart';

/// A portfólió értékének története napi záróárakból: minden napon a már
/// megvett darabok (a vétel dátumától) × az aznapi (vagy utolsó ismert) záróár,
/// átváltva az összesítés pénznemébe (a mai árfolyammal). Dátum nélküli vétel
/// az elejétől számít. `null`, ha nincs legalább két pont.
PriceHistory? portfolioValueHistory(
  List<PortfolioLot> lots,
  Map<String, PriceHistory> histories,
  double? Function(String currency) rate,
) {
  DateTime day(DateTime t) => DateTime(t.year, t.month, t.day);
  final usable = [
    for (final l in lots)
      if (histories[l.symbol]?.points.isNotEmpty == true && rate(l.currency) != null) l,
  ];
  if (usable.isEmpty) return null;
  final days = <DateTime>{
    for (final s in {for (final l in usable) l.symbol})
      for (final p in histories[s]!.points) day(p.time),
  }.toList()..sort();
  final dated = [for (final l in usable) l.date].whereType<DateTime>();
  final start = usable.any((l) => l.date == null) || dated.isEmpty
      ? days.first
      : dated.map(day).reduce((a, b) => a.isBefore(b) ? a : b);

  // Tickerenként az adott napig utolsó ismert záróár (előre haladó mutatóval).
  final idx = <String, int>{};
  final last = <String, double>{};
  final points = <PricePoint>[];
  for (final d in days) {
    for (final s in histories.keys) {
      final pts = histories[s]!.points;
      var i = idx[s] ?? 0;
      while (i < pts.length && !day(pts[i].time).isAfter(d)) {
        last[s] = pts[i].close;
        i++;
      }
      idx[s] = i;
    }
    if (d.isBefore(start)) continue;
    var value = 0.0;
    var any = false;
    for (final l in usable) {
      if (l.date != null && day(l.date!).isAfter(d)) continue;
      final close = last[l.symbol];
      if (close == null) continue;
      value += l.quantity * close * rate(l.currency)!;
      any = true;
    }
    if (any) points.add(PricePoint(time: d, close: value));
  }
  return points.length < 2 ? null : PriceHistory(symbol: 'PORTFOLIO', points: points);
}

/// „Értékalakulás” kártya a portfólió oldalán: a teljes érték grafikonja
/// időtáv-választóval, a befektetett összeg szaggatott vonalával.
class PortfolioHistoryCard extends StatefulWidget {
  const PortfolioHistoryCard({super.key, required this.snapshot});

  final PortfolioSnapshot snapshot;

  @override
  State<PortfolioHistoryCard> createState() => _PortfolioHistoryCardState();
}

class _PortfolioHistoryCardState extends State<PortfolioHistoryCard> {
  String? _key;
  Future<PriceHistory?>? _future;

  Future<PriceHistory?> _load(AppServices services) async {
    final lots = services.portfolio.lots;
    final histories = <String, PriceHistory>{};
    await Future.wait([
      for (final s in {for (final l in lots) l.symbol})
        services.marketData.history(s).then((h) => histories[s] = h).then((_) {}, onError: (Object _) {}),
    ]);
    final rates = <String, double>{for (final r in widget.snapshot.rows) r.position.currency: ?r.rate};
    return portfolioValueHistory(lots, histories, (c) => c == widget.snapshot.currency ? 1.0 : rates[c]);
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final key = '${widget.snapshot.currency}|${services.portfolio.lots.map((l) => l.id).join(',')}';
    if (key != _key) {
      _key = key;
      _future = _load(services);
    }
    return FutureBuilder<PriceHistory?>(
      future: _future,
      builder: (context, snap) {
        final h = snap.data;
        if (h == null) return const SizedBox.shrink();
        return Card(
          key: const ValueKey('portfolio-history'),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.portfolioHistory, style: theme.textTheme.titleMedium),
                const SizedBox(height: 12),
                PriceChart(
                  history: h,
                  fmt: fmt,
                  currency: widget.snapshot.currency,
                  showChange: false,
                  levels: [ChartLevel(price: widget.snapshot.cost, label: l10n.portfolioInvested, color: p.muted)],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
