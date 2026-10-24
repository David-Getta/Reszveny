import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/news/daily_brief.dart';
import 'package:reszveny/features/news/morning_brief.dart';
import 'package:reszveny/features/news/watch_news.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';

import 'app_widget_test.dart' show FakeNotifier;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the first sentence for the notification', () {
    expect(MorningBrief.firstSentence('A quiet day. NVDA rose.\n- more'), 'A quiet day.');
    expect(MorningBrief.firstSentence('No full stop here\n- x'), 'No full stop here');
    expect(MorningBrief.firstSentence('平静的一天。英伟达上涨。'), '平静的一天。');
    // A rövidítés pontja nem mondatvég.
    expect(MorningBrief.firstSentence('U.S. stocks rose on Friday. NVDA led.'), 'U.S. stocks rose on Friday.');
    expect(MorningBrief.firstSentence('Chips, e.g. NVDA, rose. More.'), 'Chips, e.g. NVDA, rose.');
  });

  test('no repeat on the weekend; a new language makes a new one the same day', () async {
    var calls = 0;
    final client = MockClient((req) async {
      calls++;
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': 'Brief $calls.'},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    // Szombat reggel (UTC): a péntek esti zárás után.
    var now = DateTime.utc(2026, 10, 17, 8);
    var language = 'English';
    final market = DemoMarketDataProvider(latency: Duration.zero);
    final prefs = AppPreferences(favorites: const ['NVDA']);
    await prefs.setMorningBrief(true);
    final news = WatchNewsService(marketData: market, preferences: prefs, portfolio: PortfolioStore());
    final brief = DailyBrief(
      config: const AppConfig(backendUrl: 'https://api.test'),
      marketData: market,
      news: news,
      client: client,
      clock: () => now,
    );
    final morning = MorningBrief(
      brief: brief,
      news: news,
      preferences: prefs,
      notifier: FakeNotifier(),
      language: () => language,
      title: () => 'Today',
      clock: () => now,
    );
    expect(await morning.check(), isTrue);
    // Vasárnap nem zárt új kereskedési nap: nincs új összefoglaló.
    now = DateTime.utc(2026, 10, 18, 8);
    expect(await morning.check(), isFalse);
    // Nyelvváltás után igen (a régi nyelvű nem jó).
    language = 'Hungarian';
    expect(await morning.check(), isTrue);
    expect(brief.isTodayIn('Hungarian'), isTrue);
    expect(brief.isTodayIn('English'), isFalse);
    // Hétfő este, a zárás után még nem (reggeli összefoglaló), kedd reggel megint.
    now = DateTime.utc(2026, 10, 19, 21);
    expect(await morning.check(), isFalse);
    now = DateTime.utc(2026, 10, 20, 8);
    expect(await morning.check(), isTrue);
    expect(calls, 3);
  });

  test('made once a day after 7 am when switched on, with a notification', () async {
    var calls = 0;
    final client = MockClient((req) async {
      calls++;
      return http.Response(
        jsonEncode({
          'stop_reason': 'end_turn',
          'content': [
            {'type': 'text', 'text': 'A quiet day overall. NVDA rose.\n- NVDA +3.0%'},
          ],
        }),
        200,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });
    var now = DateTime(2026, 10, 16, 6, 30);
    final market = DemoMarketDataProvider(latency: Duration.zero);
    final prefs = AppPreferences(favorites: const ['NVDA']);
    final news = WatchNewsService(marketData: market, preferences: prefs, portfolio: PortfolioStore());
    final brief = DailyBrief(
      config: const AppConfig(backendUrl: 'https://api.test'),
      marketData: market,
      news: news,
      client: client,
      clock: () => now,
    );
    final notifier = FakeNotifier();
    final morning = MorningBrief(
      brief: brief,
      news: news,
      preferences: prefs,
      notifier: notifier,
      language: () => 'English',
      title: () => 'Today with your stocks',
      clock: () => now,
    );

    // Kikapcsolva semmi.
    now = DateTime(2026, 10, 16, 8);
    expect(await morning.check(), isFalse);
    await prefs.setMorningBrief(true);
    // Reggel 7 előtt sem.
    now = DateTime(2026, 10, 16, 6, 30);
    expect(await morning.check(), isFalse);

    now = DateTime(2026, 10, 16, 8);
    expect(await morning.check(), isTrue);
    expect(calls, 1);
    expect(notifier.sent.single.title, 'Today with your stocks');
    expect(notifier.sent.single.body, 'A quiet day overall.');
    // Aznap még egyszer nem.
    now = DateTime(2026, 10, 16, 12);
    expect(await morning.check(), isFalse);
    expect(calls, 1);
    // Másnap igen.
    now = DateTime(2026, 10, 17, 7, 5);
    expect(await morning.check(), isTrue);
    expect(calls, 2);
  });
}
