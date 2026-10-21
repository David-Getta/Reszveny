import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/stock_detail/widgets/what_if_card.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';

void main() {
  test('value today from the price that many years ago', () {
    final pts = [
      PricePoint(time: DateTime(2021, 10, 15), close: 50),
      PricePoint(time: DateTime(2023, 10, 16), close: 80),
      PricePoint(time: DateTime(2025, 10, 16), close: 100),
      PricePoint(time: DateTime(2026, 10, 16), close: 150),
    ];
    expect(WhatIfCard.valueToday(pts, 1000, 1), closeTo(1500, 0.01));
    expect(WhatIfCard.valueToday(pts, 1000, 3), closeTo(1875, 0.01));
    expect(WhatIfCard.valueToday(pts, 1000, 5), closeTo(3000, 0.01));
    expect(WhatIfCard.valueToday(pts.sublist(2), 1000, 3), isNull, reason: 'no data 3 years back');
  });

  Future<void> pump(WidgetTester tester, List<PricePoint> pts) => tester.pumpWidget(
    MaterialApp(
      theme: AppTheme.build(Brightness.light),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: SingleChildScrollView(
          child: WhatIfCard(
            history: PriceHistory(symbol: 'X', points: pts),
            currency: 'USD',
            fmt: Fmt('en'),
            dividendYield: 2,
          ),
        ),
      ),
    ),
  );

  testWidgets('amount and period can be changed; only periods with data are offered', (tester) async {
    final pts = [
      PricePoint(time: DateTime(2023, 10, 16), close: 80),
      PricePoint(time: DateTime(2025, 10, 16), close: 100),
      PricePoint(time: DateTime(2026, 10, 16), close: 150),
    ];
    await pump(tester, pts);
    expect(find.text('What if you had invested?'), findsOneWidget);
    expect(find.byKey(const ValueKey('what-if-5')), findsNothing);
    // Alapból a leghosszabb elérhető időtáv: 3 év.
    expect(find.text('1,000.00 USD invested 3 years ago would be worth today'), findsOneWidget);
    expect(find.text('1,875.00 USD'), findsOneWidget);
    expect(find.text('+875.00 USD · +87.50%'), findsOneWidget);
    // 2 % hozam a mai 1 875 USD értékre: évi 37,50 USD.
    expect(find.text('Dividend: 37.50 USD a year'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('what-if-1')));
    await tester.pump();
    expect(find.text('1,500.00 USD'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('what-if-amount')), '2 000');
    await tester.pump();
    expect(find.text('3,000.00 USD'), findsOneWidget);
    await tester.enterText(find.byKey(const ValueKey('what-if-amount')), 'x');
    await tester.pump();
    expect(find.byKey(const ValueKey('what-if-value')), findsNothing);
  });

  testWidgets('hidden when the history is too short', (tester) async {
    await pump(tester, [
      PricePoint(time: DateTime(2026, 6, 1), close: 80),
      PricePoint(time: DateTime(2026, 10, 16), close: 150),
    ]);
    expect(find.byKey(const ValueKey('what-if')), findsNothing);
  });
}
