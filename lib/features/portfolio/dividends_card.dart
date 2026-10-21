import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'add_lot_dialog.dart' show parseDecimal;
import 'portfolio_store.dart';

/// „Kapott osztalékok” kártya a portfólió oldalon: az idei és az összes kapott
/// osztalék a portfólió pénznemében (a mai árfolyamon átváltva), az utolsó
/// tételek listája törléssel (visszavonható), és kézi felvétel.
class DividendsCard extends StatelessWidget {
  const DividendsCard({super.key, required this.currency});

  /// A portfólió összesítésének pénzneme.
  final String currency;

  static const maxListed = 8;

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
        final all = services.portfolio.dividends;
        final currencies = {for (final d in all) d.currency}..remove(currency);
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
                      onPressed: () => showAddDividendDialog(context, currency: currency),
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
                      double sum(Iterable<DividendRecord> ds) => ds.fold(0.0, (s, d) {
                        final r = d.currency == currency ? 1.0 : rates?[d.currency];
                        return r == null ? s : s + d.amount * r;
                      });
                      final year = DateTime.now().year;
                      // Évenként is, ha több évből van tétel (az adóbevalláshoz).
                      final years = {for (final d in all) ?d.date?.year}.toList()..sort((a, b) => b.compareTo(a));
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 28,
                            runSpacing: 10,
                            children: [
                              _Figure(
                                key: const ValueKey('dividends-this-year'),
                                label: l10n.portfolioDividendsThisYear,
                                value: fmt.money(sum(all.where((d) => d.date?.year == year)), currency),
                              ),
                              _Figure(
                                key: const ValueKey('dividends-all-time'),
                                label: l10n.portfolioDividendsAllTime,
                                value: fmt.money(sum(all), currency),
                              ),
                            ],
                          ),
                          if (years.length > 1) ...[
                            const SizedBox(height: 10),
                            for (final y in years)
                              Padding(
                                key: ValueKey('dividends-year-$y'),
                                padding: const EdgeInsets.only(right: 8, bottom: 2),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text('$y', style: TextStyle(color: p.muted)),
                                    ),
                                    Text(fmt.money(sum(all.where((d) => d.date?.year == y)), currency)),
                                  ],
                                ),
                              ),
                          ],
                        ],
                      );
                    },
                  ),
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
                                if (d.date != null)
                                  TextSpan(
                                    text: '  ${fmt.date(d.date!)}',
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

class _Figure extends StatelessWidget {
  const _Figure({super.key, required this.label, required this.value});

  final String label;
  final String value;

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
        Text(value, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
      ],
    );
  }
}

/// Kapott osztalék kézi felvétele: ticker, összeg, pénznem és a kifizetés napja.
/// `true`-val tér vissza, ha bekerült.
Future<bool> showAddDividendDialog(BuildContext context, {String? symbol, required String currency}) async {
  final services = AppServices.of(context);
  // Ismert részvénynél a pozíció pénzneme a valószínű; különben az összesítésé.
  final ccy = symbol == null ? currency : (services.portfolio.positionOf(symbol)?.currency ?? currency);
  final added = await showDialog<bool>(
    context: context,
    builder: (_) => _AddDividendDialog(symbol: symbol, currency: ccy),
  );
  return added ?? false;
}

class _AddDividendDialog extends StatefulWidget {
  const _AddDividendDialog({this.symbol, required this.currency});

  final String? symbol;
  final String currency;

  @override
  State<_AddDividendDialog> createState() => _AddDividendDialogState();
}

class _AddDividendDialogState extends State<_AddDividendDialog> {
  late final _symbol = TextEditingController(text: widget.symbol ?? '');
  final _amount = TextEditingController();
  late final _currency = TextEditingController(text: widget.currency);
  DateTime _date = DateTime.now();
  bool _symbolError = false;
  String? _amountError;
  bool _currencyError = false;

  static final _symbolPattern = RegExp(r'^[A-Z0-9][A-Z0-9.\-:^]{0,14}$');

  @override
  void dispose() {
    _symbol.dispose();
    _amount.dispose();
    _currency.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1980),
      lastDate: DateTime.now(),
    );
    if (picked != null) setState(() => _date = picked);
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
    await AppServices.of(context).portfolio.addDividend(symbol: symbol, amount: amount!, currency: ccy, date: _date);
    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
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
            InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: _pickDate,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Icon(Icons.event_outlined, size: 18, color: p.muted),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(l10n.portfolioDividendDate, style: TextStyle(color: p.muted)),
                    ),
                    Text(fmt.date(_date), style: const TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
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
