import 'package:flutter/material.dart';

import '../compare/compare_page.dart';
import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_quote.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import '../../widgets/metric_hint.dart';
import 'allocation_card.dart';
import 'purchases_sheet.dart';
import 'csv_dialog.dart';
import 'dividend_forecast.dart' show convertedDividends;
import 'dividends_card.dart';
import 'goal_dialog.dart';
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

  String get _wantedKey => [widget.currency, ...widget.dividends.map((d) => d.contentKey)].join(',');

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
            const SizedBox(height: 8),
            // Kipróbálás minta-adatokkal: egy gombbal betölthető, egy gombbal eltávolítható.
            // Ha a minta tranzakcióit egyenként törölték, a megmaradt minta-osztalékok is eltávolíthatók.
            if (AppServices.of(context).portfolio.hasSample)
              OutlinedButton.icon(
                key: const ValueKey('portfolio-sample-remove'),
                onPressed: () => AppServices.of(context).portfolio.removeSample(),
                icon: const Icon(Icons.science_outlined, size: 18),
                label: Text(l10n.portfolioSampleRemove),
              )
            else
              OutlinedButton.icon(
                key: const ValueKey('portfolio-empty-sample'),
                onPressed: () => AppServices.of(context).portfolio.loadSample(),
                icon: const Icon(Icons.science_outlined, size: 18),
                label: Text(l10n.portfolioSampleTry),
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
                // Minta-portfólió: jól látható jelzés és egy gomb az eltávolításához.
                if (AppServices.of(context).portfolio.hasSample) const _SampleBanner(),
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
                            // Csak ha van árazott pozíció (különben nincs mit százalékban mutatni).
                            if (s.value > 0)
                              IconButton(
                                key: const ValueKey('portfolio-share'),
                                tooltip: l10n.portfolioShare,
                                visualDensity: VisualDensity.compact,
                                icon: Icon(Icons.ios_share_rounded, size: 20, color: p.muted),
                                onPressed: () => showPortfolioShare(context, s, account: account),
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
                        // Mi mozgatta ma a portfóliót: a két legnagyobb mai változás pozíciónként.
                        if (topDayMovers(s).isNotEmpty) ...[
                          const SizedBox(height: 10),
                          _TodayMovers(snapshot: s, fmt: fmt),
                        ],
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
                  AllocationCard(snapshot: s, fmt: fmt, wholePortfolio: account == null),
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
                // Számla-nézetben a számla osztalékai (a havi osztalékcél csak a Minden számla nézetben).
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
                            subtitle: _SinceSale(key: ValueKey(c.position.symbol), position: c.position, fmt: fmt),
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

/// A minta-portfólió jól látható jelzése, egy gombbal az eltávolításához.
class _SampleBanner extends StatelessWidget {
  const _SampleBanner();

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final l10n = AppLocalizations.of(context);
    return Card(
      key: const ValueKey('portfolio-sample'),
      color: p.accent.withValues(alpha: 0.12),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 10, 8, 10),
        child: Row(
          children: [
            Icon(Icons.science_outlined, size: 20, color: p.accent),
            const SizedBox(width: 10),
            Expanded(child: Text(l10n.portfolioSampleBanner)),
            TextButton(
              key: const ValueKey('portfolio-sample-remove'),
              onPressed: () => AppServices.of(context).portfolio.removeSample(),
              // A színezett sávon a szöveg színe olvashatóbb, mint a kiemelő szín.
              style: TextButton.styleFrom(foregroundColor: p.text),
              child: Text(l10n.portfolioSampleRemove, style: const TextStyle(fontWeight: FontWeight.w700)),
            ),
          ],
        ),
      ),
    );
  }
}

/// A lezárt pozíció alcíme: „Minden darabot eladtál”, és ha van ár, az ár változása
/// az utolsó eladás óta (megérte-e eladni) – a részvény saját pénznemében.
class _SinceSale extends StatefulWidget {
  const _SinceSale({super.key, required this.position, required this.fmt});

  final Position position;
  final Fmt fmt;

  @override
  State<_SinceSale> createState() => _SinceSaleState();
}

class _SinceSaleState extends State<_SinceSale> {
  // Egyszer kérjük le (a szimbólum a kulcs), nem minden újraépítéskor.
  late final Future<StockQuote>? _quote = widget.position.sales.isEmpty
      ? null
      : AppServices.of(context).marketData.quote(widget.position.symbol);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final last = widget.position.sales.lastOrNull;
    return FutureBuilder<StockQuote>(
      future: _quote,
      builder: (context, snap) {
        final q = snap.data;
        if (last == null || q == null || last.price <= 0) return Text(l10n.portfolioClosedNote);
        final pct = (q.price / last.price - 1) * 100;
        return Text.rich(
          key: ValueKey('closed-since-${widget.position.symbol}'),
          TextSpan(
            text: '${l10n.portfolioClosedNote} · ',
            children: [
              TextSpan(
                text: l10n.portfolioSinceSale(widget.fmt.percent(pct, withSign: true)),
                style: TextStyle(color: gainColor(p, pct), fontWeight: FontWeight.w600),
              ),
            ],
          ),
        );
      },
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
                    '${fmt.quantity(pos.quantity)} × '
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
                            // Mi mozgatta ma: a két legnagyobb mai változás (ha legalább kettő mozdult).
                            if (s != null && !s.unknown && topDayMovers(s).isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: _TodayMovers(snapshot: s, fmt: fmt),
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

/// „Ma leginkább mozgott: NVDA +39 284 HUF · OTP +18 600 HUF” – a két legnagyobb mai
/// változás pozíciónként, színezve (a portfólió oldalán és a kezdőképernyő kártyáján).
class _TodayMovers extends StatelessWidget {
  const _TodayMovers({required this.snapshot, required this.fmt});

  final PortfolioSnapshot snapshot;
  final Fmt fmt;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return Text.rich(
      key: const ValueKey('portfolio-movers'),
      TextSpan(
        text: '${l10n.portfolioTodayMovers} ',
        children: [
          for (final (i, m) in topDayMovers(snapshot).indexed) ...[
            if (i > 0) const TextSpan(text: ' · '),
            TextSpan(text: '${m.symbol} '),
            TextSpan(
              text: fmt.money(m.amount, snapshot.currency, withSign: true),
              style: TextStyle(color: gainColor(p, m.amount), fontWeight: FontWeight.w600),
            ),
          ],
        ],
      ),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted),
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
      builder: (context, _) {
        final goal = prefs.portfolioGoal;
        final r = snapshot.annualReturn;
        // A mostani éves hozammal mikor érhető el (befizetés nélkül, kamatos kamattal);
        // az éves hozam a részvényeké, a készpénz nem nő vele.
        final year = goal != null && r != null && goal.currency == snapshot.currency
            ? goalYear(snapshot.value, goal.amount, r, DateTime.now(), cash: snapshot.cash)
            : null;
        return GoalProgress(
          keyPrefix: 'goal',
          goal: goal,
          currency: snapshot.currency,
          current: snapshot.totalValue,
          setLabel: l10n.portfolioGoalSet,
          dialogTitle: l10n.portfolioGoalTitle,
          dialogLabel: l10n.portfolioTotalValue,
          text: (ratio, goal) => ratio >= 1
              ? l10n.portfolioGoalReached(fmt.money(goal.amount, goal.currency))
              : l10n.portfolioGoalProgress(
                  fmt.percent(ratio * 100, decimals: 0),
                  fmt.money(goal.amount, goal.currency),
                ),
          onChanged: prefs.setPortfolioGoal,
          fmt: fmt,
          footnote: year == null ? null : l10n.portfolioGoalEta(fmt.percent(r! * 100, withSign: true), '$year'),
        );
      },
    );
  }
}
