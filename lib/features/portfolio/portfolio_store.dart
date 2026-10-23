import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Egy tranzakció: vétel (vagy [sell] esetén eladás) – hány darab, milyen
/// áron (a részvény saját pénznemében), mikor.
class PortfolioLot {
  const PortfolioLot({
    required this.id,
    required this.symbol,
    required this.quantity,
    required this.price,
    required this.currency,
    this.date,
    this.sell = false,
    this.account,
    this.fee = 0,
  });

  final String id;
  final String symbol;
  final double quantity;

  /// Darabonkénti vétel- vagy eladási ár a részvény pénznemében.
  final double price;
  final String currency;
  final DateTime? date;

  /// Eladás (a darabszám ilyenkor is pozitív).
  final bool sell;

  /// A számla neve (pl. „TBSZ 2026”), amelyen a tranzakció történt; `null`, ha
  /// nincs megadva. A portfólió számlánként szűrhető.
  final String? account;

  /// A tranzakció díja (jutalék) egy összegben, a részvény pénznemében; 0, ha nincs.
  /// A vétel bekerülési értékéhez adódik, az eladás bevételéből levonódik.
  final double fee;

  /// Díj beolvasása: nem negatív, véges szám (különben 0).
  static double cleanFee(Object? v) => v is num && v.isFinite && v > 0 ? v.toDouble() : 0;

  /// Számlanév beolvasása: a szóközök levágva, legfeljebb [maxAccountName]
  /// karakter; üresen `null`.
  static String? cleanAccount(Object? v) {
    final s = v is String ? v.trim() : '';
    if (s.isEmpty) return null;
    if (s.length <= maxAccountName) return s;
    // Karakterpár (pl. emodzsi) közepén nem vágunk.
    final cut = s.codeUnitAt(maxAccountName - 1) & 0xFC00 == 0xD800 ? maxAccountName - 1 : maxAccountName;
    return s.substring(0, cut).trimRight();
  }

  static const maxAccountName = 30;

  /// Vételnél a bekerülési érték, eladásnál a bevétel (a díjjal együtt).
  double get cost => sell ? quantity * price - fee : quantity * price + fee;

  /// A birtokolt darabszám változása: vételnél +, eladásnál −.
  double get signedQuantity => sell ? -quantity : quantity;

  Map<String, dynamic> toJson() => {
    'id': id,
    'symbol': symbol,
    'quantity': quantity,
    'price': price,
    'currency': currency,
    if (date != null) 'date': date!.toIso8601String().substring(0, 10),
    if (sell) 'side': 'sell',
    'account': ?account,
    if (fee > 0) 'fee': fee,
  };

  static PortfolioLot? fromJson(Map<String, dynamic> j) {
    final symbol = (j['symbol'] as String? ?? '').trim().toUpperCase();
    final q = j['quantity'], p = j['price'];
    if (symbol.isEmpty || q is! num || p is! num || q <= 0 || p <= 0) return null;
    return PortfolioLot(
      id: j['id'] as String? ?? '${symbol}_${DateTime.now().microsecondsSinceEpoch}',
      symbol: symbol,
      quantity: q.toDouble(),
      price: p.toDouble(),
      currency: (j['currency'] as String? ?? 'USD').toUpperCase(),
      date: DateTime.tryParse(j['date'] as String? ?? ''),
      sell: j['side'] == 'sell',
      account: cleanAccount(j['account']),
      fee: cleanFee(j['fee']),
    );
  }
}

/// Egy kapott osztalék: melyik részvénytől, mikor, mennyi (a kifizetés teljes
/// összege a kifizetés pénznemében, adó után, ahogy a számlára érkezett).
class DividendRecord {
  const DividendRecord({
    required this.id,
    required this.symbol,
    required this.amount,
    required this.currency,
    this.date,
    this.account,
  });

  final String id;
  final String symbol;
  final double amount;
  final String currency;
  final DateTime? date;

  /// A számla, amelyre az osztalék érkezett (`null`: nincs megadva).
  final String? account;

  Map<String, dynamic> toJson() => {
    'id': id,
    'symbol': symbol,
    'amount': amount,
    'currency': currency,
    if (date != null) 'date': date!.toIso8601String().substring(0, 10),
    'account': ?account,
  };

  static DividendRecord? fromJson(Map<String, dynamic> j) {
    final symbol = (j['symbol'] as String? ?? '').trim().toUpperCase();
    final a = j['amount'];
    if (symbol.isEmpty || a is! num || a <= 0) return null;
    return DividendRecord(
      id: j['id'] as String? ?? '${symbol}_d${DateTime.now().microsecondsSinceEpoch}',
      symbol: symbol,
      amount: a.toDouble(),
      currency: (j['currency'] as String? ?? 'USD').toUpperCase(),
      date: DateTime.tryParse(j['date'] as String? ?? ''),
      account: PortfolioLot.cleanAccount(j['account']),
    );
  }
}

/// Részvényfelaprózás (split): [to] új részvény minden [from] régi helyett
/// (10:1 = tízszerezés, 1:10 = összevonás). A [date] előtti tranzakciók
/// darabszáma szorzódik, darabonkénti ára osztódik – a bekerülési érték marad.
class SplitRecord {
  const SplitRecord({required this.id, required this.symbol, required this.from, required this.to, required this.date});

  final String id;
  final String symbol;
  final int from;
  final int to;

  /// A felaprózás napja (éjfél): a létrehozáskor (`addSplit`, `fromJson`) kerekítve.
  final DateTime date;

  /// Érvényes arány: mindkét oldal legalább 1, és nem egyenlők. Minden belépési
  /// pont (dialógus, CSV, tároló, szinkron) ezt használja.
  static bool validRatio(int from, int to) => from >= 1 && to >= 1 && from != to;

  /// „10:1” alakban (új : régi).
  String get label => '$to:$from';

  /// Ugyanaz a felaprózás (ticker, nap, arány) kétszer nem lehet – akkor sem,
  /// ha két eszközön rögzítették, más azonosítóval.
  String get key => '$symbol|${date.toIso8601String().substring(0, 10)}|$label';

  Map<String, dynamic> toJson() => {
    'id': id,
    'symbol': symbol,
    'from': from,
    'to': to,
    'date': date.toIso8601String().substring(0, 10),
  };

  static SplitRecord? fromJson(Map<String, dynamic> j) {
    final symbol = (j['symbol'] as String? ?? '').trim().toUpperCase();
    final from = j['from'], to = j['to'];
    final date = DateTime.tryParse(j['date'] as String? ?? '');
    if (symbol.isEmpty || from is! int || to is! int || !validRatio(from, to) || date == null) return null;
    return SplitRecord(
      id: j['id'] as String? ?? '${symbol}_s${DateTime.now().microsecondsSinceEpoch}',
      symbol: symbol,
      from: from,
      to: to,
      date: DateTime(date.year, date.month, date.day),
    );
  }

  /// A felaprózás előtti (a napján már nem) tranzakció igazítása. A dátum
  /// nélküli tétel változatlan: az a mai állapotot írja le (pl. a bróker
  /// képernyőképéből importált, már felaprózott darabszám).
  PortfolioLot apply(PortfolioLot l) {
    final at = l.date;
    if (l.symbol != symbol || at == null || !at.isBefore(date)) return l;
    return PortfolioLot(
      id: l.id,
      symbol: l.symbol,
      // Egész számokkal, hogy az összevonás (1:10) se hagyjon lebegőpontos maradékot.
      quantity: l.quantity * to / from,
      price: l.price * from / to,
      currency: l.currency,
      date: l.date,
      sell: l.sell,
      account: l.account,
      fee: l.fee,
    );
  }
}

/// Egy még birtokolt vételi tétel: darab, darabonkénti bekerülési ár (a díjjal),
/// a vétel napja és számlája.
typedef OpenLot = ({double quantity, double price, DateTime? date, String? account});

/// A legnagyobb értékű kulcs (pl. a legtöbb darabot tartó számla); `null`, ha üres.
K? largestKey<K>(Map<K, double> m) => m.isEmpty ? null : m.entries.reduce((a, b) => b.value > a.value ? b : a).key;

/// Egy eladás (része), amelynek a saját számláján nem volt vétel.
typedef _Unmatched = ({String id, DateTime? date, double quantity, double price, double net, String? account});

typedef _Fifo = ({List<OpenLot> open, List<Sale> sales, List<_Unmatched> unmatched});

/// Egy eladás a FIFO szerinti bekerülési értékkel (az adóbevalláshoz); [id] az
/// eladó tranzakcióé (egy eladás több részben is szerepelhet).
typedef Sale = ({
  String id,
  DateTime? date,
  double quantity,
  double price,
  double proceeds,
  double cost,
  String? account,
});

/// Egy részvény összes tranzakciója együtt. Az eladások a legrégebbi vételeket
/// fogyasztják (FIFO): a megmaradt darabok adják a darabszámot és a bekerülési
/// értéket, az eladott darabok nyeresége a realizált nyereség.
class Position {
  Position({required this.symbol, required this.currency, required this.lots}) : _given = null;

  /// Egy számla nézete az összes tranzakcióból számolt FIFO-ból ([all]): a számla
  /// tranzakciói, birtokolt tételei és eladásai – így a számla-nézet és a Minden
  /// számla nézet darabszámai mindig összeadódnak.
  Position._view(Position all, String? account)
    : symbol = all.symbol,
      currency = all.currency,
      lots = [
        for (final l in all.lots)
          if (l.account == account) l,
      ],
      _given = _subset(all._fifo, account);

  final String symbol;
  final String currency;

  /// Minden tranzakció (vétel és eladás).
  final List<PortfolioLot> lots;

  final _Fifo? _given;
  late final _Fifo _fifo = _given ?? _compute();

  static int _byDate(DateTime? a, DateTime? b) => (a ?? DateTime(0)).compareTo(b ?? DateTime(0));
  static int _saleOrder(Sale a, Sale b) => (a.date ?? DateTime(9999)).compareTo(b.date ?? DateTime(9999));

  /// Egy számla része a teljes FIFO-ból.
  static _Fifo _subset(_Fifo f, String? account) => (
    open: [
      for (final o in f.open)
        if (o.account == account) o,
    ],
    sales: [
      for (final s in f.sales)
        if (s.account == account) s,
    ],
    unmatched: const [],
  );

  /// A legrégebbi tételekből [quantity] darab elvétele (a [notAfter] nap után
  /// vett tételt átugorva): az elvett darabszám és a bekerülési értéke.
  static ({double matched, double cost}) _consume(List<OpenLot> open, double quantity, {DateTime? notAfter}) {
    var rest = quantity, cost = 0.0, i = 0;
    while (rest > 1e-9 && i < open.length) {
      final o = open[i];
      if (notAfter != null && o.date != null && o.date!.isAfter(notAfter)) {
        i++;
        continue;
      }
      final take = rest < o.quantity ? rest : o.quantity;
      cost += take * o.price;
      rest -= take;
      if (o.quantity - take <= 1e-9) {
        open.removeAt(i);
      } else {
        open[i] = (quantity: o.quantity - take, price: o.price, date: o.date, account: o.account);
      }
    }
    return (matched: quantity - rest, cost: cost);
  }

  /// A FIFO számlánként fut, ahogy a bróker is számol (egyik számla eladása nem
  /// fogyaszthatja a másik vételeit); több számlánál az eredmények összeadódnak.
  _Fifo _compute() {
    final byAccount = <String?, List<PortfolioLot>>{};
    for (final l in lots) {
      byAccount.putIfAbsent(l.account, () => []).add(l);
    }
    if (byAccount.length <= 1) return _fifoOf(lots);
    final parts = [for (final l in byAccount.values) _fifoOf(l)];
    // A birtokolt tételek a vétel napja szerint (dátum nélküli elöl).
    final open = [for (final p in parts) ...p.open]..sort((a, b) => _byDate(a.date, b.date));
    final sales = [for (final p in parts) ...p.sales];
    // Ha egy eladásnak a saját számláján nincs (elég) vétele – pl. egy régebbi
    // appban számla nélkül rögzített eladás TBSZ-es vételre –, a maradék a többi
    // számla legrégebbi (az eladás előtti) tételeiből fogy: a darabszám így
    // mindig a vételek és az eladások különbsége, mint a grafikonon.
    final unmatched = [for (final p in parts) ...p.unmatched]
      ..sort((a, b) => (a.date ?? DateTime(9999)).compareTo(b.date ?? DateTime(9999)));
    final left = <_Unmatched>[];
    for (final u in unmatched) {
      final (:matched, :cost) = _consume(open, u.quantity, notAfter: u.date);
      if (matched > 1e-9) sales.add(_sale(u, matched, cost));
      if (u.quantity - matched > 1e-9) {
        left.add((
          id: u.id,
          date: u.date,
          quantity: u.quantity - matched,
          price: u.price,
          net: u.net,
          account: u.account,
        ));
      }
    }
    // Az eladások időrendben (dátum nélküli a végén).
    return (open: open, sales: sales..sort(_saleOrder), unmatched: left);
  }

  /// Egy eladás [matched] darabja a FIFO szerinti [cost] bekerülési értékkel.
  static Sale _sale(_Unmatched t, double matched, double cost) => (
    id: t.id,
    date: t.date,
    quantity: matched,
    price: t.price,
    proceeds: matched * t.net,
    cost: cost,
    account: t.account,
  );

  /// Egy számla (vagy a számla nélküli tételek) FIFO-ja.
  static _Fifo _fifoOf(List<PortfolioLot> lots) {
    // Időrend: dátum nélküli vétel a legelején, dátum nélküli eladás a végén;
    // azonos napon a vétel előbb.
    int order(PortfolioLot a, PortfolioLot b) {
      final da = a.date ?? (a.sell ? DateTime(9999) : DateTime(0));
      final db = b.date ?? (b.sell ? DateTime(9999) : DateTime(0));
      final c = da.compareTo(db);
      if (c != 0) return c;
      return (a.sell ? 1 : 0) - (b.sell ? 1 : 0);
    }

    final open = <OpenLot>[];
    final sales = <Sale>[];
    final unmatched = <_Unmatched>[];
    for (final t in [...lots]..sort(order)) {
      // A díj a darabokra elosztva: a vételnél a bekerülési árhoz adódik,
      // az eladásnál a bevételből vonódik le.
      if (!t.sell) {
        open.add((quantity: t.quantity, price: t.price + t.fee / t.quantity, date: t.date, account: t.account));
        continue;
      }
      final sale = (
        id: t.id,
        date: t.date,
        quantity: t.quantity,
        price: t.price,
        net: t.price - t.fee / t.quantity,
        account: t.account,
      );
      final (:matched, :cost) = _consume(open, t.quantity);
      if (matched > 1e-9) sales.add(_sale(sale, matched, cost));
      if (t.quantity - matched > 1e-9) {
        unmatched.add((
          id: t.id,
          date: t.date,
          quantity: t.quantity - matched,
          price: t.price,
          net: sale.net,
          account: t.account,
        ));
      }
    }
    return (open: open, sales: sales, unmatched: unmatched);
  }

  /// A még birtokolt vételi tételek (FIFO szerint a legrégebbi fogy el először):
  /// darab, vételi ár, dátum és számla.
  List<OpenLot> get openLots => List.unmodifiable(_fifo.open);

  /// A még birtokolt darabszám.
  double get quantity => _fifo.open.fold(0, (s, l) => s + l.quantity);

  /// A birtokolt darabok bekerülési értéke.
  double get cost => _fifo.open.fold(0, (s, l) => s + l.quantity * l.price);

  /// Az eladásokon elért (realizált) nyereség a részvény pénznemében.
  late final double realizedGain = _fifo.sales.fold(0.0, (sum, x) => sum + x.proceeds - x.cost);

  /// A realizált nyereség az eladás éve szerint (dátum nélküli eladás: `null`).
  late final Map<int?, double> realizedByYear = () {
    final byYear = <int?, double>{};
    for (final x in _fifo.sales) {
      byYear[x.date?.year] = (byYear[x.date?.year] ?? 0) + x.proceeds - x.cost;
    }
    return byYear;
  }();

  bool get hasSales => lots.any((l) => l.sell);

  /// Az eladások időrendben, a FIFO szerinti bekerülési értékükkel.
  List<Sale> get sales => _fifo.sales;

  /// Lezárt pozíció: mindent eladott.
  bool get isClosed => quantity <= 1e-9;

  /// Mennyiséggel súlyozott átlagos vételár (a birtokolt darabokra).
  double get averageCost => quantity <= 1e-9 ? 0 : cost / quantity;

  DateTime? get firstDate {
    final dates = [for (final l in _fifo.open) ?l.date]..sort();
    return dates.firstOrNull;
  }

  DateTime? get lastDate {
    final dates = [for (final l in _fifo.open) ?l.date]..sort();
    return dates.lastOrNull;
  }
}

/// A portfólió: a tranzakciók és a kapott osztalékok listája, a készüléken
/// tárolva (SharedPreferences); fiókkal szinkronizálva.
class PortfolioStore extends ChangeNotifier {
  PortfolioStore({
    List<PortfolioLot> lots = const [],
    List<DividendRecord> dividends = const [],
    List<SplitRecord> splits = const [],
    Map<String, double> cash = const {},
    Map<String, DateTime> cashAt = const {},
  }) : _lots = List.of(lots),
       _dividends = List.of(dividends)..sort(_newestFirst),
       _splits = _unique(splits)..sort(_oldestFirst),
       _cash = _entries(cash, cashAt);

  /// A felaprózások ismétlés nélkül (azonos kulcsnál az első marad).
  static List<SplitRecord> _unique(Iterable<SplitRecord> splits) {
    final seen = <String>{};
    return [
      for (final s in splits)
        if (seen.add(s.key)) s,
    ];
  }

  /// A felaprózások időrendben (az alkalmazásuk sorrendje).
  static int _oldestFirst(SplitRecord a, SplitRecord b) => a.date.compareTo(b.date);

  /// Az újabb elöl (dátum nélküli a végén) – a lista mindig így van tartva.
  static int _newestFirst(DividendRecord a, DividendRecord b) =>
      (b.date ?? DateTime(0)).compareTo(a.date ?? DateTime(0));

  static const _key = 'portfolio_lots';
  static const _dividendsKey = 'portfolio_dividends';
  static const _cashKey = 'portfolio_cash';
  static const _cashAtKey = 'portfolio_cash_at';
  static const _splitsKey = 'portfolio_splits';

  final List<PortfolioLot> _lots;
  final List<DividendRecord> _dividends;
  final List<SplitRecord> _splits;

  /// Készpénz a brókernél, pénznemenként (a felhasználó adja meg): az összeg
  /// (0 = törölve, csak az időbélyeg miatt marad) és az utolsó módosítás ideje
  /// (UTC), hogy a szinkron ne élessze újra egy másik készülék régebbi egyenlegével.
  final Map<String, ({double amount, DateTime? at})> _cash;

  static Map<String, ({double amount, DateTime? at})> _entries(Map<String, double> cash, Map<String, DateTime> at) => {
    for (final c in {...cash.keys, ...at.keys}) c: (amount: cash[c] ?? 0, at: at[c]),
  };

  Map<String, double> get cash => {
    for (final e in _cash.entries)
      if (e.value.amount > 0) e.key: e.value.amount,
  };

  /// Pénznemenként az utolsó módosítás ideje (a törölté is).
  Map<String, DateTime> get cashAt => {for (final e in _cash.entries) e.key: ?e.value.at};
  List<PortfolioLot> get lots => List.unmodifiable(_lots);

  /// A rögzített felaprózások időrendben.
  List<SplitRecord> get splits => List.unmodifiable(_splits);

  /// Egy részvény felaprózásai időrendben.
  List<SplitRecord> splitsOf(String symbol) {
    final s = symbol.toUpperCase();
    return [
      for (final x in _splits)
        if (x.symbol == s) x,
    ];
  }

  /// A tranzakciók a felaprózásokkal igazítva (a tárolt tétel változatlan, az
  /// azonosító ugyanaz): ebből számol a pozíció, az értékalakulás és a lap.
  /// Gyorsítótárazva, mert a pozíciókat sok helyen kérik; minden módosítás
  /// [notifyListeners]-en át érvényteleníti.
  List<PortfolioLot> get adjustedLots => _adjusted ??= _adjust();
  List<PortfolioLot>? _adjusted;

  List<PortfolioLot> _adjust() {
    if (_splits.isEmpty) return List.unmodifiable(_lots);
    // Részvényenként csak a saját felaprózásai, időrendben (a lista így van tartva).
    final bySymbol = <String, List<SplitRecord>>{};
    for (final s in _splits) {
      bySymbol.putIfAbsent(s.symbol, () => []).add(s);
    }
    return List.unmodifiable([
      for (final l in _lots) (bySymbol[l.symbol] ?? const <SplitRecord>[]).fold(l, (lot, s) => s.apply(lot)),
    ]);
  }

  /// A tranzakciók és a felaprózások azonosítói: ha változik, a pozíciókból
  /// számolt (hálózatról töltött) adatokat újra kell számolni.
  String get holdingsKey => '${_lots.map((l) => l.id).join(',')}|${_splits.map((s) => s.id).join(',')}';

  @override
  void notifyListeners() {
    _adjusted = null;
    _allPositions = null;
    _realizedBySale = null;
    _accounts = null;
    _views.clear();
    super.notifyListeners();
  }

  /// A még birtokolt részvények tickerei.
  Set<String> get heldSymbols => {for (final p in positions) p.symbol};

  /// Nincs se tranzakció, se készpénz: a portfólió oldal az üres állapotot mutatja.
  bool get isEmpty => _lots.isEmpty && cash.isEmpty;

  /// A kapott osztalékok, az újabb elöl (dátum nélküli a végén).
  List<DividendRecord> get dividends => List.unmodifiable(_dividends);

  /// Egy részvény kapott osztalékai (az újabb elöl).
  List<DividendRecord> dividendsOf(String symbol) {
    final s = symbol.toUpperCase();
    return [
      for (final d in _dividends)
        if (d.symbol == s) d,
    ];
  }

  static Future<PortfolioStore> load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      // A két lista külön-külön: az egyik sérülése nem viszi el a másikat.
      List<T> read<T>(String key, List<T> Function(String) parse) {
        try {
          final raw = prefs.getString(key);
          return raw == null ? const [] : parse(raw);
        } catch (_) {
          return const [];
        }
      }

      Map<String, double> cash = const {};
      Map<String, DateTime> cashAt = const {};
      try {
        final raw = prefs.getString(_cashKey);
        if (raw != null) cash = parseCashMap(jsonDecode(raw));
        final rawAt = prefs.getString(_cashAtKey);
        if (rawAt != null) cashAt = parseCashAt(jsonDecode(rawAt));
      } catch (_) {
        // Sérült készpénz-egyenleg: üres.
      }
      return PortfolioStore(
        lots: read(_key, parse),
        dividends: read(_dividendsKey, parseDividends),
        splits: read(_splitsKey, parseSplits),
        cash: cash,
        cashAt: cashAt,
      );
    } catch (_) {
      return PortfolioStore();
    }
  }

  /// A tárolt JSON-lista beolvasása; a hibás tételeket kihagyja.
  static List<PortfolioLot> parse(String raw) {
    final v = jsonDecode(raw);
    return [
      for (final e in (v is List ? v : const []))
        if (e is Map) ?PortfolioLot.fromJson(e.cast<String, dynamic>()),
    ];
  }

  static final _currencyCode = RegExp(r'^[A-Za-z]{3}$');

  /// Pénznem → összeg térkép beolvasása; a hibás, nem véges vagy nem pozitív tételek kimaradnak.
  static Map<String, double> parseCashMap(Object? v) => {
    if (v is Map)
      for (final e in v.entries)
        if (e.value case final num a when a.isFinite && a > 0 && _currencyCode.hasMatch('${e.key}'))
          '${e.key}'.toUpperCase(): a.toDouble(),
  };

  /// Pénznem → utolsó módosítás ideje térkép beolvasása (ISO-8601); a hibás tételek kimaradnak.
  static Map<String, DateTime> parseCashAt(Object? v) => {
    if (v is Map)
      for (final e in v.entries)
        if (_currencyCode.hasMatch('${e.key}'))
          if (DateTime.tryParse('${e.value}') case final t?) '${e.key}'.toUpperCase(): t.toUtc(),
  };

  /// A módosítási idők JSON-ba (a szinkroncsomagba és a tárolóba).
  Map<String, String> get cashAtJson => {for (final e in cashAt.entries) e.key: e.value.toIso8601String()};

  static List<DividendRecord> parseDividends(String raw) {
    final v = jsonDecode(raw);
    return [
      for (final e in (v is List ? v : const []))
        if (e is Map) ?DividendRecord.fromJson(e.cast<String, dynamic>()),
    ];
  }

  static List<SplitRecord> parseSplits(String raw) {
    final v = jsonDecode(raw);
    return [
      for (final e in (v is List ? v : const []))
        if (e is Map) ?SplitRecord.fromJson(e.cast<String, dynamic>()),
    ];
  }

  /// Részvényenként összevont, még birtokolt pozíciók, a legnagyobb bekerülési értékkel elöl.
  List<Position> get positions => positionsIn(null);

  /// A használt számlák neve ábécérendben (a szűrőhöz); üres, ha egyik
  /// tranzakciónak sincs számlája.
  List<String> get accounts => _accounts ??= List.unmodifiable(
    {for (final l in _lots) ?l.account, for (final d in _dividends) ?d.account}.toList()..sort(),
  );
  List<String>? _accounts;

  /// Egy számla kapott osztalékai ([account] `null`: mind), az újabb elöl.
  List<DividendRecord> dividendsIn(String? account) => account == null
      ? dividends
      : [
          for (final d in _dividends)
            if (d.account == account) d,
        ];

  /// Egy számla még birtokolt pozíciói ([account] `null`: mind); a FIFO a
  /// számlán belül számol, ahogy a bróker is.
  List<Position> positionsIn(String? account) => [
    for (final p in _positionsOf(account))
      if (!p.isClosed) p,
  ]..sort((a, b) => b.cost.compareTo(a.cost));

  /// Egy számla teljesen eladott pozíciói ([account] `null`: mind).
  List<Position> closedIn(String? account) => [
    for (final p in _positionsOf(account))
      if (p.isClosed) p,
  ];

  /// Egy számla tranzakciói a felaprózásokkal igazítva ([account] `null`: mind).
  List<PortfolioLot> adjustedLotsIn(String? account) => account == null
      ? adjustedLots
      : [
          for (final l in adjustedLots)
            if (l.account == account) l,
        ];

  /// Számla-nézetben a pozíciók a teljes FIFO-ból (a számla része), így a számlák
  /// darabszámai mindig a Minden számla nézetét adják ki.
  List<Position> _positionsOf(String? account) => account == null
      ? _all
      : _views[account] ??= [
          for (final p in _all)
            if (p.lots.any((l) => l.account == account)) Position._view(p, account),
        ];

  /// A számla-nézetek a következő változásig.
  final _views = <String, List<Position>>{};

  /// Egy részvény pozíciója egy számla nézetében ([account] `null`: mind), a lezártat is.
  Position? positionIn(String symbol, String? account) =>
      _positionsOf(account).where((p) => p.symbol == symbol.toUpperCase()).firstOrNull;

  /// Egy még nem rögzített tranzakció hatása a részvény pozíciójára (a felaprózásokkal
  /// igazítva, ugyanazzal a FIFO-val): a pozíció a [view] számla nézetében (`null`:
  /// mind) előtte és utána – a dialógus előnézetéhez (új átlagár, várható realizált).
  ({Position? before, Position after}) preview(PortfolioLot lot, {String? view}) {
    final s = lot.symbol.toUpperCase();
    final added = _splits.fold(lot, (l, x) => x.apply(l));
    final lots = [...adjustedLots.where((l) => l.symbol == s), added];
    final all = Position(symbol: s, currency: lots.first.currency, lots: lots);
    return (before: positionIn(s, view), after: view == null ? all : Position._view(all, view));
  }

  /// A legutóbbi (legkésőbbi dátumú) vétel számlája – az új vétel alapértéke, hogy
  /// a mindig ugyanarra a számlára (pl. TBSZ) vevőnek ne kelljen újra beírnia.
  String? get lastBuyAccount {
    PortfolioLot? last;
    for (final l in _lots) {
      if (l.sell || l.id.startsWith(samplePrefix)) continue;
      if (last == null || !(l.date ?? DateTime(0)).isBefore(last.date ?? DateTime(0))) last = l;
    }
    return last?.account;
  }

  /// A számla, amelyen a részvényből a legtöbb darab van (`null`, ha a legtöbb számla
  /// nélküli, vagy nincs belőle).
  String? mainAccountOf(String symbol) => largestKey<String?>(heldByAccount(symbol));

  /// Minden pozíció (a lezártak is) – a realizált nyereség exportjához.
  List<Position> get allPositions => List.unmodifiable(_all);

  /// Eladásonként a FIFO szerinti realizált nyereség (díjjal, a pozíció
  /// pénznemében), az eladó tranzakció azonosítója szerint.
  Map<String, ({double gain, String currency})> get realizedBySale => _realizedBySale ??= {
    for (final p in _all)
      for (final id in {for (final x in p.sales) x.id})
        id: (
          gain: p.sales.where((x) => x.id == id).fold(0.0, (sum, x) => sum + x.proceeds - x.cost),
          currency: p.currency,
        ),
  };
  Map<String, ({double gain, String currency})>? _realizedBySale;

  /// Teljesen eladott pozíciók (a realizált nyereségükkel).
  List<Position> get closedPositions => closedIn(null);

  List<Position> get _all => _allPositions ??= _group(adjustedLots);
  List<Position>? _allPositions;

  static List<Position> _group(List<PortfolioLot> lots) {
    final bySymbol = <String, List<PortfolioLot>>{};
    for (final l in lots) {
      bySymbol.putIfAbsent(l.symbol, () => []).add(l);
    }
    return [for (final e in bySymbol.entries) Position(symbol: e.key, currency: e.value.first.currency, lots: e.value)];
  }

  Position? positionOf(String symbol) {
    final s = symbol.toUpperCase();
    return positions.where((p) => p.symbol == s).firstOrNull;
  }

  /// Egy részvény birtokolt darabszáma számlánként (`null` kulcs: számla nélkül),
  /// csak ahol van még – az eladás ezekből választhat.
  Map<String?, double> heldByAccount(String symbol) {
    final held = <String?, double>{};
    for (final o in positionIn(symbol, null)?.openLots ?? const <OpenLot>[]) {
      held[o.account] = (held[o.account] ?? 0) + o.quantity;
    }
    return {
      for (final e in held.entries)
        if (e.value > 1e-9) e.key: e.value,
    };
  }

  /// A számlanév a már használt írásmóddal („tbsz” → „TBSZ”, ha az már van), hogy
  /// a kis- és nagybetű eltérése ne nyisson új számlát.
  String? canonicalAccount(String? account) {
    final a = PortfolioLot.cleanAccount(account);
    // A pontosan egyező (pl. a választott, régebbről eltérő írásmódú) számla marad.
    if (a == null || accounts.contains(a)) return a;
    return accounts.where((x) => x.toLowerCase() == a.toLowerCase()).firstOrNull ?? a;
  }

  Future<PortfolioLot> add({
    required String symbol,
    required double quantity,
    required double price,
    required String currency,
    DateTime? date,
    bool sell = false,
    String? account,
    double fee = 0,
  }) async {
    final s = symbol.trim().toUpperCase();
    final lot = PortfolioLot(
      id: '${s}_${DateTime.now().microsecondsSinceEpoch}',
      symbol: s,
      quantity: quantity,
      price: price,
      currency: currency.toUpperCase(),
      date: date,
      sell: sell,
      account: canonicalAccount(account),
      fee: PortfolioLot.cleanFee(fee),
    );
    _lots.add(lot);
    notifyListeners();
    await _save();
    return lot;
  }

  /// A minta-portfólió tételeinek azonosító-előtagja (így egy gombbal eltávolítható).
  static const samplePrefix = 'sample_';

  /// Van-e minta-tétel a portfólióban.
  bool get hasSample =>
      _lots.any((l) => l.id.startsWith(samplePrefix)) || _dividends.any((d) => d.id.startsWith(samplePrefix));

  /// Minta-portfólió kipróbáláshoz: néhány vétel (egy részvény TBSZ-számlán),
  /// egy eladás, jutalék és negyedéves osztalékok – a dátumok a mai naphoz
  /// képest, így az éves hozam, az értékalakulás és a várható osztalék is látszik.
  Future<void> loadSample({DateTime? now}) async {
    // Újratöltéskor a korábbi minta-tételek helyére (nem ismétlődnek az azonosítók).
    _dropSample();
    final today = now ?? DateTime.now();
    DateTime ago(int days) {
      final d = today.subtract(Duration(days: days));
      return DateTime(d.year, d.month, d.day);
    }

    PortfolioLot lot(String id, String symbol, double q, double price, String ccy, int days, {bool sell = false}) =>
        PortfolioLot(
          id: '$samplePrefix$id',
          symbol: symbol,
          quantity: q,
          price: price,
          currency: ccy,
          date: ago(days),
          sell: sell,
          account: symbol == 'OTP' ? 'TBSZ' : null,
          fee: ccy == 'USD' ? 1.5 : 0,
        );
    _lots.addAll([
      lot('a1', 'AAPL', 12, 168.40, 'USD', 700),
      lot('a2', 'AAPL', 4, 231.20, 'USD', 120, sell: true),
      lot('n1', 'NVDA', 20, 121.80, 'USD', 600),
      lot('m1', 'MSFT', 4, 415.00, 'USD', 300),
      lot('o1', 'OTP', 60, 24150, 'HUF', 520),
    ]);
    _dividends
      ..addAll([
        for (final (i, days) in [290, 200, 110, 20].indexed)
          DividendRecord(
            id: '${samplePrefix}d$i',
            symbol: 'AAPL',
            amount: i == 0 ? 3.0 : 2.0,
            currency: 'USD',
            date: ago(days),
          ),
        DividendRecord(
          id: '${samplePrefix}otp',
          symbol: 'OTP',
          amount: 22260,
          currency: 'HUF',
          date: ago(150),
          account: 'TBSZ',
        ),
      ])
      ..sort(_newestFirst);
    notifyListeners();
    await _save();
  }

  /// A minta-portfólió eltávolítása (a saját tételek maradnak).
  Future<void> removeSample() async {
    _dropSample();
    notifyListeners();
    await _save();
  }

  void _dropSample() {
    _lots.removeWhere((l) => l.id.startsWith(samplePrefix));
    _dividends.removeWhere((d) => d.id.startsWith(samplePrefix));
  }

  /// Az összes vétel cseréje (szinkronkor a fiók adataira).
  Future<void> replaceAll(List<PortfolioLot> lots) async {
    _lots
      ..clear()
      ..addAll(lots);
    notifyListeners();
    await _save();
  }

  /// Minden vétel és osztalék törlése (fióktörléskor, ha a felhasználó ezt is kéri).
  Future<void> clear() async {
    _lots.clear();
    _dividends.clear();
    _splits.clear();
    _cash.clear();
    notifyListeners();
    await _save();
  }

  Future<DividendRecord> addDividend({
    required String symbol,
    required double amount,
    required String currency,
    DateTime? date,
    String? account,
  }) async {
    final s = symbol.trim().toUpperCase();
    final d = DividendRecord(
      id: '${s}_d${DateTime.now().microsecondsSinceEpoch}',
      symbol: s,
      amount: amount,
      currency: currency.toUpperCase(),
      date: date,
      account: canonicalAccount(account),
    );
    _dividends
      ..add(d)
      ..sort(_newestFirst);
    notifyListeners();
    await _save();
    return d;
  }

  Future<void> removeDividend(String id) async {
    _dividends.removeWhere((d) => d.id == id);
    notifyListeners();
    await _save();
  }

  /// Egy törölt osztalék visszaállítása (visszavonás), változatlan azonosítóval.
  Future<void> restoreDividend(DividendRecord d) async {
    if (_dividends.any((x) => x.id == d.id)) return;
    _dividends
      ..add(d)
      ..sort(_newestFirst);
    notifyListeners();
    await _save();
  }

  /// Egy osztalék javítása ugyanazzal az azonosítóval (a számla a már használt
  /// írásmóddal); ha közben törölték, nem kerül vissza.
  Future<void> replaceDividend(DividendRecord d) async {
    final i = _dividends.indexWhere((x) => x.id == d.id);
    if (i < 0) return;
    _dividends[i] = DividendRecord(
      id: d.id,
      symbol: d.symbol.trim().toUpperCase(),
      amount: d.amount,
      currency: d.currency.trim().toUpperCase(),
      date: d.date,
      account: canonicalAccount(d.account),
    );
    _dividends.sort(_newestFirst);
    notifyListeners();
    await _save();
  }

  /// Új felaprózás; érvénytelen aránynál vagy ha ugyanez már rögzítve van, `null`
  /// (nem kerül be kétszer – kétszer alkalmazva a darabszám hibás lenne).
  Future<SplitRecord?> addSplit({
    required String symbol,
    required int from,
    required int to,
    required DateTime date,
  }) async {
    if (!SplitRecord.validRatio(from, to)) return null;
    final s = symbol.trim().toUpperCase();
    final split = SplitRecord(
      id: '${s}_s${DateTime.now().microsecondsSinceEpoch}',
      symbol: s,
      from: from,
      to: to,
      date: DateTime(date.year, date.month, date.day),
    );
    if (_splits.any((x) => x.key == split.key)) return null;
    _splits
      ..add(split)
      ..sort(_oldestFirst);
    notifyListeners();
    await _save();
    return split;
  }

  Future<void> removeSplit(String id) async {
    _splits.removeWhere((s) => s.id == id);
    notifyListeners();
    await _save();
  }

  /// Egy törölt felaprózás visszaállítása (visszavonás), változatlan azonosítóval.
  Future<void> restoreSplit(SplitRecord s) async {
    if (_splits.any((x) => x.id == s.id || x.key == s.key)) return;
    _splits
      ..add(s)
      ..sort(_oldestFirst);
    notifyListeners();
    await _save();
  }

  /// Az összes felaprózás cseréje (szinkronkor a fiók adataira).
  Future<void> replaceAllSplits(List<SplitRecord> splits) async {
    _splits
      ..clear()
      ..addAll(_unique(splits))
      ..sort(_oldestFirst);
    notifyListeners();
    await _save();
  }

  /// Készpénz egy pénznemben; nullával (vagy negatívval) törlődik. A nem véges
  /// összeg figyelmen kívül marad (JSON-ba sem menne).
  Future<void> setCash(String currency, double amount) async {
    if (!amount.isFinite) return;
    final c = currency.trim().toUpperCase();
    _cash[c] = (amount: amount > 0 ? amount : 0, at: DateTime.now().toUtc());
    notifyListeners();
    await _save();
  }

  /// Az összes készpénz-egyenleg cseréje (szinkronkor a fiók adataira) a
  /// módosítási időkkel; [at] nélkül (régi csomag) a meglévő idők maradnak.
  Future<void> replaceAllCash(Map<String, double> cash, {Map<String, DateTime>? at}) async {
    final entries = _entries(cash, at ?? cashAt);
    _cash
      ..clear()
      ..addAll(entries);
    notifyListeners();
    await _save();
  }

  /// Az összes osztalék cseréje (szinkronkor a fiók adataira).
  Future<void> replaceAllDividends(List<DividendRecord> dividends) async {
    _dividends
      ..clear()
      ..addAll(dividends)
      ..sort(_newestFirst);
    notifyListeners();
    await _save();
  }

  /// Egy törölt tranzakció visszaállítása (visszavonás), változatlan azonosítóval.
  Future<void> restore(PortfolioLot lot) async {
    if (_lots.any((l) => l.id == lot.id)) return;
    _lots.add(lot);
    notifyListeners();
    await _save();
  }

  /// Egy tranzakció javítása ugyanazzal az azonosítóval (a számla a már használt
  /// írásmóddal); ha közben törölték, nem kerül vissza.
  Future<void> replace(PortfolioLot lot) async {
    final i = _lots.indexWhere((l) => l.id == lot.id);
    if (i < 0) return;
    _lots[i] = PortfolioLot(
      id: lot.id,
      symbol: lot.symbol.trim().toUpperCase(),
      quantity: lot.quantity,
      price: lot.price,
      currency: lot.currency.trim().toUpperCase(),
      date: lot.date,
      sell: lot.sell,
      account: canonicalAccount(lot.account),
      fee: PortfolioLot.cleanFee(lot.fee),
    );
    notifyListeners();
    await _save();
  }

  /// Egy import visszavonása: a megadott azonosítójú tranzakciók, osztalékok és
  /// felaprózások törlése egyetlen mentéssel.
  Future<void> removeIds({
    Set<String> lots = const {},
    Set<String> dividends = const {},
    Set<String> splits = const {},
  }) async {
    _lots.removeWhere((l) => lots.contains(l.id));
    _dividends.removeWhere((d) => dividends.contains(d.id));
    _splits.removeWhere((s) => splits.contains(s.id));
    notifyListeners();
    await _save();
  }

  /// Egy tranzakció törlése; a tárolt (a felaprózásokkal nem igazított) tételt
  /// adja vissza, hogy a visszavonás azt mentse vissza, ne a megjelenített másolatot.
  Future<PortfolioLot?> remove(String id) async {
    final stored = _lots.where((l) => l.id == id).firstOrNull;
    _lots.removeWhere((l) => l.id == id);
    notifyListeners();
    await _save();
    return stored;
  }

  Future<void> _save() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await Future.wait([
        prefs.setString(_key, jsonEncode(_lots.map((l) => l.toJson()).toList())),
        prefs.setString(_dividendsKey, jsonEncode(_dividends.map((d) => d.toJson()).toList())),
        prefs.setString(_splitsKey, jsonEncode(_splits.map((s) => s.toJson()).toList())),
        prefs.setString(_cashKey, jsonEncode(cash)),
        prefs.setString(_cashAtKey, jsonEncode(cashAtJson)),
      ]);
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}
