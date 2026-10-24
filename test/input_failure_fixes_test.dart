import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/models/company_profile.dart';
import 'package:reszveny/core/models/stock_quote.dart';
import 'package:reszveny/core/util/tombstones.dart';
import 'package:reszveny/features/alerts/alerts_view.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/caching_market_data_provider.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/market_data/finnhub_market_data_provider.dart';
import 'package:reszveny/features/news/daily_brief.dart';
import 'package:reszveny/features/news/watch_news.dart';
import 'package:reszveny/features/portfolio/add_lot_dialog.dart';
import 'package:reszveny/features/portfolio/holdings_reader.dart';
import 'package:reszveny/features/portfolio/portfolio_csv.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/sync/sync_service.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';

import 'app_widget_test.dart' show services;

/// Egy hibás hálózat, illetve egy hibás érték körüli átnézés javításainak ellenőrzése.
class _Flaky extends DemoMarketDataProvider {
  _Flaky() : super(latency: Duration.zero);

  bool down = false;
  int profiles = 0;

  @override
  Future<StockQuote> quote(String symbol) async {
    if (down) throw const MarketDataException(AppErrorCode.marketUnreachable);
    return super.quote(symbol);
  }

  @override
  Future<CompanyProfile> profile(String symbol) async {
    profiles++;
    if (down) throw const MarketDataException(AppErrorCode.marketUnreachable);
    return super.profile(symbol);
  }
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('numbers in other scripts, with a leading plus or the Arabic decimal sign', () {
    expect(parseAmount('+1,234', 'en'), 1234);
    expect(parseAmount('+1.234', 'de'), 1234);
    expect(parseDecimal('۱۲۳٫۵'), 123.5);
    expect(parseAmount('١٢٣', 'ar'), 123);
    expect(parseAmount('१२३', 'hi'), 123);
    expect(parseAmount('১২৩', 'bn'), 123);
    expect(parseAmount('12٫5', 'fa'), 12.5);
    expect(parseAmount('۱٬۲۳۴', 'fa'), 1234);
  });

  test('a spreadsheet number in scientific form keeps its exponent', () {
    final x = parsePortfolioCsv('symbol,quantity,price\nAAPL,1.5E+3,1.2E+2\n');
    expect((x.lots.single.quantity, x.lots.single.price), (1500, 120));
  });

  test('infinite numbers from a backup or sync are not taken', () {
    expect(PortfolioLot.fromJson({'symbol': 'MSFT', 'quantity': double.infinity, 'price': 1}), isNull);
    expect(PortfolioLot.fromJson({'symbol': 'MSFT', 'quantity': 1, 'price': double.infinity}), isNull);
    expect(DividendRecord.fromJson({'symbol': 'MSFT', 'amount': double.infinity}), isNull);
    expect(
      PriceAlert.fromJson({'symbol': 'MSFT', 'kind': 'above', 'value': double.infinity, 'created_at': '2026-01-01'}),
      isNull,
    );
  });

  test('a change stamped far in the future does not count, so a later delete still wins', () {
    final now = DateTime.utc(2026, 10, 24, 12);
    expect(parseStamp('2999-01-01T00:00:00Z', now: now), isNull);
    expect(parseStamp('2026-10-24T15:00:00Z', now: now), DateTime.utc(2026, 10, 24, 15), reason: 'pár óra eltérés');
    expect(parseStamp('2026-10-01T00:00:00Z', now: now), DateTime.utc(2026, 10, 1));
    final lot = PortfolioLot(id: 'x', symbol: 'AAPL', quantity: 1, price: 1, currency: 'USD').toJson();
    final merged = SyncService.merge(
      {
        'lots': [
          {...lot, 'edited': '2999-01-01T00:00:00Z'},
        ],
      },
      {
        'lots': <Object>[],
        'deleted': {'x': DateTime.now().toUtc().subtract(const Duration(minutes: 1)).toIso8601String()},
      },
    );
    expect(merged['lots'], isEmpty);
  });

  test('a sync package with fields of the wrong type does not stop merging', () {
    expect(
      () => SyncService.merge(
        {
          'favorites': {'AAPL': 1},
          'notes': ['x'],
        },
        {'watch_lists': 3, 'favorites': 'MSFT'},
      ),
      returnsNormally,
    );
  });

  testWidgets('an alert level with a thousands separator is read as the user wrote it', (tester) async {
    final s = services();
    await tester.pumpWidget(
      AppServicesScope(
        services: s,
        child: MaterialApp(
          theme: AppTheme.build(Brightness.light),
          localizationsDelegates: WhatStockApp.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Builder(
            builder: (context) => TextButton(
              onPressed: () => showAlertDialog(
                context,
                symbol: 'BRK',
                currency: 'USD',
                currentPrice: 1200,
                initialKind: AlertKind.below,
              ),
              child: const Text('open'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('alert-value')), '1,150');
    await tester.tap(find.byType(FilledButton).last);
    await tester.pumpAndSettle();
    expect(s.alerts.alerts.single.value, 1150);
  });

  test('one failed refresh is an error for the calendar, not an empty result', () async {
    final provider = FinnhubMarketDataProvider(
      config: const AppConfig(finnhubApiKey: 'k'),
      client: MockClient((req) async => http.Response('{"error":"limit"}', 429)),
    );
    await expectLater(provider.earnings('AAPL'), throwsA(isA<MarketDataException>()));
  });

  test('after the network is back, a refresh does not keep serving the offline copy', () async {
    final inner = _Flaky();
    var now = DateTime(2026, 10, 24, 10);
    final market = CachingMarketDataProvider(inner, dataMemo: const Duration(minutes: 10), clock: () => now);
    await market.profile('AAPL');
    inner.down = true;
    now = now.add(const Duration(minutes: 11));
    await market.profile('AAPL');
    expect(market.stale.value, isNotEmpty);
    inner.down = false;
    now = now.add(const Duration(minutes: 1));
    await market.profile('AAPL');
    expect(inner.profiles, 3);
    expect(market.stale.value, isEmpty);
  });

  test("a brief is not made from yesterday's cached prices", () async {
    final inner = _Flaky();
    final market = CachingMarketDataProvider(inner);
    await market.quote('NVDA');
    inner.down = true;
    final prefs = AppPreferences(favorites: const ['NVDA']);
    var asked = 0;
    final brief = DailyBrief(
      config: const AppConfig(backendUrl: 'https://api.test'),
      marketData: market,
      news: WatchNewsService(marketData: market, preferences: prefs, portfolio: PortfolioStore()),
      client: MockClient((req) async {
        asked++;
        return http.Response('{}', 500);
      }),
    );
    await expectLater(brief.generate(symbols: ['NVDA'], language: 'English'), throwsA(isA<MarketDataException>()));
    expect(asked, 0);
  });

  test('an answer cut off at the length limit or paused mid-search is an error', () async {
    for (final stop in ['max_tokens', 'pause_turn']) {
      final market = DemoMarketDataProvider(latency: Duration.zero);
      final prefs = AppPreferences(favorites: const ['NVDA']);
      final brief = DailyBrief(
        config: const AppConfig(backendUrl: 'https://api.test'),
        marketData: market,
        news: WatchNewsService(marketData: market, preferences: prefs, portfolio: PortfolioStore()),
        client: MockClient(
          (req) async => http.Response(
            jsonEncode({
              'stop_reason': stop,
              'content': [
                {'type': 'text', 'text': 'NVDA rose ahead of the \$94.4 billion'},
              ],
            }),
            200,
            headers: {'content-type': 'application/json; charset=utf-8'},
          ),
        ),
      );
      await expectLater(
        brief.generate(symbols: ['NVDA'], language: 'English'),
        throwsA(isA<AnalysisException>().having((e) => e.code, 'code', AppErrorCode.aiTruncated)),
        reason: stop,
      );
      expect(brief.last, isNull, reason: stop);
    }
  });

  test('reading holdings from a picture explains an ended trial like the photo search does', () async {
    final reader = HoldingsReader(
      config: const AppConfig(backendUrl: 'https://api.test'),
      client: MockClient((req) async => http.Response('{"error":"trial_expired"}', 402)),
    );
    await expectLater(
      reader.read(CapturedImage(bytes: Uint8List.fromList([1, 2, 3]), mimeType: 'image/png')),
      throwsA(isA<RecognitionException>().having((e) => e.code, 'code', AppErrorCode.trialExpired)),
    );
  });
}
