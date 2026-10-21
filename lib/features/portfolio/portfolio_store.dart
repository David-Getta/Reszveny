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

  /// Vételnél a bekerülési érték, eladásnál a bevétel.
  double get cost => quantity * price;

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
  });

  final String id;
  final String symbol;
  final double amount;
  final String currency;
  final DateTime? date;

  Map<String, dynamic> toJson() => {
    'id': id,
    'symbol': symbol,
    'amount': amount,
    'currency': currency,
    if (date != null) 'date': date!.toIso8601String().substring(0, 10),
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
    );
  }
}

typedef _Fifo = ({
  List<({double quantity, double price, DateTime? date})> open,
  double realized,
  double sold,
  Map<int?, double> byYear,
  List<Sale> sales,
});

/// Egy eladás a FIFO szerinti bekerülési értékkel (az adóbevalláshoz).
typedef Sale = ({DateTime? date, double quantity, double price, double proceeds, double cost});

/// Egy részvény összes tranzakciója együtt. Az eladások a legrégebbi vételeket
/// fogyasztják (FIFO): a megmaradt darabok adják a darabszámot és a bekerülési
/// értéket, az eladott darabok nyeresége a realizált nyereség.
class Position {
  Position({required this.symbol, required this.currency, required this.lots});

  final String symbol;
  final String currency;

  /// Minden tranzakció (vétel és eladás).
  final List<PortfolioLot> lots;

  late final _Fifo _fifo = _compute();

  _Fifo _compute() {
    // Időrend: dátum nélküli vétel a legelején, dátum nélküli eladás a végén;
    // azonos napon a vétel előbb.
    int order(PortfolioLot a, PortfolioLot b) {
      final da = a.date ?? (a.sell ? DateTime(9999) : DateTime(0));
      final db = b.date ?? (b.sell ? DateTime(9999) : DateTime(0));
      final c = da.compareTo(db);
      if (c != 0) return c;
      return (a.sell ? 1 : 0) - (b.sell ? 1 : 0);
    }

    final open = <({double quantity, double price, DateTime? date})>[];
    var realized = 0.0, sold = 0.0;
    final byYear = <int?, double>{};
    final sales = <Sale>[];
    for (final t in [...lots]..sort(order)) {
      if (!t.sell) {
        open.add((quantity: t.quantity, price: t.price, date: t.date));
        continue;
      }
      var left = t.quantity;
      var cost = 0.0;
      while (left > 1e-9 && open.isNotEmpty) {
        final first = open.first;
        final take = left < first.quantity ? left : first.quantity;
        cost += take * first.price;
        realized += take * (t.price - first.price);
        byYear[t.date?.year] = (byYear[t.date?.year] ?? 0) + take * (t.price - first.price);
        sold += take;
        left -= take;
        if (first.quantity - take <= 1e-9) {
          open.removeAt(0);
        } else {
          open[0] = (quantity: first.quantity - take, price: first.price, date: first.date);
        }
      }
      final matched = t.quantity - left;
      if (matched > 1e-9) {
        sales.add((date: t.date, quantity: matched, price: t.price, proceeds: matched * t.price, cost: cost));
      }
    }
    return (open: open, realized: realized, sold: sold, byYear: byYear, sales: sales);
  }

  /// A még birtokolt vételi tételek (FIFO szerint a legrégebbi fogy el először):
  /// darab, vételi ár és dátum.
  List<({double quantity, double price, DateTime? date})> get openLots => List.unmodifiable(_fifo.open);

  /// A még birtokolt darabszám.
  double get quantity => _fifo.open.fold(0, (s, l) => s + l.quantity);

  /// A birtokolt darabok bekerülési értéke.
  double get cost => _fifo.open.fold(0, (s, l) => s + l.quantity * l.price);

  /// Az eladásokon elért (realizált) nyereség a részvény pénznemében.
  double get realizedGain => _fifo.realized;

  /// A realizált nyereség az eladás éve szerint (dátum nélküli eladás: `null`).
  Map<int?, double> get realizedByYear => _fifo.byYear;

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
    Map<String, double> cash = const {},
    Map<String, DateTime> cashAt = const {},
  }) : _lots = List.of(lots),
       _dividends = List.of(dividends)..sort(_newestFirst),
       _cash = Map.of(cash),
       _cashAt = Map.of(cashAt);

  /// Az újabb elöl (dátum nélküli a végén) – a lista mindig így van tartva.
  static int _newestFirst(DividendRecord a, DividendRecord b) =>
      (b.date ?? DateTime(0)).compareTo(a.date ?? DateTime(0));

  static const _key = 'portfolio_lots';
  static const _dividendsKey = 'portfolio_dividends';
  static const _cashKey = 'portfolio_cash';
  static const _cashAtKey = 'portfolio_cash_at';

  final List<PortfolioLot> _lots;
  final List<DividendRecord> _dividends;

  /// Készpénz a brókernél, pénznemenként (a felhasználó adja meg).
  final Map<String, double> _cash;
  Map<String, double> get cash => Map.unmodifiable(_cash);

  /// Pénznemenként az utolsó módosítás ideje (UTC) – a törölté is marad, hogy a
  /// szinkron ne élessze újra egy másik készülék régebbi egyenlegével.
  final Map<String, DateTime> _cashAt;
  Map<String, DateTime> get cashAt => Map.unmodifiable(_cashAt);
  List<PortfolioLot> get lots => List.unmodifiable(_lots);

  /// A még birtokolt részvények tickerei.
  Set<String> get heldSymbols => {for (final p in positions) p.symbol};

  /// Nincs se tranzakció, se készpénz: a portfólió oldal az üres állapotot mutatja.
  bool get isEmpty => _lots.isEmpty && _cash.isEmpty;

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
  Map<String, String> get cashAtJson => {for (final e in _cashAt.entries) e.key: e.value.toIso8601String()};

  static List<DividendRecord> parseDividends(String raw) {
    final v = jsonDecode(raw);
    return [
      for (final e in (v is List ? v : const []))
        if (e is Map) ?DividendRecord.fromJson(e.cast<String, dynamic>()),
    ];
  }

  /// Részvényenként összevont, még birtokolt pozíciók, a legnagyobb bekerülési értékkel elöl.
  List<Position> get positions => [
    for (final p in _all)
      if (!p.isClosed) p,
  ]..sort((a, b) => b.cost.compareTo(a.cost));

  /// Minden pozíció (a lezártak is) – a realizált nyereség exportjához.
  List<Position> get allPositions => _all;

  /// Teljesen eladott pozíciók (a realizált nyereségükkel).
  List<Position> get closedPositions => [
    for (final p in _all)
      if (p.isClosed) p,
  ];

  List<Position> get _all {
    final bySymbol = <String, List<PortfolioLot>>{};
    for (final l in _lots) {
      bySymbol.putIfAbsent(l.symbol, () => []).add(l);
    }
    return [for (final e in bySymbol.entries) Position(symbol: e.key, currency: e.value.first.currency, lots: e.value)];
  }

  Position? positionOf(String symbol) {
    final s = symbol.toUpperCase();
    return positions.where((p) => p.symbol == s).firstOrNull;
  }

  Future<PortfolioLot> add({
    required String symbol,
    required double quantity,
    required double price,
    required String currency,
    DateTime? date,
    bool sell = false,
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
    );
    _lots.add(lot);
    notifyListeners();
    await _save();
    return lot;
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
    _cash.clear();
    _cashAt.clear();
    notifyListeners();
    await _save();
  }

  Future<DividendRecord> addDividend({
    required String symbol,
    required double amount,
    required String currency,
    DateTime? date,
  }) async {
    final s = symbol.trim().toUpperCase();
    final d = DividendRecord(
      id: '${s}_d${DateTime.now().microsecondsSinceEpoch}',
      symbol: s,
      amount: amount,
      currency: currency.toUpperCase(),
      date: date,
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

  /// Készpénz egy pénznemben; nullával (vagy negatívval) törlődik. A nem véges
  /// összeg figyelmen kívül marad (JSON-ba sem menne).
  Future<void> setCash(String currency, double amount) async {
    if (!amount.isFinite) return;
    final c = currency.trim().toUpperCase();
    if (amount > 0) {
      _cash[c] = amount;
    } else {
      _cash.remove(c);
    }
    _cashAt[c] = DateTime.now().toUtc();
    notifyListeners();
    await _save();
  }

  /// Az összes készpénz-egyenleg cseréje (szinkronkor a fiók adataira), a módosítási időkkel.
  Future<void> replaceAllCash(Map<String, double> cash, {Map<String, DateTime>? at}) async {
    _cash
      ..clear()
      ..addAll(cash);
    if (at != null) {
      _cashAt
        ..clear()
        ..addAll(at);
    }
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

  Future<void> remove(String id) async {
    _lots.removeWhere((l) => l.id == id);
    notifyListeners();
    await _save();
  }

  Future<void> _save() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await Future.wait([
        prefs.setString(_key, jsonEncode(_lots.map((l) => l.toJson()).toList())),
        prefs.setString(_dividendsKey, jsonEncode(_dividends.map((d) => d.toJson()).toList())),
        prefs.setString(_cashKey, jsonEncode(_cash)),
        prefs.setString(_cashAtKey, jsonEncode(cashAtJson)),
      ]);
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}
