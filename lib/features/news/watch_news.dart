import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/app_preferences.dart';
import '../../core/models/news_item.dart';
import '../market_data/market_data_provider.dart';
import '../portfolio/portfolio_store.dart';

/// Egy hír a figyelt részvények közül: melyikről szól.
class WatchedNews {
  const WatchedNews({required this.symbol, required this.item});

  final String symbol;
  final NewsItem item;
}

/// A portfólió és a kedvencek friss hírei egy listában, időrendben (újabb
/// elöl). Részvényenként egy lekérés, fél óráig gyorsítótárazva; ugyanaz a hír
/// (cím vagy link) csak egyszer szerepel.
class WatchNewsService extends ChangeNotifier {
  WatchNewsService({
    required this.marketData,
    required this.preferences,
    required this.portfolio,
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final MarketDataProvider marketData;
  final AppPreferences preferences;
  final PortfolioStore portfolio;
  final DateTime Function() _clock;

  /// Legfeljebb ennyi részvény híreit kérjük le (a portfólió elöl), egyszerre ennyit.
  static const maxSymbols = 8;
  static const parallel = 4;
  static const perSymbol = 6;
  static const cacheFor = Duration(minutes: 30);

  /// Ennél régebbi hír nem kerül a listába.
  static const maxAge = Duration(days: 7);

  final Map<String, (DateTime at, List<NewsItem> items)> _cache = {};
  List<WatchedNews> _news = const [];
  Future<void>? _running;

  /// A listában (megjelenítésre) ugyanaz a hír csak egyszer, az első részvénynél.
  List<WatchedNews> get news => _news;

  /// A személyes adatok törlésekor: az előző portfólió és kedvencek hírei se maradjanak.
  void forget() {
    _generation++;
    // Egy futó frissítés eredménye már nem kell; egy új kérés ne arra várjon.
    _running = null;
    _cache.clear();
    _news = const [];
    notifyListeners();
  }

  /// [forget] növeli: a törlés előtt indult frissítés eredménye elvetve.
  int _generation = 0;

  bool get loading => _running != null;

  /// Egy részvény friss hírei, a többi részvénnyel közös hírekkel együtt (az
  /// összefoglalóhoz: a közös hír mindkét részvényhez tartozik).
  List<NewsItem> newsOf(String symbol) {
    final since = _clock().subtract(maxAge);
    return [
      for (final n in _cache[symbol]?.$2 ?? const <NewsItem>[])
        if (n.publishedAt.isAfter(since)) n,
    ]..sort((a, b) => b.publishedAt.compareTo(a.publishedAt));
  }

  /// A figyelt részvények: előbb a portfólió (bekerülési érték szerint), aztán a kedvencek.
  List<String> get watched =>
      {for (final p in portfolio.positions) p.symbol, ...preferences.favorites}.take(maxSymbols).toList();

  /// Frissítés; ha már fut egy, azt várja meg (pl. az összefoglaló ne üres hírekből készüljön).
  Future<void> refresh({bool force = false}) {
    if (_running case final running?) return running;
    late final Future<void> run;
    run = _refresh(force).whenComplete(() {
      // Csak a sajátját engedi el: egy [forget] utáni újabb futás kezelője marad.
      if (identical(_running, run)) _running = null;
      notifyListeners();
    });
    return _running = run;
  }

  Future<void> _refresh(bool force) async {
    notifyListeners();
    final gen = _generation;
    try {
      final symbols = watched;
      final queue = [...symbols];
      Future<void> worker() async {
        while (queue.isNotEmpty) {
          final s = queue.removeLast();
          final c = _cache[s];
          if (!force && c != null && _clock().difference(c.$1) < cacheFor) continue;
          try {
            final items = await marketData.news(s, limit: perSymbol).timeout(const Duration(seconds: 20));
            if (gen != _generation) return;
            _cache[s] = (_clock(), items);
          } catch (e) {
            debugPrint('Hírek nem tölthetők ($s): $e');
          }
        }
      }

      await Future.wait([for (var i = 0; i < parallel; i++) worker()]);
      if (gen != _generation) return;
      final since = _clock().subtract(maxAge);
      // A link és a cím külön halmazban: egy link nélküli hír címe nem ütközhet önmagával.
      final urls = <String>{}, headlines = <String>{};
      final list = <WatchedNews>[
        for (final s in symbols)
          for (final n in _cache[s]?.$2 ?? const <NewsItem>[])
            if (n.publishedAt.isAfter(since)) WatchedNews(symbol: s, item: n),
      ]..sort((a, b) => b.item.publishedAt.compareTo(a.item.publishedAt));
      _news = [
        for (final n in list)
          if ((n.item.url.isEmpty || urls.add(n.item.url)) && headlines.add(n.item.headline.toLowerCase())) n,
      ];
    } catch (e) {
      debugPrint('Hírek frissítése nem sikerült: $e');
    }
  }
}
