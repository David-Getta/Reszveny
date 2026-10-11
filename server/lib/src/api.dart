import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'db.dart';
import 'mailer.dart';
import 'plans.dart';
import 'purchase_verifier.dart';
import 'quota.dart';
import 'stripe.dart';

/// A StockLens backend útvonalai.
///
/// - `POST /v1/auth/anonymous` → `{token, user_id}` (próbaidő indul)
/// - `GET  /v1/me` → jogosultság (a kliens `EntitlementState` formátuma)
/// - `POST /v1/purchases/verify` `{platform, product_id, verification_data}` → jogosultság
/// - `POST /v1/analyze` → Anthropic Messages API továbbítás kvóta-ellenőrzéssel (402, ha nincs keret)
/// - `POST /v1/anthropic/v1/messages` → továbbítás kvóta nélkül (fotófelismerés)
/// - `GET  /v1/market/*` → Finnhub továbbítás a szerver kulcsával
/// - `POST /v1/auth/email/start` `{email}` → 6 jegyű belépőkód e-mailben
/// - `POST /v1/auth/email/verify` `{email, code}` → fiókhoz kötött token (az előfizetés minden eszközön ugyanaz)
/// - `POST /v1/auth/logout` → a token visszavonása
/// - `POST /v1/billing/checkout` `{product_id}` → Stripe Checkout URL (böngészős fizetés)
/// - `POST /v1/billing/portal` → Stripe ügyfélportál URL (csomagváltás, lemondás, számlák)
/// - `POST /v1/stripe/webhook` → a Stripe eseményei (aláírás-ellenőrzéssel)
class Api {
  Api({
    required this.store,
    required this.anthropicApiKey,
    required this.finnhubApiKey,
    required this.verifier,
    Mailer? mailer,
    this.stripe,
    this.publicUrl = 'http://localhost:8080',
    http.Client? client,
    this.anthropicBaseUrl = 'https://api.anthropic.com',
    this.finnhubBaseUrl = 'https://finnhub.io/api/v1',
  }) : _client = client ?? http.Client(),
       mailer = mailer ?? ConsoleMailer(),
       quota = Quota(store);

  final Mailer mailer;

  /// Böngészős fizetés (asztali gép, web); `null`, ha nincs beállítva.
  final StripeClient? stripe;

  /// A szerver nyilvános címe (a Stripe ide irányít vissza fizetés után).
  final String publicUrl;

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
      ..post('/v1/auth/email/start', _emailStart)
      ..post('/v1/auth/email/verify', _emailVerify)
      ..post('/v1/auth/logout', _logout)
      ..post('/v1/billing/checkout', _checkout)
      ..post('/v1/billing/portal', _portal)
      ..post('/v1/stripe/webhook', _stripeWebhook)
      ..get('/billing/success', (Request r) => _page('✓', 'Sikeres fizetés · Payment complete'))
      ..get('/billing/cancel', (Request r) => _page('×', 'A fizetés megszakadt · Payment cancelled'))
      ..get('/healthz', (Request r) => Response.ok('ok'));
    return const Pipeline().addMiddleware(_cors()).addMiddleware(logRequests()).addHandler(router.call);
  }

  // ---- Segédek ----

  String? _userId(Request r) {
    final t = _token(r);
    return t == null ? null : store.userIdForToken(t);
  }

  static String? _token(Request r) {
    final auth = r.headers['authorization'] ?? '';
    if (!auth.startsWith('Bearer ')) return null;
    return auth.substring(7).trim();
  }

  Map<String, dynamic> _account(String uid) => {
    'user_id': uid,
    'email': store.emailOf(uid),
    'entitlements': store.entitlement(uid).toJson(),
  };

  static Response _page(String mark, String text) => Response.ok(
    '<!doctype html><meta charset="utf-8"><meta name="viewport" content="width=device-width">'
    '<title>StockLens</title><body style="background:#1F1E1D;color:#F5F4EF;font-family:-apple-system,system-ui,sans-serif;'
    'display:grid;place-items:center;height:100vh;margin:0;text-align:center">'
    '<div><div style="font-size:48px;color:#D97757">$mark</div><h2>$text</h2>'
    '<p style="color:#A8A49B">Visszatérhetsz a StockLens appba. · You can return to the StockLens app.</p></div>',
    headers: {'content-type': 'text/html; charset=utf-8'},
  );

  Response _json(Object body, {int status = 200}) =>
      Response(status, body: jsonEncode(body), headers: {'content-type': 'application/json'});

  Response _error(int status, String code, [String? message]) =>
      _json({'error': code, 'message': ?message}, status: status);

  static Middleware _cors() =>
      (inner) => (req) async {
        const headers = {
          'access-control-allow-origin': '*',
          'access-control-allow-headers':
              'authorization, content-type, x-api-key, anthropic-version, anthropic-beta, x-finnhub-token, stripe-signature, '
              'x-stocklens-depth',
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
    return _json(_account(uid));
  }

  // ---- Fiók: belépés e-mail + kód ----

  static final _emailRe = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  Future<Response> _emailStart(Request r) async {
    final email = Store.normalizeEmail((await _body(r))['email'] as String? ?? '');
    if (!_emailRe.hasMatch(email)) return _error(400, 'invalid_email');
    if (store.recentCodeCount(email) >= 5) return _error(429, 'too_many_codes');
    final code = store.createLoginCode(email);
    try {
      await mailer.sendLoginCode(email, code);
    } catch (e) {
      return _error(502, 'mail_failed', '$e');
    }
    return _json({'sent': true});
  }

  /// Kód ellenőrzése. Ha a címhez még nincs fiók, a jelenlegi (névtelen)
  /// felhasználó kapja meg; ha már van, a jelenlegi eszköz annak a fióknak a
  /// tokenjét kapja, az itt gyűlt extra elemzések és a fizetős csomag átkerülnek.
  Future<Response> _emailVerify(Request r) async {
    final body = await _body(r);
    final email = Store.normalizeEmail(body['email'] as String? ?? '');
    final code = body['code'] as String? ?? '';
    if (!store.verifyLoginCode(email, code)) return _error(401, 'invalid_code');

    final current = _userId(r);
    final existing = store.userIdForEmail(email);
    String uid;
    String token;
    if (existing == null) {
      if (current != null && store.emailOf(current) == null) {
        uid = current;
        token = _token(r)!;
      } else {
        final (id, t) = store.createAnonymousUser(null);
        uid = id;
        token = t;
      }
      store.setEmail(uid, email);
    } else {
      uid = existing;
      token = current == existing ? _token(r)! : store.issueToken(existing);
      if (current != null && current != existing && store.emailOf(current) == null) {
        _merge(from: current, into: existing);
      }
    }
    return _json({'token': token, ..._account(uid)});
  }

  void _merge({required String from, required String into}) {
    final a = store.entitlement(from);
    final b = store.entitlement(into);
    b.extra += a.extra;
    final aPaid = a.tier != null && a.tier != 'trial';
    final bPaid = b.tier != null && b.tier != 'trial';
    if (aPaid && !bPaid) {
      b
        ..tier = a.tier
        ..periodStart = a.periodStart
        ..periodEnd = a.periodEnd
        ..used = a.used;
    }
    a.extra = 0;
    store
      ..save(a)
      ..save(b);
  }

  Future<Response> _logout(Request r) async {
    final t = _token(r);
    if (t != null) store.revokeToken(t);
    return _json({'ok': true});
  }

  // ---- Böngészős fizetés (Stripe) ----

  Future<Response> _checkout(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final s = stripe;
    if (s == null) return _error(503, 'billing_unavailable');
    final email = store.emailOf(uid);
    if (email == null) return _error(403, 'login_required');
    final productId = (await _body(r))['product_id'] as String? ?? '';
    final isSub = PlanSpec.byProductId(productId) != null;
    if (!isSub && !PlanSpec.packs.containsKey(productId)) return _error(400, 'unknown_product');
    try {
      final url = await s.createCheckoutSession(
        userId: uid,
        productId: productId,
        subscription: isSub,
        customerId: store.stripeOf(uid).customerId,
        email: email,
        successUrl: '$publicUrl/billing/success',
        cancelUrl: '$publicUrl/billing/cancel',
      );
      return _json({'url': url});
    } on StripeException catch (e) {
      return _error(502, 'stripe_error', e.message);
    }
  }

  Future<Response> _portal(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final s = stripe;
    if (s == null) return _error(503, 'billing_unavailable');
    final customer = store.stripeOf(uid).customerId;
    if (customer == null) return _error(404, 'no_customer');
    try {
      return _json({'url': await s.createPortalSession(customerId: customer, returnUrl: '$publicUrl/billing/success')});
    } on StripeException catch (e) {
      return _error(502, 'stripe_error', e.message);
    }
  }

  /// Stripe-események: fizetés kész, megújulás, csomagváltás, lemondás.
  /// Minden esemény egyszer számít (a `purchases` tábla dedupl.).
  Future<Response> _stripeWebhook(Request r) async {
    final s = stripe;
    if (s == null) return _error(503, 'billing_unavailable');
    final payload = await r.readAsString();
    if (!s.verifySignature(payload, r.headers['stripe-signature'], now: store.clock())) {
      return _error(400, 'bad_signature');
    }
    final event = jsonDecode(payload) as Map<String, dynamic>;
    final type = event['type'] as String? ?? '';
    final obj = ((event['data'] as Map?)?['object'] as Map?)?.cast<String, dynamic>() ?? const {};
    final eventId = event['id'] as String? ?? '';

    switch (type) {
      case 'checkout.session.completed':
        final uid = obj['client_reference_id'] as String? ?? (obj['metadata'] as Map?)?['user_id'] as String?;
        final productId = (obj['metadata'] as Map?)?['product_id'] as String?;
        if (uid == null || productId == null) break;
        store.setStripe(uid, customerId: obj['customer'] as String?, subscriptionId: obj['subscription'] as String?);
        if (store.recordPurchase(
          userId: uid,
          productId: productId,
          platform: 'stripe',
          transactionId: obj['id'] as String? ?? eventId,
        )) {
          quota.apply(store.entitlement(uid), productId);
        }
      case 'invoice.paid':
        // A megújulás új időszakot nyit; az első számlát a checkout már elintézte.
        if (obj['billing_reason'] != 'subscription_cycle') break;
        final uid = store.userIdForStripeCustomer(obj['customer'] as String? ?? '');
        final productId = _productFromInvoice(s, obj);
        if (uid == null || productId == null) break;
        if (store.recordPurchase(
          userId: uid,
          productId: productId,
          platform: 'stripe',
          transactionId: obj['id'] as String? ?? eventId,
        )) {
          quota.apply(store.entitlement(uid), productId);
        }
      case 'customer.subscription.updated':
        final uid = store.userIdForStripeCustomer(obj['customer'] as String? ?? '');
        final items = ((obj['items'] as Map?)?['data'] as List?) ?? const [];
        final priceId = items.isEmpty ? null : ((items.first as Map)['price'] as Map?)?['id'] as String?;
        final plan = priceId == null ? null : PlanSpec.byProductId(s.productForPrice(priceId) ?? '');
        if (uid == null ||
            plan == null ||
            !store.recordPurchase(
              userId: uid,
              productId: plan.productId,
              platform: 'stripe-event',
              transactionId: eventId,
            )) {
          break;
        }
        // Csomagváltás azonnal érvényes, a felhasznált keret megmarad.
        final e = store.entitlement(uid);
        if (e.tier != plan.tier) store.save(e..tier = plan.tier);
      case 'customer.subscription.deleted':
        final uid = store.userIdForStripeCustomer(obj['customer'] as String? ?? '');
        if (uid == null) break;
        final e = store.entitlement(uid);
        if (e.tier != null && e.tier != 'trial') store.save(e..tier = null);
    }
    return _json({'received': true});
  }

  static String? _productFromInvoice(StripeClient s, Map<String, dynamic> invoice) {
    final lines = ((invoice['lines'] as Map?)?['data'] as List?) ?? const [];
    for (final l in lines.whereType<Map>()) {
      final price = l['price'] as Map? ?? ((l['pricing'] as Map?)?['price_details'] as Map?);
      final id = price?['id'] as String? ?? price?['price'] as String?;
      final p = id == null ? null : s.productForPrice(id);
      if (p != null) return p;
    }
    return null;
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
    final depth = Depth.parse(r.headers['x-stocklens-depth']);
    final q = quota.check(e, cost: depth.cost);
    if (q == QuotaResult.insufficient) {
      return _json({'error': 'insufficient_quota', 'needed': depth.cost, 'available': quota.available(e)}, status: 402);
    }
    if (q != QuotaResult.ok) {
      return _error(402, switch (q) {
        QuotaResult.trialExpired => 'trial_expired',
        QuotaResult.noPlan => 'no_plan',
        _ => 'quota_exceeded',
      });
    }
    final raw = limitRequest(await r.readAsString(), depth: depth, tier: e.tier);
    final upstream = await _forwardAnthropic(raw, r.headers['anthropic-beta']);
    if (upstream.statusCode == 200) {
      // Csak a befejezett (nem pause_turn) választ számoljuk el.
      try {
        final j = jsonDecode(upstream.body) as Map<String, dynamic>;
        if (j['stop_reason'] != 'pause_turn') {
          quota.consume(e, cost: depth.cost);
          final usage = (j['usage'] as Map?)?.cast<String, dynamic>();
          store.logUsage(uid, _symbolFrom(raw), usage?['input_tokens'] as int?, usage?['output_tokens'] as int?);
        }
      } catch (_) {}
    }
    return Response(upstream.statusCode, body: upstream.body, headers: {'content-type': 'application/json'});
  }

  /// A csomag és a hossz szerinti korlátok érvényesítése a kérésen: a
  /// `max_tokens` és a webkeresés `max_uses` nem lehet nagyobb a megengedettnél,
  /// így a kliens nem tud drágább elemzést kérni, mint amiért fizet.
  static String limitRequest(String raw, {required Depth depth, required String? tier}) {
    Map<String, dynamic> body;
    try {
      body = (jsonDecode(raw) as Map).cast<String, dynamic>();
    } catch (_) {
      return raw;
    }
    final maxTokens = body['max_tokens'];
    body['max_tokens'] = maxTokens is int && maxTokens < depth.maxTokens ? maxTokens : depth.maxTokens;
    final allowed = depth.searchesFor(tier);
    final tools = body['tools'];
    if (tools is List) {
      body['tools'] = [
        for (final t in tools)
          if (t is Map && (t['type'] as String? ?? '').startsWith('web_search'))
            {...t, 'max_uses': t['max_uses'] is int && (t['max_uses'] as int) < allowed ? t['max_uses'] : allowed}
          else
            t,
      ];
    }
    return jsonEncode(body);
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
