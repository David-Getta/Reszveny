import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/analysis_extras.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_details.dart';
import '../../core/models/stock_report.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../stock_detail/widgets/outlook_view.dart';
import 'compare_rows.dart';

/// Részvények összehasonlítása (legfeljebb [maxStocks]): a fő mutatók egymás
/// mellett, soronként a legjobb érték kiemelve, alul az elmentett elemzések
/// lényege (hangulat, legvalószínűbb forgatókönyv).
class ComparePage extends StatefulWidget {
  const ComparePage({super.key, required this.symbols, this.onOpenSymbol});

  final List<String> symbols;
  final ValueChanged<StockCandidate>? onOpenSymbol;

  static const maxStocks = 3;

  static Future<void> open(BuildContext context, List<String> symbols, {ValueChanged<StockCandidate>? onOpenSymbol}) =>
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => ComparePage(symbols: symbols, onOpenSymbol: onOpenSymbol),
        ),
      );

  @override
  State<ComparePage> createState() => _ComparePageState();
}

class _ComparePageState extends State<ComparePage> {
  late final List<String> _symbols = [...widget.symbols.map((s) => s.toUpperCase())];
  final Map<String, Future<StockDetails>> _details = {};
  final Map<String, Future<EarningsOverview?>> _earnings = {};
  final Map<String, StockReport?> _reports = {};
  bool _askedOnce = false;
  Future<List<StockDetails?>>? _all;

  /// Az oszlopok adatai együtt; egy részvény hibája nem dönti be a többit
  /// (annak az oszlopa üres marad).
  void _combine() => _all = Future.wait([
    for (final s in _symbols) _details[s]!.then<StockDetails?>((d) => d, onError: (Object _) => null),
  ]);

  /// A gyorsjelentés-adatok oszloponként (hiba vagy hiány esetén `null`).
  Future<List<EarningsOverview?>> _allEarnings() => Future.wait([for (final s in _symbols) _earnings[s]!]);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (final s in _symbols) {
      _load(s);
    }
    _combine();
    // Egy részvénnyel indulva rögtön kérjük a másodikat.
    if (!_askedOnce && _symbols.length < 2) {
      _askedOnce = true;
      WidgetsBinding.instance.addPostFrameCallback((_) => _add());
    }
  }

  void _load(String symbol) {
    final services = AppServices.of(context);
    _details.putIfAbsent(symbol, () => services.marketData.details(symbol));
    _earnings.putIfAbsent(
      symbol,
      () => services.marketData.earnings(symbol).then<EarningsOverview?>((e) => e, onError: (Object _) => null),
    );
    if (!_reports.containsKey(symbol)) {
      _reports[symbol] = null;
      final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
      services.reports.restore(symbol, language: language).then((r) {
        if (mounted) setState(() => _reports[symbol] = r);
      });
    }
  }

  Future<void> _add() async {
    final picked = await showDialog<String>(
      context: context,
      builder: (_) => _PickDialog(exclude: _symbols),
    );
    if (picked == null || !mounted || _symbols.contains(picked)) return;
    setState(() {
      _symbols.add(picked);
      _load(picked);
      _combine();
    });
  }

  void _remove(String symbol) => setState(() {
    _symbols.remove(symbol);
    _combine();
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.compareTitle),
        actions: [
          if (_symbols.length < ComparePage.maxStocks)
            IconButton(
              key: const ValueKey('compare-add'),
              tooltip: l10n.compareAdd,
              icon: const Icon(Icons.add_rounded),
              onPressed: _add,
            ),
        ],
      ),
      body: FutureBuilder<List<StockDetails?>>(
        future: _all,
        builder: (context, snap) {
          // Új részvénynél a régi adat még a korábbi oszlopokra szól.
          if (!snap.hasData || snap.data!.length != _symbols.length) {
            return const Center(child: CircularProgressIndicator());
          }
          final stocks = snap.data!;
          return FutureBuilder<List<EarningsOverview?>>(
            future: _allEarnings(),
            builder: (context, earningsSnap) {
              final earnings = earningsSnap.data;
              final rows = buildCompareRows(
                l10n,
                fmt,
                stocks,
                earnings: earnings != null && earnings.length == _symbols.length ? earnings : null,
              );
              return _table(context, stocks, rows);
            },
          );
        },
      ),
    );
  }

  Widget _table(BuildContext context, List<StockDetails?> stocks, List<CompareRow> rows) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    const labelWidth = 132.0, colWidth = 118.0;
    Widget cell(String? text, {bool best = false, bool head = false, double width = colWidth}) => Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 9),
      decoration: best
          ? BoxDecoration(color: p.positive.withValues(alpha: 0.14), borderRadius: BorderRadius.circular(8))
          : null,
      child: Text(
        text ?? '—',
        maxLines: head ? 2 : 3,
        overflow: TextOverflow.ellipsis,
        style: head
            ? theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700)
            : theme.textTheme.bodyMedium?.copyWith(
                fontWeight: best ? FontWeight.w700 : null,
                color: best ? p.positive : (text == null ? p.muted : null),
              ),
      ),
    );

    return ListView(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 32),
      children: [
        Text(l10n.compareHint, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Fejléc: ticker, cégnév, eltávolítás.
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: labelWidth),
                  for (final (i, s) in _symbols.indexed)
                    SizedBox(
                      width: colWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: widget.onOpenSymbol == null
                                      ? null
                                      : () => widget.onOpenSymbol!(
                                          StockCandidate(symbol: s, companyName: stocks[i]?.profile?.name ?? s),
                                        ),
                                  child: cell(s, head: true),
                                ),
                              ),
                              if (_symbols.length > 1)
                                IconButton(
                                  key: ValueKey('compare-remove-$s'),
                                  tooltip: l10n.compareRemove,
                                  visualDensity: VisualDensity.compact,
                                  icon: Icon(Icons.close_rounded, size: 16, color: p.muted),
                                  onPressed: () => _remove(s),
                                ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              stocks[i] == null ? l10n.notAvailable : (stocks[i]!.profile?.name ?? ''),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 6),
              for (final (r, row) in rows.indexed)
                Container(
                  color: r.isEven ? p.border.withValues(alpha: 0.25) : null,
                  child: Row(
                    children: [
                      cell(row.label, width: labelWidth),
                      for (final (i, v) in row.values.indexed) cell(v, best: row.best == i),
                    ],
                  ),
                ),
              const SizedBox(height: 14),
              // Az elmentett elemzések lényege.
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cell(l10n.aiSectionTitle, width: labelWidth),
                  for (final s in _symbols) _AnalysisCell(report: _reports[s], width: colWidth, fmt: fmt),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AnalysisCell extends StatelessWidget {
  const _AnalysisCell({required this.report, required this.width, required this.fmt});

  final StockReport? report;
  final double width;
  final Fmt fmt;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final r = report;
    final small = theme.textTheme.bodySmall;
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 9),
      child: r == null
          ? Text(l10n.compareNoAnalysis, style: small?.copyWith(color: p.muted))
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (r.outlook?.marketMood case final m?)
                  Text(
                    moodLabel(l10n, m),
                    style: small?.copyWith(fontWeight: FontWeight.w700, color: p.accent),
                  ),
                if (r.outlook?.mostLikely case final s?) ...[
                  const SizedBox(height: 4),
                  Text(
                    '${l10n.scenarioMostLikely}: ${scenarioLabel(l10n, s.kind)} (${fmt.percent(s.probability, decimals: 0)})',
                    style: small,
                  ),
                ],
                if (r.headline.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    r.headline,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: small?.copyWith(color: p.muted),
                  ),
                ],
              ],
            ),
    );
  }
}

/// Részvény választása az összehasonlításhoz: ticker beírása, vagy a
/// kedvencek és a legutóbbiak közül.
class _PickDialog extends StatefulWidget {
  const _PickDialog({required this.exclude});

  final List<String> exclude;

  @override
  State<_PickDialog> createState() => _PickDialogState();
}

class _PickDialogState extends State<_PickDialog> {
  final _ticker = TextEditingController();

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  void _submit([String? value]) {
    final s = (value ?? _ticker.text).trim().toUpperCase();
    if (s.isEmpty) return;
    Navigator.of(context).pop(s);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final prefs = AppServices.of(context).preferences;
    final quick = {...prefs.favorites, ...prefs.recent}.where((s) => !widget.exclude.contains(s)).take(10).toList();
    return AlertDialog(
      title: Text(l10n.compareAdd),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            key: const ValueKey('compare-ticker'),
            controller: _ticker,
            autofocus: true,
            textCapitalization: TextCapitalization.characters,
            autocorrect: false,
            onSubmitted: _submit,
            decoration: InputDecoration(hintText: l10n.compareTickerHint),
          ),
          if (quick.isNotEmpty) ...[
            const SizedBox(height: 14),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                for (final s in quick)
                  ActionChip(key: ValueKey('compare-pick-$s'), label: Text(s), onPressed: () => _submit(s)),
              ],
            ),
          ],
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        FilledButton(key: const ValueKey('compare-pick-ok'), onPressed: _submit, child: Text(l10n.compareAdd)),
      ],
    );
  }
}
