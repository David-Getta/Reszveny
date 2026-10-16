import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/core/util/formatters.dart';
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
}
