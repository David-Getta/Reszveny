import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/features/fx/fx_service.dart';
import 'package:reszveny/features/home/markets_strip.dart';

import 'app_widget_test.dart' show services;

void main() {
  test('a market-wide "why is it moving" is offered from 1.5% either way', () {
    expect(MarketsStrip.showsWhy(1.5), isTrue);
    expect(MarketsStrip.showsWhy(-2.1), isTrue);
    expect(MarketsStrip.showsWhy(0.77), isFalse);
  });

  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('the pair shown: the dollar in the display currency, or EUR/USD', () {
    expect(MarketsStrip.fxPair('HUF'), ('USD', 'HUF'));
    expect(MarketsStrip.fxPair('eur'), ('USD', 'EUR'));
    expect(MarketsStrip.fxPair('USD'), ('EUR', 'USD'));
    expect(MarketsStrip.fxPair(null), ('EUR', 'USD'));
    expect(MarketsStrip.fxPair('XXX'), ('EUR', 'USD'));
  });

  test('a rate series is read in date order; a single-day answer gives one point', () {
    final s = FxService.parseSeries(
      {
        'rates': {
          '2026-10-14': {'HUF': 362.1},
          '2026-10-13': {'HUF': 360.0},
        },
      },
      'USD',
      'HUF',
    );
    expect(s.map((r) => r.rate), [360.0, 362.1]);
    expect(s.first.date, DateTime(2026, 10, 13));
    final one = FxService.parseSeries(
      {
        'date': '2026-10-14',
        'rates': {'HUF': 362.1},
      },
      'USD',
      'HUF',
    );
    expect(one.single.rate, 362.1);
    expect(FxService.parseSeries({'rates': <String, Object>{}}, 'USD', 'HUF'), isEmpty);
  });

  testWidgets('the dollar rate with its daily change under the markets (ECB series, cached)', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final paths = <String>[];
    final fx = FxService(
      client: MockClient((req) async {
        paths.add(req.url.path);
        return http.Response(
          '{"amount":1,"base":"USD","rates":{"2026-10-13":{"HUF":360.0},"2026-10-14":{"HUF":361.0}}}',
          200,
        );
      }),
    );
    final s = services(
      fx: fx,
      preferences: AppPreferences(displayCurrency: 'HUF'),
    );
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    final line = find.byKey(const ValueKey('market-fx'));
    expect(line, findsOneWidget);
    final text = (tester.widget<Text>(line).textSpan as TextSpan).toPlainText();
    expect(text, 'USD/HUF 361.00 · +0.28%');
    // Egy időszakos kérés (nap..nap), a másodszori lekérés a memóriából.
    expect(paths.where((p) => p.contains('..')), hasLength(1));
    expect(await fx.recent('USD', 'HUF'), hasLength(2));
    expect(paths.where((p) => p.contains('..')), hasLength(1));
  });
}
