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
  bool _loading = false;

  List<WatchedNews> get news => _news;
  bool get loading => _loading;

  /// A figyelt részvények: előbb a portfólió (bekerülési érték szerint), aztán a kedvencek.
  List<String> get watched =>
      {for (final p in portfolio.positions) p.symbol, ...preferences.favorites}.take(maxSymbols).toList();

  Future<void> refresh({bool force = false}) async {
    if (_loading) return;
    _loading = true;
    notifyListeners();
    try {
      final symbols = watched;
      final queue = [...symbols];
      Future<void> worker() async {
        while (queue.isNotEmpty) {
          final s = queue.removeLast();
          final c = _cache[s];
          if (!force && c != null && _clock().difference(c.$1) < cacheFor) continue;
          try {
            _cache[s] = (_clock(), await marketData.news(s, limit: perSymbol).timeout(const Duration(seconds: 20)));
          } catch (e) {
            debugPrint('Hírek nem tölthetők ($s): $e');
          }
        }
      }

      await Future.wait([for (var i = 0; i < parallel; i++) worker()]);
      final since = _clock().subtract(maxAge);
      final seen = <String>{};
      final list = <WatchedNews>[
        for (final s in symbols)
          for (final n in _cache[s]?.$2 ?? const <NewsItem>[])
            if (n.publishedAt.isAfter(since)) WatchedNews(symbol: s, item: n),
      ]..sort((a, b) => b.item.publishedAt.compareTo(a.item.publishedAt));
      _news = [
        for (final n in list)
          if (seen.add(n.item.url.isEmpty ? n.item.headline : n.item.url) && seen.add(n.item.headline.toLowerCase())) n,
      ];
    } finally {
      _loading = false;
      notifyListeners();
    }
  }
}
