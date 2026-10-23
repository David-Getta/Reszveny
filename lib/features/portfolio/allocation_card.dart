/// A portfólió megoszlás-kártyája: pozíciók, szektorok, országok, devizák és számlák
/// szerinti súlyok, célarányok, újrasúlyozás és új befizetés elosztása.
library;

import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/terms.dart';
import '../../theme/app_theme.dart';
import '../../widgets/metric_hint.dart';
import 'add_lot_dialog.dart';
import 'portfolio_store.dart';
import 'portfolio_valuation.dart';

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
enum AllocationBy { positions, sectors, countries, currencies, accounts }

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
  const AllocationCard({super.key, required this.snapshot, required this.fmt, this.wholePortfolio = true});

  final PortfolioSnapshot snapshot;
  final Fmt fmt;

  /// Az egész portfólió nézete (nem egy számláé): csak itt vannak célarányok és
  /// újrasúlyozás, és megoszlás számlák szerint (ha van számla).
  final bool wholePortfolio;

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

  /// Számlák szerint: a pozíciók értéke a számlákon birtokolt darabszám arányában
  /// (a számla nélküli tételek egy sorban), a készpénz külön sor.
  List<({String label, double weight})> _byAccount(PortfolioStore store, String noAccount) {
    final s = widget.snapshot;
    final sums = <String, double>{};
    for (final r in widget.rows.where((r) => r.inTotal && s.totalValue > 0)) {
      for (final e in store.heldByAccount(r.position.symbol).entries) {
        final w = e.value * r.price! * r.rate! / s.totalValue;
        sums.update(e.key ?? noAccount, (v) => v + w, ifAbsent: () => w);
      }
    }
    return _withCash(
      [for (final e in sums.entries) (label: e.key, weight: e.value)]..sort((a, b) => b.weight.compareTo(a.weight)),
    );
  }

  AllocationBy _by = AllocationBy.positions;
  Future<Map<String, ({String? sector, String? country})>>? _profiles;

  /// Melyik részvényekhez töltöttük be a profilokat: új részvény (vétel, import,
  /// számlaváltás) esetén újra kell, különben a szektora „n/a” maradna.
  Set<String> _profilesFor = const {};

  @override
  void didUpdateWidget(covariant AllocationCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    final symbols = {for (final r in widget.rows) r.position.symbol};
    if (_profiles != null && !_profilesFor.containsAll(symbols)) _profiles = _loadProfiles();
  }

  /// A szektor és az ország a cégprofilokból (a gyorsítótárból jön).
  Future<Map<String, ({String? sector, String? country})>> _loadProfiles() async {
    final market = AppServices.of(context).marketData;
    final symbols = {for (final r in widget.rows) r.position.symbol};
    _profilesFor = symbols;
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
    final store = AppServices.of(context).portfolio;
    final accounts = widget.wholePortfolio && store.accounts.isNotEmpty;
    // Ha közben megszűnt az utolsó számla, a pozíciók szerinti nézet marad.
    final by = _by == AllocationBy.accounts && !accounts ? AllocationBy.positions : _by;
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
                  if (accounts) ButtonSegment(value: AllocationBy.accounts, label: Text(l10n.allocationAccounts)),
                ],
                selected: {by},
                onSelectionChanged: (v) => setState(() {
                  _by = v.first;
                  if (_by == AllocationBy.sectors || _by == AllocationBy.countries) _profiles ??= _loadProfiles();
                }),
              ),
            ),
            const SizedBox(height: 12),
            switch (by) {
              AllocationBy.accounts => AllocationBar(
                key: const ValueKey('allocation-accounts'),
                entries: _byAccount(store, l10n.portfolioNoAccount),
                fmt: widget.fmt,
              ),
              AllocationBy.positions => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AllocationBar(
                    entries: _withCash(groupWeights(widget.rows, (r) => r.position.symbol)),
                    fmt: widget.fmt,
                  ),
                  if (widget.wholePortfolio) _Targets(snapshot: widget.snapshot, fmt: widget.fmt),
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
            // Kockázat: a részvények súlyozott bétája és a koncentráció (a 3 legnagyobb súlya).
            if (widget.snapshot.beta != null || widget.snapshot.top3Weight != null) ...[
              const SizedBox(height: 14),
              Wrap(
                key: const ValueKey('portfolio-risk'),
                spacing: 28,
                runSpacing: 10,
                children: [
                  if (widget.snapshot.beta case final b?)
                    MetricFigure(
                      key: const ValueKey('portfolio-beta'),
                      label: l10n.portfolioBeta,
                      value: widget.fmt.number(b),
                      hint: l10n.glossPortfolioBeta,
                    ),
                  if (widget.snapshot.top3Weight case final t?)
                    MetricFigure(
                      key: const ValueKey('portfolio-top3'),
                      label: l10n.portfolioTop3,
                      value: widget.fmt.percent(t * 100, decimals: 0),
                      hint: l10n.glossPortfolioTop3,
                    ),
                ],
              ),
            ],
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
              // Új befizetés elosztása csak vétellel a célok felé.
              TextButton.icon(
                key: const ValueKey('contribution-open'),
                style: TextButton.styleFrom(visualDensity: VisualDensity.compact, padding: EdgeInsets.zero),
                onPressed: () => showDialog<void>(
                  context: context,
                  builder: (_) => _ContributionDialog(snapshot: snapshot, targets: prefs.targets),
                ),
                icon: const Icon(Icons.add_card_outlined, size: 18),
                label: Text(l10n.contributionButton),
              ),
            ],
          ],
        );
      },
    );
  }

  static TextStyle? muted(ThemeData theme, AppPalette p) => theme.textTheme.bodySmall?.copyWith(color: p.muted);
}

/// Új befizetés elosztása: összeg a portfólió pénznemében, alatta pozíciónként
/// mennyit (és a mai áron nagyjából hány darabot) érdemes venni a célok felé.
class _ContributionDialog extends StatefulWidget {
  const _ContributionDialog({required this.snapshot, required this.targets});

  final PortfolioSnapshot snapshot;
  final Map<String, double> targets;

  @override
  State<_ContributionDialog> createState() => _ContributionDialogState();
}

class _ContributionDialogState extends State<_ContributionDialog> {
  final _amount = TextEditingController();

  /// A céllal bíró, de most ár nélküli pozíciók: kimaradnak – ezt kimondjuk.
  late final _missing = [
    for (final r in widget.snapshot.rows)
      if (!r.inTotal && widget.targets.containsKey(r.position.symbol.toUpperCase())) r.position.symbol,
  ];

  @override
  void dispose() {
    _amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final ccy = widget.snapshot.currency;
    final plan = contributionPlan(
      widget.snapshot,
      widget.targets,
      parseAmount(_amount.text, Localizations.localeOf(context).toString()) ?? 0,
    );
    return AlertDialog(
      title: Text(l10n.contributionButton),
      content: SizedBox(
        width: 380,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.contributionHint, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
              const SizedBox(height: 8),
              TextField(
                key: const ValueKey('contribution-amount'),
                controller: _amount,
                autofocus: true,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(labelText: l10n.contributionAmount(ccy)),
                onChanged: (_) => setState(() {}),
              ),
              if (_missing.isNotEmpty)
                Padding(
                  key: const ValueKey('contribution-missing'),
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    l10n.contributionMissing(_missing.join(', ')),
                    style: theme.textTheme.bodySmall?.copyWith(color: p.negative),
                  ),
                ),
              const SizedBox(height: 10),
              for (final step in plan)
                Padding(
                  key: ValueKey('contribution-${step.symbol}'),
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 64,
                        child: Text(step.symbol, style: const TextStyle(fontWeight: FontWeight.w700)),
                      ),
                      Expanded(
                        child: Text(
                          fmt.money(step.amount, ccy, withSign: true),
                          style: TextStyle(color: p.positive, fontWeight: FontWeight.w600),
                        ),
                      ),
                      if (step.shares case final n?)
                        Text(
                          l10n.contributionShares(fmt.number(n, decimals: n < 10 ? 2 : 0)),
                          style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
      actions: [TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.close))],
    );
  }
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
