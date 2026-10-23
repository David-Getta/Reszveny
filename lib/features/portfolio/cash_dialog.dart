import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'add_lot_dialog.dart' show parseAmount;

/// Készpénz a brókernél, pénznemenként: a meglévő egyenlegek listája törléssel,
/// és egy új (vagy módosított) egyenleg megadása. Az összértékbe és a
/// megoszlásba számít, a hozamba nem.
Future<void> showCashDialog(BuildContext context, {required String currency}) => showDialog<void>(
  context: context,
  builder: (_) => _CashDialog(currency: currency),
);

class _CashDialog extends StatefulWidget {
  const _CashDialog({required this.currency});

  final String currency;

  @override
  State<_CashDialog> createState() => _CashDialogState();
}

class _CashDialogState extends State<_CashDialog> {
  late final _currency = TextEditingController(text: widget.currency);
  final _amount = TextEditingController();
  String? _amountError;
  bool _currencyError = false;

  @override
  void dispose() {
    _currency.dispose();
    _amount.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final l10n = AppLocalizations.of(context);
    final ccy = _currency.text.trim().toUpperCase();
    final amount = parseAmount(_amount.text, Localizations.localeOf(context).toString());
    setState(() {
      _currencyError = !RegExp(r'^[A-Z]{3}$').hasMatch(ccy);
      _amountError = amount == null || amount < 0 || !amount.isFinite ? l10n.portfolioInvalidNumber : null;
    });
    if (_currencyError || _amountError != null) return;
    await AppServices.of(context).portfolio.setCash(ccy, amount!);
    if (mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final services = AppServices.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return AlertDialog(
      scrollable: true,
      title: Text(l10n.portfolioCashTitle),
      content: SizedBox(
        width: 360,
        child: ListenableBuilder(
          listenable: services.portfolio,
          builder: (context, _) => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.portfolioCashHint, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
              const SizedBox(height: 8),
              for (final e in services.portfolio.cash.entries)
                Row(
                  key: ValueKey('cash-row-${e.key}'),
                  children: [
                    Expanded(
                      child: Text(fmt.money(e.value, e.key), style: const TextStyle(fontWeight: FontWeight.w600)),
                    ),
                    IconButton(
                      key: ValueKey('cash-remove-${e.key}'),
                      tooltip: l10n.portfolioRemove,
                      visualDensity: VisualDensity.compact,
                      icon: Icon(Icons.close_rounded, size: 18, color: p.muted),
                      onPressed: () => services.portfolio.setCash(e.key, 0),
                    ),
                  ],
                ),
              const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      key: const ValueKey('cash-currency'),
                      controller: _currency,
                      textCapitalization: TextCapitalization.characters,
                      maxLength: 3,
                      decoration: InputDecoration(
                        labelText: l10n.labelCurrency,
                        counterText: '',
                        errorText: _currencyError ? '' : null,
                      ),
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    flex: 3,
                    child: TextField(
                      key: const ValueKey('cash-amount'),
                      controller: _amount,
                      autofocus: true,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        labelText: l10n.portfolioCashAmount(_currency.text.trim().toUpperCase()),
                        errorText: _amountError,
                      ),
                      onSubmitted: (_) => _submit(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancel)),
        FilledButton(
          key: const ValueKey('cash-submit'),
          onPressed: _submit,
          child: Text(MaterialLocalizations.of(context).saveButtonLabel),
        ),
      ],
    );
  }
}
