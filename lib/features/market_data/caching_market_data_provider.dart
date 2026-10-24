import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/util/storage_room.dart';
import '../../core/errors.dart';
import '../../core/models/analysis_extras.dart';
import '../../core/models/analyst_consensus.dart';
import '../../core/models/company_profile.dart';
import '../../core/models/financial_statements.dart';
import '../../core/models/news_item.dart';
import '../../core/models/price_history.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_metrics.dart';
import '../../core/models/stock_quote.dart';
import 'market_data_provider.dart';

/// Offline gyorsítótár a piaci adatok fölött: az ár, a cégprofil, a mutatók és
/// az árfolyam-történet utolsó sikeres változatát a készüléken őrzi, és ha a
/// hálózat nem érhető el, azt adja vissza. Ilyenkor az [offlineSince] az
/// adat idejét mutatja (a felület ebből jelez); az első sikeres lekéréskor
/// visszaáll `null`-ra. A „nincs ilyen részvény” típusú hibákat nem takarja el.
class CachingMarketDataProvider extends MarketDataProvider {
  CachingMarketDataProvider(
    this.inner, {
    DateTime Function()? clock,
    this.quoteMemo = Duration.zero,
    this.dataMemo = Duration.zero,
    this.persistQuoteEvery = Duration.zero,
    this.persistDataEvery = Duration.zero,
  }) : _clock = clock ?? DateTime.now;

  final MarketDataProvider inner;

  /// Memóriában ennyi ideig ugyanaz a válasz (az árfolyamé, illetve a profilé, a
  /// mutatóké és a történeté): egy vétel után vagy görgetéskor ne kérjük le újra
  /// minden részvény adatát. Alapból kikapcsolva (az app beállítja).
  final Duration quoteMemo;
  final Duration dataMemo;

  /// A készülékre mentés legfeljebb ilyen gyakran kulcsonként: Windowson minden
  /// írás az egész beállítástárat újraírja. Alapból minden sikeres válasz mentődik.
  final Duration persistQuoteEvery;
  final Duration persistDataEvery;
  final Map<String, DateTime> _persistedAt = {};
  final DateTime Function() _clock;

  /// Legfeljebb ennyi részvény adatát őrizzük (a legrégebben használtakat töröljük).
  static const maxSymbols = 60;

  static const _prefix = marketCachePrefix;
  static const _indexKey = 'mdc_index';

  /// Ha nem `null`, valamelyik legutóbb kért adat a gyorsítótárból jött, és a
  /// legrégebbi ilyen ekkori. Kulcsonként követjük ([stale]): egy másik adat
  /// sikeres letöltése nem törli a jelzést, csak ugyanannak az adatnak a frissülése.
  final ValueNotifier<DateTime?> offlineSince = ValueNotifier(null);

  /// A gyorsítótárból adott adatok (kulcs → a mentés ideje).
  final ValueNotifier<Map<String, DateTime>> stale = ValueNotifier(const {});

  /// Egy részvény legrégebbi, gyorsítótárból adott adatának ideje (`null`: mind friss).
  DateTime? staleSince(String symbol) {
    final suffix = '_${symbol.toUpperCase()}';
    DateTime? oldest;
    for (final e in stale.value.entries) {
      if (e.key.endsWith(suffix) && (oldest == null || e.value.isBefore(oldest))) oldest = e.value;
    }
    return oldest;
  }

  /// A részvény legutóbbi árfolyama a gyorsítótárból jött-e (nem friss).
  bool quoteIsStale(String symbol) => stale.value.containsKey('${_prefix}quote_${symbol.toUpperCase()}');

  void _setStale(String key, DateTime? at) {
    final next = {...stale.value};
    if (at == null) {
      if (next.remove(key) == null) return;
    } else {
      next[key] = at;
    }
    stale.value = Map.unmodifiable(next);
    offlineSince.value = next.isEmpty ? null : next.values.reduce((a, b) => a.isBefore(b) ? a : b);
  }

  @override
  String get name => inner.name;

  /// Hálózati jellegű hiba (ilyenkor jöhet a mentett adat).
  static bool _isOffline(Object e) => switch (e) {
    MarketDataException(:final code) =>
      code == AppErrorCode.marketUnreachable ||
          code == AppErrorCode.marketHttp ||
          code == AppErrorCode.marketRateLimited,
    _ => true,
  };

  Future<T> _cached<T>(
    String kind,
    String symbol,
    Future<T> Function() load,
    Map<String, dynamic> Function(T) encode,
    T Function(Map<String, dynamic>) decode,
  ) async {
    final key = '$_prefix${kind}_${symbol.toUpperCase()}';
    try {
      final v = await load();
      _setStale(key, null);
      final now = _clock();
      final every = kind == 'quote' ? persistQuoteEvery : persistDataEvery;
      final last = _persistedAt[key];
      if (last == null || now.difference(last) >= every) {
        _persistedAt[key] = now;
        try {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString(key, jsonEncode({'at': now.toIso8601String(), 'v': encode(v)}));
          await _touch(prefs, symbol.toUpperCase());
        } catch (_) {
          // A mentés hibája nem akadályozza a megjelenítést.
        }
      }
      return v;
    } catch (e) {
      if (!_isOffline(e)) rethrow;
      try {
        final raw = (await SharedPreferences.getInstance()).getString(key);
        if (raw != null) {
          final j = jsonDecode(raw) as Map<String, dynamic>;
          final value = decode((j['v'] as Map).cast<String, dynamic>());
          _setStale(key, DateTime.tryParse(j['at'] as String? ?? '') ?? _clock());
          // A régi adat nem marad a memóriában: a hálózat visszatérte után a frissítés
          // (vagy az Újra gomb) tényleg újra kérjen, ne a [dataMemo] végéig ezt adja.
          _memo.remove('${kind}_${symbol.toUpperCase()}');
          return value;
        }
      } catch (_) {}
      rethrow;
    }
  }

  /// A használt részvények sorrendje (legutóbbi elöl); a túl régieket törli.
  Future<void> _touch(SharedPreferences prefs, String symbol) async {
    final index = prefs.getStringList(_indexKey) ?? const [];
    if (index.isNotEmpty && index.first == symbol) return;
    final next = [symbol, ...index.where((s) => s != symbol)];
    if (next.length > maxSymbols) {
      final dropped = next.sublist(maxSymbols).toSet();
      // Minden fajta (a történet évenként külön kulcson).
      for (final k in prefs.getKeys().toList()) {
        if (k.startsWith(_prefix) &&
            k != _indexKey &&
            dropped.contains(k.substring(k.indexOf('_', _prefix.length) + 1))) {
          await prefs.remove(k);
        }
      }
    }
    await prefs.setStringList(_indexKey, next.take(maxSymbols).toList());
  }

  /// Minden mentett piaci adat törlése (fióktörléskor).
  static Future<void> clear() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      for (final k in prefs.getKeys().where((k) => k.startsWith(_prefix)).toList()) {
        await prefs.remove(k);
      }
    } catch (_) {}
  }

  @override
  Future<StockQuote> quote(String symbol) => _memoized(
    'quote',
    symbol,
    () => _cached('quote', symbol, () => inner.quote(symbol), (q) => q.toJson(), StockQuote.fromJson),
    ttl: quoteMemo,
  );

  @override
  Future<CompanyProfile> profile(String symbol) => _memoized(
    'profile',
    symbol,
    () => _cached('profile', symbol, () => inner.profile(symbol), (p) => p.toJson(), CompanyProfile.fromJson),
    ttl: dataMemo,
  );

  @override
  Future<StockMetrics> metrics(String symbol) => _memoized(
    'metrics',
    symbol,
    () => _cached('metrics', symbol, () => inner.metrics(symbol), (m) => m.toJson(), StockMetrics.fromJson),
    ttl: dataMemo,
  );

  /// Az árfolyam-történetből csak a dátum és a záróár kerül a gyorsítótárba.
  @override
  Future<PriceHistory> history(String symbol, {int years = 5}) =>
      _memoized('history$years', symbol, () => _history(symbol, years), ttl: dataMemo);

  Future<PriceHistory> _history(String symbol, int years) => _cached(
    // Évszámonként külön: az 1 éves lekérés nem írja felül az 5 évest.
    'history$years',
    symbol,
    () => inner.history(symbol, years: years),
    // A gyertya napja dátumként (ÉÉÉÉ-HH-NN): időbélyeggel egy időzóna-váltás (utazás)
    // után minden nap eggyel elcsúszna. A régi (időbélyeges) bejegyzés is olvasható.
    (h) => {
      'symbol': h.symbol,
      'd': [
        for (final p in h.points) DateTime(p.time.year, p.time.month, p.time.day).toIso8601String().substring(0, 10),
      ],
      'c': [for (final p in h.points) p.close],
    },
    (j) {
      final c = (j['c'] as List).cast<num>();
      final days = j['d'] is List
          ? [for (final d in (j['d'] as List).cast<String>()) DateTime.parse(d)]
          : [for (final t in (j['t'] as List).cast<num>()) DateTime.fromMillisecondsSinceEpoch(t.toInt() * 1000)];
      return PriceHistory(
        symbol: j['symbol'] as String,
        points: [
          for (var i = 0; i < days.length && i < c.length; i++) PricePoint(time: days[i], close: c[i].toDouble()),
        ],
      );
    },
  );

  // A többi adat (hírek, kimutatások, konszenzus, keresés) nem kerül gyorsítótárba.
  @override
  Future<List<NewsItem>> news(String symbol, {int limit = 20}) => inner.news(symbol, limit: limit);

  @override
  Future<AnalystConsensus?> consensus(String symbol) => inner.consensus(symbol);

  @override
  Future<FinancialStatements> statements(String symbol) => inner.statements(symbol);

  @override
  Future<List<StockCandidate>> search(String query) => inner.search(query);

  @override
  Future<AnalysisExtras> analysisExtras(String symbol) => inner.analysisExtras(symbol);

  @override
  Future<List<String>> peers(String symbol) => _memoized('peers', symbol, () => inner.peers(symbol));

  @override
  Future<UpcomingEarnings?> nextEarnings(String symbol) => inner.nextEarnings(symbol);

  @override
  Future<EarningsOverview> earnings(String symbol) => _memoized('earnings', symbol, () => inner.earnings(symbol));

  @override
  Future<InsiderSummary?> insiders(String symbol) => _memoized('insiders', symbol, () => inner.insiders(symbol));

  /// A részvényoldal kártyái görgetéskor újraépülnek: a ritkán változó adatot
  /// ([memoFor] ideig) ne kérjük le újra – az adatszolgáltató percenkénti kerete szűk.
  static const memoFor = Duration(minutes: 10);
  final Map<String, (DateTime, Future<Object?>)> _memo = {};

  Future<T> _memoized<T>(String kind, String symbol, Future<T> Function() load, {Duration ttl = memoFor}) {
    if (ttl <= Duration.zero) return load();
    final key = '${kind}_${symbol.toUpperCase()}';
    final now = _clock();
    if (_memo[key] case (final at, final f) when now.difference(at) < ttl) return f as Future<T>;
    final f = Future.sync(load);
    _memo[key] = (now, f);
    // A hiba nem marad meg: a következő kérés újra próbálja.
    f.then<void>(
      (_) {},
      onError: (Object _) {
        if (identical(_memo[key]?.$2, f)) _memo.remove(key);
      },
    );
    if (_memo.length > 3 * maxSymbols) _memo.removeWhere((_, v) => now.difference(v.$1) >= memoFor);
    return f;
  }
}
