import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/models/price_history.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/stock_detail/widgets/returns_strip.dart';
import 'package:reszveny/features/stock_detail/widgets/week52_range.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';

void main() {
  test('position on the bar and the distance from the high', () {
    final r = Week52Range(low: 100, high: 200, price: 150, fmt: Fmt('en'));
    expect(r.position, 0.5);
    expect(r.belowHigh, 25);
    expect(Week52Range(low: 100, high: 200, price: 220, fmt: Fmt('en')).position, 1);
    expect(Week52Range(low: 100, high: 200, price: 220, fmt: Fmt('en')).belowHigh, 0);
    expect(Week52Range(low: 100, high: 200, price: 90, fmt: Fmt('en')).position, 0);
  });

  testWidgets('the labels: low, high and how far below the high', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.build(Brightness.light),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: SizedBox(
            width: 400,
            child: Week52Range(low: 164.08, high: 260.1, price: 231.45, fmt: Fmt('en'), currency: 'USD'),
          ),
        ),
      ),
    );
    expect(find.text('52-week range'), findsOneWidget);
    expect(find.text('164.08 USD'), findsOneWidget);
    expect(find.text('260.10 USD'), findsOneWidget);
    expect(find.text('11.0% below the 52-week high'), findsOneWidget);
  });

  test('year to date: from the last close of the previous year', () {
    PricePoint pt(int y, int m, int d, double c) => PricePoint(time: DateTime(y, m, d), close: c);
    expect(
      ReturnsStrip.ytd([pt(2025, 12, 30, 90), pt(2025, 12, 31, 100), pt(2026, 1, 2, 104), pt(2026, 10, 16, 125)]),
      25,
    );
    // Ha nincs tavalyi adat: az év első hetétől igen, év közepétől nem.
    expect(ReturnsStrip.ytd([pt(2026, 1, 2, 50), pt(2026, 10, 16, 60)]), closeTo(20, 1e-9));
    expect(ReturnsStrip.ytd([pt(2026, 3, 2, 50), pt(2026, 10, 16, 60)]), isNull);
    expect(ReturnsStrip.ytd([pt(2026, 10, 16, 60)]), isNull);
  });

  testWidgets('the returns under the chart: only the periods the history covers', (tester) async {
    final now = DateTime(2026, 10, 16);
    final pts = [
      for (var i = 120; i >= 0; i--)
        PricePoint(
          time: now.subtract(Duration(days: i)),
          close: 100.0 + (120 - i) / 10,
        ),
    ];
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.build(Brightness.light),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: ReturnsStrip(
            history: PriceHistory(symbol: 'X', points: pts),
            fmt: Fmt('en'),
          ),
        ),
      ),
    );
    expect(find.text('1W'), findsOneWidget);
    expect(find.text('3M'), findsOneWidget);
    expect(find.text('YTD'), findsNothing, reason: 'the history starts in June');
    expect(find.text('1Y'), findsNothing);
  });
}
