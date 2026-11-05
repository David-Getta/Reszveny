import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/market_data/caching_market_data_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Évek használata után se nőjön korlátlanul a készülék tára (az ötvenkettedik átnézés).
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the replaced analysis is kept as a small digest that still compares', () {
    final full = StockReport(
      symbol: 'NVDA',
      headline: 'Strong demand.',
      generatedAt: DateTime.utc(2026, 11, 1),
      language: 'English',
      sections: [
        for (var i = 0; i < 10; i++)
          ReportSection(kind: ReportSectionKind.summary, title: 'S$i', paragraphs: ['x' * 1500]),
      ],
      outlook: const ReportOutlook(
        currentPrice: 180,
        currency: 'USD',
        marketMood: 1,
        scenarios: [Scenario(kind: ScenarioKind.base, probability: 50, priceLow: 170, priceHigh: 200)],
        mostLikelyReason: 'Long reason',
      ),
    );
    final digest = full.comparisonDigest;
    expect(jsonEncode(digest.toJson()).length, lessThan(1500));
    expect(jsonEncode(full.toJson()).length, greaterThan(15000));
    expect((digest.headline, digest.generatedAt, digest.outlook?.marketMood), (full.headline, full.generatedAt, 1));
    expect(digest.outlook?.scenarios.single.priceHigh, 200);
  });

  test('the stored 5-year history keeps every day of the last year and one point a week before', () {
    final start = DateTime(2021, 11, 1);
    final points = [
      for (var i = 0; i < 1826; i++)
        if (start.add(Duration(days: i)).weekday <= 5)
          PricePoint(
            time: start.add(Duration(days: i)),
            close: i.toDouble(),
          ),
    ];
    final thin = CachingMarketDataProvider.thinHistory(points);
    expect(points.length, greaterThan(1250));
    expect(thin.length, lessThan(520));
    final lastYear = points.where((p) => !p.time.isBefore(points.last.time.subtract(const Duration(days: 370))));
    expect(
      thin.where((p) => !p.time.isBefore(points.last.time.subtract(const Duration(days: 370)))).length,
      lastYear.length,
    );
    expect(thin.last.close, points.last.close);
    expect(thin.first.time.weekday, DateTime.friday, reason: 'a hét utolsó kereskedési napja');
  });

  test('old triggered alerts expire (the newest 100 and the last 90 days stay), with tombstones', () async {
    final old = DateTime.now().toUtc().subtract(const Duration(days: 200));
    final store = AlertStore(
      alerts: [
        for (var i = 0; i < 300; i++)
          PriceAlert(
            id: 'a$i',
            symbol: 'X',
            kind: AlertKind.above,
            value: 1,
            createdAt: old,
            triggeredAt: old.add(Duration(minutes: i)),
            triggeredPrice: 2,
          ),
        PriceAlert(id: 'live', symbol: 'Y', kind: AlertKind.above, value: 1, createdAt: old),
      ],
    );
    await store.markTriggered('live', DateTime.now().toUtc(), 2);
    final triggered = store.alerts.where((a) => !a.isActive).toList();
    expect(triggered.length, AlertStore.keepTriggeredNewest + 1);
    expect(triggered.any((a) => a.id == 'live'), isTrue);
    expect(store.deletedJson.length, 200);
    expect(store.deletedJson.containsKey('a0'), isTrue, reason: 'a legrégebbiek mentek');
  });
}
