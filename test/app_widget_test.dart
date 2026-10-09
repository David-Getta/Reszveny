import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

AppServices services({Locale? locale}) => AppServices(
  config: const AppConfig(),
  capture: CaptureService(),
  recognizer: _NoRecognizer(),
  marketData: DemoMarketDataProvider(latency: Duration.zero),
  locale: LocaleController(initial: locale),
);

void main() {
  testWidgets('manual ticker lookup shows the detail page with all sections', (tester) async {
    await tester.pumpWidget(ReszvenyApp(services: services()));
    await tester.pumpAndSettle();

    expect(find.text('Photograph a stock and learn everything about it.'), findsOneWidget);
    expect(find.textContaining('Demo mode'), findsOneWidget);

    await tester.ensureVisible(find.byType(TextField));
    await tester.enterText(find.byType(TextField), 'aapl');
    await tester.ensureVisible(find.text('Look up'));
    await tester.tap(find.text('Look up'));
    await tester.pumpAndSettle();

    expect(find.text('Apple Inc.'), findsOneWidget);
    expect(find.text('Price'), findsOneWidget);
    for (final section in ['Valuation', 'Financials', 'Dividend', 'Company profile', 'Analyst ratings', 'News']) {
      await tester.scrollUntilVisible(find.text(section), 200, scrollable: find.byType(Scrollable).first);
      expect(find.text(section), findsOneWidget);
    }
  });

  testWidgets('hungarian locale renders translated strings', (tester) async {
    await tester.pumpWidget(ReszvenyApp(services: services(locale: const Locale('hu'))));
    await tester.pumpAndSettle();
    expect(find.text('Photograph a stock and learn everything about it.'), findsNothing);
    expect(find.byType(TextField), findsOneWidget);
  });

  testWidgets('a locale without built-in Material strings still renders (fallback delegate)', (tester) async {
    await tester.pumpWidget(ReszvenyApp(services: services(locale: const Locale('jv'))));
    await tester.pumpAndSettle();
    expect(find.byType(TextField), findsOneWidget);
    expect(Localizations.localeOf(tester.element(find.byType(TextField))), const Locale('jv'));
  });

  testWidgets('right-to-left locale flips the text direction', (tester) async {
    await tester.pumpWidget(ReszvenyApp(services: services(locale: const Locale('ar'))));
    await tester.pumpAndSettle();
    expect(Directionality.of(tester.element(find.byType(TextField))), TextDirection.rtl);
  });
}
