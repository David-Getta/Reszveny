import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import 'csv_dialog.dart';
import 'portfolio_store.dart';
import 'portfolio_valuation.dart';

/// Az összesítés újraszámolása, ha a vételek vagy a megjelenítési pénznem
/// változik; a [builder] a legutóbbi pillanatképet kapja (töltés közben is).
class PortfolioSnapshotBuilder extends StatefulWidget {
  const PortfolioSnapshotBuilder({super.key, required this.builder});

  final Widget Function(BuildContext context, PortfolioSnapshot? snapshot, Future<void> Function() refresh) builder;

  @override
  State<PortfolioSnapshotBuilder> createState() => _PortfolioSnapshotBuilderState();
}

class _PortfolioSnapshotBuilderState extends State<PortfolioSnapshotBuilder> {
  String? _key;
  Future<PortfolioSnapshot>? _future;
  PortfolioSnapshot? _last;

  /// Újratöltés: a következő képkockában indul az új lekérés, azt várjuk meg.
  Future<void> _refresh() async {
    setState(() => _key = null);
    await WidgetsBinding.instance.endOfFrame;
    await _future;
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final locale = Localizations.localeOf(context);
    return ListenableBuilder(
      listenable: Listenable.merge([services.portfolio, services.preferences]),
      builder: (context, _) {
        final positions = services.portfolio.positions;
        final currency = PortfolioSnapshot.totalCurrency(positions, services.displayCurrency(locale));
        final key = '$currency|${services.portfolio.lots.map((l) => l.id).join(',')}';
        if (key != _key) {
          _key = key;
          _future = PortfolioSnapshot.load(
            positions,
            marketData: services.marketData,
            fx: services.fx,
            currency: currency,
          ).then((s) => _last = s);
        }
        return FutureBuilder<PortfolioSnapshot>(
          future: _future,
          builder: (context, snap) => widget.builder(context, snap.data ?? _last, _refresh),
        );
      },
    );
  }
}

/// A portfólió oldala: összérték, napi változás, nyereség/veszteség,
/// megoszlás és a pozíciók. A sorra koppintva megnyílik a részvény.
class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    return Scaffold(
      appBar: desktopAppBar(
        context,
        title: Text(l10n.portfolio),
        hasSidebar: MediaQuery.sizeOf(context).width >= 860,
        actions: const [PortfolioCsvMenu(), SizedBox(width: 4)],
      ),
      body: ListenableBuilder(
        listenable: services.portfolio,
        builder: (context, _) {
          if (services.portfolio.isEmpty) return _EmptyPortfolio();
          return PortfolioSnapshotBuilder(
            builder: (context, snapshot, refresh) => RefreshIndicator(
              onRefresh: refresh,
              child: snapshot == null
                  ? ListView(
                      children: const [
                        SizedBox(height: 120),
                        Center(child: CircularProgressIndicator()),
                      ],
                    )
                  : _PortfolioBody(snapshot: snapshot, onOpenSymbol: onOpenSymbol),
            ),
          );
        },
      ),
    );
  }
}

class _EmptyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.pie_chart_outline_rounded, size: 44, color: p.muted),
            const SizedBox(height: 12),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 360),
              child: Text(
                l10n.portfolioEmpty,
                textAlign: TextAlign.center,
                style: TextStyle(color: p.muted),
              ),
            ),
            const SizedBox(height: 12),
            TextButton.icon(
              key: const ValueKey('portfolio-empty-import'),
              onPressed: () => showPortfolioImport(context),
              icon: const Icon(Icons.file_download_outlined, size: 18),
              label: Text(l10n.portfolioImport),
            ),
          ],
        ),
      ),
    );
  }
}

/// Pozitív/negatív értékek színe.
Color gainColor(AppPalette p, double? v) => v == null || v == 0 ? p.muted : (v > 0 ? p.positive : p.negative);

class _PortfolioBody extends StatelessWidget {
  const _PortfolioBody({required this.snapshot, required this.onOpenSymbol});

  final PortfolioSnapshot snapshot;
  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final s = snapshot;
    final ccy = s.currency;

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      children: [
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 760),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l10n.portfolioTotalValue, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                        const SizedBox(height: 4),
                        Text(fmt.money(s.value, ccy), style: theme.textTheme.headlineMedium),
                        const SizedBox(height: 14),
                        Wrap(
                          spacing: 28,
                          runSpacing: 10,
                          children: [
                            _Stat(
                              label: l10n.portfolioToday,
                              value: fmt.money(s.dayGain, ccy, withSign: true),
                              sub: fmt.percent(s.dayGainPercent, withSign: true),
                              color: gainColor(p, s.dayGain),
                            ),
                            _Stat(
                              label: l10n.portfolioGainLoss,
                              value: fmt.money(s.gain, ccy, withSign: true),
                              sub: fmt.percent(s.gainPercent, withSign: true),
                              color: gainColor(p, s.gain),
                            ),
                            _Stat(label: l10n.portfolioInvested, value: fmt.money(s.cost, ccy)),
                            if (s.annualDividend > 0)
                              _Stat(
                                key: const ValueKey('portfolio-dividends'),
                                label: l10n.portfolioDividends,
                                value: fmt.money(s.annualDividend, ccy),
                                sub: l10n.portfolioDividendYield(fmt.percent(s.dividendYield)),
                              ),
                          ],
                        ),
                        if (s.annualDividend > 0) ...[
                          const SizedBox(height: 10),
                          Text(l10n.portfolioDividendNote, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                        ],
                      ],
                    ),
                  ),
                ),
                if (s.rows.where((r) => r.weight > 0).length > 1)
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(l10n.portfolioAllocation, style: theme.textTheme.titleMedium),
                          const SizedBox(height: 12),
                          AllocationBar(rows: s.rows, fmt: fmt),
                        ],
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 16, 4, 8),
                  child: Text(l10n.portfolioPositions, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                ),
                Card(
                  child: Column(
                    children: [
                      for (final (i, r) in s.rows.indexed) ...[
                        if (i > 0) const Divider(height: 1),
                        _PositionTile(row: r, fmt: fmt, onOpenSymbol: onOpenSymbol),
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                if (s.hasExcluded)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: Text(l10n.portfolioExcluded, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(l10n.portfolioLocalNote, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({super.key, required this.label, required this.value, this.sub, this.color});

  final String label;
  final String value;
  final String? sub;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
        const SizedBox(height: 2),
        Text(
          value,
          style: theme.textTheme.titleSmall?.copyWith(color: color, fontWeight: FontWeight.w700),
        ),
        if (sub != null) Text(sub!, style: theme.textTheme.bodySmall?.copyWith(color: color)),
      ],
    );
  }
}

/// A megoszlás színei sorrendben (a legnagyobb pozíció kapja az elsőt).
List<Color> allocationColors(AppPalette p) => [
  p.accent,
  p.positive,
  const Color(0xFF6A9BCC),
  const Color(0xFFB58BD6),
  const Color(0xFFD4A84A),
  const Color(0xFF5FB3A8),
  p.muted,
];

/// Vízszintes, egymásra rakott sáv a pozíciók súlyával, alatta jelmagyarázat.
class AllocationBar extends StatelessWidget {
  const AllocationBar({super.key, required this.rows, required this.fmt});

  final List<PositionValue> rows;
  final Fmt fmt;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final colors = allocationColors(p);
    final weighted = rows.where((r) => r.weight > 0).toList();
    Color colorAt(int i) => colors[i < colors.length - 1 ? i : colors.length - 1];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: SizedBox(
            height: 14,
            child: Row(
              children: [
                for (final (i, r) in weighted.indexed)
                  Expanded(
                    flex: (r.weight * 1000).round().clamp(1, 1000),
                    child: Container(
                      margin: EdgeInsetsDirectional.only(end: i < weighted.length - 1 ? 2 : 0),
                      color: colorAt(i),
                    ),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 14,
          runSpacing: 6,
          children: [
            for (final (i, r) in weighted.indexed)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(color: colorAt(i), borderRadius: BorderRadius.circular(3)),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '${r.position.symbol} ${fmt.percent(r.weight * 100, decimals: 1)}',
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}

class _PositionTile extends StatelessWidget {
  const _PositionTile({required this.row, required this.fmt, required this.onOpenSymbol});

  final PositionValue row;
  final Fmt fmt;
  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final pos = row.position;
    final ccy = pos.currency;
    return InkWell(
      onTap: () => onOpenSymbol(StockCandidate(symbol: pos.symbol, companyName: pos.symbol, confidence: 1)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 4, 12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: p.accent.withValues(alpha: 0.16),
              foregroundColor: p.accent,
              child: Text(
                pos.symbol.substring(0, pos.symbol.length.clamp(0, 2)),
                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pos.symbol, style: const TextStyle(fontWeight: FontWeight.w700)),
                  Text(
                    '${fmt.number(pos.quantity, decimals: pos.quantity == pos.quantity.roundToDouble() ? 0 : 4)} × '
                    '${fmt.money(row.price, ccy)} · ${l10n.portfolioAvgCost(fmt.money(pos.averageCost, ccy, showCurrency: false))}',
                    style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                  ),
                  if (row.annualDividend case final d?)
                    Text(
                      l10n.positionDividend(fmt.money(d, ccy)),
                      style: theme.textTheme.bodySmall?.copyWith(color: p.positive),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(fmt.money(row.value, ccy), style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(
                  '${fmt.money(row.gain, ccy, withSign: true, showCurrency: false)} (${fmt.percent(row.gainPercent, withSign: true)})',
                  style: theme.textTheme.bodySmall?.copyWith(color: gainColor(p, row.gain)),
                ),
              ],
            ),
            IconButton(
              tooltip: l10n.portfolioPurchases,
              icon: Icon(Icons.more_vert_rounded, color: p.muted),
              onPressed: () => showPurchasesSheet(context, pos),
            ),
          ],
        ),
      ),
    );
  }
}

/// Egy pozíció vételei törlés-gombbal.
Future<void> showPurchasesSheet(BuildContext context, Position position) {
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    builder: (context) {
      final l10n = AppLocalizations.of(context);
      final services = AppServices.of(context);
      final p = AppPalette.of(context);
      final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
      return ListenableBuilder(
        listenable: services.portfolio,
        builder: (context, _) {
          final lots = services.portfolio.lots.where((l) => l.symbol == position.symbol).toList()
            ..sort((a, b) => (b.date ?? DateTime(0)).compareTo(a.date ?? DateTime(0)));
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                  child: Text(
                    '${position.symbol} · ${l10n.portfolioPurchases}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                for (final lot in lots)
                  ListTile(
                    leading: Icon(Icons.receipt_long_outlined, color: p.muted),
                    title: Text(
                      '${fmt.number(lot.quantity, decimals: lot.quantity == lot.quantity.roundToDouble() ? 0 : 4)} × '
                      '${fmt.money(lot.price, lot.currency)}',
                    ),
                    subtitle: lot.date == null ? null : Text(fmt.date(lot.date)),
                    trailing: TextButton.icon(
                      onPressed: () => services.portfolio.remove(lot.id),
                      icon: const Icon(Icons.delete_outline_rounded, size: 18),
                      label: Text(l10n.portfolioRemove),
                      style: TextButton.styleFrom(foregroundColor: p.negative),
                    ),
                  ),
                if (lots.isEmpty) Padding(padding: const EdgeInsets.all(20), child: Text(l10n.portfolioEmpty)),
                const SizedBox(height: 12),
              ],
            ),
          );
        },
      );
    },
  );
}

/// Tömör összesítő a kezdőképernyőn (csak ha van pozíció); koppintásra a
/// portfólió oldal nyílik meg.
class PortfolioSummaryCard extends StatelessWidget {
  const PortfolioSummaryCard({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return ListenableBuilder(
      listenable: services.portfolio,
      builder: (context, _) {
        if (services.portfolio.isEmpty) return const SizedBox.shrink();
        return Padding(
          padding: const EdgeInsets.only(top: 24),
          child: PortfolioSnapshotBuilder(
            builder: (context, s, _) => Material(
              color: p.surface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: p.border),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () =>
                    Navigator.of(context)
                        .push(MaterialPageRoute<void>(builder: (_) => PortfolioPage(onOpenSymbol: onOpenSymbol))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      Icon(Icons.pie_chart_outline_rounded, color: p.accent),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(l10n.portfolio, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                            Text(
                              s == null ? '…' : fmt.money(s.value, s.currency),
                              style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            // A változások az érték alatt, hogy keskeny képernyőn se lógjanak ki.
                            if (s != null)
                              Wrap(
                                spacing: 12,
                                children: [
                                  Text(
                                    '${l10n.portfolioToday} ${fmt.percent(s.dayGainPercent, withSign: true)}',
                                    style: theme.textTheme.bodySmall?.copyWith(color: gainColor(p, s.dayGain)),
                                  ),
                                  Text(
                                    '${l10n.portfolioGainLoss} ${fmt.percent(s.gainPercent, withSign: true)}',
                                    style: theme.textTheme.bodySmall?.copyWith(color: gainColor(p, s.gain)),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(Icons.chevron_right_rounded, color: p.muted),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
