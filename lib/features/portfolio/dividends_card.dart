import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/date_picker_row.dart';
import '../../widgets/metric_hint.dart';
import 'add_lot_dialog.dart' show parseDecimal;
import 'dividend_forecast.dart';
import 'goal_dialog.dart';
import 'portfolio_store.dart';

/// „Kapott osztalékok” kártya a portfólió oldalon: az idei és az összes kapott
/// osztalék a portfólió pénznemében (a mai árfolyamon átváltva), az utolsó
/// tételek listája törléssel (visszavonható), és kézi felvétel.
class DividendsCard extends StatelessWidget {
  const DividendsCard({super.key, required this.currency, this.annualDividend = 0, this.account});

  /// A portfólió összesítésének pénzneme.
  final String currency;

  /// Csak ennek a számlának az osztalékai és pozíciói (`null`: mind, a havi céllal).
  final String? account;

  /// A még birtokolt részvények várható évi osztaléka a mai hozamokból, a
  /// [currency] pénznemben (a havi osztalékcél haladásához).
  final double annualDividend;

  static const maxListed = 8;

  /// Legfeljebb ennyi várható kifizetés a listában.
  static const maxExpected = 5;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final services = AppServices.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return ListenableBuilder(
      listenable: services.portfolio,
      builder: (context, _) {
        final all = services.portfolio.dividendsIn(account);
        final positions = services.portfolio.positionsIn(account);
        final now = DateTime.now();
        final year = now.year;
        // Várható következő kifizetések a még birtokolt részvényekre, a rögzítettek ritmusából.
        final expected = expectedDividends(all, positions.map((x) => x.symbol), now: now);
        // Az osztalékok és a nyitott pozíciók pénznemei (a bekerülési osztalékhozamhoz is).
        final currencies = {for (final d in all) d.currency, for (final x in positions) x.currency}..remove(currency);
        return Card(
          key: const ValueKey('portfolio-dividends-received'),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        l10n.portfolioDividendsReceived,
                        style: theme.textTheme.labelLarge?.copyWith(color: p.muted),
                      ),
                    ),
                    IconButton(
                      key: const ValueKey('dividend-add'),
                      tooltip: l10n.portfolioAddDividend,
                      icon: const Icon(Icons.add_rounded),
                      onPressed: () => showAddDividendDialog(context, currency: currency, account: account),
                    ),
                  ],
                ),
                if (all.isEmpty)
                  Padding(
                    padding: const EdgeInsets.only(right: 8, bottom: 4),
                    child: Text(
                      l10n.portfolioDividendsEmpty,
                      style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                    ),
                  )
                else ...[
                  // Összesítés: a más pénznemű tételek a mai árfolyamon.
                  FutureBuilder<Map<String, double>>(
                    key: ValueKey(currencies.join(',')),
                    future: _rates(services, currencies),
                    builder: (context, snap) {
                      final rates = snap.data;
                      if (rates == null && currencies.isNotEmpty) return const SizedBox(height: 40);
                      double? rate(String c) => c == currency ? 1.0 : rates?[c];
                      double sum(Iterable<DividendRecord> ds) => ds.fold(0.0, (s, d) {
                        final r = rate(d.currency);
                        return r == null ? s : s + d.amount * r;
                      });
                      // Bekerülési osztalékhozam: csak a még birtokolt (és átváltható) részvények
                      // osztaléka az ő vételi értékükhöz mérve – ugyanaz a számítás, mint a pozíció kártyáján.
                      var cost = 0.0;
                      final held = <String>{};
                      for (final x in positions) {
                        final r = rate(x.currency);
                        if (r == null) continue;
                        cost += x.cost * r;
                        held.add(x.symbol);
                      }
                      final yoc = yieldOnCost(
                        all.where((d) => held.contains(d.symbol)),
                        cost,
                        now: now,
                        rate: (d) => rate(d.currency),
                      );
                      // Évenként is, ha több évből van tétel (az adóbevalláshoz).
                      final years = {for (final d in all) ?d.date?.year}.toList()..sort((a, b) => b.compareTo(a));
                      final byYear = {for (final y in years) y: sum(all.where((d) => d.date?.year == y))};
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 28,
                            runSpacing: 10,
                            children: [
                              MetricFigure(
                                key: const ValueKey('dividends-this-year'),
                                label: l10n.portfolioDividendsThisYear,
                                value: fmt.money(sum(all.where((d) => d.date?.year == year)), currency),
                              ),
                              MetricFigure(
                                key: const ValueKey('dividends-all-time'),
                                label: l10n.portfolioDividendsAllTime,
                                value: fmt.money(sum(all), currency),
                              ),
                              if (yoc != null)
                                MetricFigure(
                                  key: const ValueKey('dividends-yield-on-cost'),
                                  label: l10n.labelYieldOnCost,
                                  value: fmt.percent(yoc),
                                  hint: l10n.glossYieldOnCost,
                                ),
                            ],
                          ),
                          // Havonta: az elmúlt 12 hónap kapott és a következő 3 hónap várható osztaléka.
                          _MonthsChart(
                            months: dividendMonths(all, expected, now: now, rate: rate),
                            currency: currency,
                            fmt: fmt,
                          ),
                          if (years.length > 1) ...[
                            const SizedBox(height: 10),
                            // Évenként az összeg és – lezárt évnél, ha az előző évből is van tétel – a
                            // változás hozzá képest (a folyó és a jövőbeli év részeredmény, ott nincs százalék).
                            for (final y in years)
                              Padding(
                                key: ValueKey('dividends-year-$y'),
                                padding: const EdgeInsets.only(right: 8, bottom: 2),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text('$y', style: TextStyle(color: p.muted)),
                                    ),
                                    if (y < year && byYear.containsKey(y - 1))
                                      if (yearChange(byYear[y]!, byYear[y - 1]!) case final c?)
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Text(
                                            fmt.percent(c, withSign: true, decimals: 0),
                                            key: ValueKey('dividends-year-change-$y'),
                                            style: theme.textTheme.bodySmall?.copyWith(color: gainColor(p, c)),
                                          ),
                                        ),
                                    Text(fmt.money(byYear[y]!, currency)),
                                  ],
                                ),
                              ),
                          ],
                        ],
                      );
                    },
                  ),
                  if (expected.isNotEmpty) ...[
                    const SizedBox(height: 10),
                    Text(l10n.portfolioDividendsExpected, style: theme.textTheme.labelMedium?.copyWith(color: p.muted)),
                    for (final x in expected.take(maxExpected))
                      Padding(
                        key: ValueKey('dividend-expected-${x.symbol}'),
                        padding: const EdgeInsets.only(right: 8, top: 4),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  text: x.symbol,
                                  style: const TextStyle(fontWeight: FontWeight.w600),
                                  children: [
                                    TextSpan(
                                      text: '  ${l10n.portfolioDividendAround(fmt.date(x.date))}',
                                      style: TextStyle(color: p.muted, fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(approxMoney(fmt, x.amount, x.currency), style: TextStyle(color: p.muted)),
                            // Megérkezett: egy koppintással rögzíthető a várható adatokkal előre kitöltve.
                            IconButton(
                              key: ValueKey('dividend-expected-add-${x.symbol}'),
                              tooltip: l10n.portfolioAddDividend,
                              visualDensity: VisualDensity.compact,
                              icon: Icon(Icons.add_circle_outline_rounded, size: 18, color: p.muted),
                              // Több számlán érkező kifizetésnél a legnagyobb rész a saját számlájára
                              // (a többi a számla nézetéből vagy kézzel rögzíthető).
                              onPressed: () {
                                final part = account != null || x.byAccount.isEmpty
                                    ? null
                                    : (x.byAccount.entries.toList()..sort((a, b) => b.value.compareTo(a.value))).first;
                                showAddDividendDialog(
                                  context,
                                  symbol: x.symbol,
                                  currency: x.currency,
                                  amount: part?.value ?? x.amount,
                                  date: x.date,
                                  account: part?.key ?? account,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, top: 4),
                      child: Text(
                        l10n.portfolioDividendsExpectedNote,
                        style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                      ),
                    ),
                  ],
                  const SizedBox(height: 8),
                  for (final d in all.take(maxListed))
                    Row(
                      key: ValueKey('dividend-${d.id}'),
                      children: [
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: d.symbol,
                              style: const TextStyle(fontWeight: FontWeight.w600),
                              children: [
                                // Minden számla nézetében a tétel számlája is (ha van).
                                if ([if (d.date != null) fmt.date(d.date!), if (account == null) ?d.account].join(' · ')
                                    case final meta when meta.isNotEmpty)
                                  TextSpan(
                                    text: '  $meta',
                                    style: TextStyle(color: p.muted, fontWeight: FontWeight.normal),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Text(fmt.money(d.amount, d.currency), style: const TextStyle(fontWeight: FontWeight.w600)),
                        IconButton(
                          key: ValueKey('dividend-delete-${d.id}'),
                          tooltip: l10n.portfolioRemove,
                          visualDensity: VisualDensity.compact,
                          icon: Icon(Icons.close_rounded, size: 18, color: p.muted),
                          onPressed: () => _delete(context, d),
                        ),
                      ],
                    ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      l10n.portfolioDividendsHint,
                      style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                    ),
                  ),
                ],
                // Havi osztalékcél: a mai hozamokból várható évi osztalék havi átlaga a célhoz
                // (az egész portfólióra szól, számla-nézetben nincs).
                if (account == null) _DividendGoal(currency: currency, monthly: annualDividend / 12, fmt: fmt),
              ],
            ),
          ),
        );
      },
    );
  }

  /// Árfolyamok a más pénznemű tételekhez; ha valamelyik nincs, az kimarad.
  Future<Map<String, double>> _rates(AppServices services, Set<String> currencies) =>
      services.fx.ratesFor(currencies, currency);

  Future<void> _delete(BuildContext context, DividendRecord d) async {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final messenger = ScaffoldMessenger.of(context);
    await services.portfolio.removeDividend(d.id);
    messenger.showSnackBar(
      SnackBar(
        content: Text(l10n.portfolioDividendDeleted),
        action: SnackBarAction(label: l10n.undo, onPressed: () => services.portfolio.restoreDividend(d)),
      ),
    );
  }
}

/// Kapott osztalék kézi felvétele: ticker, összeg, pénznem és a kifizetés napja;
/// `true`-val tér vissza, ha bekerült. [amount] és [date] a várható kifizetésből
/// előre kitölthető (akkor a megadott pénznem az irányadó, nem a pozícióé; a
/// jövőbeli várható nap helyett a mai kerül be – kapott osztalékot rögzítünk).
Future<bool> showAddDividendDialog(
  BuildContext context, {
  String? symbol,
  required String currency,
  double? amount,
  DateTime? date,
  String? account,
}) async {
  final services = AppServices.of(context);
  // Ismert részvénynél a pozíció pénzneme a valószínű; különben az összesítésé.
  final ccy = symbol == null || amount != null
      ? currency
      : (services.portfolio.positionOf(symbol)?.currency ?? currency);
  final added = await showDialog<bool>(
    context: context,
    builder: (_) => _AddDividendDialog(symbol: symbol, currency: ccy, amount: amount, date: date, account: account),
  );
  return added ?? false;
}

class _AddDividendDialog extends StatefulWidget {
  const _AddDividendDialog({this.symbol, required this.currency, this.amount, this.date, this.account});

  /// Előre kitöltött számla (pl. a portfólió oldalon választott számla).
  final String? account;

  final String? symbol;
  final String currency;
  final double? amount;
  final DateTime? date;

  @override
  State<_AddDividendDialog> createState() => _AddDividendDialogState();
}

class _AddDividendDialogState extends State<_AddDividendDialog> {
  late final _symbol = TextEditingController(text: widget.symbol ?? '');
  late final _amount = TextEditingController(text: widget.amount == null ? '' : widget.amount!.toStringAsFixed(2));
  late final _currency = TextEditingController(text: widget.currency);
  late DateTime _date = switch (widget.date) {
    final d? when !d.isAfter(DateTime.now()) => d,
    _ => DateTime.now(),
  };
  bool _symbolError = false;
  String? _amountError;
  bool _currencyError = false;

  /// A számla mezője (csak ha már van számla); alapból a megadott, különben ahol
  /// a részvényből a legtöbb van.
  TextEditingController? _accountField;
  late final String? _initialAccount =
      widget.account ??
      switch (widget.symbol) {
        final s? => (AppServices.of(
          context,
        ).portfolio.heldByAccount(s).entries.toList()..sort((a, b) => b.value.compareTo(a.value))).firstOrNull?.key,
        _ => null,
      };

  static final _symbolPattern = RegExp(r'^[A-Z0-9][A-Z0-9.\-:^]{0,14}$');

  @override
  void dispose() {
    _symbol.dispose();
    _amount.dispose();
    _currency.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final l10n = AppLocalizations.of(context);
    final symbol = _symbol.text.trim().toUpperCase();
    final amount = parseDecimal(_amount.text);
    final ccy = _currency.text.trim().toUpperCase();
    setState(() {
      _symbolError = !_symbolPattern.hasMatch(symbol);
      _amountError = amount == null || amount <= 0 ? l10n.portfolioInvalidNumber : null;
      _currencyError = !RegExp(r'^[A-Z]{3}$').hasMatch(ccy);
    });
    if (_symbolError || _amountError != null || _currencyError) return;
    await AppServices.of(context).portfolio
        .addDividend(symbol: symbol, amount: amount!, currency: ccy, date: _date, account: _accountField?.text);
    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(l10n.portfolioAddDividend),
      content: SizedBox(
        width: 360,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    key: const ValueKey('dividend-symbol'),
                    controller: _symbol,
                    autofocus: widget.symbol == null,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(labelText: l10n.labelSymbol, errorText: _symbolError ? '' : null),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  flex: 2,
                  child: TextField(
                    key: const ValueKey('dividend-currency'),
                    controller: _currency,
                    textCapitalization: TextCapitalization.characters,
                    maxLength: 3,
                    decoration: InputDecoration(
                      labelText: l10n.labelCurrency,
                      counterText: '',
                      errorText: _currencyError ? '' : null,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('dividend-amount'),
              controller: _amount,
              autofocus: widget.symbol != null,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: l10n.portfolioDividendAmount(_currency.text.trim().toUpperCase()),
                errorText: _amountError,
              ),
              onSubmitted: (_) => _submit(),
            ),
            const SizedBox(height: 12),
            DatePickerRow(label: l10n.portfolioDividendDate, date: _date, onChanged: (d) => setState(() => _date = d)),
            // Számla (ha már van): a meglévők közül kiegészítve; nem kötelező.
            if (AppServices.of(context).portfolio.accounts case final accounts when accounts.isNotEmpty)
              Autocomplete<String>(
                initialValue: TextEditingValue(text: _initialAccount ?? ''),
                optionsBuilder: (v) {
                  final q = v.text.trim().toLowerCase();
                  return accounts.where((a) => a.toLowerCase().contains(q));
                },
                fieldViewBuilder: (context, controller, focusNode, _) {
                  _accountField = controller;
                  return TextField(
                    key: const ValueKey('dividend-account'),
                    controller: controller,
                    focusNode: focusNode,
                    maxLength: PortfolioLot.maxAccountName,
                    decoration: InputDecoration(
                      labelText: l10n.portfolioAccount,
                      hintText: l10n.portfolioAccountHint,
                      counterText: '',
                    ),
                    onSubmitted: (_) => _submit(),
                  );
                },
              ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(false), child: Text(l10n.cancel)),
        FilledButton(key: const ValueKey('dividend-submit'), onPressed: _submit, child: Text(l10n.portfolioAdd)),
      ],
    );
  }
}

/// Havi oszlopdiagram: a kapott osztalék teli, a várható halvány oszlop (a folyó
/// hónapban egymásra rakva); koppintva vagy fölé állva a hónap összegei. Ha az
/// ablakban nincs tétel, nem látszik.
class _MonthsChart extends StatelessWidget {
  const _MonthsChart({required this.months, required this.currency, required this.fmt});

  final List<DividendMonth> months;
  final String currency;
  final Fmt fmt;

  static const _height = 64.0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final max = months.fold(0.0, (m, x) => math.max(m, x.received + x.expected));
    if (max <= 0) return const SizedBox.shrink();
    final now = DateTime.now();
    // Legalább 2 képpont, hogy a kis összeg is látsszon.
    double h(double v) => v <= 0 ? 0 : math.max(2, _height * v / max);
    Widget swatch(Color c) => Container(
      width: 10,
      height: 10,
      margin: const EdgeInsetsDirectional.only(end: 4),
      decoration: BoxDecoration(color: c, borderRadius: BorderRadius.circular(2)),
    );
    final light = p.accent.withValues(alpha: 0.3);
    return Padding(
      key: const ValueKey('dividends-months'),
      padding: const EdgeInsets.only(top: 12, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.portfolioDividendsByMonth, style: theme.textTheme.labelMedium?.copyWith(color: p.muted)),
          const SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (final m in months)
                Expanded(
                  child: Tooltip(
                    key: ValueKey('dividend-month-${m.month.year}-${m.month.month.toString().padLeft(2, '0')}'),
                    message: [
                      '${fmt.monthYear(m.month)}: ${fmt.money(m.received, currency)}',
                      if (m.expected > 0) '${l10n.dividendsLegendExpected}: ${approxMoney(fmt, m.expected, currency)}',
                    ].join('\n'),
                    triggerMode: TooltipTriggerMode.tap,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: _height - h(m.received + m.expected)),
                          if (m.expected > 0)
                            Container(
                              height: h(m.expected),
                              decoration: BoxDecoration(
                                color: light,
                                borderRadius: const BorderRadius.vertical(top: Radius.circular(3)),
                              ),
                            ),
                          if (m.received > 0)
                            Container(
                              height: h(m.received),
                              decoration: BoxDecoration(
                                color: p.accent,
                                borderRadius: m.expected > 0
                                    ? null
                                    : const BorderRadius.vertical(top: Radius.circular(3)),
                              ),
                            ),
                          const SizedBox(height: 4),
                          Text(
                            fmt.monthNarrow(m.month),
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: p.muted,
                              fontSize: 10,
                              fontWeight: m.month.year == now.year && m.month.month == now.month
                                  ? FontWeight.w700
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 14,
            runSpacing: 4,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  swatch(p.accent),
                  Text(l10n.dividendsLegendReceived, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                ],
              ),
              if (months.any((m) => m.expected > 0))
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    swatch(light),
                    Text(l10n.dividendsLegendExpected, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Havi osztalékcél: a még birtokolt részvények mai hozamokból várható évi
/// osztalékának havi átlaga a célhoz mérve (közös cél-sáv a portfólió-céllal).
class _DividendGoal extends StatelessWidget {
  const _DividendGoal({required this.currency, required this.monthly, required this.fmt});

  final String currency;
  final double monthly;
  final Fmt fmt;

  @override
  Widget build(BuildContext context) {
    final prefs = AppServices.of(context).preferences;
    final l10n = AppLocalizations.of(context);
    return ListenableBuilder(
      listenable: prefs,
      builder: (context, _) {
        // Becslés nélkül (pl. offline, vagy eladta az osztalékfizetőket) csak a már
        // beállított cél látszik, hogy módosítható vagy törölhető maradjon.
        if (monthly <= 0 && prefs.dividendGoal == null) return const SizedBox.shrink();
        // A szöveg maga mondja, hogy közelítés („kb.”), ezért itt nincs „~”.
        final amount = fmt.money(monthly, currency);
        return GoalProgress(
          keyPrefix: 'dividend-goal',
          goal: prefs.dividendGoal,
          currency: currency,
          current: monthly,
          setLabel: l10n.dividendGoalSet,
          dialogTitle: l10n.dividendGoalTitle,
          dialogLabel: l10n.dividendGoalAmount,
          text: (ratio, goal) => ratio >= 1
              ? l10n.dividendGoalReached(amount, fmt.money(goal.amount, goal.currency))
              : l10n.dividendGoalProgress(
                  amount,
                  fmt.percent(ratio * 100, decimals: 0),
                  fmt.money(goal.amount, goal.currency),
                ),
          onChanged: prefs.setDividendGoal,
          fmt: fmt,
          padding: const EdgeInsets.only(top: 12, bottom: 2, right: 8),
        );
      },
    );
  }
}
