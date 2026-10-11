import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Egy vétel: hány darab, milyen áron (a részvény saját pénznemében), mikor.
class PortfolioLot {
  const PortfolioLot({
    required this.id,
    required this.symbol,
    required this.quantity,
    required this.price,
    required this.currency,
    this.date,
  });

  final String id;
  final String symbol;
  final double quantity;

  /// Darabonkénti vételár a részvény pénznemében.
  final double price;
  final String currency;
  final DateTime? date;

  double get cost => quantity * price;

  Map<String, dynamic> toJson() => {
    'id': id,
    'symbol': symbol,
    'quantity': quantity,
    'price': price,
    'currency': currency,
    if (date != null) 'date': date!.toIso8601String().substring(0, 10),
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
    );
  }
}

/// Egy részvény összes vétele együtt: darabszám, bekerülési érték, átlagár.
class Position {
  const Position({required this.symbol, required this.currency, required this.lots});

  final String symbol;
  final String currency;
  final List<PortfolioLot> lots;

  double get quantity => lots.fold(0, (s, l) => s + l.quantity);
  double get cost => lots.fold(0, (s, l) => s + l.cost);

  /// Mennyiséggel súlyozott átlagos vételár.
  double get averageCost => quantity == 0 ? 0 : cost / quantity;

  DateTime? get firstDate {
    final dates = [for (final l in lots) ?l.date]..sort();
    return dates.firstOrNull;
  }

  DateTime? get lastDate {
    final dates = [for (final l in lots) ?l.date]..sort();
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

  /// Részvényenként összevont pozíciók, a legnagyobb bekerülési értékkel elöl.
  List<Position> get positions {
    final bySymbol = <String, List<PortfolioLot>>{};
    for (final l in _lots) {
      bySymbol.putIfAbsent(l.symbol, () => []).add(l);
    }
    return [for (final e in bySymbol.entries) Position(symbol: e.key, currency: e.value.first.currency, lots: e.value)]
      ..sort((a, b) => b.cost.compareTo(a.cost));
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
  }) async {
    final s = symbol.trim().toUpperCase();
    final lot = PortfolioLot(
      id: '${s}_${DateTime.now().microsecondsSinceEpoch}',
      symbol: s,
      quantity: quantity,
      price: price,
      currency: currency.toUpperCase(),
      date: date,
    );
    _lots.add(lot);
    notifyListeners();
    await _save();
    return lot;
  }

  /// Minden vétel törlése (fióktörléskor, ha a felhasználó ezt is kéri).
  Future<void> clear() async {
    _lots.clear();
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
