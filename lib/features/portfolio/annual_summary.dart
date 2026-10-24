import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/share/share_text.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'portfolio_store.dart';

/// Egy év összesítése egy számlán (`null`: számla nélkül), egy pénznemben:
/// az eladások bevétele, FIFO szerinti bekerülési értéke és nyeresége (a díjjal),
/// a kapott osztalék és a fizetett díj – átváltás nélkül.
typedef SummaryRow = ({
  String? account,
  String currency,
  double proceeds,
  double cost,
  double dividends,
  double fees,
  int sales,
});

/// Az évek, amelyekben volt eladás, osztalék vagy díj (az újabb elöl).
/// A jövőre rögzített (bejelentett) osztalék még nem számít: üres év nem jelenik meg.
List<int> summaryYears(PortfolioStore store, {DateTime? now}) {
  final today = now ?? DateTime.now();
  return {
    for (final p in store.allPositions)
      for (final s in p.sales) ?s.date?.year,
    for (final d in store.dividends)
      if (d.date case final date? when !date.isAfter(today)) date.year,
    for (final l in store.lots)
      if (l.fee > 0) ?l.date?.year,
  }.toList()..sort((a, b) => b.compareTo(a));
}

/// Egy év sorai számlánként és pénznemenként (a számla nélküliek elöl, aztán ábécérendben).
List<SummaryRow> annualSummary(PortfolioStore store, int year) {
  final rows = <(String?, String), SummaryRow>{};
  void add((String?, String) key, {double proceeds = 0, double cost = 0, double dividends = 0, double fees = 0}) {
    final r = rows[key];
    rows[key] = (
      account: key.$1,
      currency: key.$2,
      proceeds: (r?.proceeds ?? 0) + proceeds,
      cost: (r?.cost ?? 0) + cost,
      dividends: (r?.dividends ?? 0) + dividends,
      fees: (r?.fees ?? 0) + fees,
      sales: (r?.sales ?? 0) + (proceeds != 0 || cost != 0 ? 1 : 0),
    );
  }

  for (final p in store.allPositions) {
    for (final s in p.sales) {
      if (s.date?.year == year) add((s.account, p.currency), proceeds: s.proceeds, cost: s.cost);
    }
  }
  final now = DateTime.now();
  for (final d in store.dividends) {
    // A jövőre rögzített (bejelentett) osztalék még nem kapott.
    if (d.date case final date? when date.year == year && !date.isAfter(now)) {
      add((d.account, d.currency), dividends: d.amount);
    }
  }
  for (final l in store.lots) {
    if (l.fee > 0 && l.date?.year == year) add((l.account, l.currency), fees: l.fee);
  }
  return rows.values.toList()..sort((a, b) {
    final c = (a.account ?? '').compareTo(b.account ?? '');
    return c != 0 ? c : a.currency.compareTo(b.currency);
  });
}

/// Egy összesítő-sor a lapon és a megosztott szövegben: felirat, érték, a
/// nyereség (a színezéshez) és a teszt-kulcs.
typedef _Line = ({String label, String value, double? gain, String? key});

/// A sor fejléce: számlák esetén a számla (a számla nélküli rész is megnevezve) és a pénznem.
String _heading(AppLocalizations l10n, SummaryRow r, bool withAccounts) =>
    [if (withAccounts) r.account ?? l10n.portfolioNoAccount, r.currency].join(' · ');

List<_Line> _lines(AppLocalizations l10n, Fmt fmt, SummaryRow r) {
  final id = '${r.account ?? '*'}-${r.currency}';
  final realized = r.proceeds - r.cost;
  return [
    if (r.sales > 0) ...[
      (label: l10n.portfolioProceeds, value: fmt.money(r.proceeds, r.currency), gain: null, key: null),
      (label: l10n.portfolioCostBasis, value: fmt.money(r.cost, r.currency), gain: null, key: null),
      (
        label: l10n.portfolioRealized,
        value: fmt.money(realized, r.currency, withSign: true),
        gain: realized,
        key: 'annual-summary-realized-$id',
      ),
    ],
    if (r.dividends > 0)
      (
        label: l10n.portfolioDividendsReceived,
        value: fmt.money(r.dividends, r.currency),
        gain: null,
        key: 'annual-summary-dividends-$id',
      ),
    if (r.fees > 0) (label: l10n.portfolioFeesPaid, value: fmt.money(r.fees, r.currency), gain: null, key: null),
  ];
}

/// Az éves összesítő lapja: évválasztó, számlánként és pénznemenként a
/// realizált nyereség (bevétel és bekerülési érték), a kapott osztalék és a
/// fizetett díj; szövegként megosztható.
Future<void> showAnnualSummary(BuildContext context) => showModalBottomSheet<void>(
  context: context,
  showDragHandle: true,
  isScrollControlled: true,
  builder: (_) => const _AnnualSummarySheet(),
);

class _AnnualSummarySheet extends StatefulWidget {
  const _AnnualSummarySheet();

  @override
  State<_AnnualSummarySheet> createState() => _AnnualSummarySheetState();
}

class _AnnualSummarySheetState extends State<_AnnualSummarySheet> {
  int? _year;

  /// A sorok szövegként (a megosztáshoz): év, számla, pénznem és az összegek.
  String _text(AppLocalizations l10n, Fmt fmt, int year, List<SummaryRow> rows) {
    final b = StringBuffer('${l10n.portfolioAnnualSummaryYear('$year')}\n');
    final withAccounts = rows.any((r) => r.account != null);
    for (final r in rows) {
      b
        ..writeln()
        ..writeln(_heading(l10n, r, withAccounts));
      for (final l in _lines(l10n, fmt, r)) {
        b.writeln('${l.label}: ${l.value}');
      }
    }
    b.writeln();
    b.writeln(l10n.portfolioAnnualSummaryNote);
    return b.toString();
  }

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
        final years = summaryYears(services.portfolio);
        // Alapból a legutóbbi lezárt év (a bevallás éve), ha van; különben a legújabb.
        final year = switch (_year) {
          final y? when years.contains(y) => y,
          _ => years.where((y) => y < DateTime.now().year).firstOrNull ?? years.firstOrNull,
        };
        final rows = year == null ? const <SummaryRow>[] : annualSummary(services.portfolio, year);
        final withAccounts = rows.any((r) => r.account != null);
        Widget line(String label, String value, {Color? color, Key? key}) => Padding(
          key: key,
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Row(
            children: [
              Expanded(
                child: Text(label, style: TextStyle(color: p.muted)),
              ),
              Text(
                value,
                style: TextStyle(fontWeight: FontWeight.w600, color: color),
              ),
            ],
          ),
        );
        return SafeArea(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * 0.85),
            child: ListView(
              key: const ValueKey('annual-summary'),
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
              children: [
                Row(
                  children: [
                    Expanded(child: Text(l10n.portfolioAnnualSummary, style: theme.textTheme.titleMedium)),
                    if (year != null && rows.isNotEmpty)
                      IconButton(
                        key: const ValueKey('annual-summary-share'),
                        tooltip: l10n.shareAsText,
                        icon: const Icon(Icons.ios_share_rounded),
                        onPressed: () =>
                            shareText(_text(l10n, fmt, year, rows), subject: l10n.portfolioAnnualSummaryYear('$year')),
                      ),
                  ],
                ),
                if (years.isEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(l10n.portfolioEmpty, style: TextStyle(color: p.muted)),
                  )
                else ...[
                  const SizedBox(height: 4),
                  Wrap(
                    spacing: 8,
                    runSpacing: 6,
                    children: [
                      for (final y in years)
                        ChoiceChip(
                          key: ValueKey('annual-summary-year-$y'),
                          label: Text('$y'),
                          selected: y == year,
                          onSelected: (_) => setState(() => _year = y),
                        ),
                    ],
                  ),
                  for (final r in rows) ...[
                    const SizedBox(height: 14),
                    Text(
                      _heading(l10n, r, withAccounts),
                      key: ValueKey('annual-summary-${r.account ?? '*'}-${r.currency}'),
                      style: theme.textTheme.labelLarge,
                    ),
                    const Divider(height: 10),
                    for (final l in _lines(l10n, fmt, r))
                      line(
                        l.label,
                        l.value,
                        color: l.gain == null ? null : gainColor(p, l.gain!),
                        key: switch (l.key) {
                          final k? => ValueKey(k),
                          _ => null,
                        },
                      ),
                  ],
                  const SizedBox(height: 14),
                  Text(l10n.portfolioAnnualSummaryNote, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
