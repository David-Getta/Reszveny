import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/models/analysis_extras.dart';
import 'package:reszveny/core/models/news_item.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/util/us_market_hours.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/events/events_service.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:reszveny/features/home/away_summary.dart';
import 'package:reszveny/features/market_data/caching_market_data_provider.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/news/daily_brief.dart';
import 'package:reszveny/features/news/move_explainer.dart';
import 'package:reszveny/features/news/watch_news.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';

/// Ugyanaz a hír két részvénynél; a lekérések száma számolva.
class _NewsMarket extends DemoMarketDataProvider {
  _NewsMarket() : super(latency: Duration.zero);

  int calls = 0;

  @override
  Future<List<NewsItem>> news(String symbol, {int limit = 20}) async {
    calls++;
    await Future<void>.delayed(const Duration(milliseconds: 5));
    final now = DateTime.now();
    return [
      NewsItem(headline: 'Chip stocks rally', url: 'https://x.test/chips', publishedAt: now),
      NewsItem(headline: '$symbol own news', url: 'https://x.test/$symbol', publishedAt: now),
    ];
  }
}

/// A gyorsjelentés napja: először a tegnapi, újralekérés után a következő negyedévé.
class _EarningsMarket extends DemoMarketDataProvider {
  _EarningsMarket(this.next) : super(latency: Duration.zero);

  DateTime next;

  @override
  Future<EarningsOverview> earnings(String symbol) async => EarningsOverview(
    next: UpcomingEarnings(date: next, hour: 'amc'),
  );

  @override
  Future<UpcomingEarnings?> nextEarnings(String symbol) async => UpcomingEarnings(date: next, hour: 'amc');
}

/// Hálózat nélkül: minden ár hibát ad (a gyorsítótár szolgál ki).
class _Offline extends DemoMarketDataProvider {
  _Offline() : super(latency: Duration.zero);

  bool offline = false;

  @override
  Future<StockQuote> quote(String symbol) {
    if (offline) throw const MarketDataException(AppErrorCode.marketUnreachable);
    return super.quote(symbol);
  }
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the US session: today once open, the previous trading day before the open and on weekends', () {
    // 2026-10-21 szerda; New Yorkban nyári idő (UTC−4).
    expect(UsMarketHours.sessionDate(DateTime.utc(2026, 10, 21, 15)), DateTime(2026, 10, 21));
    expect(UsMarketHours.sessionDate(DateTime.utc(2026, 10, 21, 23, 30)), DateTime(2026, 10, 21));
    expect(UsMarketHours.sessionDate(DateTime.utc(2026, 10, 22, 1)), DateTime(2026, 10, 21));
    expect(UsMarketHours.sessionDate(DateTime.utc(2026, 10, 22, 12)), DateTime(2026, 10, 21));
    // Szombat és vasárnap: a péntek.
    expect(UsMarketHours.sessionDate(DateTime.utc(2026, 10, 25, 12)), DateTime(2026, 10, 23));
    // Zárás: 16:00 New Yorkban, a hálaadás utáni napon 13:00-kor.
    expect(UsMarketHours.lastClose(DateTime.utc(2026, 10, 21, 19, 59)), DateTime.utc(2026, 10, 20, 20));
    expect(UsMarketHours.lastClose(DateTime.utc(2026, 10, 21, 20)), DateTime.utc(2026, 10, 21, 20));
    expect(UsMarketHours.lastClose(DateTime.utc(2026, 10, 25, 12)), DateTime.utc(2026, 10, 23, 20));
    expect(UsMarketHours.lastClose(DateTime.utc(2026, 11, 28, 12)), DateTime.utc(2026, 11, 27, 18));
  });

  test('the move explanation is keyed by the US session and the size of the move', () {
    // Közép-európai éjfél után ugyanaz a New York-i kereskedési nap.
    final evening = MoveExplainer.sessionKey(DateTime.utc(2026, 10, 21, 21, 30), 3.2);
    expect(MoveExplainer.sessionKey(DateTime.utc(2026, 10, 21, 23, 30), 3.9), evening);
    // Nagyobb lett, vagy előjelet váltott: új kulcs.
    expect(MoveExplainer.sessionKey(DateTime.utc(2026, 10, 21, 21, 30), 6.1), isNot(evening));
    expect(MoveExplainer.sessionKey(DateTime.utc(2026, 10, 21, 21, 30), -3.2), isNot(evening));
    final body = MoveExplainer.requestBody(
      symbol: 'NVDA',
      name: '',
      changePercent: -3.2,
      language: 'English',
      today: DateTime.utc(2026, 10, 22, 1),
    );
    expect(body['shared_cache'], 'move|NVDA|2026-10-21|-1|English');
  });

  test('the digest differs for different texts', () {
    final digests = {
      for (final s in ['a', 'b', 'ab', 'ba', 'hello world', 'hello worle', '']) stableDigest(s),
    };
    expect(digests, hasLength(7));
  });

  test('a refresh already running is awaited, not started twice; a shared headline belongs to both stocks', () async {
    final market = _NewsMarket();
    final news = WatchNewsService(
      marketData: market,
      preferences: AppPreferences(favorites: const ['AMD', 'NVDA']),
      portfolio: PortfolioStore(),
    );
    final first = news.refresh();
    expect(news.loading, isTrue);
    await news.refresh();
    await first;
    expect(market.calls, 2);
    // A közös hír a listában egyszer, de mindkét részvény hírei között ott van.
    expect(news.news.where((n) => n.item.headline == 'Chip stocks rally'), hasLength(1));
    expect(news.newsOf('AMD').map((n) => n.headline), contains('Chip stocks rally'));
    expect(news.newsOf('NVDA').map((n) => n.headline), contains('Chip stocks rally'));
    expect(news.newsOf('NVDA').map((n) => n.headline), isNot(contains('AMD own news')));
  });

  test('a report from yesterday stays available for the brief after the date is fetched again', () async {
    final now = DateTime.now();
    final today = UsMarketHours.eventToday(now);
    var clock = now;
    final market = _EarningsMarket(today.subtract(const Duration(days: 1)));
    final events = EventsService(
      marketData: market,
      preferences: AppPreferences(favorites: const ['NVDA']),
      portfolio: PortfolioStore(),
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
      clock: () => clock,
    );
    await events.refresh();
    expect(events.recentEarnings.map((e) => e.symbol), ['NVDA']);
    expect(events.events.where((e) => e.symbol == 'NVDA' && e.kind == UpcomingEventKind.earnings), isEmpty);
    // Fél nap múlva újra lekéri: már a következő negyedév napja jön.
    market.next = today.add(const Duration(days: 90));
    clock = now.add(EventsService.cacheFor);
    await events.refresh();
    expect(events.recentEarnings.single.date, today.subtract(const Duration(days: 1)));
  });

  test('without fresh prices the away report is not made and the snapshot is kept', () async {
    final inner = _Offline();
    final market = CachingMarketDataProvider(inner);
    final prefs = AppPreferences(favorites: const ['AAPL']);
    final portfolio = PortfolioStore();
    final events = EventsService(
      marketData: market,
      preferences: prefs,
      portfolio: portfolio,
      reports: ReportStore(analyst: ClaudeStockAnalyst(config: const AppConfig())),
    );
    var now = DateTime(2026, 10, 20, 9);
    AwaySummary away() => AwaySummary(
      marketData: market,
      preferences: prefs,
      portfolio: portfolio,
      alerts: AlertStore(),
      events: events,
      fx: FxService(client: MockClient((_) async => http.Response('{}', 500))),
      clock: () => now,
    );
    await away().check();
    final saved = (await SharedPreferences.getInstance()).getString(AwaySummary.storeKey);
    expect(saved, isNotNull);
    // Másnap hálózat nélkül: a gyorsítótárból jönne az ár, de az nem friss.
    inner.offline = true;
    now = DateTime(2026, 10, 21, 12);
    final second = away();
    await second.check();
    expect(second.report, isNull);
    expect((await SharedPreferences.getInstance()).getString(AwaySummary.storeKey), saved);
  });
}
