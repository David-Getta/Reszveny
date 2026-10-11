import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/app_services.dart';
import 'package:reszveny/core/app_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/locale_controller.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/core/models/stock_report.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/analysis/analysis_options.dart';
import 'package:reszveny/features/analysis/report_store.dart';
import 'package:reszveny/features/analysis/stock_analyst.dart';
import 'package:reszveny/features/billing/demo_billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:reszveny/features/capture/capture_service.dart';
import 'package:reszveny/features/market_data/demo_market_data_provider.dart';
import 'package:reszveny/features/portfolio/portfolio_store.dart';
import 'package:reszveny/features/recognition/stock_recognizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget_test.dart' show FakeNotifier;

Map<String, dynamic> _ent({String tier = 'trial'}) => {
  'tier': tier,
  'period_start': '2026-10-01T00:00:00.000Z',
  'period_end': '2026-10-04T00:00:00.000Z',
  'used': 0,
  'extra': 0,
  'trial_started_at': '2026-10-01T00:00:00.000Z',
};

http.Response _json(Object body, [int status = 200]) =>
    http.Response(jsonEncode(body), status, headers: {'content-type': 'application/json'});

/// Egyszerű szerver-utánzat: névtelen fiók, `/v1/me`, és `DELETE /v1/account`
/// a megadott válasszal. A hívásokat feljegyzi.
class _FakeServer {
  _FakeServer({this.deleteStatus = 200});

  final int deleteStatus;
  final calls = <String>[];
  var _accounts = 0;

  late final client = MockClient((req) async {
    calls.add('${req.method} ${req.url.path} ${req.headers['authorization'] ?? '-'}');
    switch ((req.method, req.url.path)) {
      case ('POST', '/v1/auth/anonymous'):
        _accounts++;
        return _json({'user_id': 'u$_accounts', 'token': 'new$_accounts', 'entitlements': _ent()});
      case ('GET', '/v1/me'):
        return _json({'entitlements': _ent(tier: req.headers['authorization'] == 'Bearer tok1' ? 'pro' : 'trial')});
      case ('DELETE', '/v1/account'):
        if (deleteStatus == 200) return _json({'deleted': true, 'stripe_subscription_cancelled': false});
        return _json({'error': deleteStatus == 401 ? 'unauthorized' : 'stripe_cancel_failed'}, deleteStatus);
    }
    return http.Response('nf', 404);
  });
}

class _NoRecognizer implements StockRecognizer {
  @override
  String get name => 'test';

  @override
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'}) async =>
      const RecognitionResult(candidates: []);
}

class _FakeAnalyst implements StockAnalyst {
  @override
  String get name => 'test';

  @override
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  }) async => StockReport(
    symbol: details.symbol,
    headline: 'Test headline',
    sections: const [
      ReportSection(kind: ReportSectionKind.summary, title: 'Summary', paragraphs: ['Para']),
    ],
    generatedAt: DateTime.now(),
  );
}

AppServices _services(_FakeServer server, {String? email}) {
  const config = AppConfig(backendUrl: 'https://x.test');
  final ent = EntitlementService(
    initial: EntitlementState(
      tier: PlanTier.pro,
      periodStart: DateTime.now().subtract(const Duration(days: 3)),
      periodEnd: DateTime.now().add(const Duration(days: 27)),
    ),
  );
  return AppServices(
    alertNotifier: FakeNotifier(),
    config: config,
    capture: CaptureService(),
    recognizer: _NoRecognizer(),
    marketData: DemoMarketDataProvider(latency: Duration.zero),
    locale: LocaleController(),
    preferences: AppPreferences(),
    desktop: DesktopIntegration(),
    reports: ReportStore(analyst: _FakeAnalyst()),
    entitlements: ent,
    backend: BackendClient(baseUrl: config.backend, inner: server.client, tokenLoader: () async => 'tok1'),
    accountEmail: email,
    billing: DemoBillingService(latency: Duration.zero),
    portfolio: PortfolioStore(),
    alerts: AlertStore(),
  );
}

Future<void> _fillLocalData(AppServices s) async {
  await s.portfolio.add(symbol: 'AAPL', quantity: 3, price: 180, currency: 'USD');
  await s.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: 300, currency: 'USD');
  await s.preferences.toggleFavorite('MSFT');
  await s.preferences.addRecent('NVDA');
  await s.reports.generate(const StockDetails(symbol: 'AAPL'), outputLanguage: 'English');
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  group('BackendClient.deleteAccount', () {
    test('DELETE /v1/account a tokennel, utána új névtelen fiókot nyit', () async {
      final server = _FakeServer();
      final b = BackendClient(baseUrl: 'https://x.test', inner: server.client, tokenLoader: () async => 'tok1');
      await b.deleteAccount();
      expect(server.calls, ['DELETE /v1/account Bearer tok1']);
      expect(b.token, isNull);
      expect((await SharedPreferences.getInstance()).getString('backend_token'), isNull);

      // A mentett (törölt) tokent nem veszi elő újra.
      await b.me();
      expect(server.calls.skip(1), ['POST /v1/auth/anonymous -', 'GET /v1/me Bearer new1']);
    });

    test('401 (a fiók már nincs meg) nem hiba', () async {
      final server = _FakeServer(deleteStatus: 401);
      final b = BackendClient(baseUrl: 'https://x.test', inner: server.client, tokenLoader: () async => 'gone');
      await b.deleteAccount();
      // Nem nyit új fiókot csak azért, hogy törölje.
      expect(server.calls, ['DELETE /v1/account Bearer gone']);
      expect(b.token, isNull);
    });

    test('szerverhibánál (pl. a Stripe-lemondás nem sikerült) kivételt dob, és a token marad', () async {
      final server = _FakeServer(deleteStatus: 502);
      final b = BackendClient(baseUrl: 'https://x.test', inner: server.client, tokenLoader: () async => 'tok1');
      await expectLater(
        b.deleteAccount(),
        throwsA(isA<BackendException>().having((e) => e.code, 'code', 'stripe_cancel_failed')),
      );
      expect(b.token, 'tok1');
    });
  });

  group('AppServices.deleteAccount', () {
    test('a helyi adatokat is törli, ha kérik; kijelentkezik és új fiókkal megy tovább', () async {
      final server = _FakeServer();
      final s = _services(server, email: 'a@b.hu');
      await _fillLocalData(s);
      expect(s.reports.report('AAPL'), isNotNull);

      await s.deleteAccount(wipeLocalData: true);

      expect(server.calls.first, 'DELETE /v1/account Bearer tok1');
      expect(server.calls, contains('POST /v1/auth/anonymous -'));
      expect(s.account!.isSignedIn, isFalse);
      expect(s.entitlements.state.tier, PlanTier.trial);
      expect(s.portfolio.positions, isEmpty);
      expect(s.alerts.isEmpty, isTrue);
      expect(s.preferences.favorites, isEmpty);
      expect(s.preferences.recent, isEmpty);
      expect(s.reports.report('AAPL'), isNull);
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getKeys().where((k) => k.startsWith('report_')), isEmpty);
      expect(prefs.getString('account_email'), isNull);
    });

    test('helyi törlés nélkül a készüléken tárolt adatok megmaradnak', () async {
      final server = _FakeServer();
      final s = _services(server);
      await _fillLocalData(s);
      await s.deleteAccount(wipeLocalData: false);
      expect(s.portfolio.positions, hasLength(1));
      expect(s.alerts.isEmpty, isFalse);
      expect(s.preferences.favorites, ['MSFT']);
      expect(s.reports.report('AAPL'), isNotNull);
    });

    test('ha a szerver nem törölt, a helyi adatokhoz sem nyúl', () async {
      final server = _FakeServer(deleteStatus: 502);
      final s = _services(server, email: 'a@b.hu');
      await _fillLocalData(s);
      await expectLater(s.deleteAccount(wipeLocalData: true), throwsA(isA<BackendException>()));
      expect(s.account!.isSignedIn, isTrue);
      expect(s.portfolio.positions, hasLength(1));
      expect(s.preferences.favorites, ['MSFT']);
    });
  });

  group('Jogi szövegek címe', () {
    test('backend-módban a szerver /legal oldalai, a nyelvvel', () {
      final s = _services(_FakeServer());
      expect(s.config.termsUrl, 'https://x.test/legal/terms');
      expect(s.config.privacyUrl, 'https://x.test/legal/privacy');
      expect(s.legalUri(s.config.termsUrl, const Locale('hu')).toString(), 'https://x.test/legal/terms?lang=hu');
      expect(s.legalUri(s.config.privacyUrl, const Locale('de')).toString(), 'https://x.test/legal/privacy?lang=en');
    });

    test('saját cím felülírja, backend nélkül nincs link', () {
      const own = AppConfig(termsUrlOverride: 'https://stocklens.app/terms?v=2');
      expect(own.termsUrl, 'https://stocklens.app/terms?v=2');
      expect(own.privacyUrl, isEmpty);
      final s = _services(_FakeServer());
      expect(s.legalUri(own.termsUrl, const Locale('hu')).toString(), 'https://stocklens.app/terms?v=2&lang=hu');
      expect(s.legalUri(own.privacyUrl, const Locale('hu')), isNull);
    });
  });

  testWidgets('beállítások: jogi linkek, fióktörlés megerősítéssel', (tester) async {
    tester.view.physicalSize = const Size(1200, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final server = _FakeServer();
    final s = _services(server, email: 'a@b.hu');
    await tester.runAsync(() => _fillLocalData(s));
    await tester.pumpWidget(StockLensApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();

    final terms = find.text('Terms of Use');
    await tester.scrollUntilVisible(terms, 300, scrollable: find.byType(Scrollable).last);
    expect(terms, findsOneWidget);
    expect(find.text('Privacy Policy'), findsOneWidget);

    final delete = find.text('Delete account');
    await tester.scrollUntilVisible(delete, -300, scrollable: find.byType(Scrollable).last);
    await tester.tap(delete);
    await tester.pumpAndSettle();
    expect(find.text('Delete your account?'), findsOneWidget);

    // Mégse: semmi sem történik.
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(server.calls.where((c) => c.startsWith('DELETE')), isEmpty);

    await tester.tap(delete);
    await tester.pumpAndSettle();
    await tester.tap(find.byType(CheckboxListTile));
    await tester.pump();
    await tester.tap(find.widgetWithText(FilledButton, 'Delete for good'));
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
    await tester.pumpAndSettle();

    expect(server.calls, contains('DELETE /v1/account Bearer tok1'));
    expect(find.text('Your account has been deleted.'), findsOneWidget);
    expect(find.text('Not signed in'), findsOneWidget);
    // A helyi adatok törlését kikapcsolta: a portfólió megmaradt.
    expect(s.portfolio.positions, hasLength(1));
  });
}
