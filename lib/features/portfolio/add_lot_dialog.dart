import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';

/// Szám beolvasása a felhasználó írásmódjában: „1 234,5”, „1,234.5”, „12,5”.
/// Ha pont és vessző is van, az utolsó a tizedesjel. `null`, ha nem szám.
double? parseDecimal(String input) {
  var s = input.replaceAll(RegExp(r"[\s\u00a0\u202f']"), '');
  final dot = s.lastIndexOf('.'), comma = s.lastIndexOf(',');
  if (dot >= 0 && comma >= 0) {
    final decimal = dot > comma ? '.' : ',';
    s = s.replaceAll(decimal == '.' ? ',' : '.', '');
  }
  return double.tryParse(s.replaceAll(',', '.'));
}

/// Vétel rögzítése: darabszám, darabonkénti ár (a jelenlegi árral kitöltve) és
/// dátum. `true`-val tér vissza, ha a vétel bekerült a portfólióba.
Future<bool> showAddLotDialog(
  BuildContext context, {
  required String symbol,
  required String currency,
  double? currentPrice,
}) async {
  final added = await showDialog<bool>(
    context: context,
    builder: (_) => _AddLotDialog(symbol: symbol, currency: currency, currentPrice: currentPrice),
  );
  return added ?? false;
}

class _AddLotDialog extends StatefulWidget {
  const _AddLotDialog({required this.symbol, required this.currency, this.currentPrice});

  final String symbol;
  final String currency;
  final double? currentPrice;

  @override
  State<_AddLotDialog> createState() => _AddLotDialogState();
}

class _AddLotDialogState extends State<_AddLotDialog> {
  final _quantity = TextEditingController();
  late final TextEditingController _price;
  DateTime _date = DateTime.now();
  String? _quantityError;
  String? _priceError;

  @override
  void initState() {
    super.initState();
    final p = widget.currentPrice;
    _price = TextEditingController(
      text: p == null ? '' : (p == p.roundToDouble() ? p.toStringAsFixed(0) : p.toStringAsFixed(p < 1 ? 4 : 2)),
    );
  }

  @override
  void dispose() {
    _quantity.dispose();
    _price.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(context: context, initialDate: _date, firstDate: DateTime(1980), lastDate: now);
    if (picked != null) setState(() => _date = picked);
  }

  Future<void> _submit() async {
    final l10n = AppLocalizations.of(context);
    final q = parseDecimal(_quantity.text);
    final p = parseDecimal(_price.text);
    setState(() {
      _quantityError = q == null || q <= 0 ? l10n.portfolioInvalidNumber : null;
      _priceError = p == null || p <= 0 ? l10n.portfolioInvalidNumber : null;
    });
    if (_quantityError != null || _priceError != null) return;
    await AppServices.of(context).portfolio
        .add(symbol: widget.symbol, quantity: q!, price: p!, currency: widget.currency, date: _date);
    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    const numberKeyboard = TextInputType.numberWithOptions(decimal: true);
    return AlertDialog(
      title: Text(l10n.portfolioAddTitle(widget.symbol)),
      content: SizedBox(
        width: 360,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              key: const ValueKey('lot-quantity'),
              controller: _quantity,
              autofocus: true,
              keyboardType: numberKeyboard,
              decoration: InputDecoration(labelText: l10n.portfolioQuantity, errorText: _quantityError),
              onSubmitted: (_) => _submit(),
            ),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('lot-price'),
              controller: _price,
              keyboardType: numberKeyboard,
              decoration: InputDecoration(labelText: l10n.portfolioBuyPrice(widget.currency), errorText: _priceError),
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
                      child: Text(l10n.portfolioBuyDate, style: TextStyle(color: p.muted)),
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
        FilledButton(onPressed: _submit, child: Text(l10n.portfolioAdd)),
      ],
    );
  }
}
