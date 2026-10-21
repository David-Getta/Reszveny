import 'add_lot_dialog.dart' show parseDecimal;
import 'portfolio_store.dart';

/// A portfólió tranzakciói CSV-ben (táblázatkezelőbe, másik appba):
/// `symbol,quantity,price,currency,date,side`, ponttal mint tizedesjel; a `side`
/// `buy` vagy `sell`. A kapott osztalékok `dividend` sorként, a teljes összeg a
/// `price` oszlopban, darabszám nélkül; a felaprózások `split` sorként, az új
/// darab a `quantity`, a régi a `price` oszlopban – így a saját export vissza is
/// olvasható.
String portfolioCsv(
  List<PortfolioLot> lots, {
  List<DividendRecord> dividends = const [],
  List<SplitRecord> splits = const [],
}) {
  String n(double v) => v == v.roundToDouble() ? v.toStringAsFixed(0) : v.toString();
  final b = StringBuffer('symbol,quantity,price,currency,date,side\n');
  for (final l in lots) {
    b.writeln(
      [
        l.symbol,
        n(l.quantity),
        n(l.price),
        l.currency,
        l.date?.toIso8601String().substring(0, 10) ?? '',
        l.sell ? 'sell' : 'buy',
      ].join(','),
    );
  }
  for (final d in dividends) {
    b.writeln(
      [d.symbol, '', n(d.amount), d.currency, d.date?.toIso8601String().substring(0, 10) ?? '', 'dividend'].join(','),
    );
  }
  for (final s in splits) {
    b.writeln([s.symbol, s.to, s.from, '', s.date.toIso8601String().substring(0, 10), 'split'].join(','));
  }
  return b.toString();
}

/// A kapott osztalékok CSV-ben (az adóbevalláshoz): dátum, ticker, összeg,
/// pénznem, időrendben.
String dividendsCsv(List<DividendRecord> dividends) {
  String n(double v) {
    final t = v.toStringAsFixed(4).replaceFirst(RegExp(r'\.?0+$'), '');
    return t == '-0' ? '0' : t;
  }

  final rows = [...dividends]..sort((a, b) => (a.date ?? DateTime(9999)).compareTo(b.date ?? DateTime(9999)));
  final b = StringBuffer('date,symbol,amount,currency\n');
  for (final d in rows) {
    b.writeln([d.date?.toIso8601String().substring(0, 10) ?? '', d.symbol, n(d.amount), d.currency].join(','));
  }
  return b.toString();
}

/// A realizált nyereség eladásonként (FIFO), az adóbevalláshoz: dátum, ticker,
/// darab, eladási ár, bevétel, bekerülési érték, nyereség és pénznem, időrendben.
String realizedCsv(List<Position> positions) {
  // Legfeljebb 4 tizedes, a felesleges nullák (és a magányos pont) nélkül.
  String n(double v) {
    final t = v.toStringAsFixed(4).replaceFirst(RegExp(r'\.?0+$'), '');
    return t == '-0' ? '0' : t;
  }

  final rows = [
    for (final p in positions)
      for (final s in p.sales) (p, s),
  ]..sort((a, b) => (a.$2.date ?? DateTime(9999)).compareTo(b.$2.date ?? DateTime(9999)));
  final b = StringBuffer('date,symbol,quantity,sale_price,proceeds,cost_basis,gain,currency\n');
  for (final (p, s) in rows) {
    b.writeln(
      [
        s.date?.toIso8601String().substring(0, 10) ?? '',
        p.symbol,
        n(s.quantity),
        n(s.price),
        n(s.proceeds),
        n(s.cost),
        n(s.proceeds - s.cost),
        p.currency,
      ].join(','),
    );
  }
  return b.toString();
}

/// Egy beolvasott sor (még nem került a portfólióba).
class ImportedLot {
  const ImportedLot({
    required this.symbol,
    required this.quantity,
    required this.price,
    required this.currency,
    this.date,
    this.sell = false,
  });

  final String symbol;
  final double quantity;
  final double price;
  final String currency;
  final DateTime? date;
  final bool sell;
}

/// Egy beolvasott osztaléksor (még nem került a portfólióba).
class ImportedDividend {
  const ImportedDividend({required this.symbol, required this.amount, required this.currency, this.date});

  final String symbol;
  final double amount;
  final String currency;
  final DateTime? date;
}

/// Egy beolvasott felaprózás-sor (saját exportból).
class ImportedSplit {
  const ImportedSplit({required this.symbol, required this.from, required this.to, required this.date});

  final String symbol;
  final int from;
  final int to;
  final DateTime date;
}

/// A beolvasás eredménye: a jó sorok, a kapott osztalékok, a felaprózások és a kihagyottak száma.
class CsvImport {
  const CsvImport(this.lots, this.skipped, {this.dividends = const [], this.splits = const []});

  final List<ImportedLot> lots;
  final List<ImportedDividend> dividends;
  final List<ImportedSplit> splits;
  final int skipped;
}

/// Saját export `split` sora: az új darab a darabszám, a régi az ár oszlopában, dátummal.
ImportedSplit? _split(String symbol, String to, String from, String date) {
  // Táblázatkezelőből „10.00” is lehet: szám, ha egész értékű.
  int? whole(String s) {
    final v = _decimal(s);
    return v != null && v == v.roundToDouble() ? v.round() : null;
  }

  final t = whole(to), f = whole(from);
  final d = _date(date);
  if (!_symbol.hasMatch(symbol) || t == null || f == null || !SplitRecord.validRatio(f, t) || d == null) return null;
  return ImportedSplit(symbol: symbol, from: f, to: t, date: d);
}

final _symbol = RegExp(r'^[A-Z0-9][A-Z0-9.\-:^]{0,14}$');
final _currency = RegExp(r'^[A-Z]{3}$');
final _nonNumeric = RegExp(r'[^0-9,.\-]');

/// Szám egy cellából, a pénznemjelek, szóközök és egyéb jelek nélkül.
double? _decimal(String s) => parseDecimal(s.replaceAll(_nonNumeric, ''));

/// Egy CSV-sor mezői: idézőjelek között az elválasztó és a `""` is lehet a mezőben.
List<String> splitCsvLine(String line, String sep) {
  final out = <String>[];
  final b = StringBuffer();
  var quoted = false;
  for (var i = 0; i < line.length; i++) {
    final c = line[i];
    if (c == '"') {
      if (quoted && i + 1 < line.length && line[i + 1] == '"') {
        b.write('"');
        i++;
      } else {
        quoted = !quoted;
      }
    } else if (c == sep && !quoted) {
      out.add(b.toString().trim());
      b.clear();
    } else {
      b.write(c);
    }
  }
  out.add(b.toString().trim());
  return out;
}

String _separator(String line) => line.contains('\t') ? '\t' : (line.contains(';') ? ';' : ',');

/// A bróker-exportok oszlopnevei (kisbetűvel, írásjelek és szóközök nélkül).
const _roles = <String, Set<String>>{
  'symbol': {'symbol', 'ticker'},
  'quantity': {'quantity', 'qty', 'shares', 'noofshares', 'numberofshares', 'units'},
  'price': {'price', 'pricepershare', 'priceshare', 'tprice', 'tradeprice', 'unitprice', 'shareprice'},
  'currency': {'currency', 'currencypriceshare', 'pricecurrency', 'currencyprimary'},
  'date': {'date', 'time', 'datetime', 'tradedate'},
  'side': {'type', 'action', 'side', 'buysell', 'transactiontype'},
  // Az osztaléksor összege (Revolut „Total Amount”, Trading 212 „Total”).
  'total': {'total', 'totalamount', 'amount', 'netamount'},
  'totalcurrency': {'currencytotal'},
};

/// Fejlécsor felismerése: oszlopszerep → index, ha van ticker, darabszám és ár.
Map<String, int>? _header(List<String> cells) {
  final found = <String, int>{};
  for (final (i, c) in cells.indexed) {
    final n = c.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');
    for (final e in _roles.entries) {
      if (!found.containsKey(e.key) && e.value.contains(n)) found[e.key] = i;
    }
  }
  return found.containsKey('symbol') && found.containsKey('quantity') && found.containsKey('price') ? found : null;
}

/// Dátum a gyakori alakokban: `2024-03-14…`, `20240314`, `14/03/2024`, `14.03.2024`.
DateTime? _date(String raw) {
  final s = raw.trim();
  final iso = RegExp(r'^(\d{4})-(\d{2})-(\d{2})').firstMatch(s);
  if (iso != null) return DateTime.tryParse('${iso[1]}-${iso[2]}-${iso[3]}');
  final compact = RegExp(r'^(\d{4})(\d{2})(\d{2})(\D|$)').firstMatch(s);
  if (compact != null) return DateTime.tryParse('${compact[1]}-${compact[2]}-${compact[3]}');
  final eu = RegExp(r'^(\d{1,2})[./](\d{1,2})[./](\d{4})').firstMatch(s);
  if (eu != null) {
    final d = int.parse(eu[1]!), m = int.parse(eu[2]!), y = int.parse(eu[3]!);
    if (m >= 1 && m <= 12 && d >= 1 && d <= 31) return DateTime(y, m, d);
  }
  return null;
}

/// Ár, akár pénznemmel együtt („USD 182.50”, „182,50 EUR”): a szám és a pénznem.
(double?, String?) _price(String raw) {
  final ccy = RegExp(r'\b([A-Z]{3})\b').firstMatch(raw)?.group(1);
  return (_decimal(raw), ccy);
}

/// Beillesztett sorok beolvasása, megengedően: a mezőelválasztó tabulátor,
/// pontosvessző (ilyenkor a tizedesjel lehet vessző) vagy vessző.
///
/// Ha van felismerhető fejlécsor (pl. a Revolut, a Trading 212 vagy az
/// Interactive Brokers exportja), az oszlopok név szerint; az osztaléksorok
/// kapott osztalékként jönnek át, a többi nem vétel és nem eladás sort
/// (befizetés, díj) csendben kihagyja. Fejléc nélkül a sorrend: `ticker, darab,
/// ár, pénznem, dátum, side`; a pénznem és a dátum elhagyható (pénznem nélkül
/// [defaultCurrency]). Eladás: `sell` a hatodik oszlopban, illetve negatív
/// darabszám; osztalék: `dividend`, az összeg az ár oszlopában.
CsvImport parsePortfolioCsv(String text, {String defaultCurrency = 'USD'}) {
  final lines = [
    for (final l in text.split(RegExp(r'\r?\n')))
      if (l.trim().isNotEmpty) l.trim(),
  ];
  // A fejléc nem mindig az első sor (pl. az IBKR kimutatásban szakaszok vannak).
  for (final (i, line) in lines.take(30).indexed) {
    final sep = _separator(line);
    final h = _header(splitCsvLine(line, sep));
    if (h != null) return _withHeader(lines.skip(i + 1), sep, h, splitCsvLine(line, sep), defaultCurrency);
  }
  return _positional(lines, defaultCurrency);
}

CsvImport _withHeader(
  Iterable<String> lines,
  String sep,
  Map<String, int> col,
  List<String> header,
  String defaultCurrency,
) {
  final lots = <ImportedLot>[];
  final dividends = <ImportedDividend>[];
  final splits = <ImportedSplit>[];
  var skipped = 0;
  String cell(List<String> f, String role) {
    final i = col[role];
    return i == null || i >= f.length ? '' : f[i];
  }

  // Interactive Brokers kimutatás: „Trades,Header,…” után csak a „Trades,Data,…”
  // sorok számítanak; a „Dividends” szakasz sorai kapott osztalékok.
  final sections = header.length > 1 && header[1].toLowerCase() == 'header';
  Map<String, int>? dividendCols, taxCols;
  // Forrásadó (IBKR „Withholding Tax” szakasz): részvény és nap szerint, negatív összeg.
  final withholding = <String, double>{};
  for (final line in lines) {
    final f = splitCsvLine(line, sections ? sep : _separator(line));
    if (sections && f.length > 1 && (f[0].toLowerCase() == 'dividends' || f[0].toLowerCase() == 'withholding tax')) {
      final isTax = f[0].toLowerCase() == 'withholding tax';
      if (f[1].toLowerCase() == 'header') {
        final cols = {for (final (i, c) in f.indexed) c.toLowerCase().replaceAll(RegExp(r'[^a-z]'), ''): i};
        if (isTax) {
          taxCols = cols;
        } else {
          dividendCols = cols;
        }
      } else if (f[1].toLowerCase() == 'data') {
        if (isTax && taxCols != null) {
          final t = _ibkrDividend(f, taxCols, allowNegative: true);
          if (t != null) withholding[_dayKey(t)] = (withholding[_dayKey(t)] ?? 0) + t.amount;
        } else if (!isTax && dividendCols != null) {
          final d = _ibkrDividend(f, dividendCols);
          if (d != null) dividends.add(d);
        }
      }
      continue;
    }
    if (sections && (f.length < 2 || f[0] != header[0] || f[1].toLowerCase() != 'data')) continue;
    // Ha nincs „side” oszlop, a fejlécen túli első mező is lehet „sell”.
    final side = (col.containsKey('side') ? cell(f, 'side') : (f.length > header.length ? f[header.length] : ''))
        .toLowerCase();
    final signed = _decimal(cell(f, 'quantity'));
    bool? sell;
    if (side.isEmpty) {
      sell = signed != null && signed < 0;
    } else if (side.contains('sell') || side == 's' || side == 'sld') {
      sell = true;
    } else if (side.contains('buy') || side == 'b' || side == 'bot') {
      sell = false;
    }
    final symbol = cell(f, 'symbol').toUpperCase();
    if (side.contains('dividend')) {
      // Kapott osztalék: a teljes összeg (ha nincs külön oszlopa, az ár oszlopában).
      final (amount, amountCcy) = _price(col.containsKey('total') ? cell(f, 'total') : cell(f, 'price'));
      final totalCcy = cell(f, 'totalcurrency').toUpperCase();
      final ccyCell = cell(f, 'currency').toUpperCase();
      final ccy = _currency.hasMatch(totalCcy)
          ? totalCcy
          : (amountCcy ?? (_currency.hasMatch(ccyCell) ? ccyCell : defaultCurrency));
      if (_symbol.hasMatch(symbol) && amount != null && amount > 0) {
        dividends.add(ImportedDividend(symbol: symbol, amount: amount, currency: ccy, date: _date(cell(f, 'date'))));
      } else {
        skipped++;
      }
      continue;
    }
    if (side == 'split') {
      final s = _split(symbol, cell(f, 'quantity'), cell(f, 'price'), cell(f, 'date'));
      if (s == null) {
        skipped++;
      } else {
        splits.add(s);
      }
      continue;
    }
    // Befizetés, díj stb.: nem vétel és nem eladás.
    if (sell == null) continue;
    final quantity = signed?.abs();
    final (price, priceCcy) = _price(cell(f, 'price'));
    if (!_symbol.hasMatch(symbol) || quantity == null || quantity <= 0 || price == null || price <= 0) {
      skipped++;
      continue;
    }
    final ccyCell = cell(f, 'currency').toUpperCase();
    final ccy = _currency.hasMatch(ccyCell) ? ccyCell : (priceCcy ?? defaultCurrency);
    lots.add(
      ImportedLot(
        symbol: symbol,
        quantity: quantity,
        price: price,
        currency: ccy,
        date: _date(cell(f, 'date')),
        sell: sell,
      ),
    );
  }
  // A bruttó osztalékból a forrásadó levonva: ami a számlára érkezett.
  final net = [
    for (final d in dividends)
      if (d.amount + (withholding[_dayKey(d)] ?? 0) case final a when a > 0)
        ImportedDividend(symbol: d.symbol, amount: a, currency: d.currency, date: d.date),
  ];
  return CsvImport(lots, skipped, dividends: net, splits: splits);
}

String _dayKey(ImportedDividend d) => '${d.symbol}|${d.currency}|${d.date?.toIso8601String().substring(0, 10)}';

/// Az IBKR „Dividends,Data,…” (vagy „Withholding Tax,Data,…”) sora: a ticker a
/// leírás elején („AAPL(US0378331005) Cash Dividend USD 0.25 per Share”), az
/// összeg a sor végén (az adónál negatív).
ImportedDividend? _ibkrDividend(List<String> f, Map<String, int> col, {bool allowNegative = false}) {
  String cell(String name) {
    final i = col[name];
    return i == null || i >= f.length ? '' : f[i];
  }

  final symbol = RegExp(r'^([A-Z0-9.\-]{1,15})\s*\(').firstMatch(cell('description'))?.group(1);
  final amount = _decimal(cell('amount'));
  final ccy = cell('currency').toUpperCase();
  if (symbol == null || amount == null || (!allowNegative && amount <= 0) || !_currency.hasMatch(ccy)) return null;
  return ImportedDividend(symbol: symbol, amount: amount, currency: ccy, date: _date(cell('date')));
}

CsvImport _positional(List<String> lines, String defaultCurrency) {
  final lots = <ImportedLot>[];
  final dividends = <ImportedDividend>[];
  final splits = <ImportedSplit>[];
  var skipped = 0;
  var first = true;
  for (final line in lines) {
    final f = splitCsvLine(line, _separator(line));
    final symbol = f.isNotEmpty ? f[0].toUpperCase() : '';
    final signed = f.length > 1 ? parseDecimal(f[1]) : null;
    final side = f.length > 5 ? f[5].toLowerCase() : '';
    if (side == 'dividend') {
      final amount = f.length > 2 ? parseDecimal(f[2]) : null;
      final ccy = f.length > 3 && _currency.hasMatch(f[3].toUpperCase()) ? f[3].toUpperCase() : defaultCurrency;
      if (_symbol.hasMatch(symbol) && amount != null && amount > 0) {
        dividends.add(
          ImportedDividend(symbol: symbol, amount: amount, currency: ccy, date: f.length > 4 ? _date(f[4]) : null),
        );
      } else {
        skipped++;
      }
      first = false;
      continue;
    }
    if (side == 'split') {
      final s = f.length > 4 ? _split(symbol, f[1], f[2], f[4]) : null;
      if (s == null) {
        skipped++;
      } else {
        splits.add(s);
      }
      first = false;
      continue;
    }
    final sell = (signed != null && signed < 0) || side == 'sell' || side == 's';
    final quantity = signed?.abs();
    final price = f.length > 2 ? parseDecimal(f[2]) : null;
    final ok = _symbol.hasMatch(symbol) && quantity != null && quantity > 0 && price != null && price > 0;
    if (!ok) {
      // Az első rossz sor a fejléc lehet; azt nem számoljuk hibának.
      if (!first) skipped++;
      first = false;
      continue;
    }
    first = false;
    final ccy = f.length > 3 && _currency.hasMatch(f[3].toUpperCase()) ? f[3].toUpperCase() : defaultCurrency;
    final date = f.length > 4 ? _date(f[4]) : null;
    lots.add(ImportedLot(symbol: symbol, quantity: quantity, price: price, currency: ccy, date: date, sell: sell));
  }
  return CsvImport(lots, skipped, dividends: dividends, splits: splits);
}
