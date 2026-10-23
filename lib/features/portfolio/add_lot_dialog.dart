import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/date_picker_row.dart';
import '../stock_detail/widgets/earnings_soon_line.dart';
import 'account_field.dart';
import 'portfolio_store.dart' show PortfolioLot, largestKey;
import 'portfolio_valuation.dart' show PortfolioSnapshot, weightChange;

/// Szám a beviteli mezőbe: pont tizedesjellel, ezres tagolás nélkül, amit a
/// [parseDecimal] változatlanul visszaolvas.
String plainNumber(double v) =>
    v == v.roundToDouble() ? v.toStringAsFixed(0) : v.toStringAsFixed(v < 1 ? 4 : 2).replaceAll(RegExp(r'0+$'), '');

/// Szám beolvasása a felhasználó írásmódjában: „1 234,5”, „1,234.5”, „12,5”.
/// Ha pont és vessző is van, az utolsó a tizedesjel. `null`, ha nem szám.
double? parseDecimal(String input) {
  var s = input.replaceAll(_digitSpaces, '');
  final dot = s.lastIndexOf('.'), comma = s.lastIndexOf(',');
  if (dot >= 0 && comma >= 0) {
    final decimal = dot > comma ? '.' : ',';
    s = s.replaceAll(decimal == '.' ? ',' : '.', '');
  }
  final v = double.tryParse(s.replaceAll(',', '.'));
  // A „NaN”, az „Infinity” és a túl nagy szám nem szám.
  return v != null && v.isFinite ? v : null;
}

/// Pénzösszeg beolvasása ezres tagolással is: ha csak a nyelv tizedesjelétől
/// eltérő jel (pont vagy vessző) van benne, és utána mindig pontosan három
/// számjegy jön („5,000” angolul, „100.000” magyarul), az ezres tagolás; minden
/// más esetben, mint a [parseDecimal].
double? parseAmount(String input, String locale) {
  final s = input.trim().replaceAll(_digitSpaces, '');
  final decimal = Fmt(locale).decimalSeparator;
  final group = decimal == ',' ? '.' : ',';
  if (!s.contains(decimal) && _grouped[group]!.hasMatch(s)) {
    final v = double.tryParse(s.replaceAll(group, ''));
    return v != null && v.isFinite ? v : null;
  }
  return parseDecimal(input);
}

/// A számjegyek közti tagoló szóközök és aposztróf („1 234”, „1'234”).
final _digitSpaces = RegExp(r"[\s\u00a0\u202f']");

/// Ezres tagolású egész szám ponttal vagy vesszővel. Az első csoport nem kezdődhet
/// 0-val: a „0.125” tizedestört, nem 125. Az indiai tagolás („1,00,000”) kétjegyű
/// csoportjai is: az utolsó csoport mindig háromjegyű.
final _grouped = {
  '.': RegExp(r'^-?[1-9]\d{0,2}((\.\d{3})+|(\.\d{2})+\.\d{3})$'),
  ',': RegExp(r'^-?[1-9]\d{0,2}((,\d{3})+|(,\d{2})+,\d{3})$'),
};

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

  /// Opcionális jegyzet (miért veszi / adja el): a részvény jegyzeteinek végére kerül, dátummal.
  final _note = TextEditingController();
  bool _showNote = false;
  String? _feeError;
  late bool _showFee = AppServices.of(context).portfolio.lots.any((l) => l.fee > 0);

  /// A számla mezőbe írt szöveg (vételnél alapból a legutóbbi vétel számlája); amíg
  /// nincs számla, a mezőt egy „Számla megadása” gomb mutatja meg.
  late String? _account = widget.account ?? (widget.sell ? null : AppServices.of(context).portfolio.lastBuyAccount);
  late bool _showAccount = widget.account != null || AppServices.of(context).portfolio.accounts.isNotEmpty;

  /// Eladásnál a számla, amelyről elad: az előre megadott, különben ahol a legtöbb darab van.
  late String? _sellFrom = switch (widget.holdings) {
    final h? when h.isNotEmpty && (widget.account == null || !h.containsKey(widget.account)) => largestKey<String?>(h),
    _ => widget.account,
  };

  /// Ennél többet nem lehet eladni (a választott számlán birtokolt darabszám).
  double? get _sellMax => widget.holdings == null ? null : (widget.holdings![_sellFrom] ?? 0);

  @override
  void initState() {
    super.initState();
    final p = widget.currentPrice;
    _price = TextEditingController(text: p == null ? '' : plainNumber(p));
    // Az előnézet minden beírásra frissül (a „Mind” gomb kitöltésére is).
    for (final c in [_quantity, _price, _fee]) {
      c.addListener(_changed);
    }
  }

  void _changed() => setState(() {});

  /// A portfólió mostani értéke a súly-előnézethez (a gyorsítótárazott árakból);
  /// amíg nem töltődött be, vagy ha nem sikerült, nincs súly-sor.
  PortfolioSnapshot? _portfolio;
  bool _portfolioLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_portfolioLoading) return;
    _portfolioLoading = true;
    final services = AppServices.of(context);
    final positions = services.portfolio.positions;
    if (positions.isEmpty) return;
    PortfolioSnapshot.load(
      positions,
      marketData: services.marketData,
      fx: services.fx,
      currency: PortfolioSnapshot.totalCurrency(positions, services.displayCurrency(Localizations.localeOf(context))),
      cash: services.portfolio.cash,
    ).then((s) {
      if (mounted) setState(() => _portfolio = s);
    }, onError: (Object _) {});
  }

  /// Az előnézet: vételnél az új átlagár (ha már van a részvényből), eladásnál a
  /// FIFO szerint várható realizált eredmény (a díjjal); `null`, ha még nem érvényes
  /// a darabszám vagy az ár.
  Widget? _preview(AppLocalizations l10n, Fmt fmt, AppPalette p, ThemeData theme) {
    final q = parseDecimal(_quantity.text), price = parseDecimal(_price.text);
    final fee = _fee.text.trim().isEmpty ? 0.0 : parseDecimal(_fee.text);
    if (q == null || q <= 0 || price == null || price <= 0 || fee == null || fee < 0) return null;
    if (_sellMax case final max? when q > max + 1e-9) return null;
    final store = AppServices.of(context).portfolio;
    final account = store.canonicalAccount(widget.sell ? _sellFrom : (_showAccount ? _account : null));
    final lot = PortfolioLot(
      id: '',
      symbol: widget.symbol.toUpperCase(),
      quantity: q,
      price: price,
      currency: widget.currency,
      date: _date,
      sell: widget.sell,
      account: account,
      fee: fee,
    );
    final style = theme.textTheme.bodySmall?.copyWith(color: p.muted);
    // A súly a portfólióban ezután (ha más is van benne – egyetlen pozíció mindig 100%).
    final weight = switch (_portfolio) {
      final snap? => weightChange(
        snap,
        widget.symbol,
        q,
        sell: widget.sell,
        price: widget.currentPrice,
        currency: widget.currency,
      ),
      _ => null,
    };
    final weightLine = weight == null || (weight.before > 99.95 && weight.after > 99.95)
        ? null
        : Text(
            l10n.lotPreviewWeight(fmt.percent(weight.after, decimals: 1), fmt.percent(weight.before, decimals: 1)),
            key: const ValueKey('lot-preview-weight'),
            style: style,
          );
    Widget? withWeight(Widget? main) => main == null
        ? weightLine
        : weightLine == null
        ? main
        : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [main, const SizedBox(height: 4), weightLine]);
    if (widget.sell) {
      // Az egész részvényen mérve: egy korábbi napra írt eladás a későbbiek párosítását is módosíthatja.
      final (:before, :after) = store.preview(lot);
      final gain = after.realizedGain - (before?.realizedGain ?? 0);
      return withWeight(
        Text.rich(
          key: const ValueKey('lot-preview'),
          TextSpan(
            text: '${l10n.lotPreviewRealized} ',
            children: [
              TextSpan(
                text: fmt.money(gain, widget.currency, withSign: true),
                style: TextStyle(color: gainColor(p, gain), fontWeight: FontWeight.w600),
              ),
            ],
          ),
          style: style,
        ),
      );
    }
    // Vételnél abban a nézetben, ahonnan a dialógus nyílt (számla-nézetben a vétel számlájáé).
    final (:before, :after) = store.preview(lot, view: widget.account == null ? null : account);
    return withWeight(
      before == null || before.isClosed
          ? null
          : Text(
              l10n.lotPreviewAverage(
                fmt.money(after.averageCost, widget.currency),
                fmt.money(before.averageCost, widget.currency),
              ),
              key: const ValueKey('lot-preview'),
              style: style,
            ),
    );
  }

  @override
  void dispose() {
    _quantity.dispose();
    _price.dispose();
    _fee.dispose();
    _note.dispose();
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
          : (max != null && q > max + 1e-9 ? l10n.portfolioSellTooMany(fmt.quantity(max)) : null);
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
      account: widget.sell ? _sellFrom : (_showAccount ? _account : null),
      fee: fee!,
    );
    // A jegyzet a tranzakció adataival a részvény jegyzeteinek végére (befektetési napló).
    if (_note.text.trim() case final text when text.isNotEmpty && mounted) {
      final notes = AppServices.of(context).notes;
      await notes.append(
        widget.symbol,
        '${fmt.date(_date)} · ${widget.sell ? l10n.portfolioSold : l10n.lotNoteBought} '
        '${fmt.quantity(q)} × ${fmt.money(p, widget.currency)}: $text',
      );
    }
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
      // A nem kötelező mezőkkel (számla, díj, jegyzet) kis képernyőn is görgethető.
      scrollable: true,
      title: Text(widget.sell ? l10n.portfolioSellTitle(widget.symbol) : l10n.portfolioAddTitle(widget.symbol)),
      content: SizedBox(
        width: 360,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Közelgő gyorsjelentés: a döntés előtt jó tudni, hogy az ár a szokásosnál jobban mozoghat.
            EarningsSoonLine(symbol: widget.symbol),
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
                          '${fmt.quantity(e.value)}',
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
              AccountField(
                fieldKey: const ValueKey('lot-account'),
                initial: _account,
                onChanged: (v) => setState(() => _account = v),
                onSubmitted: _submit,
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
            if (_showNote) ...[
              const SizedBox(height: 12),
              TextField(
                key: const ValueKey('lot-note'),
                controller: _note,
                autofocus: true,
                minLines: 1,
                maxLines: 4,
                maxLength: 500,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  labelText: l10n.lotNoteAdd,
                  hintText: widget.sell ? l10n.lotNoteSellHint : l10n.lotNoteBuyHint,
                  hintMaxLines: 2,
                ),
              ),
            ],
            // A rejtett, nem kötelező mezők gombjai egy sorban.
            if ((!widget.sell && !_showAccount) || !_showFee || !_showNote)
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
                  if (!_showNote)
                    TextButton.icon(
                      key: const ValueKey('lot-note-add'),
                      onPressed: () => setState(() => _showNote = true),
                      style: TextButton.styleFrom(visualDensity: VisualDensity.compact, padding: EdgeInsets.zero),
                      icon: const Icon(Icons.edit_note_rounded, size: 18),
                      label: Text(l10n.lotNoteAdd),
                    ),
                ],
              ),
            // Mi változik: az új átlagár, illetve az eladás várható realizált eredménye.
            if (_preview(l10n, fmt, p, theme) case final preview?) ...[const SizedBox(height: 12), preview],
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
