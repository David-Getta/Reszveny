import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/date_picker_row.dart';
import 'portfolio_store.dart' show PortfolioLot;

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

/// Vétel (vagy [holdings] megadásával eladás) rögzítése: darabszám,
/// darabonkénti ár (a jelenlegi árral kitöltve) és dátum. `true`-val tér
/// vissza, ha a tranzakció bekerült a portfólióba.
Future<bool> showAddLotDialog(
  BuildContext context, {
  required String symbol,
  required String currency,
  double? currentPrice,
  Map<String?, double>? holdings,
  String? account,
}) async {
  final added = await showDialog<bool>(
    context: context,
    builder: (_) => _AddLotDialog(
      symbol: symbol,
      currency: currency,
      currentPrice: currentPrice,
      holdings: holdings,
      account: account,
    ),
  );
  return added ?? false;
}

class _AddLotDialog extends StatefulWidget {
  const _AddLotDialog({required this.symbol, required this.currency, this.currentPrice, this.holdings, this.account});

  final String symbol;
  final String currency;
  final double? currentPrice;

  /// Előre kitöltött számla (pl. a portfólió oldalon választott számla).
  final String? account;

  /// Eladásnál a birtokolt darabszám számlánként (`null` kulcs: számla nélkül);
  /// az eladás ezek egyikéről megy, legfeljebb az ott birtokolt darabszámig.
  final Map<String?, double>? holdings;

  bool get sell => holdings != null;

  @override
  State<_AddLotDialog> createState() => _AddLotDialogState();
}

class _AddLotDialogState extends State<_AddLotDialog> {
  final _quantity = TextEditingController();
  late final TextEditingController _price;
  DateTime _date = DateTime.now();
  String? _quantityError;
  String? _priceError;

  /// A díj (jutalék) mezője; amíg egyik tranzakciónak sincs díja, egy gomb mutatja meg.
  final _fee = TextEditingController();
  String? _feeError;
  late bool _showFee = AppServices.of(context).portfolio.lots.any((l) => l.fee > 0);

  /// A számla mezője (az automatikus kiegészítés saját vezérlője); amíg nincs
  /// számla, egy „Számla megadása” gomb mutatja meg.
  TextEditingController? _accountField;
  late bool _showAccount = widget.account != null || AppServices.of(context).portfolio.accounts.isNotEmpty;

  /// Eladásnál a számla, amelyről elad: az előre megadott, különben ahol a legtöbb darab van.
  late String? _sellFrom = switch (widget.holdings) {
    final h? when widget.account != null && h.containsKey(widget.account) => widget.account,
    final h? when h.isNotEmpty => (h.entries.toList()..sort((a, b) => b.value.compareTo(a.value))).first.key,
    _ => widget.account,
  };

  /// Ennél többet nem lehet eladni (a választott számlán birtokolt darabszám).
  double? get _sellMax => widget.holdings == null ? null : (widget.holdings![_sellFrom] ?? 0);

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
    _fee.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final l10n = AppLocalizations.of(context);
    final q = parseDecimal(_quantity.text);
    final p = parseDecimal(_price.text);
    // Üres díjmező: nincs díj.
    final fee = _fee.text.trim().isEmpty ? 0.0 : parseDecimal(_fee.text);
    final max = _sellMax;
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    setState(() {
      _quantityError = q == null || q <= 0
          ? l10n.portfolioInvalidNumber
          : (max != null && q > max + 1e-9
                ? l10n.portfolioSellTooMany(fmt.number(max, decimals: max == max.roundToDouble() ? 0 : 4))
                : null);
      _priceError = p == null || p <= 0 ? l10n.portfolioInvalidNumber : null;
      _feeError = fee == null || fee < 0 ? l10n.portfolioInvalidNumber : null;
    });
    if (_quantityError != null || _priceError != null || _feeError != null) return;
    await AppServices.of(context).portfolio.add(
      symbol: widget.symbol,
      quantity: q!,
      price: p!,
      currency: widget.currency,
      date: _date,
      sell: widget.sell,
      account: widget.sell ? _sellFrom : (_showAccount ? (_accountField?.text ?? widget.account) : null),
      fee: fee!,
    );
    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
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
                suffix: _sellMax == null
                    ? null
                    : InkWell(
                        key: const ValueKey('lot-sell-all'),
                        onTap: () => _quantity.text = plainNumber(_sellMax!),
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
            // Eladásnál a számla, amelyen a részvény van (több számlánál választható);
            // ha csak számla nélküli tétele van, nincs mit mutatni.
            if (widget.holdings case final h?) ...[
              if (h.keys.any((a) => a != null)) ...[
                const SizedBox(height: 4),
                Text(l10n.portfolioAccount, style: theme.textTheme.labelMedium?.copyWith(color: p.muted)),
                const SizedBox(height: 6),
                Wrap(
                  key: const ValueKey('lot-sell-from'),
                  spacing: 8,
                  runSpacing: 6,
                  children: [
                    for (final e in h.entries)
                      ChoiceChip(
                        key: ValueKey('lot-sell-from-${e.key ?? '*'}'),
                        label: Text(
                          '${e.key ?? l10n.portfolioNoAccount} · '
                          '${fmt.number(e.value, decimals: e.value == e.value.roundToDouble() ? 0 : 4)}',
                        ),
                        selected: e.key == _sellFrom,
                        onSelected: h.length > 1 ? (_) => setState(() => _sellFrom = e.key) : null,
                      ),
                  ],
                ),
              ],
            ]
            // Számla (pl. TBSZ): a meglévők közül kiegészítve; nem kötelező.
            else if (_showAccount)
              Autocomplete<String>(
                initialValue: TextEditingValue(text: widget.account ?? ''),
                optionsBuilder: (v) {
                  final q = v.text.trim().toLowerCase();
                  return AppServices.of(context).portfolio.accounts.where((a) => a.toLowerCase().contains(q));
                },
                fieldViewBuilder: (context, controller, focusNode, onSubmitted) {
                  _accountField = controller;
                  return TextField(
                    key: const ValueKey('lot-account'),
                    controller: controller,
                    focusNode: focusNode,
                    maxLength: PortfolioLot.maxAccountName,
                    decoration: InputDecoration(
                      labelText: l10n.portfolioAccount,
                      hintText: l10n.portfolioAccountHint,
                      counterText: '',
                    ),
                    // Az Enter a dialógust menti (nem a kiegészítés első javaslatát választja).
                    onSubmitted: (_) => _submit(),
                  );
                },
              ),
            // Díj (jutalék) egy összegben: ha már van díjas tranzakció, rögtön látszik.
            if (_showFee) ...[
              const SizedBox(height: 12),
              TextField(
                key: const ValueKey('lot-fee'),
                controller: _fee,
                keyboardType: numberKeyboard,
                decoration: InputDecoration(labelText: l10n.portfolioFee(widget.currency), errorText: _feeError),
                onSubmitted: (_) => _submit(),
              ),
            ],
            // A rejtett, nem kötelező mezők gombjai egy sorban.
            if ((!widget.sell && !_showAccount) || !_showFee)
              Wrap(
                spacing: 16,
                children: [
                  if (!widget.sell && !_showAccount)
                    TextButton.icon(
                      key: const ValueKey('lot-account-add'),
                      onPressed: () => setState(() => _showAccount = true),
                      style: TextButton.styleFrom(visualDensity: VisualDensity.compact, padding: EdgeInsets.zero),
                      icon: const Icon(Icons.account_balance_outlined, size: 18),
                      label: Text(l10n.portfolioAccountAdd),
                    ),
                  if (!_showFee)
                    TextButton.icon(
                      key: const ValueKey('lot-fee-add'),
                      onPressed: () => setState(() => _showFee = true),
                      style: TextButton.styleFrom(visualDensity: VisualDensity.compact, padding: EdgeInsets.zero),
                      icon: const Icon(Icons.request_quote_outlined, size: 18),
                      label: Text(l10n.portfolioFeeAdd),
                    ),
                ],
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
