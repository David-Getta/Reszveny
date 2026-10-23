import 'package:flutter/material.dart';

import '../compare/compare_page.dart';
import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/terms.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import '../../widgets/metric_hint.dart';
import 'add_lot_dialog.dart';
import 'csv_dialog.dart';
import 'dividend_forecast.dart' show convertedDividends;
import 'dividends_card.dart';
import 'goal_dialog.dart';
import 'split_dialog.dart';
import 'holdings_import.dart';
import 'portfolio_history.dart';
import 'portfolio_review_card.dart';
import 'portfolio_share_card.dart';
import 'portfolio_store.dart';
import 'portfolio_valuation.dart';

/// Az összesítés újraszámolása, ha a vételek vagy a megjelenítési pénznem
/// változik; a [builder] a legutóbbi pillanatképet kapja (töltés közben is).
class PortfolioSnapshotBuilder extends StatefulWidget {
  const PortfolioSnapshotBuilder({super.key, required this.builder, this.account});

  /// Csak ennek a számlának a pozíciói (`null`: mind, a készpénzzel együtt).
  final String? account;

  final Widget Function(BuildContext context, PortfolioSnapshot? snapshot, Future<void> Function() refresh) builder;

  @override
  State<PortfolioSnapshotBuilder> createState() => _PortfolioSnapshotBuilderState();
}

class _PortfolioSnapshotBuilderState extends State<PortfolioSnapshotBuilder> {
  String? _key;
  Future<PortfolioSnapshot>? _future;

  /// A legutóbbi pillanatkép számlánként: számlaváltáskor nem a másik számla
  /// számai látszanak a töltés alatt (visszaváltáskor viszont azonnal van mit mutatni).
  final _last = <String?, PortfolioSnapshot>{};

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
        final account = widget.account;
        final positions = services.portfolio.positionsIn(account);
        final currency = PortfolioSnapshot.totalCurrency(positions, services.displayCurrency(locale));
        // A készpénz nem számlához kötött: számla-nézetben nincs benne.
        final cash = account == null ? services.portfolio.cash : const <String, double>{};
        final key = '$currency|${services.portfolio.holdingsKey}|$cash|${account ?? ''}';
        if (key != _key) {
          _key = key;
          _future =
              PortfolioSnapshot.load(
                positions,
                marketData: services.marketData,
                fx: services.fx,
                currency: currency,
                closed: services.portfolio.closedIn(account),
                cash: cash,
              ).then((s) {
                // Egy közben elavult (lassabb, régebbi) lekérés nem írja felül az újabbat.
                if (_key == key) _last[account] = s;
                return s;
              });
        }
        // A FutureBuilder az új lekérés alatt az előzőt (akár másik számláét) tartaná meg.
        return FutureBuilder<PortfolioSnapshot>(
          future: _future,
          builder: (context, _) => widget.builder(context, _last[account], _refresh),
        );
      },
    );
  }
}

/// A portfólió oldala: összérték, napi változás, nyereség/veszteség,
/// megoszlás és a pozíciók. A sorra koppintva megnyílik a részvény.
class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  /// A választott számla (`null`: minden számla).
  String? _account;

  ValueChanged<StockCandidate> get onOpenSymbol => widget.onOpenSymbol;

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
          // A törölt (már nem használt) számla szűrője megszűnik.
          if (_account != null && !services.portfolio.accounts.contains(_account)) _account = null;
          return PortfolioSnapshotBuilder(
            account: _account,
            builder: (context, snapshot, refresh) => RefreshIndicator(
              onRefresh: refresh,
              child: snapshot == null
                  ? ListView(
                      children: const [
                        SizedBox(height: 120),
                        Center(child: CircularProgressIndicator()),
                      ],
                    )
                  : _PortfolioBody(
                      snapshot: snapshot,
                      onOpenSymbol: onOpenSymbol,
                      account: _account,
                      onAccount: (a) => setState(() => _account = a),
                    ),
            ),
          );
        },
      ),
    );
  }
}

/// „Idei osztalék: …” a főoldali kártyán – az átváltás csak akkor fut újra, ha
/// a tételek vagy a pénznem változnak, nem minden újrarajzoláskor.
class _YearDividends extends StatefulWidget {
  const _YearDividends({required this.dividends, required this.currency, required this.fmt});

  final List<DividendRecord> dividends;
  final String currency;
  final Fmt fmt;

  @override
  State<_YearDividends> createState() => _YearDividendsState();
}

class _YearDividendsState extends State<_YearDividends> {
  Future<double?>? _sum;
  String _key = '';

  String get _wantedKey => [widget.currency, ...widget.dividends.map((d) => d.id)].join(',');

  @override
  Widget build(BuildContext context) {
    if (_key != _wantedKey) {
      _key = _wantedKey;
      _sum = convertedDividends(AppServices.of(context).fx, widget.dividends, widget.currency);
    }
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return FutureBuilder<double?>(
      future: _sum,
      builder: (context, snap) => snap.data == null
          ? const SizedBox.shrink()
          : Text(
              l10n.homeDividendsThisYear(widget.fmt.money(snap.data!, widget.currency)),
              key: const ValueKey('home-dividends'),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted),
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

class _PortfolioBody extends StatelessWidget {
  const _PortfolioBody({required this.snapshot, required this.onOpenSymbol, this.account, this.onAccount});

  final PortfolioSnapshot snapshot;
  final ValueChanged<StockCandidate> onOpenSymbol;

  /// A választott számla (`null`: mind) és a választás.
  final String? account;
  final ValueChanged<String?>? onAccount;

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
                // Számlák (ha legalább egy tranzakciónak van): szűrés egy számlára.
                if (AppServices.of(context).portfolio.accounts case final accounts when accounts.isNotEmpty) ...[
                  Wrap(
                    key: const ValueKey('portfolio-accounts'),
                    spacing: 6,
                    runSpacing: 4,
                    children: [
                      for (final a in <String?>[null, ...accounts])
                        ChoiceChip(
                          key: ValueKey('account-${a ?? '*'}'),
                          label: Text(a ?? l10n.portfolioAccountsAll),
                          selected: a == account,
                          visualDensity: VisualDensity.compact,
                          onSelected: (_) => onAccount?.call(a),
                        ),
                    ],
                  ),
                  if (account != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 4, left: 4),
                      child: Text(
                        l10n.portfolioAccountNote,
                        style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                      ),
                    ),
                  const SizedBox(height: 8),
                ],
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                l10n.portfolioTotalValue,
                                style: theme.textTheme.labelLarge?.copyWith(color: p.muted),
                              ),
                            ),
                            // A teljesítmény megosztása képként vagy szövegként (csak százalékok).
                            if (!s.unknown && s.rows.isNotEmpty)
                              IconButton(
                                key: const ValueKey('portfolio-share'),
                                tooltip: l10n.portfolioShare,
                                visualDensity: VisualDensity.compact,
                                icon: Icon(Icons.ios_share_rounded, size: 20, color: p.muted),
                                onPressed: () => showPortfolioShare(context, s),
                              ),
                          ],
                        ),
                        Text(
                          s.unknown ? l10n.notAvailable : fmt.money(s.totalValue, ccy),
                          style: theme.textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 14),
                        Wrap(
                          spacing: 28,
                          runSpacing: 10,
                          children: [
                            MetricFigure(
                              label: l10n.portfolioToday,
                              value: fmt.money(s.dayGain, ccy, withSign: true),
                              sub: fmt.percent(s.dayGainPercent, withSign: true),
                              color: gainColor(p, s.dayGain),
                            ),
                            MetricFigure(
                              label: l10n.portfolioGainLoss,
                              value: fmt.money(s.gain, ccy, withSign: true),
                              sub: fmt.percent(s.gainPercent, withSign: true),
                              color: gainColor(p, s.gain),
                            ),
                            MetricFigure(label: l10n.portfolioInvested, value: fmt.money(s.cost, ccy)),
                            if (s.cash > 0)
                              MetricFigure(
                                key: const ValueKey('portfolio-cash'),
                                label: l10n.portfolioCash,
                                value: fmt.money(s.cash, ccy),
                              ),
                            if (s.annualReturn case final r?)
                              MetricFigure(
                                key: const ValueKey('portfolio-annual-return'),
                                label: l10n.portfolioAnnualReturn,
                                value: l10n.portfolioPerYear(fmt.percent(r * 100, withSign: true)),
                                color: gainColor(p, r),
                                hint: l10n.portfolioAnnualReturnHint,
                              ),
                            if (s.realized != 0 || s.closed.isNotEmpty)
                              MetricFigure(
                                key: const ValueKey('portfolio-realized'),
                                label: l10n.portfolioRealized,
                                value: fmt.money(s.realized, ccy, withSign: true),
                                color: gainColor(p, s.realized),
                              ),
                            if (s.annualDividend > 0)
                              MetricFigure(
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
                        // A cél az egész portfólióra szól: számla-nézetben nem látszik.
                        if (!s.unknown && account == null) _GoalBar(snapshot: s, fmt: fmt),
                      ],
                    ),
                  ),
                ),
                // A célarányok az egész portfólióra szólnak: számla-nézetben nincs újrasúlyozás.
                if (s.rows.where((r) => r.weight > 0).length > 1)
                  AllocationCard(snapshot: s, fmt: fmt, targets: account == null, byAccount: account == null),
                PortfolioHistoryCard(snapshot: s, account: account),
                // Az AI-elemzés az egész portfólióról szól (készpénzzel, osztalékokkal), egy mentett példányban.
                if (account == null) PortfolioReviewCard(snapshot: s),
                if (s.rows.isNotEmpty)
                  _PositionsSection(snapshot: s, fmt: fmt, onOpenSymbol: onOpenSymbol, account: account),
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
                // Az osztalékok nem számlához kötöttek: számla-nézetben nem látszanak.
                DividendsCard(currency: ccy, annualDividend: s.annualDividend, account: account),
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
                                  onPressed: () => showPurchasesSheet(context, c.position, account: account),
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
  const AllocationCard({
    super.key,
    required this.snapshot,
    required this.fmt,
    this.targets = true,
    this.byAccount = false,
  });

  final PortfolioSnapshot snapshot;
  final Fmt fmt;

  /// A célarányok és az újrasúlyozás (csak az egész portfólió nézetében).
  final bool targets;

  /// Megoszlás számlák szerint is (az egész portfólió nézetében, ha van számla).
  final bool byAccount;

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
    final store = AppServices.of(context).portfolio;
    final accounts = widget.byAccount && store.accounts.isNotEmpty;
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
                  if (widget.targets) _Targets(snapshot: widget.snapshot, fmt: widget.fmt),
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
enum PositionSort { weight, gain, today, dividend, name }

/// A pozíciók rendezése: súly (alapból), összes hozam %, mai mozgás %,
/// osztalékhozam (a mai árhoz), ticker. Az ár (illetve osztalék) nélküli
/// pozíciók a végére kerülnek.
List<PositionValue> sortPositions(List<PositionValue> rows, PositionSort sort) {
  double? today(PositionValue r) {
    final price = r.price, change = r.dayChange;
    return price == null || change == null || price - change == 0 ? null : change / (price - change) * 100;
  }

  double? dividendYield(PositionValue r) {
    final d = r.annualDividend, v = r.value;
    return d == null || v == null || v <= 0 ? null : d / v * 100;
  }

  int byValue(double? a, double? b) => a == null ? (b == null ? 0 : 1) : (b == null ? -1 : b.compareTo(a));
  return switch (sort) {
    PositionSort.weight => rows,
    PositionSort.gain => [...rows]..sort((a, b) => byValue(a.gainPercent, b.gainPercent)),
    PositionSort.today => [...rows]..sort((a, b) => byValue(today(a), today(b))),
    PositionSort.dividend => [...rows]..sort((a, b) => byValue(dividendYield(a), dividendYield(b))),
    PositionSort.name => [...rows]..sort((a, b) => a.position.symbol.compareTo(b.position.symbol)),
  };
}

/// „Pozíciók” fejléc rendezés-menüvel és a pozíciók listája.
class _PositionsSection extends StatefulWidget {
  const _PositionsSection({required this.snapshot, required this.fmt, required this.onOpenSymbol, this.account});

  final String? account;

  final PortfolioSnapshot snapshot;
  final Fmt fmt;
  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  State<_PositionsSection> createState() => _PositionsSectionState();
}

class _PositionsSectionState extends State<_PositionsSection> {
  /// A legutóbb választott rendezés (a beállításokban megjegyezve).
  late PositionSort _sort =
      PositionSort.values.asNameMap()[AppServices.of(context).preferences.sortOf('positions') ?? ''] ??
      PositionSort.weight;

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
              // A legnagyobb pozíciók (a súly szerint) egymás mellett az összehasonlításban.
              if (widget.snapshot.rows.length >= 2)
                IconButton(
                  key: const ValueKey('positions-compare'),
                  tooltip: l10n.compareTitle,
                  icon: Icon(Icons.compare_arrows_rounded, color: p.muted, size: 20),
                  onPressed: () => ComparePage.open(context, [
                    for (final r in widget.snapshot.rows.take(ComparePage.maxStocks)) r.position.symbol,
                  ], onOpenSymbol: widget.onOpenSymbol),
                ),
              PopupMenuButton<PositionSort>(
                key: const ValueKey('positions-sort'),
                icon: Icon(Icons.sort_rounded, color: p.muted, size: 20),
                tooltip: l10n.watchSort,
                initialValue: _sort,
                onSelected: (v) {
                  setState(() => _sort = v);
                  AppServices.of(context).preferences.setSort('positions', v.name);
                },
                itemBuilder: (_) => [
                  for (final (v, label) in [
                    (PositionSort.weight, l10n.positionsSortWeight),
                    (PositionSort.gain, l10n.positionsSortGain),
                    (PositionSort.today, l10n.positionsSortToday),
                    (PositionSort.dividend, l10n.labelDividendYield),
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
                  _PositionTile(row: r, fmt: widget.fmt, onOpenSymbol: widget.onOpenSymbol, account: widget.account),
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
  const _PositionTile({required this.row, required this.fmt, required this.onOpenSymbol, this.account});

  final String? account;
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
              onPressed: () => showPurchasesSheet(context, pos, currentPrice: row.price, account: account),
            ),
          ],
        ),
      ),
    );
  }
}

/// Egy pozíció tranzakciói (vételek és eladások) törlés-gombbal, fölöttük az
/// eladás gombja (ha még van birtokolt darab) és a realizált nyereség.
Future<void> showPurchasesSheet(BuildContext context, Position position, {double? currentPrice, String? account}) {
  // A legutóbb törölt tranzakció, illetve felaprózás (visszavonható, amíg a lap nyitva van).
  final removed = ValueNotifier<PortfolioLot?>(null);
  final removedSplit = ValueNotifier<SplitRecord?>(null);
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
        listenable: Listenable.merge([services.portfolio, removed, removedSplit]),
        builder: (context, _) {
          // A felaprózásokkal igazított tételek (a törlés az eredeti azonosítóval megy).
          // Számla-nézetben csak annak a számlának a tranzakciói (az eladás is oda kerül).
          final lots = services.portfolio.adjustedLotsIn(account).where((l) => l.symbol == position.symbol).toList()
            ..sort((a, b) => (b.date ?? DateTime(0)).compareTo(a.date ?? DateTime(0)));
          // A részvény kapott osztalékai (számla-nézetben csak a számláé).
          final dividends = [
            for (final d in services.portfolio.dividendsOf(position.symbol))
              if (account == null || d.account == account) d,
          ];
          // A pozíció a tárolóból (számla-nézetben a teljes FIFO számlára eső része), hogy a
          // lap ugyanazt a darabszámot mutassa, mint az oldal.
          final now =
              services.portfolio.positionIn(position.symbol, account) ??
              Position(symbol: position.symbol, currency: position.currency, lots: const []);
          // „Törölve · Visszavonás” sor a legutóbb törölt tételhez ([name]: a kulcsok előtagja).
          Widget undoRow(String name, String text, VoidCallback onUndo) => Padding(
            key: ValueKey('$name-removed'),
            padding: const EdgeInsets.fromLTRB(20, 0, 12, 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(text, style: TextStyle(color: p.muted)),
                ),
                TextButton(key: ValueKey('$name-undo'), onPressed: onUndo, child: Text(l10n.undo)),
              ],
            ),
          );
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
                            [position.symbol, l10n.portfolioTransactions, ?account].join(' · '),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        // Kapott osztalék felvétele ehhez a részvényhez (ticker és pénznem kitöltve).
                        IconButton(
                          key: const ValueKey('position-dividend'),
                          tooltip: l10n.portfolioAddDividend,
                          icon: const Icon(Icons.payments_outlined),
                          onPressed: () => showAddDividendDialog(
                            context,
                            symbol: position.symbol,
                            currency: position.currency,
                            account: account,
                          ),
                        ),
                        // Részvényfelaprózás rögzítése ehhez a részvényhez.
                        IconButton(
                          key: const ValueKey('position-split'),
                          tooltip: l10n.portfolioSplit,
                          icon: const Icon(Icons.call_split_rounded),
                          onPressed: () => showSplitDialog(context, symbol: position.symbol),
                        ),
                        if (!now.isClosed)
                          FilledButton.tonalIcon(
                            key: const ValueKey('position-sell'),
                            onPressed: () => showAddLotDialog(
                              context,
                              symbol: position.symbol,
                              currency: position.currency,
                              currentPrice: currentPrice,
                              // Minden számla nézetében a számlák közül választható, honnan.
                              holdings: account == null
                                  ? services.portfolio.heldByAccount(position.symbol)
                                  : {account: now.quantity},
                              account: account,
                            ),
                            icon: const Icon(Icons.sell_outlined, size: 18),
                            label: Text(l10n.portfolioSell),
                          ),
                      ],
                    ),
                  ),
                  if (removed.value case final r?)
                    undoRow('lot', l10n.lotRemoved, () {
                      removed.value = null;
                      services.portfolio.restore(r);
                    }),
                  if (removedSplit.value case final r?)
                    undoRow('split', l10n.portfolioSplitRemoved, () {
                      removedSplit.value = null;
                      services.portfolio.restoreSplit(r);
                    }),
                  if (now.hasSales)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                      child: Text(
                        '${l10n.portfolioRealized}: ${fmt.money(now.realizedGain, now.currency, withSign: true)}',
                        style: TextStyle(color: gainColor(p, now.realizedGain), fontWeight: FontWeight.w600),
                      ),
                    ),
                  if (dividends.where((d) => d.currency == position.currency) case final ds when ds.isNotEmpty)
                    Padding(
                      key: const ValueKey('position-dividends-sum'),
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                      child: Text(
                        '${l10n.portfolioDividendsReceived}: '
                        '${fmt.money(ds.fold<double>(0, (sum, d) => sum + d.amount), position.currency)}',
                        style: TextStyle(color: p.muted, fontWeight: FontWeight.w600),
                      ),
                    ),
                  // A részvény kapott osztalékai tételenként (az újabb elöl, legfeljebb hat), minden pénznemben.
                  for (final d in dividends.take(6))
                    ListTile(
                      key: ValueKey('sheet-dividend-${d.id}'),
                      dense: true,
                      leading: Icon(Icons.payments_outlined, color: p.muted, size: 20),
                      title: Text(fmt.money(d.amount, d.currency)),
                      subtitle: d.date == null ? null : Text(fmt.date(d.date)),
                    ),
                  // A részvény felaprózásai (az újabb elöl), törölhetők.
                  for (final s in services.portfolio.splitsOf(position.symbol).reversed)
                    ListTile(
                      key: ValueKey('sheet-split-${s.id}'),
                      dense: true,
                      leading: Icon(Icons.call_split_rounded, color: p.muted, size: 20),
                      title: Text(l10n.portfolioSplitRow(s.label)),
                      subtitle: Text(fmt.date(s.date)),
                      trailing: IconButton(
                        key: ValueKey('sheet-split-delete-${s.id}'),
                        tooltip: l10n.portfolioRemove,
                        icon: Icon(Icons.delete_outline_rounded, size: 18, color: p.negative),
                        onPressed: () {
                          removedSplit.value = s;
                          services.portfolio.removeSplit(s.id);
                        },
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
                      // Minden számla nézetében a tétel számlája is (ha van).
                      subtitle: switch ([
                        if (lot.date != null) fmt.date(lot.date),
                        if (account == null) ?lot.account,
                        if (lot.fee > 0) l10n.portfolioFeeRow(fmt.money(lot.fee, lot.currency)),
                      ]) {
                        final parts when parts.isNotEmpty => Text(parts.join(' · ')),
                        _ => null,
                      },
                      trailing: TextButton.icon(
                        // A lapon az igazított másolat látszik; a visszavonáshoz a tárolt tétel kell.
                        onPressed: () async => removed.value = await services.portfolio.remove(lot.id),
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
                                  // Az idén kapott osztalék a portfólió pénznemében (ha van).
                                  if (services.portfolio.dividends
                                          .where((d) => d.date?.year == DateTime.now().year)
                                          .toList()
                                      case final ds when ds.isNotEmpty)
                                    _YearDividends(dividends: ds, currency: s.currency, fmt: fmt),
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

  @override
  Widget build(BuildContext context) {
    final prefs = AppServices.of(context).preferences;
    final l10n = AppLocalizations.of(context);
    return ListenableBuilder(
      listenable: prefs,
      builder: (context, _) => GoalProgress(
        keyPrefix: 'goal',
        goal: prefs.portfolioGoal,
        currency: snapshot.currency,
        current: snapshot.totalValue,
        setLabel: l10n.portfolioGoalSet,
        dialogTitle: l10n.portfolioGoalTitle,
        dialogLabel: l10n.portfolioTotalValue,
        text: (ratio, goal) => ratio >= 1
            ? l10n.portfolioGoalReached(fmt.money(goal.amount, goal.currency))
            : l10n.portfolioGoalProgress(fmt.percent(ratio * 100, decimals: 0), fmt.money(goal.amount, goal.currency)),
        onChanged: prefs.setPortfolioGoal,
        fmt: fmt,
      ),
    );
  }
}
