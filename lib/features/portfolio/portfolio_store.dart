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

/// A portfólió: vételek listája, csak a készüléken tárolva (SharedPreferences).
class PortfolioStore extends ChangeNotifier {
  PortfolioStore({List<PortfolioLot> lots = const []}) : _lots = List.of(lots);

  static const _key = 'portfolio_lots';

  final List<PortfolioLot> _lots;
  List<PortfolioLot> get lots => List.unmodifiable(_lots);
  bool get isEmpty => _lots.isEmpty;

  static Future<PortfolioStore> load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_key);
      if (raw == null) return PortfolioStore();
      return PortfolioStore(lots: parse(raw));
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

  /// Minden vétel törlése (fióktörléskor, ha a felhasználó ezt is kéri).
  Future<void> clear() async {
    _lots.clear();
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
      await prefs.setString(_key, jsonEncode(_lots.map((l) => l.toJson()).toList()));
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}
