import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/models/stock_quote.dart';
import '../../core/util/tombstones.dart';

/// Mikor szóljon a riasztás: az ár egy szint fölé megy, alá esik, a napi
/// változás (bármelyik irányba) eléri a megadott százalékot, vagy (követő stop)
/// az ár ennyi százalékot esik a riasztás óta elért csúcsához képest.
enum AlertKind {
  above,
  below,
  move,
  trailing;

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
    this.peak,
    this.modified,
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

  /// Követő stopnál a riasztás óta látott legmagasabb ár.
  final double? peak;

  /// A felhasználó utolsó módosítása (szerkesztés, újraélesítés, visszaállítás);
  /// szinkronkor a később módosított változat nyer – egy közben teljesült is.
  final DateTime? modified;

  /// Követő stopnál az a szint, ahol szól (a csúcs alatt [value] százalékkal).
  double? get trailingLevel => kind == AlertKind.trailing && peak != null ? peak! * (1 - value / 100) : null;

  bool get isActive => triggeredAt == null;

  /// Az ár, amelynél a riasztás kiold a mostani [price] mellett: a célár, követő stopnál
  /// a csúcs (vagy a mostani ár, ha az magasabb) a küszöbbel csökkentve; a napi
  /// mozgásnak nincs ilyen szintje.
  double? triggerPrice(double price) => switch (kind) {
    AlertKind.above || AlertKind.below => value,
    AlertKind.trailing => (peak != null && peak! > price ? peak! : price) * (1 - value / 100),
    AlertKind.move => null,
  };

  /// Mennyit kell még mozdulnia az árnak a kioldásig (%, előjellel: emelkedés vagy esés);
  /// `null`, ha nincs szintje, vagy az ár már túl van rajta (a következő ellenőrzés jelez).
  double? distancePercent(double price) {
    final level = triggerPrice(price);
    if (level == null || price <= 0) return null;
    final d = (level / price - 1) * 100;
    return (kind == AlertKind.above ? d > 0 : d < 0) ? d : null;
  }

  /// Teljesül-e a feltétel az adott árfolyamnál.
  bool isHit(StockQuote q) => switch (kind) {
    AlertKind.above => q.price >= value,
    AlertKind.below => q.price <= value,
    // A napi mozgás csak az élesítés utáni kereskedésből: hétvégén, ünnepnapon és
    // nyitás előtt még az előző nap mozgása látszik, az nem szól.
    AlertKind.move => (q.changePercent ?? 0).abs() >= value && (q.timestamp?.isAfter(armedAt) ?? true),
    AlertKind.trailing => trailingLevel != null && q.price <= trailingLevel!,
  };

  /// Mikor élesítették utoljára (létrehozás, szerkesztés vagy újraélesítés).
  DateTime get armedAt => modified ?? createdAt;

  /// Már a létrehozáskor teljesülne-e (pl. „240 fölé” a 250-es árnál);
  /// az ilyen riasztás értelmetlen, a felület nem engedi.
  static bool alreadyMet(AlertKind kind, double value, double? currentPrice) => switch (kind) {
    AlertKind.above => currentPrice != null && currentPrice >= value,
    AlertKind.below => currentPrice != null && currentPrice <= value,
    AlertKind.move || AlertKind.trailing => false,
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
    peak: peak,
    modified: modified,
  );

  /// Újraélesítéskor a követő stop csúcsa a következő árnál indul újra.
  PriceAlert rearmed() => PriceAlert(
    id: id,
    symbol: symbol,
    kind: kind,
    value: value,
    currency: currency,
    createdAt: createdAt,
    modified: DateTime.now().toUtc(),
  );

  /// Szerkesztett változat ugyanazzal az azonosítóval (a szinkron így felülírja,
  /// nem duplázza); újra aktív.
  PriceAlert edited({required AlertKind kind, required double value, String? currency, double? peak}) => PriceAlert(
    id: id,
    symbol: symbol,
    kind: kind,
    value: value,
    currency: currency,
    createdAt: createdAt,
    peak: kind == AlertKind.trailing ? peak : null,
    modified: DateTime.now().toUtc(),
  );

  PriceAlert withPeak(double price) => PriceAlert(
    id: id,
    symbol: symbol,
    kind: kind,
    value: value,
    currency: currency,
    createdAt: createdAt,
    triggeredAt: triggeredAt,
    triggeredPrice: triggeredPrice,
    peak: price,
    modified: modified,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'symbol': symbol,
    'kind': kind.name,
    'value': value,
    'currency': ?currency,
    'created_at': createdAt.toUtc().toIso8601String(),
    if (triggeredAt != null) 'triggered_at': triggeredAt!.toUtc().toIso8601String(),
    'triggered_price': ?triggeredPrice,
    'peak': ?peak,
    if (modified != null) 'edited': modified!.toUtc().toIso8601String(),
  };

  static PriceAlert? fromJson(Map<String, dynamic> j) {
    final symbol = (j['symbol'] as String? ?? '').trim().toUpperCase();
    final kind = AlertKind.parse(j['kind']);
    final value = j['value'];
    if (symbol.isEmpty || kind == null || value is! num || value <= 0) return null;
    final tp = j['triggered_price'];
    final peak = j['peak'];
    return PriceAlert(
      id: j['id'] as String? ?? '${symbol}_${DateTime.now().microsecondsSinceEpoch}',
      symbol: symbol,
      kind: kind,
      value: value.toDouble(),
      currency: j['currency'] as String?,
      createdAt: DateTime.tryParse(j['created_at'] as String? ?? '') ?? DateTime.now(),
      triggeredAt: DateTime.tryParse(j['triggered_at'] as String? ?? ''),
      triggeredPrice: tp is num ? tp.toDouble() : null,
      peak: peak is num && peak > 0 ? peak.toDouble() : null,
      modified: DateTime.tryParse(j['edited'] as String? ?? ''),
    );
  }
}

/// A riasztások tárolása a készüléken (SharedPreferences).
class AlertStore extends ChangeNotifier {
  AlertStore({List<PriceAlert> alerts = const [], Map<String, DateTime> deleted = const {}})
    : _alerts = List.of(alerts),
      _deleted = Map.of(deleted);

  static const _key = 'price_alerts';
  static const _deletedKey = 'price_alerts_deleted';

  final List<PriceAlert> _alerts;

  /// A törölt riasztások azonosítói a törlés idejével (UTC), hogy szinkronkor a
  /// másik eszköz régi példánya ne támassza fel őket; fél év után elhagyhatók.
  final Map<String, DateTime> _deleted;

  Map<String, String> get deletedJson => tombstonesJson(_deleted);

  /// A törlési jelzések cseréje (szinkronkor a fiók állapotára).
  Future<void> replaceAllDeleted(Map<String, DateTime> deleted) async {
    _deleted
      ..clear()
      ..addAll(deleted);
    await _changed(notify: false);
  }

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
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_key);
      Map<String, DateTime> deleted = const {};
      try {
        deleted = parseTombstones(jsonDecode(prefs.getString(_deletedKey) ?? '{}'));
      } catch (_) {}
      return AlertStore(alerts: raw == null ? const [] : parse(raw), deleted: deleted);
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
    double? peak,
  }) async {
    final s = symbol.trim().toUpperCase();
    final alert = PriceAlert(
      id: '${s}_${DateTime.now().microsecondsSinceEpoch}',
      symbol: s,
      kind: kind,
      value: value,
      currency: currency,
      createdAt: DateTime.now(),
      peak: kind == AlertKind.trailing ? peak : null,
    );
    _alerts.add(alert);
    await _changed();
    return alert;
  }

  /// Az összes riasztás cseréje (szinkronkor a fiók adataira).
  Future<void> replaceAll(List<PriceAlert> alerts) async {
    _alerts
      ..clear()
      ..addAll(alerts);
    await _changed();
  }

  /// Minden riasztás törlése (fióktörléskor, ha a felhasználó ezt is kéri).
  Future<void> clear() async {
    _alerts.clear();
    _deleted.clear();
    await _changed();
  }

  /// Egy törölt riasztás visszaállítása (visszavonás); újabbnak jelölve, hogy egy
  /// már szinkronizált törlés se vigye el.
  Future<void> restore(PriceAlert alert) async {
    if (_alerts.any((a) => a.id == alert.id)) return;
    _deleted.remove(alert.id);
    _alerts.add(
      PriceAlert(
        id: alert.id,
        symbol: alert.symbol,
        kind: alert.kind,
        value: alert.value,
        currency: alert.currency,
        createdAt: alert.createdAt,
        triggeredAt: alert.triggeredAt,
        triggeredPrice: alert.triggeredPrice,
        peak: alert.peak,
        modified: DateTime.now().toUtc(),
      ),
    );
    await _changed();
  }

  /// Az összes teljesült riasztás törlése; a törölteket adja vissza (visszavonáshoz).
  Future<List<PriceAlert>> removeTriggered() async {
    final gone = _alerts.where((a) => !a.isActive).toList();
    if (gone.isEmpty) return gone;
    _alerts.removeWhere((a) => !a.isActive);
    _tombstone(gone.map((a) => a.id));
    await _changed();
    return gone;
  }

  Future<void> remove(String id) async {
    _alerts.removeWhere((a) => a.id == id);
    _tombstone([id]);
    await _changed();
  }

  void _tombstone(Iterable<String> ids) {
    final now = DateTime.now().toUtc();
    for (final id in ids) {
      _deleted[id] = now;
    }
  }

  /// Tickerváltás: a részvény riasztásai az új tickerre kerülnek (újabbnak jelölve).
  Future<void> renameSymbol(String from, String to) async {
    final f = from.trim().toUpperCase(), t = to.trim().toUpperCase();
    if (f == t || t.isEmpty || !_alerts.any((a) => a.symbol == f)) return;
    final stamp = DateTime.now().toUtc();
    for (final (i, a) in _alerts.indexed) {
      if (a.symbol != f) continue;
      _alerts[i] = PriceAlert(
        id: a.id,
        symbol: t,
        kind: a.kind,
        value: a.value,
        currency: a.currency,
        createdAt: a.createdAt,
        triggeredAt: a.triggeredAt,
        triggeredPrice: a.triggeredPrice,
        peak: a.peak,
        modified: stamp,
      );
    }
    await _changed();
  }

  Future<void> markTriggered(String id, DateTime at, double price) => _replace(id, (a) => a.triggered(at, price));

  Future<void> rearm(String id) => _replace(id, (a) => a.rearmed());

  Future<void> edit(String id, {required AlertKind kind, required double value, String? currency, double? peak}) =>
      _replace(id, (a) => a.edited(kind: kind, value: value, currency: currency, peak: peak));

  /// Követő stop: új csúcs feljegyzése (csak ha magasabb a mostaninál).
  Future<void> raisePeak(String id, double price) =>
      _replace(id, (a) => a.peak != null && a.peak! >= price ? a : a.withPeak(price));

  Future<void> _replace(String id, PriceAlert Function(PriceAlert) f) async {
    final i = _alerts.indexWhere((a) => a.id == id);
    if (i < 0) return;
    _alerts[i] = f(_alerts[i]);
    await _changed();
  }

  Future<void> _changed({bool notify = true}) async {
    if (notify) notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      await Future.wait([
        prefs.setString(_key, jsonEncode(_alerts.map((a) => a.toJson()).toList())),
        prefs.setString(_deletedKey, jsonEncode(deletedJson)),
      ]);
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}
