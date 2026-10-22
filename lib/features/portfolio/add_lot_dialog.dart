import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/date_picker_row.dart';

/// Szám a beviteli mezőbe: pont tizedesjellel, ezres tagolás nélkül, amit a
/// [parseDecimal] változatlanul visszaolvas.
String plainNumber(double v) =>
    v == v.roundToDouble() ? v.toStringAsFixed(0) : v.toStringAsFixed(v < 1 ? 4 : 2).replaceAll(RegExp(r'0+$'), '');

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

/// Vétel (vagy [sellMax] megadásával eladás) rögzítése: darabszám,
/// darabonkénti ár (a jelenlegi árral kitöltve) és dátum. `true`-val tér
/// vissza, ha a tranzakció bekerült a portfólióba.
Future<bool> showAddLotDialog(
  BuildContext context, {
  required String symbol,
  required String currency,
  double? currentPrice,
  double? sellMax,
}) async {
  final added = await showDialog<bool>(
    context: context,
    builder: (_) => _AddLotDialog(symbol: symbol, currency: currency, currentPrice: currentPrice, sellMax: sellMax),
  );
  return added ?? false;
}

class _AddLotDialog extends StatefulWidget {
  const _AddLotDialog({required this.symbol, required this.currency, this.currentPrice, this.sellMax});

  final String symbol;
  final String currency;
  final double? currentPrice;

  /// Eladásnál a birtokolt darabszám (ennél többet nem lehet eladni).
  final double? sellMax;

  bool get sell => sellMax != null;

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
    _price = TextEditingController(text: p == null ? '' : plainNumber(p));
  }

  @override
  void dispose() {
    _quantity.dispose();
    _price.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final l10n = AppLocalizations.of(context);
    final q = parseDecimal(_quantity.text);
    final p = parseDecimal(_price.text);
    final max = widget.sellMax;
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    setState(() {
      _quantityError = q == null || q <= 0
          ? l10n.portfolioInvalidNumber
          : (max != null && q > max + 1e-9
                ? l10n.portfolioSellTooMany(fmt.number(max, decimals: max == max.roundToDouble() ? 0 : 4))
                : null);
      _priceError = p == null || p <= 0 ? l10n.portfolioInvalidNumber : null;
    });
    if (_quantityError != null || _priceError != null) return;
    await AppServices.of(context).portfolio
        .add(symbol: widget.symbol, quantity: q!, price: p!, currency: widget.currency, date: _date, sell: widget.sell);
    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    const numberKeyboard = TextInputType.numberWithOptions(decimal: true);
    return AlertDialog(
      title: Text(widget.sell ? l10n.portfolioSellTitle(widget.symbol) : l10n.portfolioAddTitle(widget.symbol)),
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
              decoration: InputDecoration(
                labelText: l10n.portfolioQuantity,
                errorText: _quantityError,
                // Eladásnál a birtokolt darabszám, egy koppintással kitölthető.
                suffix: widget.sellMax == null
                    ? null
                    : InkWell(
                        key: const ValueKey('lot-sell-all'),
                        onTap: () => _quantity.text = plainNumber(widget.sellMax!),
                        child: Text(l10n.portfolioSellAll, style: TextStyle(color: p.accent)),
                      ),
              ),
              onSubmitted: (_) => _submit(),
            ),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('lot-price'),
              controller: _price,
              keyboardType: numberKeyboard,
              decoration: InputDecoration(
                labelText: widget.sell
                    ? l10n.portfolioSellPrice(widget.currency)
                    : l10n.portfolioBuyPrice(widget.currency),
                errorText: _priceError,
              ),
              onSubmitted: (_) => _submit(),
            ),
            const SizedBox(height: 12),
            DatePickerRow(
              label: widget.sell ? l10n.portfolioSellDate : l10n.portfolioBuyDate,
              date: _date,
              onChanged: (d) => setState(() => _date = d),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(false), child: Text(l10n.cancel)),
        FilledButton(
          key: const ValueKey('lot-submit'),
          onPressed: _submit,
          child: Text(widget.sell ? l10n.portfolioSell : l10n.portfolioAdd),
        ),
      ],
    );
  }
}
