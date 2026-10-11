import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:reszveny/core/backend/backend_client.dart';
import 'package:reszveny/core/config/app_config.dart';
import 'package:reszveny/core/errors.dart';
import 'package:reszveny/core/models/stock_details.dart';
import 'package:reszveny/features/analysis/claude_stock_analyst.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:shared_preferences/shared_preferences.dart';

Map<String, dynamic> _ent({String tier = 'trial', int used = 0, int extra = 0}) => {
  'tier': tier,
  'period_start': '2026-10-01T00:00:00.000Z',
  'period_end': '2026-10-04T00:00:00.000Z',
  'used': used,
  'extra': extra,
  'trial_started_at': '2026-10-01T00:00:00.000Z',
};

http.Response _json(Object body, [int status = 200]) =>
    http.Response(jsonEncode(body), status, headers: {'content-type': 'application/json'});

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  group('AppConfig backend-mód', () {
    test('BACKEND_URL nélkül a közvetlen végpontokat használja', () {
      const c = AppConfig(anthropicApiKey: 'k', finnhubApiKey: 'f');
      expect(c.hasBackend, isFalse);
      expect(c.effectiveAnthropicBaseUrl, 'https://api.anthropic.com');
      expect(c.effectiveFinnhubBaseUrl, 'https://finnhub.io/api/v1');
      expect(c.analyzeEndpoint, 'https://api.anthropic.com/v1/messages');
    });

    test('BACKEND_URL-lel kulcs nélkül is konfigurált, és a szerverre mutat', () {
      const c = AppConfig(backendUrl: 'https://api.stocklens.app/');
      expect(c.hasBackend, isTrue);
      expect(c.hasAnthropicKey, isTrue);
      expect(c.hasFinnhubKey, isTrue);
      expect(c.isDemoMode, isFalse);
      expect(c.effectiveAnthropicBaseUrl, 'https://api.stocklens.app/v1/anthropic');
      expect(c.effectiveFinnhubBaseUrl, 'https://api.stocklens.app/v1/market');
      expect(c.analyzeEndpoint, 'https://api.stocklens.app/v1/analyze');
    });
  });

  group('BackendClient', () {
    test('első híváskor névtelen fiókot nyit, majd a tokent használja', () async {
      final calls = <String>[];
      final client = MockClient((req) async {
        calls.add('${req.method} ${req.url.path} ${req.headers['authorization'] ?? '-'}');
        if (req.url.path == '/v1/auth/anonymous') {
          expect(jsonDecode(req.body)['device_id'], isNotEmpty);
          return _json({'user_id': 'u1', 'token': 'tok1', 'entitlements': _ent()});
        }
        if (req.url.path == '/v1/me') return _json({'entitlements': _ent(used: 2)});
        return http.Response('nf', 404);
      });
      final b = BackendClient(baseUrl: 'https://x.test/', inner: client);
      final me = await b.me();
      expect(me.tier, PlanTier.trial);
      expect(me.usedInPeriod, 2);
      expect(calls, ['POST /v1/auth/anonymous -', 'GET /v1/me Bearer tok1']);

      // A token megmarad a beállításokban.
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getString('backend_token'), 'tok1');

      // Második példány a mentett tokennel indul, nem nyit új fiókot.
      calls.clear();
      final b2 = BackendClient(baseUrl: 'https://x.test', inner: client);
      await b2.me();
      expect(calls, ['GET /v1/me Bearer tok1']);
    });

    test('401 után új fiókot nyit és újrapróbálja', () async {
      var tokens = 0;
      final client = MockClient((req) async {
        if (req.url.path == '/v1/auth/anonymous') {
          tokens++;
          return _json({'user_id': 'u$tokens', 'token': 'tok$tokens', 'entitlements': _ent()});
        }
        if (req.headers['authorization'] == 'Bearer stale') return _json({'error': 'unauthorized'}, 401);
        return _json({'entitlements': _ent(tier: 'pro')});
      });
      final b = BackendClient(baseUrl: 'https://x.test', inner: client, tokenLoader: () async => 'stale');
      final me = await b.me();
      expect(me.tier, PlanTier.pro);
      expect(tokens, 1);
      expect(b.token, 'tok1');
    });

    test('vásárlás-ellenőrzés a szerver jogosultságát adja vissza, hibát kóddal dob', () async {
      final client = MockClient((req) async {
        if (req.url.path == '/v1/auth/anonymous') {
          return _json({'user_id': 'u1', 'token': 'tok1', 'entitlements': _ent()});
        }
        final body = jsonDecode(req.body) as Map;
        if (body['product_id'] == 'stocklens.sub.max') {
          expect(body['platform'], 'app_store');
          expect(body['verification_data'], 'receipt');
          return _json({'entitlements': _ent(tier: 'max'), 'applied': true});
        }
        return _json({'error': 'invalid_purchase'}, 402);
      });
      final b = BackendClient(baseUrl: 'https://x.test', inner: client);
      final e = await b.verifyPurchase(
        platform: 'app_store',
        productId: 'stocklens.sub.max',
        verificationData: 'receipt',
      );
      expect(e.tier, PlanTier.max);
      await expectLater(
        b.verifyPurchase(platform: 'app_store', productId: 'stocklens.pack.5', verificationData: 'x'),
        throwsA(isA<BackendException>().having((x) => x.code, 'code', 'invalid_purchase')),
      );
    });

    test('a hitelesített kliens minden kérésre ráteszi a tokent', () async {
      final client = MockClient((req) async {
        if (req.url.path == '/v1/auth/anonymous') {
          return _json({'user_id': 'u1', 'token': 'tok1', 'entitlements': _ent()});
        }
        expect(req.headers['authorization'], 'Bearer tok1');
        return _json({'c': 1.0});
      });
      final b = BackendClient(baseUrl: 'https://x.test', inner: client);
      final res = await b.authenticated.get(Uri.parse('https://x.test/v1/market/quote?symbol=AAPL'));
      expect(res.statusCode, 200);
    });
  });

  group('Elemzés backend-módban', () {
    const details = StockDetails(symbol: 'AAPL');

    test('a /v1/analyze végpontot hívja, és a 402-t kvóta-hibára fordítja', () async {
      final client = MockClient((req) async {
        expect(req.url.toString(), 'https://x.test/v1/analyze');
        expect(req.headers.containsKey('x-api-key'), isFalse);
        return _json({'error': 'trial_expired'}, 402);
      });
      final analyst = ClaudeStockAnalyst(
        config: const AppConfig(backendUrl: 'https://x.test'),
        client: client,
      );
      await expectLater(
        analyst.analyze(details),
        throwsA(isA<AnalysisException>().having((e) => e.code, 'code', AppErrorCode.trialExpired)),
      );
    });

    test('402 hibakódok leképezése', () {
      expect(ClaudeStockAnalyst.quotaErrorFor('{"error":"quota_exceeded"}'), AppErrorCode.quotaExceeded);
      expect(ClaudeStockAnalyst.quotaErrorFor('{"error":"no_plan"}'), AppErrorCode.noPlan);
      expect(ClaudeStockAnalyst.quotaErrorFor('{"error":"trial_expired"}'), AppErrorCode.trialExpired);
      expect(ClaudeStockAnalyst.quotaErrorFor('nem json'), AppErrorCode.quotaExceeded);
    });
  });
}
