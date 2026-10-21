import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/terms.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import 'add_lot_dialog.dart';
import 'csv_dialog.dart';
import 'dividends_card.dart';
import 'holdings_import.dart';
import 'portfolio_history.dart';
import 'portfolio_review_card.dart';
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
        final key = '$currency|${services.portfolio.lots.map((l) => l.id).join(',')}|${services.portfolio.cash}';
        if (key != _key) {
          _key = key;
          _future = PortfolioSnapshot.load(
            positions,
            marketData: services.marketData,
            fx: services.fx,
            currency: currency,
            closed: services.portfolio.closedPositions,
            cash: services.portfolio.cash,
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
            // Az első pozíciókhoz: képernyőkép a bróker-appból, vagy CSV.
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              children: [
                TextButton.icon(
                  key: const ValueKey('portfolio-empty-photo'),
                  onPressed: () => showHoldingsImport(context),
                  icon: const Icon(Icons.add_photo_alternate_outlined, size: 18),
                  label: Text(l10n.portfolioImportPhoto),
                ),
                TextButton.icon(
                  key: const ValueKey('portfolio-empty-import'),
                  onPressed: () => showPortfolioImport(context),
                  icon: const Icon(Icons.file_download_outlined, size: 18),
                  label: Text(l10n.portfolioImport),
                ),
              ],
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
                        Text(
                          s.unknown ? l10n.notAvailable : fmt.money(s.totalValue, ccy),
                          style: theme.textTheme.headlineMedium,
                        ),
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
                            if (s.cash > 0)
                              _Stat(
                                key: const ValueKey('portfolio-cash'),
                                label: l10n.portfolioCash,
                                value: fmt.money(s.cash, ccy),
                              ),
                            if (s.annualReturn case final r?)
                              Tooltip(
                                message: l10n.portfolioAnnualReturnHint,
                                triggerMode: TooltipTriggerMode.tap,
                                showDuration: const Duration(seconds: 6),
                                child: _Stat(
                                  key: const ValueKey('portfolio-annual-return'),
                                  label: l10n.portfolioAnnualReturn,
                                  value: l10n.portfolioPerYear(fmt.percent(r * 100, withSign: true)),
                                  color: gainColor(p, r),
                                  info: true,
                                ),
                              ),
                            if (s.realized != 0 || s.closed.isNotEmpty)
                              _Stat(
                                key: const ValueKey('portfolio-realized'),
                                label: l10n.portfolioRealized,
                                value: fmt.money(s.realized, ccy, withSign: true),
                                color: gainColor(p, s.realized),
                              ),
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
                        if (!s.unknown) _GoalBar(snapshot: s, fmt: fmt),
                      ],
                    ),
                  ),
                ),
                if (s.rows.where((r) => r.weight > 0).length > 1) AllocationCard(snapshot: s, fmt: fmt),
                PortfolioHistoryCard(snapshot: s),
                PortfolioReviewCard(snapshot: s),
                if (s.rows.isNotEmpty) _PositionsSection(snapshot: s, fmt: fmt, onOpenSymbol: onOpenSymbol),
                if (s.realizedByYear.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 16, 4, 8),
                    child: Text(
                      l10n.portfolioRealizedByYear,
                      style: theme.textTheme.labelLarge?.copyWith(color: p.muted),
                    ),
                  ),
                  Card(
                    key: const ValueKey('portfolio-realized-years'),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (final e
                              in (s.realizedByYear.entries.toList()
                                ..sort((a, b) => (b.key ?? 0).compareTo(a.key ?? 0))))
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  Expanded(child: Text(e.key == null ? l10n.notAvailable : '${e.key}')),
                                  Text(
                                    fmt.money(e.value, ccy, withSign: true),
                                    style: TextStyle(color: gainColor(p, e.value), fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          const SizedBox(height: 4),
                          Text(l10n.portfolioRealizedHint, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                        ],
                      ),
                    ),
                  ),
                ],
                DividendsCard(currency: ccy),
                if (s.closed.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 16, 4, 8),
                    child: Text(l10n.portfolioClosed, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                  ),
                  Card(
                    key: const ValueKey('portfolio-closed'),
                    child: Column(
                      children: [
                        for (final (i, c) in s.closed.indexed) ...[
                          if (i > 0) const Divider(height: 1),
                          ListTile(
                            title: Text(c.position.symbol, style: const TextStyle(fontWeight: FontWeight.w700)),
                            subtitle: Text(l10n.portfolioClosedNote),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  fmt.money(c.realized, ccy, withSign: true),
                                  style: TextStyle(color: gainColor(p, c.realized), fontWeight: FontWeight.w600),
                                ),
                                IconButton(
                                  tooltip: l10n.portfolioTransactions,
                                  icon: Icon(Icons.more_vert_rounded, color: p.muted),
                                  onPressed: () => showPurchasesSheet(context, c.position),
                                ),
                              ],
                            ),
                            onTap: () => onOpenSymbol(
                              StockCandidate(symbol: c.position.symbol, companyName: c.position.symbol, confidence: 1),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
                const SizedBox(height: 12),
                if (s.hasExcluded)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: Text(
                      '${l10n.portfolioExcluded} '
                      '${l10n.portfolioNoPriceFor(s.rows.where((r) => !r.inTotal).map((r) => r.position.symbol).join(', '))}',
                      key: const ValueKey('portfolio-excluded'),
                      style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                    ),
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
  const _Stat({super.key, required this.label, required this.value, this.sub, this.color, this.info = false});

  final String label;
  final String value;
  final String? sub;
  final Color? color;

  /// Kis „i” ikon a címke mellett: koppintásra magyarázat jelenik meg.
  final bool info;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(label, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
            ),
            if (info) ...[const SizedBox(width: 4), Icon(Icons.info_outline_rounded, size: 14, color: p.muted)],
          ],
        ),
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

/// Mi szerint mutassuk a megoszlást.
enum AllocationBy { positions, sectors, countries, currencies }

/// Súlyok csoportosítva (legnagyobb elöl); a [label] adja a csoport nevét.
List<({String label, double weight})> groupWeights(List<PositionValue> rows, String Function(PositionValue) label) {
  final sums = <String, double>{};
  for (final r in rows.where((r) => r.weight > 0)) {
    sums.update(label(r), (v) => v + r.weight, ifAbsent: () => r.weight);
  }
  return [for (final e in sums.entries) (label: e.key, weight: e.value)]..sort((a, b) => b.weight.compareTo(a.weight));
}

/// A megoszlás kártyája: pozíciók, szektorok vagy devizák szerint.
class AllocationCard extends StatefulWidget {
  const AllocationCard({super.key, required this.snapshot, required this.fmt});

  final PortfolioSnapshot snapshot;
  final Fmt fmt;

  List<PositionValue> get rows => snapshot.rows;

  @override
  State<AllocationCard> createState() => _AllocationCardState();
}

class _AllocationCardState extends State<AllocationCard> {
  /// Pénznem szerint a készpénz a saját pénzneméhez adódik (nem külön sor).
  List<({String label, double weight})> _withCashByCurrency(List<({String label, double weight})> entries) {
    final s = widget.snapshot;
    if (s.cash <= 0 || s.totalValue <= 0) return entries;
    final sums = {for (final e in entries) e.label: e.weight};
    for (final e in s.cashByCurrency.entries) {
      sums.update(e.key, (v) => v + e.value / s.totalValue, ifAbsent: () => e.value / s.totalValue);
    }
    return [for (final e in sums.entries) (label: e.key, weight: e.value)]
      ..sort((a, b) => b.weight.compareTo(a.weight));
  }

  /// A készpénz is egy sor a megoszlásban (ha van).
  List<({String label, double weight})> _withCash(List<({String label, double weight})> entries) {
    final s = widget.snapshot;
    if (s.cash <= 0 || s.totalValue <= 0) return entries;
    final l10n = AppLocalizations.of(context);
    return [...entries, (label: l10n.portfolioCash, weight: s.cash / s.totalValue)]
      ..sort((a, b) => b.weight.compareTo(a.weight));
  }

  AllocationBy _by = AllocationBy.positions;
  Future<Map<String, ({String? sector, String? country})>>? _profiles;

  /// A szektor és az ország a cégprofilokból (egyszer töltjük be, a gyorsítótárból jön).
  Future<Map<String, ({String? sector, String? country})>> _loadProfiles() async {
    final market = AppServices.of(context).marketData;
    final symbols = {for (final r in widget.rows) r.position.symbol};
    final entries = await Future.wait([
      for (final s in symbols)
        market
            .profile(s)
            .then(
              (p) => MapEntry(s, (sector: p.sector, country: p.country)),
              onError: (Object _) =>
                  MapEntry<String, ({String? sector, String? country})>(s, (sector: null, country: null)),
            ),
    ]);
    return Map.fromEntries(entries);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.portfolioAllocation, style: theme.textTheme.titleMedium),
            const SizedBox(height: 10),
            // Keskeny képernyőn vízszintesen görgethető.
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SegmentedButton<AllocationBy>(
                key: const ValueKey('allocation-by'),
                showSelectedIcon: false,
                style: const ButtonStyle(visualDensity: VisualDensity.compact),
                segments: [
                  ButtonSegment(value: AllocationBy.positions, label: Text(l10n.allocationPositions)),
                  ButtonSegment(value: AllocationBy.sectors, label: Text(l10n.allocationSectors)),
                  ButtonSegment(value: AllocationBy.countries, label: Text(l10n.allocationCountries)),
                  ButtonSegment(value: AllocationBy.currencies, label: Text(l10n.allocationCurrencies)),
                ],
                selected: {_by},
                onSelectionChanged: (v) => setState(() {
                  _by = v.first;
                  if (_by == AllocationBy.sectors || _by == AllocationBy.countries) _profiles ??= _loadProfiles();
                }),
              ),
            ),
            const SizedBox(height: 12),
            switch (_by) {
              AllocationBy.positions => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AllocationBar(
                    entries: _withCash(groupWeights(widget.rows, (r) => r.position.symbol)),
                    fmt: widget.fmt,
                  ),
                  _Targets(snapshot: widget.snapshot, fmt: widget.fmt),
                ],
              ),
              AllocationBy.currencies => AllocationBar(
                entries: _withCashByCurrency(groupWeights(widget.rows, (r) => r.position.currency)),
                fmt: widget.fmt,
              ),
              AllocationBy.sectors || AllocationBy.countries => FutureBuilder(
                future: _profiles,
                builder: (context, snap) {
                  final profiles = snap.data;
                  if (profiles == null) return const LinearProgressIndicator();
                  return AllocationBar(
                    key: ValueKey('allocation-${_by.name}'),
                    entries: _withCash(
                      groupWeights(widget.rows, (r) {
                        final p = profiles[r.position.symbol];
                        final name = _by == AllocationBy.sectors
                            ? Terms.industry(p?.sector, locale)
                            : Terms.country(p?.country, locale);
                        return name ?? l10n.notAvailable;
                      }),
                    ),
                    fmt: widget.fmt,
                  );
                },
              ),
            },
          ],
        ),
      ),
    );
  }
}

/// Célarányok és újrasúlyozás: gomb a beállításukhoz, és ha vannak, pozíciónként
/// a mostani és a cél arány, valamint mennyit kellene venni vagy eladni.
class _Targets extends StatelessWidget {
  const _Targets({required this.snapshot, required this.fmt});

  final PortfolioSnapshot snapshot;
  final Fmt fmt;

  /// Ennél kisebb (százalékpontos) eltérésnél nincs teendő.
  static const tolerance = 1.0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final prefs = AppServices.of(context).preferences;
    return ListenableBuilder(
      listenable: prefs,
      builder: (context, _) {
        final plan = rebalancePlan(snapshot, prefs.targets);
        final sum = plan.fold<double>(0, (a, b) => a + b.target);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            TextButton.icon(
              key: const ValueKey('targets-edit'),
              style: TextButton.styleFrom(visualDensity: VisualDensity.compact, padding: EdgeInsets.zero),
              onPressed: () => showDialog<void>(
                context: context,
                builder: (_) => _TargetsDialog(rows: snapshot.rows, initial: prefs.targets),
              ),
              icon: const Icon(Icons.tune_rounded, size: 18),
              label: Text(l10n.targetsButton),
            ),
            if (plan.isNotEmpty) ...[
              for (final step in plan)
                Padding(
                  key: ValueKey('target-${step.symbol}'),
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  // Keskeny képernyőn (vagy hosszú összegnél) a teendő a sor alá tördelődik.
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 12,
                    runSpacing: 2,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 64,
                            child: Text(step.symbol, style: const TextStyle(fontWeight: FontWeight.w700)),
                          ),
                          Text(fmt.percent(step.current, decimals: 1), style: muted(theme, p)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Icon(Icons.arrow_forward_rounded, size: 12, color: p.muted),
                          ),
                          Text(fmt.percent(step.target, decimals: 1), style: muted(theme, p)),
                        ],
                      ),
                      Text(
                        (step.target - step.current).abs() < tolerance
                            ? l10n.rebalanceOk
                            : step.amount > 0
                            ? l10n.rebalanceBuy(fmt.money(step.amount, snapshot.currency))
                            : l10n.rebalanceSell(fmt.money(-step.amount, snapshot.currency)),
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: (step.target - step.current).abs() < tolerance
                              ? p.muted
                              : (step.amount > 0 ? p.positive : p.negative),
                        ),
                      ),
                    ],
                  ),
                ),
              if ((sum - 100).abs() >= 0.5)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(l10n.targetsSum(fmt.percent(sum, decimals: 1)), style: muted(theme, p)),
                ),
            ],
          ],
        );
      },
    );
  }

  static TextStyle? muted(ThemeData theme, AppPalette p) => theme.textTheme.bodySmall?.copyWith(color: p.muted);
}

/// A célarányok megadása pozíciónként (üres mező: nincs cél).
class _TargetsDialog extends StatefulWidget {
  const _TargetsDialog({required this.rows, required this.initial});

  final List<PositionValue> rows;
  final Map<String, double> initial;

  @override
  State<_TargetsDialog> createState() => _TargetsDialogState();
}

class _TargetsDialogState extends State<_TargetsDialog> {
  late final Map<String, TextEditingController> _fields = {
    for (final r in widget.rows)
      r.position.symbol: TextEditingController(
        text: switch (widget.initial[r.position.symbol.toUpperCase()]) {
          null => '',
          final v => v == v.roundToDouble() ? v.toStringAsFixed(0) : v.toString(),
        },
      ),
  };

  @override
  void dispose() {
    for (final c in _fields.values) {
      c.dispose();
    }
    super.dispose();
  }

  Map<String, double> get _values => {
    for (final e in _fields.entries)
      if (parseDecimal(e.value.text) case final v? when v > 0 && v <= 100) e.key: v,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final sum = _values.values.fold<double>(0, (a, b) => a + b);
    return AlertDialog(
      title: Text(l10n.targetsTitle),
      content: SizedBox(
        width: 380,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.targetsHint, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
              const SizedBox(height: 8),
              for (final r in widget.rows)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '${r.position.symbol}  (${fmt.percent(r.weight * 100, decimals: 1)})',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        child: TextField(
                          key: ValueKey('target-field-${r.position.symbol}'),
                          controller: _fields[r.position.symbol],
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          textAlign: TextAlign.end,
                          decoration: const InputDecoration(suffixText: '%', isDense: true),
                          onChanged: (_) => setState(() {}),
                        ),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 8),
              Text(
                l10n.targetsSum(fmt.percent(sum, decimals: 1)),
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: (sum - 100).abs() < 0.5 || sum == 0 ? p.muted : p.negative,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancel)),
        FilledButton(
          key: const ValueKey('targets-save'),
          onPressed: () async {
            final services = AppServices.of(context);
            await services.preferences.setTargets(_values);
            services.telemetry.track('targets_set');
            if (context.mounted) Navigator.of(context).pop();
          },
          child: Text(l10n.ok),
        ),
      ],
    );
  }
}

/// Vízszintes, egymásra rakott sáv a súlyokkal, alatta jelmagyarázat.
class AllocationBar extends StatelessWidget {
  const AllocationBar({super.key, required this.entries, required this.fmt});

  final List<({String label, double weight})> entries;
  final Fmt fmt;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final colors = allocationColors(p);
    final weighted = entries.where((e) => e.weight > 0).toList();
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
                for (final (i, e) in weighted.indexed)
                  Expanded(
                    flex: (e.weight * 1000).round().clamp(1, 1000),
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
            for (final (i, e) in weighted.indexed)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(color: colorAt(i), borderRadius: BorderRadius.circular(3)),
                  ),
                  const SizedBox(width: 6),
                  Text('${e.label} ${fmt.percent(e.weight * 100, decimals: 1)}', style: theme.textTheme.labelMedium),
                ],
              ),
          ],
        ),
      ],
    );
  }
}

/// Mi szerint rendezzük a pozíciókat.
enum PositionSort { weight, gain, today, name }

/// A pozíciók rendezése: súly (alapból), összes hozam %, mai mozgás %, ticker.
/// Az ár nélküli pozíciók a végére kerülnek.
List<PositionValue> sortPositions(List<PositionValue> rows, PositionSort sort) {
  double? today(PositionValue r) {
    final price = r.price, change = r.dayChange;
    return price == null || change == null || price - change == 0 ? null : change / (price - change) * 100;
  }

  int byValue(double? a, double? b) => a == null ? (b == null ? 0 : 1) : (b == null ? -1 : b.compareTo(a));
  return switch (sort) {
    PositionSort.weight => rows,
    PositionSort.gain => [...rows]..sort((a, b) => byValue(a.gainPercent, b.gainPercent)),
    PositionSort.today => [...rows]..sort((a, b) => byValue(today(a), today(b))),
    PositionSort.name => [...rows]..sort((a, b) => a.position.symbol.compareTo(b.position.symbol)),
  };
}

/// „Pozíciók” fejléc rendezés-menüvel és a pozíciók listája.
class _PositionsSection extends StatefulWidget {
  const _PositionsSection({required this.snapshot, required this.fmt, required this.onOpenSymbol});

  final PortfolioSnapshot snapshot;
  final Fmt fmt;
  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  State<_PositionsSection> createState() => _PositionsSectionState();
}

class _PositionsSectionState extends State<_PositionsSection> {
  PositionSort _sort = PositionSort.weight;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final rows = sortPositions(widget.snapshot.rows, _sort);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 8, 0, 0),
          child: Row(
            children: [
              Expanded(
                child: Text(l10n.portfolioPositions, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
              ),
              PopupMenuButton<PositionSort>(
                key: const ValueKey('positions-sort'),
                icon: Icon(Icons.sort_rounded, color: p.muted, size: 20),
                tooltip: l10n.watchSort,
                initialValue: _sort,
                onSelected: (v) => setState(() => _sort = v),
                itemBuilder: (_) => [
                  for (final (v, label) in [
                    (PositionSort.weight, l10n.positionsSortWeight),
                    (PositionSort.gain, l10n.positionsSortGain),
                    (PositionSort.today, l10n.positionsSortToday),
                    (PositionSort.name, l10n.watchSortName),
                  ])
                    PopupMenuItem(key: ValueKey('positions-sort-${v.name}'), value: v, child: Text(label)),
                ],
              ),
            ],
          ),
        ),
        // Az események (friss eredmények) betöltésére is frissül a lista.
        ListenableBuilder(
          listenable: AppServices.of(context).events,
          builder: (context, _) => Card(
            child: Column(
              children: [
                for (final (i, r) in rows.indexed) ...[
                  if (i > 0) const Divider(height: 1),
                  _PositionTile(row: r, fmt: widget.fmt, onOpenSymbol: widget.onOpenSymbol),
                ],
              ],
            ),
          ),
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
                  // Friss negyedéves eredmény (mint a Kedvencek listán): „EPS +2,7%”.
                  if (AppServices.of(context).events.recent.where((r) => r.symbol == pos.symbol).firstOrNull
                      case final r? when r.result.surprise != null)
                    Tooltip(
                      message:
                          '${r.result.beat == true ? l10n.earningsResultBeat(pos.symbol) : l10n.earningsResultMiss(pos.symbol)}'
                          ' · ${l10n.earningsResultBody(fmt.number(r.result.actual), fmt.number(r.result.estimate))}',
                      child: Text(
                        'EPS ${fmt.percent(r.result.surprise, withSign: true, decimals: 1)}',
                        key: ValueKey('position-result-${pos.symbol}'),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: r.result.beat == true ? p.positive : p.negative,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // Keskeny képernyőn a számok kicsinyülnek, nem lógnak ki.
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.centerEnd,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(fmt.money(row.value, ccy), style: const TextStyle(fontWeight: FontWeight.w600)),
                    Text(
                      '${fmt.money(row.gain, ccy, withSign: true, showCurrency: false)} (${fmt.percent(row.gainPercent, withSign: true)})',
                      style: theme.textTheme.bodySmall?.copyWith(color: gainColor(p, row.gain)),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              key: ValueKey('position-menu-${pos.symbol}'),
              tooltip: l10n.portfolioTransactions,
              icon: Icon(Icons.more_vert_rounded, color: p.muted),
              onPressed: () => showPurchasesSheet(context, pos, currentPrice: row.price),
            ),
          ],
        ),
      ),
    );
  }
}

/// Egy pozíció tranzakciói (vételek és eladások) törlés-gombbal, fölöttük az
/// eladás gombja (ha még van birtokolt darab) és a realizált nyereség.
Future<void> showPurchasesSheet(BuildContext context, Position position, {double? currentPrice}) {
  // A legutóbb törölt tranzakció (visszavonható, amíg a lap nyitva van).
  final removed = ValueNotifier<PortfolioLot?>(null);
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (context) {
      final l10n = AppLocalizations.of(context);
      final services = AppServices.of(context);
      final p = AppPalette.of(context);
      final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
      String qty(double q) => fmt.number(q, decimals: q == q.roundToDouble() ? 0 : 4);
      return ListenableBuilder(
        listenable: Listenable.merge([services.portfolio, removed]),
        builder: (context, _) {
          final lots = services.portfolio.lots.where((l) => l.symbol == position.symbol).toList()
            ..sort((a, b) => (b.date ?? DateTime(0)).compareTo(a.date ?? DateTime(0)));
          final now = Position(symbol: position.symbol, currency: position.currency, lots: lots);
          return SafeArea(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * 0.8),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 12, 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${position.symbol} · ${l10n.portfolioTransactions}',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        // Kapott osztalék felvétele ehhez a részvényhez (ticker és pénznem kitöltve).
                        IconButton(
                          key: const ValueKey('position-dividend'),
                          tooltip: l10n.portfolioAddDividend,
                          icon: const Icon(Icons.payments_outlined),
                          onPressed: () =>
                              showAddDividendDialog(context, symbol: position.symbol, currency: position.currency),
                        ),
                        if (!now.isClosed)
                          FilledButton.tonalIcon(
                            key: const ValueKey('position-sell'),
                            onPressed: () => showAddLotDialog(
                              context,
                              symbol: position.symbol,
                              currency: position.currency,
                              currentPrice: currentPrice,
                              sellMax: now.quantity,
                            ),
                            icon: const Icon(Icons.sell_outlined, size: 18),
                            label: Text(l10n.portfolioSell),
                          ),
                      ],
                    ),
                  ),
                  if (removed.value case final r?)
                    Padding(
                      key: const ValueKey('lot-removed'),
                      padding: const EdgeInsets.fromLTRB(20, 0, 12, 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(l10n.lotRemoved, style: TextStyle(color: p.muted)),
                          ),
                          TextButton(
                            key: const ValueKey('lot-undo'),
                            onPressed: () {
                              removed.value = null;
                              services.portfolio.restore(r);
                            },
                            child: Text(l10n.undo),
                          ),
                        ],
                      ),
                    ),
                  if (now.hasSales)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                      child: Text(
                        '${l10n.portfolioRealized}: ${fmt.money(now.realizedGain, now.currency, withSign: true)}',
                        style: TextStyle(color: gainColor(p, now.realizedGain), fontWeight: FontWeight.w600),
                      ),
                    ),
                  if (services.portfolio.dividendsOf(position.symbol).where((d) => d.currency == position.currency)
                      case final ds when ds.isNotEmpty)
                    Padding(
                      key: const ValueKey('position-dividends-sum'),
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                      child: Text(
                        '${l10n.portfolioDividendsReceived}: '
                        '${fmt.money(ds.fold<double>(0, (sum, d) => sum + d.amount), position.currency)}',
                        style: TextStyle(color: p.muted, fontWeight: FontWeight.w600),
                      ),
                    ),
                  // A még birtokolt tételek egyenként (ha több vétel volt vagy eladás is):
                  // darab × vételi ár, dátum, és a mai árral számolt nyereség.
                  if (!now.isClosed && (now.hasSales || now.openLots.length > 1)) ...[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 4, 20, 2),
                      child: Text(
                        l10n.positionOpenLots,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: p.muted),
                      ),
                    ),
                    for (final (i, o) in now.openLots.indexed)
                      ListTile(
                        key: ValueKey('open-lot-$i'),
                        dense: true,
                        leading: Icon(Icons.inventory_2_outlined, color: p.muted, size: 20),
                        title: Text('${qty(o.quantity)} × ${fmt.money(o.price, now.currency)}'),
                        subtitle: o.date == null ? null : Text(fmt.date(o.date)),
                        trailing: currentPrice == null
                            ? null
                            : Text(
                                '${fmt.money((currentPrice - o.price) * o.quantity, now.currency, withSign: true)}\n'
                                '${fmt.percent((currentPrice / o.price - 1) * 100, withSign: true)}',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: gainColor(p, currentPrice - o.price),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ),
                    const Divider(height: 16),
                  ],
                  for (final lot in lots)
                    ListTile(
                      key: ValueKey('lot-${lot.id}'),
                      leading: Icon(
                        lot.sell ? Icons.sell_outlined : Icons.receipt_long_outlined,
                        color: lot.sell ? p.accent : p.muted,
                      ),
                      title: Text(
                        '${lot.sell ? '${l10n.portfolioSold} ' : ''}${qty(lot.quantity)} × ${fmt.money(lot.price, lot.currency)}',
                      ),
                      subtitle: lot.date == null ? null : Text(fmt.date(lot.date)),
                      trailing: TextButton.icon(
                        onPressed: () {
                          removed.value = lot;
                          services.portfolio.remove(lot.id);
                        },
                        icon: const Icon(Icons.delete_outline_rounded, size: 18),
                        label: Text(l10n.portfolioRemove),
                        style: TextButton.styleFrom(foregroundColor: p.negative),
                      ),
                    ),
                  if (lots.isEmpty) Padding(padding: const EdgeInsets.all(20), child: Text(l10n.portfolioEmpty)),
                  const SizedBox(height: 12),
                ],
              ),
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
        // Csak ha van még birtokolt részvény vagy készpénz (a lezártak a portfólió oldalon látszanak).
        if (services.portfolio.positions.isEmpty && services.portfolio.cash.isEmpty) return const SizedBox.shrink();
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
                              s == null ? '…' : (s.unknown ? l10n.notAvailable : fmt.money(s.totalValue, s.currency)),
                              style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            // Ár nélküli papírok (pl. nem USA-részvény): nevesítve, nem csak „n/a”.
                            if (s != null && s.hasExcluded)
                              Text(
                                l10n.portfolioNoPriceFor(
                                  s.rows.where((r) => !r.inTotal).map((r) => r.position.symbol).join(', '),
                                ),
                                key: const ValueKey('portfolio-no-price'),
                                style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                              ),
                            // A változások az érték alatt, hogy keskeny képernyőn se lógjanak ki.
                            if (s != null && !s.unknown)
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

/// Portfólió-cél: mennyire van az összérték a célösszegtől (sáv és %), vagy egy
/// „Cél kitűzése” gomb. Ha a cél más pénznemben van, mint az összesítés, nem látszik
/// (a cél a megadásakori pénznemben marad).
class _GoalBar extends StatelessWidget {
  const _GoalBar({required this.snapshot, required this.fmt});

  final PortfolioSnapshot snapshot;
  final Fmt fmt;

  Future<void> _edit(BuildContext context) async {
    final prefs = AppServices.of(context).preferences;
    final goal = prefs.portfolioGoal;
    final result = await showDialog<double>(
      context: context,
      builder: (_) => _GoalDialog(
        currency: snapshot.currency,
        initial: goal?.currency == snapshot.currency ? goal!.amount : null,
        fmt: fmt,
      ),
    );
    if (result == null) return;
    await prefs.setPortfolioGoal(result <= 0 ? null : (amount: result, currency: snapshot.currency));
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return ListenableBuilder(
      listenable: services.preferences,
      builder: (context, _) {
        final goal = services.preferences.portfolioGoal;
        if (goal == null || goal.currency != snapshot.currency) {
          return Align(
            alignment: AlignmentDirectional.centerStart,
            child: TextButton.icon(
              key: const ValueKey('goal-set'),
              onPressed: () => _edit(context),
              style: TextButton.styleFrom(visualDensity: VisualDensity.compact, padding: EdgeInsets.zero),
              icon: const Icon(Icons.flag_outlined, size: 18),
              label: Text(l10n.portfolioGoalSet),
            ),
          );
        }
        final ratio = snapshot.totalValue / goal.amount;
        return InkWell(
          key: const ValueKey('goal-bar'),
          onTap: () => _edit(context),
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.only(top: 14, bottom: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ratio >= 1
                      ? l10n.portfolioGoalReached(fmt.money(goal.amount, goal.currency))
                      : l10n.portfolioGoalProgress(
                          fmt.percent(ratio * 100, decimals: 0),
                          fmt.money(goal.amount, goal.currency),
                        ),
                  style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                ),
                const SizedBox(height: 6),
                ClipRRect(
                  borderRadius: BorderRadius.circular(99),
                  child: LinearProgressIndicator(
                    value: ratio.clamp(0.0, 1.0),
                    semanticsLabel: l10n.portfolioGoalTitle,
                    semanticsValue: fmt.percent(ratio * 100, decimals: 0),
                    minHeight: 8,
                    color: ratio >= 1 ? p.positive : p.accent,
                    backgroundColor: p.border,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _GoalDialog extends StatefulWidget {
  const _GoalDialog({required this.currency, required this.initial, required this.fmt});

  final String currency;
  final double? initial;
  final Fmt fmt;

  @override
  State<_GoalDialog> createState() => _GoalDialogState();
}

class _GoalDialogState extends State<_GoalDialog> {
  late final _controller = TextEditingController(
    text: widget.initial == null ? '' : widget.fmt.number(widget.initial!, decimals: 0).replaceAll(RegExp(r'\s'), ' '),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _save() {
    final v = parseDecimal(_controller.text);
    if (v != null && v > 0) Navigator.of(context).pop(v);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(l10n.portfolioGoalTitle),
      content: TextField(
        key: const ValueKey('goal-amount'),
        controller: _controller,
        autofocus: true,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        decoration: InputDecoration(labelText: l10n.portfolioTotalValue, suffixText: widget.currency),
        onSubmitted: (_) => _save(),
      ),
      actions: [
        if (widget.initial != null)
          TextButton(
            key: const ValueKey('goal-remove'),
            onPressed: () => Navigator.of(context).pop(0.0),
            child: Text(l10n.portfolioGoalRemove),
          ),
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancel)),
        FilledButton(key: const ValueKey('goal-save'), onPressed: _save, child: Text(l10n.alertSave)),
      ],
    );
  }
}
