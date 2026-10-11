import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/models/stock_quote.dart';

/// Mikor szóljon a riasztás: az ár egy szint fölé megy, alá esik, vagy a napi
/// változás (bármelyik irányba) eléri a megadott százalékot.
enum AlertKind {
  above,
  below,
  move;

  static AlertKind? parse(Object? s) => AlertKind.values.asNameMap()[s];
}

/// Árfolyam-riasztás. Egyszer szól: utána „teljesült” állapotba kerül, és
/// újra élesíthető.
class PriceAlert {
  const PriceAlert({
    required this.id,
    required this.symbol,
    required this.kind,
    required this.value,
    this.currency,
    required this.createdAt,
    this.triggeredAt,
    this.triggeredPrice,
  });

  final String id;
  final String symbol;
  final AlertKind kind;

  /// Árszint a részvény pénznemében, vagy [AlertKind.move] esetén százalék.
  final double value;
  final String? currency;
  final DateTime createdAt;
  final DateTime? triggeredAt;
  final double? triggeredPrice;

  bool get isActive => triggeredAt == null;

  /// Teljesül-e a feltétel az adott árfolyamnál.
  bool isHit(StockQuote q) => switch (kind) {
    AlertKind.above => q.price >= value,
    AlertKind.below => q.price <= value,
    AlertKind.move => (q.changePercent ?? 0).abs() >= value,
  };

  /// Már a létrehozáskor teljesülne-e (pl. „240 fölé” a 250-es árnál);
  /// az ilyen riasztás értelmetlen, a felület nem engedi.
  static bool alreadyMet(AlertKind kind, double value, double? currentPrice) => switch (kind) {
    AlertKind.above => currentPrice != null && currentPrice >= value,
    AlertKind.below => currentPrice != null && currentPrice <= value,
    AlertKind.move => false,
  };

  PriceAlert triggered(DateTime at, double price) => PriceAlert(
    id: id,
    symbol: symbol,
    kind: kind,
    value: value,
    currency: currency,
    createdAt: createdAt,
    triggeredAt: at,
    triggeredPrice: price,
  );

  PriceAlert rearmed() =>
      PriceAlert(id: id, symbol: symbol, kind: kind, value: value, currency: currency, createdAt: createdAt);

  Map<String, dynamic> toJson() => {
    'id': id,
    'symbol': symbol,
    'kind': kind.name,
    'value': value,
    'currency': ?currency,
    'created_at': createdAt.toUtc().toIso8601String(),
    if (triggeredAt != null) 'triggered_at': triggeredAt!.toUtc().toIso8601String(),
    'triggered_price': ?triggeredPrice,
  };

  static PriceAlert? fromJson(Map<String, dynamic> j) {
    final symbol = (j['symbol'] as String? ?? '').trim().toUpperCase();
    final kind = AlertKind.parse(j['kind']);
    final value = j['value'];
    if (symbol.isEmpty || kind == null || value is! num || value <= 0) return null;
    final tp = j['triggered_price'];
    return PriceAlert(
      id: j['id'] as String? ?? '${symbol}_${DateTime.now().microsecondsSinceEpoch}',
      symbol: symbol,
      kind: kind,
      value: value.toDouble(),
      currency: j['currency'] as String?,
      createdAt: DateTime.tryParse(j['created_at'] as String? ?? '') ?? DateTime.now(),
      triggeredAt: DateTime.tryParse(j['triggered_at'] as String? ?? ''),
      triggeredPrice: tp is num ? tp.toDouble() : null,
    );
  }
}

/// A riasztások tárolása a készüléken (SharedPreferences).
class AlertStore extends ChangeNotifier {
  AlertStore({List<PriceAlert> alerts = const []}) : _alerts = List.of(alerts);

  static const _key = 'price_alerts';

  final List<PriceAlert> _alerts;

  /// Legújabb elöl.
  List<PriceAlert> get alerts => List.unmodifiable(_alerts.reversed);
  List<PriceAlert> get active => _alerts.where((a) => a.isActive).toList();
  bool get isEmpty => _alerts.isEmpty;

  List<PriceAlert> forSymbol(String symbol) {
    final s = symbol.toUpperCase();
    return alerts.where((a) => a.symbol == s).toList();
  }

  bool hasActive(String symbol) => _alerts.any((a) => a.isActive && a.symbol == symbol.toUpperCase());

  static Future<AlertStore> load() async {
    try {
      final raw = (await SharedPreferences.getInstance()).getString(_key);
      return AlertStore(alerts: raw == null ? const [] : parse(raw));
    } catch (_) {
      return AlertStore();
    }
  }

  /// A tárolt JSON-lista beolvasása; a hibás tételeket kihagyja.
  static List<PriceAlert> parse(String raw) {
    final v = jsonDecode(raw);
    return [
      for (final e in (v is List ? v : const []))
        if (e is Map) ?PriceAlert.fromJson(e.cast<String, dynamic>()),
    ];
  }

  Future<PriceAlert> add({
    required String symbol,
    required AlertKind kind,
    required double value,
    String? currency,
  }) async {
    final s = symbol.trim().toUpperCase();
    final alert = PriceAlert(
      id: '${s}_${DateTime.now().microsecondsSinceEpoch}',
      symbol: s,
      kind: kind,
      value: value,
      currency: currency,
      createdAt: DateTime.now(),
    );
    _alerts.add(alert);
    await _changed();
    return alert;
  }

  /// Minden riasztás törlése (fióktörléskor, ha a felhasználó ezt is kéri).
  Future<void> clear() async {
    _alerts.clear();
    await _changed();
  }

  Future<void> remove(String id) async {
    _alerts.removeWhere((a) => a.id == id);
    await _changed();
  }

  Future<void> markTriggered(String id, DateTime at, double price) => _replace(id, (a) => a.triggered(at, price));

  Future<void> rearm(String id) => _replace(id, (a) => a.rearmed());

  Future<void> _replace(String id, PriceAlert Function(PriceAlert) f) async {
    final i = _alerts.indexWhere((a) => a.id == id);
    if (i < 0) return;
    _alerts[i] = f(_alerts[i]);
    await _changed();
  }

  Future<void> _changed() async {
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_key, jsonEncode(_alerts.map((a) => a.toJson()).toList()));
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}
