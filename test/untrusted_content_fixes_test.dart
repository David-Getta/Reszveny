import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/core/util/links.dart';
import 'package:reszveny/features/account/account_controller.dart';
import 'package:reszveny/features/account/sign_in_sheet.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/news/move_explainer.dart';
import 'package:reszveny/features/portfolio/portfolio_csv.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/updates/update_service.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A kívülről jött tartalom (hírek, AI, importált fájlok, frissítési jegyzék) és a
/// kliens–szerver szerződés kódátnézésének javításai.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('only web addresses are opened from news, AI sources and the update manifest', () async {
    for (final bad in [
      'file:///C:/Windows/System32/calc.exe',
      'ms-msdt:/id PCWDiagnostic',
      'javascript:alert(1)',
      'intent://x#Intent;end',
      'http://[broken',
      'https:///no-host',
      '',
    ]) {
      expect(safeWebUri(bad), isNull, reason: bad);
      expect(await openWeb(bad), isFalse, reason: bad);
    }
    expect(safeWebUri(' https://www.reuters.com/x ')?.host, 'www.reuters.com');
    final manifest = UpdateService.parseManifest({
      'version': '9.9.9',
      'urls': {'windows': 'http://downloads.example/WhatStock-setup.exe'},
    }, 'windows');
    expect(manifest.url, isNull, reason: 'only https downloads');
  });

  test('an infinite number from the AI counts as missing, not as a price', () {
    final s = Scenario.fromJson(jsonDecode('{"kind":"bull","probability":30,"price_low":"NaN","price_high":1e999}'));
    expect(s!.priceLow, isNull);
    expect(s.priceHigh, isNull);
    expect(() => jsonEncode(s.toJson()), returnsNormally);
  });

  test('exported text cells cannot run as spreadsheet formulas', () {
    final csv = portfolioCsv([
      const PortfolioLot(
        id: 'x',
        symbol: 'AAPL',
        quantity: 1,
        price: 100,
        currency: 'USD',
        account: '=HYPERLINK("//x.io","ok")',
      ),
      const PortfolioLot(id: 'y', symbol: "=CMD|' /C CALC'!A0", quantity: 1, price: 100, currency: 'USD'),
    ]);
    for (final cell in csv.split(RegExp(r'[,\n]'))) {
      expect(cell.replaceFirst('"', ''), isNot(startsWith('=')), reason: cell);
    }
    expect(csv, contains("'=CMD|' /C CALC'!A0"));
  });

  test('a shared move explanation is asked with the shared key only, not the exact move', () {
    Map<String, dynamic> body(double move) => MoveExplainer.requestBody(
      symbol: 'NVDA',
      name: 'NVIDIA',
      changePercent: move,
      language: 'English',
      today: DateTime.utc(2026, 10, 21, 15),
    );
    expect(jsonEncode(body(4.21)), jsonEncode(body(3.9)));
  });

  testWidgets('a pasted address with an invisible character still signs in; the limit is named', (tester) async {
    final sent = <String>[];
    var status = 200;
    final backend = BackendClient(
      baseUrl: 'https://api.test',
      inner: MockClient((req) async {
        if (req.url.path == '/v1/auth/email/start') {
          sent.add((jsonDecode(req.body) as Map)['email'] as String);
          return http.Response(
            status == 200 ? '{"ok":true}' : '{"error":"too_many_codes"}',
            status,
            headers: {'content-type': 'application/json'},
          );
        }
        return http.Response('{}', 404);
      }),
      tokenLoader: () async => 'tok',
    );
    final account = AccountController(backend: backend, entitlements: EntitlementService());
    late BuildContext ctx;
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.build(Brightness.light),
        localizationsDelegates: WhatStockApp.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Builder(
          builder: (context) {
            ctx = context;
            return const Scaffold();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    final l10n = AppLocalizations.of(ctx);
    status = 429;
    showSignInSheet(ctx, account);
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'anna@example.com\u200B');
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();
    expect(sent, ['anna@example.com']);
    expect(find.text(l10n.errRateLimited), findsOneWidget);
  });
}
