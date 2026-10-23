import 'dart:math' as math;

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
/// [parseDecimal] változatlanul visszaolvas. Egy alatt legalább négy értékes jeggyel
/// (a 0,00012 dolláros ár ne legyen 0,0001, a 0,00004 ne legyen „0.”).
String plainNumber(double v) {
  if (v == v.roundToDouble()) return v.toStringAsFixed(0);
  final decimals = v.abs() < 1 ? math.max(4, (-math.log(v.abs()) / math.ln10).ceil() + 3).clamp(4, 12) : 2;
  return v.toStringAsFixed(decimals).replaceAll(RegExp(r'0+$'), '').replaceAll(RegExp(r'\.$'), '');
}

/// A mezőbe írt szám a nyelv tizedesjelével (vesszős nyelven vesszővel): a
/// [parseAmount] így ugyanazt olvassa vissza (németül a „12.345” ezres tagolás lenne).
String fieldNumber(String plain, String locale) =>
    Fmt(locale).decimalSeparator == ',' ? plain.replaceFirst('.', ',') : plain;

/// Tárolt szám a beviteli mezőbe pontosan, kerekítés nélkül (javításkor és a
/// „Mind” gombnál: a 0,12345678 tört részvény ne változzon mentéskor).
String exactNumber(double v) => v == v.roundToDouble() && v.abs() < 1e15 ? v.toStringAsFixed(0) : v.toString();

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
  PortfolioLot? editing,
}) async {
  final added = await showDialog<bool>(
    context: context,
    builder: (_) => _AddLotDialog(
      symbol: symbol,
      currency: currency,
      currentPrice: currentPrice,
      holdings: holdings,
      account: account,
      editing: editing,
    ),
  );
  return added ?? false;
}

/// Egy rögzített tranzakció javítása (darab, ár, dátum, számla, díj) ugyanabban a
/// dialógusban, kitöltve; az azonosító marad. A tárolt tételt kell átadni: a
/// dialógus a felaprózással igazított (a listákban látott) számokat mutatja, és
/// mentéskor visszaalakítja – így a „javítás” nem igazítja még egyszer. `true`,
/// ha mentette.
Future<bool> showEditLotDialog(BuildContext context, PortfolioLot lot) {
  final shown = AppServices.of(context).portfolio.adjustedLot(lot);
  return showAddLotDialog(context, symbol: lot.symbol, currency: lot.currency, account: lot.account, editing: shown);
}

class _AddLotDialog extends StatefulWidget {
  const _AddLotDialog({
    required this.symbol,
    required this.currency,
    this.currentPrice,
    this.holdings,
    this.account,
    this.editing,
  });

  final String symbol;
  final String currency;
  final double? currentPrice;

  /// Előre kitöltött számla (pl. a portfólió oldalon választott számla).
  final String? account;

  /// Eladásnál a birtokolt darabszám számlánként (`null` kulcs: számla nélkül);
  /// az eladás ezek egyikéről megy, legfeljebb az ott birtokolt darabszámig.
  final Map<String?, double>? holdings;

  /// Javításnál a tárolt tétel (kitöltve; az azonosító marad, készpénz és jegyzet nélkül).
  final PortfolioLot? editing;

  bool get sell => holdings != null || (editing?.sell ?? false);

  @override
  State<_AddLotDialog> createState() => _AddLotDialogState();
}

class _AddLotDialogState extends State<_AddLotDialog> {
  final _quantity = TextEditingController();
  // Javításkor a tárolt nap marad (a dátum nélküli tétel is dátum nélküli, amíg
  // nem választanak napot – különben az eladás elé kerülhetne).
  late DateTime? _date = widget.editing == null ? DateTime.now() : widget.editing!.date;
  String? _quantityError;
  String? _priceError;

  /// A díj (jutalék) mezője; amíg egyik tranzakciónak sincs díja, egy gomb mutatja meg.
  final _fee = TextEditingController();

  /// Opcionális jegyzet (miért veszi / adja el): a részvény jegyzeteinek végére kerül, dátummal.
  final _note = TextEditingController();
  bool _showNote = false;

  /// A brókernél vezetett készpénz a kereskedés pénznemében (ha van): vételnél
  /// alapból levonódik, eladásnál hozzáadódik – kikapcsolható.
  late final double? _cashNow = AppServices.of(context).portfolio.cash[widget.currency.toUpperCase()];

  /// A felhasználó választása; amíg nem nyúlt hozzá, csak a mai napra írt tranzakció
  /// változtatja a készpénzt (egy régebbi tétel pótlásakor az egyenleg már tartalmazza).
  bool? _useCashChoice;
  bool get _useCash => _useCashChoice ?? DateUtils.isSameDay(_date, DateTime.now());

  /// Mentés közben a gomb nem nyomható újra (dupla tranzakció ellen).
  bool _saving = false;
  String? _feeError;
  late bool _showFee = (widget.editing?.fee ?? 0) > 0 || AppServices.of(context).portfolio.lots.any((l) => l.fee > 0);

  /// A számla mezőbe írt szöveg (vételnél alapból a legutóbbi vétel számlája); amíg
  /// nincs számla, a mezőt egy „Számla megadása” gomb mutatja meg.
  late String? _account =
      widget.account ??
      (widget.sell || widget.editing != null ? null : AppServices.of(context).portfolio.lastBuyAccount);
  late bool _showAccount = widget.account != null || AppServices.of(context).portfolio.accounts.isNotEmpty;

  /// Eladásnál a számla, amelyről elad: az előre megadott, különben ahol a legtöbb darab van.
  late String? _sellFrom = switch (widget.holdings) {
    final h? when h.isNotEmpty && (widget.account == null || !h.containsKey(widget.account)) => largestKey<String?>(h),
    _ => widget.account,
  };

  /// A tranzakció számlája: eladásnál a választott birtokló számla, különben a mező.
  String? get _lotAccount => widget.holdings != null ? _sellFrom : (_showAccount ? _account : null);

  /// Ennél többet nem lehet eladni (a választott számlán birtokolt darabszám).
  double? get _sellMax => widget.holdings == null ? null : (widget.holdings![_sellFrom] ?? 0);

  final _price = TextEditingController();
  bool _prefilled = false;

  /// Az app nyelve (a számok írásmódjához).
  String get _locale => Localizations.localeOf(context).toString();

  /// A mezőbe írt szám a nyelv írásmódjában, ezres tagolással is („1,500”, „12.500”).
  double? _number(String text) => parseAmount(text, _locale);

  /// Az előkitöltés a nyelv tizedesjelével (ehhez kell a környezet, ezért nem az initState-ben).
  void _prefill() {
    if (_prefilled) return;
    _prefilled = true;
    String field(String plain) => fieldNumber(plain, _locale);
    _price.text = switch ((widget.editing, widget.currentPrice)) {
      (final e?, _) => field(exactNumber(e.price)),
      (null, final p?) => field(plainNumber(p)),
      _ => '',
    };
    if (widget.editing case final e?) {
      _quantity.text = field(exactNumber(e.quantity));
      if (e.fee > 0) _fee.text = field(exactNumber(e.fee));
    }
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
    _prefill();
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
    // Javításnál a régi tétel még a tárolóban van: az előnézet kétszer számolná.
    if (widget.editing != null) return null;
    final q = _number(_quantity.text), price = _number(_price.text);
    final fee = _fee.text.trim().isEmpty ? 0.0 : _number(_fee.text);
    if (q == null || q <= 0 || price == null || price <= 0 || fee == null || fee < 0) return null;
    if (_sellMax case final max? when q > max + 1e-9) return null;
    final store = AppServices.of(context).portfolio;
    final account = store.canonicalAccount(_lotAccount);
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
    // A súly a portfólióban ezután (ha más is van benne – egyetlen pozíció mindig 100%): a
    // felaprózással igazított darabszámmal, és ha készpénzből megy, az összérték nem nő.
    final overall = store.preview(lot);
    final weight = switch (_portfolio) {
      final snap? => weightChange(
        snap,
        widget.symbol,
        (overall.after.quantity - (overall.before?.quantity ?? 0)).abs(),
        sell: widget.sell,
        price: widget.currentPrice,
        currency: widget.currency,
        cash: _cashNow != null && _useCash ? _cashNow : null,
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
      final (:before, :after) = overall;
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

  /// Javított eladásnál legfeljebb a számlán most birtokolt darab plusz maga az
  /// eladás (ha ugyanarról a számláról marad); vételnél nincs felső határ.
  double? _editedSellMax() {
    final e = widget.editing;
    if (e == null || !e.sell) return null;
    final portfolio = AppServices.of(context).portfolio;
    final account = portfolio.canonicalAccount(_lotAccount);
    final held = portfolio.heldByAccount(e.symbol)[account] ?? 0;
    return held + (portfolio.canonicalAccount(e.account) == account ? e.quantity : 0);
  }

  /// Javított vételnél legalább annyi, amennyit a számláról már eladtak (különben az
  /// eladások egy része fedezet nélkül maradna, és kiesne a realizált eredményből).
  double? _editedBuyMin() {
    final e = widget.editing;
    if (e == null || e.sell) return null;
    final portfolio = AppServices.of(context).portfolio;
    final held = portfolio.heldByAccount(e.symbol)[portfolio.canonicalAccount(e.account)] ?? 0;
    final min = e.quantity - held;
    return min > 1e-9 ? min : null;
  }

  Future<void> _submit() async {
    final l10n = AppLocalizations.of(context);
    final q = _number(_quantity.text);
    final p = _number(_price.text);
    // Üres díjmező: nincs díj.
    final fee = _fee.text.trim().isEmpty ? 0.0 : _number(_fee.text);
    final max = _sellMax ?? _editedSellMax();
    final min = _editedBuyMin();
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    setState(() {
      _quantityError = q == null || q <= 0
          ? l10n.portfolioInvalidNumber
          : (max != null && q > max + 1e-9)
          ? l10n.portfolioSellTooMany(fmt.quantity(max))
          : (min != null && q < min - 1e-9)
          ? l10n.portfolioBuyBelowSold(fmt.quantity(min))
          : null;
      _priceError = p == null || p <= 0 ? l10n.portfolioInvalidNumber : null;
      _feeError = fee == null || fee < 0 ? l10n.portfolioInvalidNumber : null;
    });
    if (_quantityError != null || _priceError != null || _feeError != null || _saving) return;
    setState(() => _saving = true);
    // A tárolók a dialógus bezárása után is frissülnek (a mentés ne maradjon félbe).
    final services = AppServices.of(context);
    if (widget.editing case final e?) {
      // A beírt (igazított) számok a választott nap szerinti tárolt alakban.
      await services.portfolio.replace(
        services.portfolio.storedLot(
          PortfolioLot(
            id: e.id,
            symbol: e.symbol,
            quantity: q!,
            price: p!,
            currency: e.currency,
            date: _date,
            sell: e.sell,
            account: _lotAccount,
            fee: fee!,
          ),
        ),
      );
      if (mounted) Navigator.of(context).pop(true);
      return;
    }
    final useCash = _cashNow != null && _useCash;
    final note = _note.text.trim();
    // Mint a javításnál: a beírt számok a mai (felaprózással igazított) egységben
    // értendők – ahogy a listák, az eladási korlát és a kitöltött ár –, a tárolt alak
    // a választott nap szerinti.
    final stored = services.portfolio.storedLot(
      PortfolioLot(
        id: '',
        symbol: widget.symbol.toUpperCase(),
        quantity: q!,
        price: p!,
        currency: widget.currency,
        date: _date,
        sell: widget.sell,
        account: _lotAccount,
        fee: fee!,
      ),
    );
    await services.portfolio.add(
      symbol: widget.symbol,
      quantity: stored.quantity,
      price: stored.price,
      currency: widget.currency,
      date: _date,
      sell: widget.sell,
      account: _lotAccount,
      fee: fee,
    );
    // A készpénz-egyenleg követi a tranzakciót (a díjjal együtt), a mostani egyenlegből
    // (egy közben, pl. szinkronnal érkezett változás nem vész el).
    if (useCash) {
      final cash = services.portfolio.cash[widget.currency.toUpperCase()] ?? 0;
      final amount = q * p + (widget.sell ? -fee : fee);
      await services.portfolio.setCash(widget.currency, widget.sell ? cash + amount : cash - amount);
    }
    // A jegyzet a tranzakció adataival a részvény jegyzeteinek végére (befektetési napló).
    if (note.isNotEmpty) {
      await services.notes.append(
        widget.symbol,
        '${fmt.date(_date)} · ${widget.sell ? l10n.portfolioSold : l10n.lotNoteBought} '
        '${fmt.quantity(q)} × ${fmt.money(p, widget.currency)}: $note',
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
      title: Text(
        widget.editing != null
            ? l10n.lotEditTitle(widget.symbol)
            : (widget.sell ? l10n.portfolioSellTitle(widget.symbol) : l10n.portfolioAddTitle(widget.symbol)),
      ),
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
                        onTap: () => _quantity.text = fieldNumber(exactNumber(_sellMax!), _locale),
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
            // Készpénzből fizetve / készpénzbe érkezve (ha a pénznemben van vezetett egyenleg).
            if (_cashNow case final cash? when widget.editing == null)
              CheckboxListTile(
                key: const ValueKey('lot-cash'),
                value: _useCash,
                onChanged: (v) => setState(() => _useCashChoice = v ?? false),
                contentPadding: EdgeInsets.zero,
                dense: true,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  widget.sell
                      ? l10n.lotToCash(fmt.money(cash, widget.currency))
                      : l10n.lotFromCash(fmt.money(cash, widget.currency)),
                ),
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
            if ((!widget.sell && !_showAccount) || !_showFee || (!_showNote && widget.editing == null))
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
                  if (!_showNote && widget.editing == null)
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
          onPressed: _saving ? null : _submit,
          child: Text(widget.editing != null ? l10n.lotSave : (widget.sell ? l10n.portfolioSell : l10n.portfolioAdd)),
        ),
      ],
    );
  }
}
