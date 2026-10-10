import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'db.dart';
import 'plans.dart';
import 'purchase_verifier.dart';
import 'quota.dart';

/// A StockLens backend útvonalai.
///
/// - `POST /v1/auth/anonymous` → `{token, user_id}` (próbaidő indul)
/// - `GET  /v1/me` → jogosultság (a kliens `EntitlementState` formátuma)
/// - `POST /v1/purchases/verify` `{platform, product_id, verification_data}` → jogosultság
/// - `POST /v1/analyze` → Anthropic Messages API továbbítás kvóta-ellenőrzéssel (402, ha nincs keret)
/// - `POST /v1/anthropic/v1/messages` → továbbítás kvóta nélkül (fotófelismerés)
/// - `GET  /v1/market/*` → Finnhub továbbítás a szerver kulcsával
class Api {
  Api({
    required this.store,
    required this.anthropicApiKey,
    required this.finnhubApiKey,
    required this.verifier,
    http.Client? client,
    this.anthropicBaseUrl = 'https://api.anthropic.com',
    this.finnhubBaseUrl = 'https://finnhub.io/api/v1',
  }) : _client = client ?? http.Client(),
       quota = Quota(store);

  final Store store;
  final Quota quota;
  final String anthropicApiKey;
  final String finnhubApiKey;
  final PurchaseVerifier verifier;
  final http.Client _client;
  final String anthropicBaseUrl;
  final String finnhubBaseUrl;

  Handler get handler {
    final router = Router()
      ..post('/v1/auth/anonymous', _auth)
      ..get('/v1/me', _me)
      ..post('/v1/purchases/verify', _verify)
      ..post('/v1/analyze', _analyze)
      ..post('/v1/anthropic/v1/messages', _anthropicPassthrough)
      ..get('/v1/market/<path|.*>', _market)
      ..get('/healthz', (Request r) => Response.ok('ok'));
    return const Pipeline().addMiddleware(_cors()).addMiddleware(logRequests()).addHandler(router.call);
  }

  // ---- Segédek ----

  String? _userId(Request r) {
    final auth = r.headers['authorization'] ?? '';
    if (!auth.startsWith('Bearer ')) return null;
    return store.userIdForToken(auth.substring(7).trim());
  }

  Response _json(Object body, {int status = 200}) =>
      Response(status, body: jsonEncode(body), headers: {'content-type': 'application/json'});

  Response _error(int status, String code, [String? message]) =>
      _json({'error': code, 'message': ?message}, status: status);

  static Middleware _cors() =>
      (inner) => (req) async {
        const headers = {
          'access-control-allow-origin': '*',
          'access-control-allow-headers':
              'authorization, content-type, x-api-key, anthropic-version, anthropic-beta, x-finnhub-token',
          'access-control-allow-methods': 'GET, POST, OPTIONS',
        };
        if (req.method == 'OPTIONS') return Response.ok('', headers: headers);
        final res = await inner(req);
        return res.change(headers: headers);
      };

  // ---- Útvonalak ----

  Future<Response> _auth(Request r) async {
    final body = await _body(r);
    final (id, token) = store.createAnonymousUser(body['device_id'] as String?);
    return _json({'user_id': id, 'token': token, 'entitlements': store.entitlement(id).toJson()});
  }

  Future<Response> _me(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    return _json({'entitlements': store.entitlement(uid).toJson()});
  }

  Future<Response> _verify(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final body = await _body(r);
    final platform = body['platform'] as String? ?? '';
    final productId = body['product_id'] as String? ?? '';
    final data = body['verification_data'] as String? ?? '';
    if (PlanSpec.byProductId(productId) == null && !PlanSpec.packs.containsKey(productId)) {
      return _error(400, 'unknown_product');
    }
    final txn = await verifier.verify(platform: platform, productId: productId, verificationData: data);
    if (txn == null) return _error(402, 'invalid_purchase');
    final e = store.entitlement(uid);
    final fresh = store.recordPurchase(userId: uid, productId: productId, platform: platform, transactionId: txn);
    if (fresh) quota.apply(e, productId);
    return _json({'entitlements': store.entitlement(uid).toJson(), 'applied': fresh});
  }

  /// Elemzés: kvóta-ellenőrzés, továbbítás, siker után levonás és naplózás.
  Future<Response> _analyze(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final e = store.entitlement(uid);
    final q = quota.check(e);
    if (q != QuotaResult.ok) {
      return _error(402, switch (q) {
        QuotaResult.trialExpired => 'trial_expired',
        QuotaResult.noPlan => 'no_plan',
        _ => 'quota_exceeded',
      });
    }
    final raw = await r.readAsString();
    final upstream = await _forwardAnthropic(raw, r.headers['anthropic-beta']);
    if (upstream.statusCode == 200) {
      // Csak a befejezett (nem pause_turn) választ számoljuk el.
      try {
        final j = jsonDecode(upstream.body) as Map<String, dynamic>;
        if (j['stop_reason'] != 'pause_turn') {
          quota.consume(e);
          final usage = (j['usage'] as Map?)?.cast<String, dynamic>();
          store.logUsage(uid, _symbolFrom(raw), usage?['input_tokens'] as int?, usage?['output_tokens'] as int?);
        }
      } catch (_) {}
    }
    return Response(upstream.statusCode, body: upstream.body, headers: {'content-type': 'application/json'});
  }

  Future<Response> _anthropicPassthrough(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final raw = await r.readAsString();
    final upstream = await _forwardAnthropic(raw, r.headers['anthropic-beta']);
    return Response(upstream.statusCode, body: upstream.body, headers: {'content-type': 'application/json'});
  }

  Future<http.Response> _forwardAnthropic(String body, String? beta) => _client.post(
    Uri.parse('$anthropicBaseUrl/v1/messages'),
    headers: {
      'content-type': 'application/json',
      'x-api-key': anthropicApiKey,
      'anthropic-version': '2023-06-01',
      'anthropic-beta': ?beta,
    },
    body: body,
  );

  Future<Response> _market(Request r, String path) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final uri = Uri.parse('$finnhubBaseUrl/$path').replace(queryParameters: r.url.queryParameters);
    final upstream = await _client.get(uri, headers: {'X-Finnhub-Token': finnhubApiKey});
    return Response(upstream.statusCode, body: upstream.body, headers: {'content-type': 'application/json'});
  }

  static Future<Map<String, dynamic>> _body(Request r) async {
    final s = await r.readAsString();
    if (s.isEmpty) return const {};
    try {
      return (jsonDecode(s) as Map).cast<String, dynamic>();
    } catch (_) {
      return const {};
    }
  }

  /// A kérésben küldött adat-JSON-ból kiolvassa a tickert a naplóhoz.
  static String? _symbolFrom(String raw) {
    final m = RegExp(r'"symbol":\s*"([A-Za-z0-9.\-]{1,12})"').firstMatch(raw);
    return m?.group(1);
  }
}
