import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/models/news_item.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/news/watch_news.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';

import 'app_widget_test.dart' show services;

/// Minta-hírek: az OTP-hír régi, az AAPL és MSFT ugyanazt a hírt is hozza.
class _News extends DemoMarketDataProvider {
  _News() : super(latency: Duration.zero);

  final asked = <String>[];
  final now = DateTime(2026, 10, 15, 12);

  @override
  Future<List<NewsItem>> news(String symbol, {int limit = 20}) async {
    asked.add(symbol);
    NewsItem n(String h, int hoursAgo, [String? url]) => NewsItem(
      headline: h,
      url: url ?? 'https://x.test/$symbol/$h',
      publishedAt: now.subtract(Duration(hours: hoursAgo)),
    );
    return switch (symbol) {
      'AAPL' => [n('Apple earnings', 2), n('Big tech rally', 5, 'https://x.test/rally')],
      'MSFT' => [n('Big tech rally', 5, 'https://x.test/rally'), n('Azure growth', 30)],
      'OTP' => [n('Old bank news', 24 * 10)],
      _ => [],
    };
  }
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('portfolio and favorites news: newest first, no duplicates, nothing older than a week, cached', () async {
    final market = _News();
    final portfolio = PortfolioStore();
    await portfolio.add(symbol: 'OTP', quantity: 1, price: 1, currency: 'HUF');
    final s = WatchNewsService(
      marketData: market,
      preferences: AppPreferences(favorites: const ['AAPL', 'MSFT']),
      portfolio: portfolio,
      clock: () => market.now,
    );
    expect(s.watched, ['OTP', 'AAPL', 'MSFT']);
    await s.refresh();
    expect(s.news.map((n) => (n.symbol, n.item.headline)), [
      ('AAPL', 'Apple earnings'),
      ('AAPL', 'Big tech rally'),
      ('MSFT', 'Azure growth'),
    ]);
    await s.refresh();
    expect(market.asked, hasLength(3), reason: 'cached for half an hour');
    await s.refresh(force: true);
    expect(market.asked, hasLength(6));
  });

  testWidgets('the home screen shows the news of the favorites', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services();
    await s.preferences.toggleFavorite('NVDA');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('home-news')), findsOneWidget);
    expect(find.text('News on your stocks'), findsOneWidget);
    expect(find.text('Demo: NVDA reports quarterly results above expectations'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('news-symbol-NVDA')).first);
    await tester.pumpAndSettle();
    expect(find.text('NVIDIA Corporation'), findsWidgets);
  });
}
