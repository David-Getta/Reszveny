import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  CachingMarketDataProvider(this.inner, {DateTime Function()? clock}) : _clock = clock ?? DateTime.now;

  final MarketDataProvider inner;
  final DateTime Function() _clock;

  /// Legfeljebb ennyi részvény adatát őrizzük (a legrégebben használtakat töröljük).
  static const maxSymbols = 60;

  static const _prefix = 'mdc_';
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
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(key, jsonEncode({'at': _clock().toIso8601String(), 'v': encode(v)}));
        await _touch(prefs, symbol.toUpperCase());
      } catch (_) {
        // A mentés hibája nem akadályozza a megjelenítést.
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
  Future<StockQuote> quote(String symbol) =>
      _cached('quote', symbol, () => inner.quote(symbol), (q) => q.toJson(), StockQuote.fromJson);

  @override
  Future<CompanyProfile> profile(String symbol) =>
      _cached('profile', symbol, () => inner.profile(symbol), (p) => p.toJson(), CompanyProfile.fromJson);

  @override
  Future<StockMetrics> metrics(String symbol) =>
      _cached('metrics', symbol, () => inner.metrics(symbol), (m) => m.toJson(), StockMetrics.fromJson);

  /// Az árfolyam-történetből csak a dátum és a záróár kerül a gyorsítótárba.
  @override
  Future<PriceHistory> history(String symbol, {int years = 5}) => _cached(
    // Évszámonként külön: az 1 éves lekérés nem írja felül az 5 évest.
    'history$years',
    symbol,
    () => inner.history(symbol, years: years),
    (h) => {
      'symbol': h.symbol,
      't': [for (final p in h.points) p.time.millisecondsSinceEpoch ~/ 1000],
      'c': [for (final p in h.points) p.close],
    },
    (j) {
      final t = (j['t'] as List).cast<num>(), c = (j['c'] as List).cast<num>();
      return PriceHistory(
        symbol: j['symbol'] as String,
        points: [
          for (var i = 0; i < t.length && i < c.length; i++)
            PricePoint(time: DateTime.fromMillisecondsSinceEpoch(t[i].toInt() * 1000), close: c[i].toDouble()),
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
  Future<List<String>> peers(String symbol) => inner.peers(symbol);

  @override
  Future<UpcomingEarnings?> nextEarnings(String symbol) => inner.nextEarnings(symbol);

  @override
  Future<EarningsOverview> earnings(String symbol) => inner.earnings(symbol);

  @override
  Future<InsiderSummary?> insiders(String symbol) => inner.insiders(symbol);
}
