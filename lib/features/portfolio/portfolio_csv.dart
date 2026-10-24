import '../../core/models/stock_candidate.dart';
import 'add_lot_dialog.dart' show parseAmount, parseDecimal;
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
  // A számla és a díj oszlopa csak akkor, ha van ilyen tranzakció (a régi formátum marad).
  final withAccount = lots.any((l) => l.account != null) || dividends.any((d) => d.account != null);
  final withFee = lots.any((l) => l.fee > 0);
  final b = StringBuffer(
    'symbol,quantity,price,currency,date,side${withAccount ? ',account' : ''}${withFee ? ',fee' : ''}\n',
  );
  for (final l in lots) {
    b.writeln(
      [
        _csvText(l.symbol),
        n(l.quantity),
        n(l.price),
        _csvText(l.currency),
        l.date?.toIso8601String().substring(0, 10) ?? '',
        l.sell ? 'sell' : 'buy',
        if (withAccount) _csvText(l.account ?? ''),
        if (withFee) l.fee > 0 ? n(l.fee) : '',
      ].join(','),
    );
  }
  for (final d in dividends) {
    b.writeln(
      [
        _csvText(d.symbol),
        '',
        n(d.amount),
        _csvText(d.currency),
        d.date?.toIso8601String().substring(0, 10) ?? '',
        'dividend',
        if (withAccount) _csvText(d.account ?? ''),
      ].join(','),
    );
  }
  for (final s in splits) {
    b.writeln([_csvText(s.symbol), s.to, s.from, '', s.date.toIso8601String().substring(0, 10), 'split'].join(','));
  }
  return b.toString();
}

/// A kapott osztalékok CSV-ben (az adóbevalláshoz): dátum, ticker, összeg,
/// pénznem, időrendben.
String dividendsCsv(List<DividendRecord> dividends, {DateTime? now}) {
  String n(double v) {
    final t = v.toStringAsFixed(4).replaceFirst(RegExp(r'\.?0+$'), '');
    return t == '-0' ? '0' : t;
  }

  // Csak a már kifizetett (a bejelentett, jövőbeli kifizetés még nem jövedelem).
  final today = now ?? DateTime.now();
  final rows = [
    for (final d in dividends)
      if (d.date == null || !d.date!.isAfter(today)) d,
  ]..sort((a, b) => (a.date ?? DateTime(9999)).compareTo(b.date ?? DateTime(9999)));
  // A számla oszlopa csak akkor, ha van számlás osztalék (pl. a TBSZ osztaléka másként adózik).
  final withAccount = rows.any((d) => d.account != null);
  final b = StringBuffer('date,symbol,amount,currency${withAccount ? ',account' : ''}\n');
  for (final d in rows) {
    b.writeln(
      [
        d.date?.toIso8601String().substring(0, 10) ?? '',
        _csvText(d.symbol),
        n(d.amount),
        _csvText(d.currency),
        if (withAccount) _csvText(d.account ?? ''),
      ].join(','),
    );
  }
  return b.toString();
}

/// A realizált nyereség eladásonként (FIFO), az adóbevalláshoz: dátum, ticker,
/// darab, eladási ár, bevétel, bekerülési érték, nyereség és pénznem, időrendben.
/// A [stored] (tárolt) tételekből egy későbbi felaprózás előtti eladás a kötjegy
/// szerinti darabbal és árral szerepel (az összegek ugyanazok).
String realizedCsv(List<Position> positions, {Map<String, PortfolioLot> stored = const {}}) {
  // Legfeljebb 4 tizedes, a felesleges nullák (és a magányos pont) nélkül.
  String n(double v) {
    final t = v.toStringAsFixed(4).replaceFirst(RegExp(r'\.?0+$'), '');
    return t == '-0' ? '0' : t;
  }

  final rows = [
    for (final p in positions)
      for (final s in p.sales) (p, s),
  ]..sort((a, b) => (a.$2.date ?? DateTime(9999)).compareTo(b.$2.date ?? DateTime(9999)));
  // A számla oszlopa csak akkor, ha van számlás eladás (pl. a TBSZ nyeresége másként adózik).
  final withAccount = rows.any((r) => r.$2.account != null);
  final b = StringBuffer(
    'date,symbol,quantity,sale_price,proceeds,cost_basis,gain,currency${withAccount ? ',account' : ''}\n',
  );
  for (final (p, s) in rows) {
    final raw = stored[s.id];
    final f = raw == null || s.price <= 0 ? 1.0 : raw.price / s.price;
    b.writeln(
      [
        s.date?.toIso8601String().substring(0, 10) ?? '',
        _csvText(p.symbol),
        n(s.quantity / f),
        n(s.price * f),
        n(s.proceeds),
        n(s.cost),
        n(s.proceeds - s.cost),
        _csvText(p.currency),
        if (withAccount) _csvText(s.account ?? ''),
      ].join(','),
    );
  }
  return b.toString();
}

/// CSV-mező: elválasztójelet (vessző, pontosvessző, tab), idézőjelet vagy sortörést
/// tartalmazó szöveg idézőjelek között – a beolvasás soronként találgatja az elválasztót.
String _csvField(String s) => RegExp(r'[,;\t"\n]').hasMatch(s) ? '"${s.replaceAll('"', '""')}"' : s;

/// Szöveges cella (ticker, pénznem, számla): ami képletként indulna (`=`, `+`, `-`, `@`,
/// tab, kocsivissza), aposztrófot kap elé – egy importált vagy szinkronból jött
/// `=HYPERLINK(…)` a táblázatkezelőben ne fusson le.
String _csvText(String s) => _csvField(RegExp(r'^[=+\-@\t\r]').hasMatch(s) ? "'$s" : s);

/// A CSV a táblázatkezelő helyi beállításához: tizedesvesszős nyelven (pl. magyarul)
/// pontosvesszővel elválasztva és a tört számokban tizedesvesszővel – így a helyi
/// Excel rögtön oszlopokra bontja –, különben változatlan. A saját import mindkettőt
/// beolvassa.
String localCsv(String csv, {required String decimalSeparator}) {
  if (decimalSeparator != ',') return csv;
  final fraction = RegExp(r'^-?\d+\.\d+$');
  String field(String f) {
    final v = fraction.hasMatch(f) ? f.replaceFirst('.', ',') : f;
    return RegExp(r'[;"\n]').hasMatch(v) ? '"${v.replaceAll('"', '""')}"' : v;
  }

  return [for (final line in csv.split('\n')) line.isEmpty ? line : splitCsvLine(line, ',').map(field).join(';')]
      .join('\n');
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
    this.account,
    this.fee = 0,
    this.isin,
    this.originalPrice,
  });

  /// Más pénznemből átváltott tételnél ([CsvImport.inOneCurrency]) a fájlban szereplő
  /// ár: az ismétlés-szűrés így egy korábbi, átváltás nélkül felvett tételt is felismer.
  final double? originalPrice;

  /// A számla neve (saját exportból vagy „account” / „számla” oszlopból).
  final String? account;

  /// A tranzakció díja (saját export „fee”, IBKR „Comm/Fee”, magyarul „jutalék” / „díj”).
  final double fee;

  /// Ticker nélküli exportban (DEGIRO) az értékpapír ISIN-je: a tickert az import
  /// a keresővel oldja fel ([CsvImport.withSymbols]); addig a [symbol] üres.
  final String? isin;

  final String symbol;
  final double quantity;
  final double price;
  final String currency;
  final DateTime? date;
  final bool sell;
}

/// Egy beolvasott osztaléksor (még nem került a portfólióba).
class ImportedDividend {
  const ImportedDividend({
    required this.symbol,
    required this.amount,
    required this.currency,
    this.date,
    this.account,
    this.isin,
  });

  /// A számla neve (saját exportból).
  final String? account;

  /// Ticker nélküli exportban (DEGIRO számlakivonat) az ISIN; addig a [symbol] üres.
  final String? isin;

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

  /// A még ticker nélküli sorok ISIN-jei a kereskedés pénznemével (a feloldáshoz):
  /// ugyanaz az ISIN két pénznemben (pl. NASDAQ és XETRA) két tőzsdei tickert kap.
  Set<IsinKey> get isins => {
    for (final d in dividends)
      if (d.isin case final i? when d.symbol.isEmpty) (isin: i, currency: d.currency),
    for (final l in lots)
      if (l.isin case final i? when l.symbol.isEmpty) (isin: i, currency: l.currency),
  };

  /// Csak a még nem rögzített sorok ([lots] és [dividends] a portfólióban már
  /// meglévők), és hány maradt ki ismétlésként. Ugyanaz a sor (ticker, darab, ár,
  /// nap, irány, számla; osztaléknál ticker, összeg, nap, számla) annyiszor marad ki,
  /// ahányszor már rögzítve van: a fájlon belüli két azonos részteljesítés elsőre
  /// mindkettő bekerül, a frissebb export újbóli beolvasásakor egyik sem.
  ({CsvImport rest, int duplicates}) withoutRecorded(List<PortfolioLot> lots, List<DividendRecord> dividends) {
    String day(DateTime? d) => d?.toIso8601String().substring(0, 10) ?? '';
    // A számla kis- és nagybetűje nem számít (a tároló a meglévő írásmódot használja).
    String acc(String? a) => a?.toLowerCase() ?? '';
    String lotKey(String symbol, double q, double p, DateTime? d, bool sell, String? a) =>
        '$symbol|$q|$p|${day(d)}|$sell|${acc(a)}';
    String dividendKey(String symbol, double amount, DateTime? d, String? a) => '$symbol|$amount|${day(d)}|${acc(a)}';
    final recorded = <String, int>{};
    void count(String k) => recorded[k] = (recorded[k] ?? 0) + 1;
    // Egy már rögzített példány „elhasználása”; `true`, ha volt ilyen.
    bool take(String k) {
      final n = recorded[k] ?? 0;
      if (n > 0) recorded[k] = n - 1;
      return n > 0;
    }

    for (final l in lots) {
      count(lotKey(l.symbol, l.quantity, l.price, l.date, l.sell, l.account));
    }
    for (final d in dividends) {
      count('d|${dividendKey(d.symbol, d.amount, d.date, d.account)}');
    }
    var duplicates = 0;
    final newLots = <ImportedLot>[];
    for (final l in this.lots) {
      final original = l.originalPrice;
      if (take(lotKey(l.symbol, l.quantity, l.price, l.date, l.sell, l.account)) ||
          (original != null && take(lotKey(l.symbol, l.quantity, original, l.date, l.sell, l.account)))) {
        duplicates++;
      } else {
        newLots.add(l);
      }
    }
    final newDividends = <ImportedDividend>[];
    for (final d in this.dividends) {
      if (take('d|${dividendKey(d.symbol, d.amount, d.date, d.account)}')) {
        duplicates++;
      } else {
        newDividends.add(d);
      }
    }
    return (rest: CsvImport(newLots, skipped, dividends: newDividends, splits: splits), duplicates: duplicates);
  }

  /// Egy ticker tételei egy pénznemben: a már rögzített ([recorded]), különben az
  /// importban elsőként látott pénznemtől eltérő tétel ára és díja a [rate]-tel (a
  /// tranzakció napjának árfolyamával) átváltva – a pozíció különben átváltás
  /// nélkül adná össze őket. Árfolyam nélkül a tétel változatlan marad.
  Future<CsvImport> inOneCurrency(
    String? Function(String symbol) recorded,
    Future<double?> Function(String from, String to, DateTime day) rate,
  ) async {
    final currencyOf = <String, String>{};
    final out = <ImportedLot>[];
    for (final l in lots) {
      final c = currencyOf[l.symbol.toUpperCase()] ??= recorded(l.symbol) ?? l.currency;
      final r = c == l.currency ? null : await rate(l.currency, c, l.date ?? DateTime.now());
      if (r == null || !r.isFinite || r <= 0) {
        out.add(l);
        continue;
      }
      out.add(
        ImportedLot(
          symbol: l.symbol,
          quantity: l.quantity,
          price: l.price * r,
          currency: c,
          date: l.date,
          sell: l.sell,
          account: l.account,
          fee: l.fee * r,
          isin: l.isin,
          originalPrice: l.price,
        ),
      );
    }
    return CsvImport(out, skipped, dividends: dividends, splits: splits);
  }

  /// A ticker nélküli sorok a feloldott tickerrel ([symbols]: ISIN és pénznem →
  /// ticker); amit nem sikerült feloldani, kimarad (a kihagyottak közé számít).
  CsvImport withSymbols(Map<IsinKey, String> symbols) {
    final out = <ImportedLot>[];
    var missing = 0;
    for (final l in lots) {
      if (l.symbol.isNotEmpty) {
        out.add(l);
      } else if (symbols[(isin: l.isin ?? '', currency: l.currency)] case final s?) {
        out.add(
          ImportedLot(
            symbol: s,
            quantity: l.quantity,
            price: l.price,
            currency: l.currency,
            date: l.date,
            sell: l.sell,
            account: l.account,
            fee: l.fee,
            isin: l.isin,
          ),
        );
      } else {
        missing++;
      }
    }
    final paid = <ImportedDividend>[];
    for (final d in dividends) {
      if (d.symbol.isNotEmpty) {
        paid.add(d);
      } else if (symbols[(isin: d.isin ?? '', currency: d.currency)] case final s?) {
        paid.add(
          ImportedDividend(
            symbol: s,
            amount: d.amount,
            currency: d.currency,
            date: d.date,
            account: d.account,
            isin: d.isin,
          ),
        );
      } else {
        missing++;
      }
    }
    return CsvImport(out, skipped + missing, dividends: paid, splits: splits);
  }
}

/// Egy ticker nélküli értékpapír a kereskedés pénznemével.
typedef IsinKey = ({String isin, String currency});

/// A pénznemhez illő tőzsdei utótagok (a kereső találatai közül ezek az elsőbbek).
const _suffixes = <String, List<String>>{
  'EUR': ['.DE', '.AS', '.PA', '.MI', '.MC', '.BR', '.LS', '.VI', '.HE', '.IR', '.F'],
  'GBP': ['.L'],
  'GBX': ['.L'],
  'CHF': ['.SW'],
  'HUF': ['.BD'],
  'SEK': ['.ST'],
  'NOK': ['.OL'],
  'DKK': ['.CO'],
  'PLN': ['.WA'],
  'CZK': ['.PR'],
  'CAD': ['.TO', '.V'],
  'AUD': ['.AX'],
  'JPY': ['.T'],
  'HKD': ['.HK'],
};

/// ISIN → ticker a piaci adatok keresőjével, ISIN-enként egyszer, a kereskedés
/// pénzneméhez illő tőzsdével: dollárban az utótag nélküli (amerikai) találat, más
/// pénznemben a pénznem tőzsdéjének utótagja (euróban pl. `.DE`, `.AS`), annak
/// híján bármely utótagos, végül az első; ami nem oldható fel, kimarad.
Future<Map<IsinKey, String>> resolveIsins(
  Future<List<StockCandidate>> Function(String query) search,
  Set<IsinKey> keys,
) async {
  final found = <String, List<StockCandidate>>{};
  await Future.wait([
    for (final isin in {for (final k in keys) k.isin})
      search(isin).then((r) => found[isin] = r, onError: (Object _) => const <StockCandidate>[]),
  ]);
  String? pick(List<StockCandidate> c, String currency) {
    bool suffixed(StockCandidate x) => x.symbol.contains('.');
    final preferred = _suffixes[currency] ?? const <String>[];
    final best = currency == 'USD'
        ? c.where((x) => !suffixed(x)).firstOrNull
        : c.where((x) => preferred.any((p) => x.symbol.toUpperCase().endsWith(p))).firstOrNull ??
              c.where(suffixed).firstOrNull;
    final symbol = (best ?? c.firstOrNull)?.symbol.toUpperCase();
    return symbol != null && _symbol.hasMatch(symbol) ? symbol : null;
  }

  return {for (final k in keys) k: ?pick(found[k.isin] ?? const [], k.currency)};
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
final _isin = RegExp(r'^[A-Z]{2}[A-Z0-9]{9}[0-9]$');
final _nonNumeric = RegExp(r'[^0-9,.\-]');

/// Tudományos alak (táblázatkezelőből: „1.5E+3”, „1,2E-4”).
final _scientific = RegExp(r'^[+-]?\d+([.,]\d+)?[eE][+-]?\d+$');

/// Egy cella számjegyei, előjellel: a pénznemjelek, szóközök és egyéb jelek nélkül; a
/// könyvelési zárójel („(10)”, „($1,234.00)”) és a tipográfiai mínusz (U+2212) negatív.
String _numeric(String s) {
  final t = s.trim().replaceAll('\u2212', '-');
  // A kitevő nem hagyható el (az „1.5E+3” különben 1,53 lenne).
  if (_scientific.hasMatch(t)) return t.replaceFirst(',', '.');
  final digits = t.replaceAll(_nonNumeric, '');
  return t.startsWith('(') && t.endsWith(')') && !digits.startsWith('-') ? '-$digits' : digits;
}

/// Szám egy cellából (lásd [_numeric]).
double? _decimal(String s) => parseDecimal(_numeric(s));

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

String _separator(String line) {
  // Az idézőjeles mezőben (pl. „TBSZ; 2026” számlanévben) lévő jel nem elválasztó.
  final bare = line.replaceAll(RegExp(r'"[^"]*"'), '');
  return bare.contains('\t') ? '\t' : (bare.contains(';') ? ';' : ',');
}

/// Az eladás és a vétel magyarul és németül a „side” oszlopban, szó elején (a
/// „kivétel”, „bevétel”, „Rückkauf” nem vétel); az eladás előbb, mert a „Verkauf”
/// „kauf”-ot is tartalmaz.
final _sellWords = RegExp(r'(^|[^\p{L}])(eladás|verkauf)', unicode: true);

/// Az angol eladás és vétel egész szóként (a „Russell” nem „sell”, a „Soldier” nem „sold”).
final _sellVerb = RegExp(r'(^|[^a-z])(sell|sold)($|[^a-z])');
final _buyVerb = RegExp(r'(^|[^a-z])(buy|bought)($|[^a-z])');
// Az újrabefektetett osztalék darabjai (Schwab „Reinvest Shares”, Fidelity „Reinvestment”) is vétel;
// A megtakarítási terv (Scalable Capital „Savings plan”, „Sparplan”) végrehajtása is vétel.
final _buyWords = RegExp(r'(^|[^\p{L}])(vétel|vásárlás|kauf|reinvest|savings plan|sparplan)', unicode: true);

/// Osztaléksor (Schwab „Non-Qualified Div”, Robinhood „CDIV”, Scalable Capital „Distribution” is).
final _dividendWords = RegExp(
  r'dividend|osztalék|distribution|ausschüttung|(^|[^\p{L}])c?div($|[^\p{L}])',
  unicode: true,
);

/// Forrásadó-sor (Schwab „NRA Tax Adj”, Fidelity „Foreign Tax Paid”, Robinhood „DTAX”,
/// Revolut „Dividend Tax”, „Osztalékadó”, „Forrásadó”, „Quellensteuer”, „Dividendensteuer”).
/// Az „adó” csak összetételben vagy önállóan (az „eladó” nem adó).
final _taxWords = RegExp(
  r'(^|[^\p{L}])(tax|dtax|withholding|adó)($|[^\p{L}])|(osztalék|forrás)adó|steuer',
  unicode: true,
);

/// Az amerikai brókerek exportjának oszlopai (Schwab, Fidelity, Robinhood): ezekben a
/// perjeles dátum hónappal kezdődik (`10/15/2024`).
const _usHeaders = {'feescomm', 'rundate', 'activitydate', 'transcode'};

/// Nem teljesült megbízás állapota (Scalable Capital „Cancelled”, „Rejected”).
final _voidStatus = RegExp(r'cancel|reject|fail|storniert|abgelehnt|törölt|elutasít');

final _slashDate = RegExp(r'^(\d{1,2})/(\d{1,2})/(\d{4}|\d{2})(?!\d)');

/// Hónappal kezdődnek-e a perjeles dátumok: ha valamelyikben a második tag 12 fölött
/// van, igen; ha az első, nem; ha egyik sem dönt, a [hint].
bool _monthFirst(Iterable<String> dates, {required bool hint}) {
  for (final d in dates) {
    final m = _slashDate.firstMatch(d.trim());
    if (m == null) continue;
    if (int.parse(m[2]!) > 12) return true;
    if (int.parse(m[1]!) > 12) return false;
  }
  return hint;
}

final _accountLike = RegExp(r'\p{L}', unicode: true);

/// Fejléc nélküli sorban a hetedik oszlop a számla (saját export), de csak ha betű
/// is van benne, és nem szám (egy összeg-oszlop, pl. „1500.00” vagy „$1,500”, nem az).
String? _positionalAccount(List<String> f) =>
    f.length > 6 && _accountLike.hasMatch(f[6]) && parseDecimal(f[6]) == null ? PortfolioLot.cleanAccount(f[6]) : null;

/// A bróker-exportok oszlopnevei (kisbetűvel, írásjelek, ékezetes betűk és szóközök
/// nélkül – így a magyar „Mennyiség” „mennyisg”, a német „Stück” „stck”). A saját
/// táblázatokhoz magyar és német fejlécek is.
const _roles = <String, Set<String>>{
  'symbol': {'symbol', 'ticker', 'instrument', 'szimblum', 'tickerkd', 'krzel'},
  // Ticker nélküli exportban (DEGIRO) az ISIN: a tickert az import oldja fel.
  'isin': {'isin'},
  // Az értékpapír neve (Fidelity, Schwab): a műveletből kivágva, hogy a név ne számítson
  // műveletnek (pl. „ISHARES RUSSELL 2000” nem „sell”, „US DIVIDEND EQUITY ETF” nem osztalék).
  'description': {'description', 'securitydescription'},
  'quantity': {
    'quantity', 'qty', 'shares', 'noofshares', 'numberofshares', 'units', //
    'mennyisg', 'darab', 'darabszm', 'db', 'stck', 'stckzahl', 'anzahl', 'menge',
  },
  'price': {
    'price', 'pricepershare', 'priceshare', 'tprice', 'tradeprice', 'unitprice', 'shareprice', //
    'egysgr', 'vtelir', 'eladsir', 'ausfhrungskurs',
  },
  'currency': {
    'currency', 'ccy', 'currencypriceshare', 'pricecurrency', 'currencyprimary', //
    'pnznem', 'deviza', 'whrung',
  },
  // A megbízás állapota (Scalable Capital): a visszavont vagy elutasított sor kimarad.
  'status': {'status', 'sttusz'},
  'date': {
    'date', 'time', 'datetime', 'tradedate', 'rundate', 'activitydate', //
    'dtum', 'teljestsdtuma', 'ktsnap', 'datum', 'handelstag',
  },
  'side': {
    'type', 'action', 'side', 'buysell', 'transactiontype', 'transcode', //
    'irny', 'mvelet', 'transaktionsart', 'geschftsart',
  },
  // Az osztaléksor összege (Revolut „Total Amount”, Trading 212 „Total”, Lightyear „Net Amt.”).
  'total': {'total', 'totalamount', 'amount', 'netamount', 'netamt', 'sszeg', 'betrag'},
  'totalcurrency': {'currencytotal'},
  // A számla (saját export „account”, magyarul „számla”).
  'account': {'account', 'accountname', 'szmla', 'konto', 'depot'},
  // A tranzakció díja a kereskedés pénznemében (az IBKR negatívként írja).
  'fee': {
    'fee', 'fees', 'feescomm', 'commission', 'commissions', 'commfee', 'transactionandorthirdpartyfees', //
    'jutalk', 'dj', 'gebhr', 'gebhren', 'provision',
  },
};

/// Általános oszlopnevek: csak ha nincs egyértelműbb (pl. a „Típus” lehet az
/// eszköz fajtája is, az „Árfolyam” a mai ár is egy saját táblázatban).
const _weakRoles = <String, Set<String>>{
  'price': {'rfolyam', 'kurs', 'preis'},
  'side': {'tpus', 'typ', 'art'},
};

/// Fejlécsor felismerése: oszlopszerep → index, ha van ticker (vagy ISIN), darabszám és ár.
Map<String, int>? _header(List<String> cells) {
  final found = <String, int>{};
  for (final roles in [_roles, _weakRoles]) {
    for (final (i, c) in cells.indexed) {
      final n = c.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');
      for (final e in roles.entries) {
        if (!found.containsKey(e.key) && e.value.contains(n)) found[e.key] = i;
      }
    }
  }
  return (found.containsKey('symbol') || found.containsKey('isin')) &&
          found.containsKey('quantity') &&
          found.containsKey('price')
      ? found
      : null;
}

/// Dátum a gyakori alakokban: `2024-03-14…`, `2024.03.14.`, `20240314`, `14/03/2024`, `14.03.2024`,
/// `14-03-2024`, kétjegyű évvel is (`14.03.24`, `3/14/25`)
/// ([monthFirst] esetén a perjeles `03/14/2024`). A nem létező nap (`2025-02-30`) nem dátum.
DateTime? _date(String raw, {bool monthFirst = false}) {
  final s = raw.trim();
  DateTime? valid(int y, int m, int d) {
    final t = DateTime(y, m, d);
    return t.year == y && t.month == m && t.day == d ? t : null;
  }

  int n(String? v) => int.parse(v!);
  final iso = RegExp(r'^(\d{4})-(\d{2})-(\d{2})').firstMatch(s);
  if (iso != null) return valid(n(iso[1]), n(iso[2]), n(iso[3]));
  // Magyar (és ázsiai) sorrend: „2025.03.14.”, „2025. 03. 14.”, „2025/03/14”.
  final ymd = RegExp(r'^(\d{4})[./]\s?(\d{1,2})[./]\s?(\d{1,2})').firstMatch(s);
  if (ymd != null) return valid(n(ymd[1]), n(ymd[2]), n(ymd[3]));
  final compact = RegExp(r'^(\d{4})(\d{2})(\d{2})(\D|$)').firstMatch(s);
  if (compact != null) return valid(n(compact[1]), n(compact[2]), n(compact[3]));
  final eu = RegExp(r'^(\d{1,2})([./-])(\d{1,2})[./-](\d{4}|\d{2})(?!\d)').firstMatch(s);
  if (eu != null) {
    // Perjellel az amerikai sorrend is lehet (hónap/nap/év); ponttal mindig nap.hónap.év.
    final swap = monthFirst && eu[2] == '/';
    final y = n(eu[4]);
    return valid(y < 100 ? 2000 + y : y, n(eu[swap ? 1 : 3]), n(eu[swap ? 3 : 1]));
  }
  return null;
}

/// Ár, akár pénznemmel együtt („USD 182.50”, „182,50 EUR”): a szám és a pénznem.
(double?, String?) _price(String raw, [double? Function(String)? number]) {
  final ccy = RegExp(r'\b([A-Z]{3})\b').firstMatch(raw)?.group(1);
  return ((number ?? _decimal)(raw), ccy);
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
///
/// A perjeles dátumok sorrendjét a fájl dönti el (egy 12-nél nagyobb tag), ennek
/// híján az amerikai brókerek fejléce, végül a [monthFirst] (pl. amerikai nyelvi
/// beállításnál).
CsvImport parsePortfolioCsv(String text, {String defaultCurrency = 'USD', bool monthFirst = false}) {
  // A fájl eleji bájtsorrend-jel (BOM, pl. a saját exportban) nem a fejléc része.
  final lines = _records(text.replaceFirst('\uFEFF', ''));
  // A fejléc nem mindig az első sor: az első 30 sorban bármilyen fejléc, utána csak az
  // IBKR-kimutatás szakaszfejléce („Trades,Header,…” – előtte sok más szakasz lehet).
  for (final (i, line) in lines.indexed) {
    final sep = _separator(line);
    final cells = splitCsvLine(line, sep);
    if (i >= 30 && (cells.length < 2 || cells[1].toLowerCase() != 'header')) continue;
    final h = _header(cells);
    if (h != null) {
      return _withHeader(lines.skip(i + 1), sep, h, splitCsvLine(line, sep), defaultCurrency, monthFirst: monthFirst);
    }
    if (_statementHeader(splitCsvLine(line, sep)) case final c?) {
      return _statement(lines.skip(i + 1), c, monthFirst: monthFirst);
    }
  }
  return _positional(lines, defaultCurrency);
}

/// A szöveg CSV-rekordjai: az idézőjeles mezőn belüli sortörés (pl. a Robinhood
/// kétsoros leírása) nem kezd új rekordot, szóközzé válik; az üres sorok kimaradnak.
/// Egy páratlan (lezáratlan) idézőjel legfeljebb öt sort fűz össze, utána a sorok
/// külön maradnak.
List<String> _records(String text) {
  final out = <String>[];
  final pending = <String>[];
  var quotes = 0;
  void flush({required bool joined}) {
    if (joined) {
      out.add(pending.join(' ').trim());
    } else {
      out.addAll(pending.map((l) => l.trim()));
    }
    pending.clear();
    quotes = 0;
  }

  for (final l in text.split(RegExp(r'\r?\n'))) {
    pending.add(l);
    quotes += '"'.allMatches(l).length;
    if (quotes.isEven) {
      flush(joined: true);
    } else if (pending.length >= 5) {
      flush(joined: false);
    }
  }
  flush(joined: false);
  return [
    for (final r in out)
      if (r.isNotEmpty) r,
  ];
}

/// Számlakivonat fejléce (DEGIRO „Account.csv”: Date, Product, ISIN, Description,
/// Change + név nélküli összeg-oszlop – angolul, németül és hollandul): oszlopszerep → index.
Map<String, int>? _statementHeader(List<String> cells) {
  const names = {
    'date': {'date', 'datum'},
    'isin': {'isin'},
    'description': {'description', 'beschreibung', 'omschrijving'},
    'change': {'change', 'nderung', 'mutatie'},
  };
  final found = <String, int>{};
  for (final (i, c) in cells.indexed) {
    final n = c.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');
    for (final e in names.entries) {
      if (!found.containsKey(e.key) && e.value.contains(n)) found[e.key] = i;
    }
  }
  return found.length == names.length ? found : null;
}

/// Osztalékadó a számlakivonatban („Dividend Tax”, „Dividendensteuer”, „Dividendbelasting”).
final _statementTax = RegExp(r'tax|steuer|belasting');

/// A számlakivonat osztaléksorai (a „Change” oszlopban a pénznem, mellette az összeg):
/// kapott osztalék ISIN-nel, az aznapi osztalékadóval csökkentve; a többi sor
/// (befizetés, díj, átváltás) kimarad.
CsvImport _statement(Iterable<String> lines, Map<String, int> col, {required bool monthFirst}) {
  final rows = [for (final l in lines) splitCsvLine(l, _separator(l))];
  String cell(List<String> f, int i) => i < f.length ? f[i].trim() : '';
  final mdy = _monthFirst([for (final f in rows) cell(f, col['date']!)], hint: monthFirst);
  final gross = <ImportedDividend>[];
  final tax = <String, double>{};
  var skipped = 0;
  for (final f in rows) {
    final desc = cell(f, col['description']!).toLowerCase();
    if (!desc.contains('dividend')) continue;
    final isin = cell(f, col['isin']!).toUpperCase();
    final ccy = cell(f, col['change']!).toUpperCase();
    final amount = _decimal(cell(f, col['change']! + 1));
    final date = _date(cell(f, col['date']!), monthFirst: mdy);
    if (!_isin.hasMatch(isin) || !_currency.hasMatch(ccy) || amount == null || amount == 0) {
      skipped++;
      continue;
    }
    if (_statementTax.hasMatch(desc)) {
      final key = _dayKey(isin, ccy, date);
      tax[key] = (tax[key] ?? 0) - amount.abs();
    } else if (amount > 0) {
      gross.add(ImportedDividend(symbol: '', amount: amount, currency: ccy, date: date, isin: isin));
    }
  }
  return CsvImport(const [], skipped, dividends: _netOfTax(gross, tax, (d) => _dayKey(d.isin!, d.currency, d.date)));
}

CsvImport _withHeader(
  Iterable<String> lines,
  String sep,
  Map<String, int> col,
  List<String> header,
  String defaultCurrency, {
  required bool monthFirst,
}) {
  String norm(String c) => c.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');
  final lots = <ImportedLot>[];
  final dividends = <ImportedDividend>[];
  final splits = <ImportedSplit>[];
  var skipped = 0;
  String cell(List<String> f, String role) {
    final i = col[role];
    return i == null || i >= f.length ? '' : f[i];
  }

  // A DEGIRO az ár és a díj pénznemét a mellettük álló, név nélküli oszlopba írja.
  int? unnamedAfter(String role) => switch (col[role]) {
    final i? when i + 1 < header.length && header[i + 1].trim().isEmpty => i + 1,
    _ => null,
  };
  final priceCcyCol = col.containsKey('currency') ? null : unnamedAfter('price');
  final feeCcyCol = unnamedAfter('fee');
  final rateCol = header.indexWhere((c) => norm(c) == 'exchangerate');
  String at(List<String> f, int? i) => i == null || i < 0 || i >= f.length ? '' : f[i].trim();

  // Interactive Brokers kimutatás: „Trades,Header,…” után csak a „Trades,Data,…”
  // sorok számítanak; a „Dividends” szakasz sorai kapott osztalékok.
  final sections = header.length > 1 && header[1].toLowerCase() == 'header';
  final us = header.any((c) => _usHeaders.contains(norm(c)));
  final mdy = _monthFirst([
    for (final l in lines) cell(splitCsvLine(l, _separator(l)), 'date'),
  ], hint: us || monthFirst);
  DateTime? date(List<String> f) => _date(cell(f, 'date'), monthFirst: mdy);
  // Ezres tagolás: az amerikai exportban, az IBKR-kimutatásban és a vesszővel tagolt
  // fájlban a vessző („1,000” darab, „"£1,234"”); a pontosvesszős fájlban, ha a
  // tizedesjel vessző (valamelyik számban vessző után számjegy jön), a pont („1.000”).
  final commaDecimal =
      !(us || sections || sep == ',') &&
      lines.any((l) {
        final f = splitCsvLine(l, _separator(l));
        return ['quantity', 'price', 'total'].any((r) => RegExp(r'\d,\d').hasMatch(cell(f, r)));
      });
  final grouping = us || sections || sep == ',' ? 'en' : (commaDecimal ? 'de' : null);
  double? number(String raw) => grouping == null ? _decimal(raw) : parseAmount(_numeric(raw), grouping);
  // Minden díj-oszlop összeadódik (Fidelity: „Commission ($)” és „Fees ($)”).
  var feeCols = [
    for (final (i, c) in header.indexed)
      if (_roles['fee']!.contains(norm(c))) i,
  ];
  // Az IBKR a kereskedéseket eszközfajtánként külön fejléccel írja (más oszlopokkal), és
  // a sorok fajtáját is jelöli: csak a részvény-megbízás (Order) számít – a devizaváltás
  // (Forex), az opció és a lezárt tétel részletezése (ClosedLot) nem vétel és nem eladás.
  int? discCol, assetCol;
  void useHeader(List<String> h) {
    discCol = h.indexWhere((c) => norm(c) == 'datadiscriminator');
    assetCol = h.indexWhere((c) => norm(c) == 'assetcategory');
    feeCols = [
      for (final (i, c) in h.indexed)
        if (_roles['fee']!.contains(norm(c))) i,
    ];
  }

  useHeader(header);
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
          if (t != null) {
            final key = _dayKey(t.symbol, t.currency, t.date);
            withholding[key] = (withholding[key] ?? 0) + t.amount;
          }
        } else if (!isTax && dividendCols != null) {
          final d = _ibkrDividend(f, dividendCols);
          if (d != null) dividends.add(d);
        }
      }
      continue;
    }
    if (sections && f.length > 1 && f[0] == header[0] && f[1].toLowerCase() == 'header') {
      if (_header(f) case final h?) {
        col = h;
        useHeader(f);
      }
      continue;
    }
    if (sections && (f.length < 2 || f[0] != header[0] || f[1].toLowerCase() != 'data')) continue;
    if (sections) {
      final disc = at(f, discCol).toLowerCase(), asset = at(f, assetCol).toLowerCase();
      if (disc.isNotEmpty && disc != 'order' && disc != 'trade') continue;
      if (asset.isNotEmpty && asset != 'stocks') {
        // A devizaváltás csendben kimarad; más eszköz (opció, határidős) kihagyott sorként jelzett.
        if (asset != 'forex') skipped++;
        continue;
      }
    }
    // Visszavont, elutasított megbízás: nem tranzakció.
    if (_voidStatus.hasMatch(cell(f, 'status').toLowerCase())) continue;
    // Ha nincs „side” oszlop, a fejlécen túli első mező is lehet „sell”.
    var side = (col.containsKey('side') ? cell(f, 'side') : (f.length > header.length ? f[header.length] : ''))
        .toLowerCase()
        .trim();
    // Az értékpapír neve nem művelet (Fidelity: „YOU BOUGHT ISHARES RUSSELL 2000 ETF (IWM)”).
    final name = cell(f, 'description').trim().toLowerCase();
    if (name.length > 2 && side != name) side = side.replaceAll(name, ' ').trim();
    final signed = number(cell(f, 'quantity'));
    bool? sell;
    if (side.isEmpty) {
      sell = signed != null && signed < 0;
    } else if (_sellVerb.hasMatch(side) || side == 's' || side == 'sld' || _sellWords.hasMatch(side)) {
      sell = true;
    } else if (_buyVerb.hasMatch(side) || side == 'b' || side == 'bot' || _buyWords.hasMatch(side)) {
      sell = false;
    }
    final (price, priceCcy) = _price(cell(f, 'price'), number);
    // Vételi vagy eladási ige darabszámmal és árral: kereskedés, akkor is, ha a sorban
    // osztalékra vagy adóra utaló szó van (pl. egy osztalék-ETF neve).
    final trade = sell != null && (signed ?? 0) != 0 && (price ?? 0) > 0;
    final symbol = cell(f, 'symbol').toUpperCase();
    // Ticker nélkül az ISIN is elég (a tickert az import oldja fel).
    final isin = cell(f, 'isin').trim().toUpperCase();
    final byIsin = !_symbol.hasMatch(symbol) && _isin.hasMatch(isin);
    final known = _symbol.hasMatch(symbol) || byIsin;
    // Az adósor előbb: a „Dividend Tax”, az „Osztalékadó” nem osztalék.
    final tax = !trade && _taxWords.hasMatch(side);
    final dividend = !trade && !tax && _dividendWords.hasMatch(side);
    if (dividend || tax) {
      // Kapott osztalék: a teljes összeg (ha nincs külön oszlopa, az ár oszlopában).
      final (amount, amountCcy) = _price(col.containsKey('total') ? cell(f, 'total') : cell(f, 'price'), number);
      final totalCcy = storedCurrency(cell(f, 'totalcurrency'));
      final ccyCell = storedCurrency(cell(f, 'currency'));
      final ccy = _currency.hasMatch(totalCcy)
          ? totalCcy
          : (amountCcy ?? (_currency.hasMatch(ccyCell) ? ccyCell : defaultCurrency));
      if (!dividend) {
        // Forrásadó külön sorban: az aznapi osztalékból levonva (az előjelétől függetlenül).
        if (known && amount != null && amount != 0) {
          final key = _dayKey(byIsin ? isin : symbol, ccy, date(f));
          withholding[key] = (withholding[key] ?? 0) - amount.abs();
        }
        continue;
      }
      if (known && amount != null && amount > 0) {
        dividends.add(
          ImportedDividend(
            symbol: byIsin ? '' : symbol,
            amount: amount,
            currency: ccy,
            date: date(f),
            account: PortfolioLot.cleanAccount(cell(f, 'account')),
            isin: byIsin ? isin : null,
          ),
        );
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
    // A bróker felaprózás-sora (Revolut „STOCK SPLIT”, Schwab „Stock Split”, Robinhood „SPL”)
    // nem tartalmazza az arányt: kihagyott sorként jelezzük, a felaprózás kézzel rögzíthető.
    if (side.contains('split') || side == 'spl') {
      skipped++;
      continue;
    }
    // Befizetés, díj stb.: nem vétel és nem eladás.
    if (sell == null) continue;
    final quantity = signed?.abs();
    if (!known || quantity == null || quantity <= 0 || price == null || price <= 0) {
      skipped++;
      continue;
    }
    final ccyCell = storedCurrency(priceCcyCol == null ? cell(f, 'currency') : at(f, priceCcyCol));
    final ccy = _currency.hasMatch(ccyCell) ? ccyCell : (priceCcy ?? defaultCurrency);
    // A más pénznemű díj (DEGIRO: az alapdevizában) az árfolyammal a kereskedés pénznemébe.
    final fees = [for (final i in feeCols) ?number(at(f, i))];
    var fee = fees.isEmpty ? null : fees.fold(0.0, (sum, v) => sum + v.abs());
    final feeCcy = at(f, feeCcyCol).toUpperCase();
    if (fee != null && _currency.hasMatch(feeCcy) && feeCcy != ccy) {
      final rate = _decimal(at(f, rateCol));
      fee = rate != null && rate > 0 ? fee * rate : null;
    }
    lots.add(
      ImportedLot(
        symbol: byIsin ? '' : symbol,
        quantity: quantity,
        price: price,
        currency: ccy,
        date: date(f),
        sell: sell,
        account: PortfolioLot.cleanAccount(cell(f, 'account')),
        fee: PortfolioLot.cleanFee(fee),
        isin: byIsin ? isin : null,
      ),
    );
  }
  // A bruttó osztalékból a forrásadó levonva: ami a számlára érkezett.
  final net = _netOfTax(dividends, withholding, (d) => _dayKey(d.isin ?? d.symbol, d.currency, d.date));
  return CsvImport(lots, skipped, dividends: net, splits: splits);
}

/// A bruttó osztaléksorok nettója: az ugyanarra a részvényre, pénznemre és napra eső
/// adó (negatív összeg) a sorok között arányosan oszlik meg (két osztaléksor és két
/// adósor egy napon: a nettó összesen bruttó − adó, nem kétszer levonva). Ha az adó
/// eléri a bruttót, a nap sorai kimaradnak.
List<ImportedDividend> _netOfTax(
  List<ImportedDividend> gross,
  Map<String, double> tax,
  String Function(ImportedDividend d) key,
) {
  final total = <String, double>{};
  for (final d in gross) {
    total[key(d)] = (total[key(d)] ?? 0) + d.amount;
  }
  return [
    for (final d in gross)
      if (d.amount * (1 + (tax[key(d)] ?? 0) / total[key(d)]!) case final a when a > 1e-9)
        ImportedDividend(
          symbol: d.symbol,
          amount: a,
          currency: d.currency,
          date: d.date,
          account: d.account,
          isin: d.isin,
        ),
  ];
}

String _dayKey(String symbol, String currency, DateTime? date) =>
    '$symbol|$currency|${date?.toIso8601String().substring(0, 10)}';

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
  final ccy = storedCurrency(cell('currency'));
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
      final ccy = f.length > 3 && _currency.hasMatch(storedCurrency(f[3])) ? storedCurrency(f[3]) : defaultCurrency;
      if (_symbol.hasMatch(symbol) && amount != null && amount > 0) {
        dividends.add(
          ImportedDividend(
            symbol: symbol,
            amount: amount,
            currency: ccy,
            date: f.length > 4 ? _date(f[4]) : null,
            account: _positionalAccount(f),
          ),
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
    final ccy = f.length > 3 && _currency.hasMatch(storedCurrency(f[3])) ? storedCurrency(f[3]) : defaultCurrency;
    final date = f.length > 4 ? _date(f[4]) : null;
    lots.add(
      ImportedLot(
        symbol: symbol,
        quantity: quantity,
        price: price,
        currency: ccy,
        date: date,
        sell: sell,
        account: _positionalAccount(f),
      ),
    );
  }
  return CsvImport(lots, skipped, dividends: dividends, splits: splits);
}
