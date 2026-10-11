import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

/// Minimális Stripe-kliens a böngészős fizetéshez (Checkout), az ügyfélportálhoz
/// és a webhookok aláírás-ellenőrzéséhez. A Stripe REST API form-kódolt kéréseket vár.
class StripeClient {
  StripeClient({
    required this.secretKey,
    required this.webhookSecret,
    required this.prices,
    http.Client? client,
    this.apiBase = 'https://api.stripe.com/v1',
  }) : _client = client ?? http.Client();

  final String secretKey;
  final String webhookSecret;

  /// Termékazonosító → Stripe price ID (pl. `whatstock.sub.pro` → `price_123`).
  final Map<String, String> prices;
  final String apiBase;
  final http.Client _client;

  /// `STRIPE_PRICES="whatstock.sub.pro=price_1,whatstock.pack.5=price_2"` értelmezése.
  static Map<String, String> parsePrices(String? raw) => {
    for (final pair in (raw ?? '').split(',').map((s) => s.trim()).where((s) => s.contains('=')))
      pair.split('=').first.trim(): pair.split('=').last.trim(),
  };

  String? productForPrice(String priceId) {
    for (final e in prices.entries) {
      if (e.value == priceId) return e.key;
    }
    return null;
  }

  Future<Map<String, dynamic>> _post(String path, Map<String, String> form) async {
    final res = await _client.post(
      Uri.parse('$apiBase$path'),
      headers: {'authorization': 'Bearer $secretKey', 'content-type': 'application/x-www-form-urlencoded'},
      body: form,
    );
    final body = jsonDecode(res.body) as Map<String, dynamic>;
    if (res.statusCode >= 300) {
      throw StripeException((body['error'] as Map?)?['message'] as String? ?? 'stripe ${res.statusCode}');
    }
    return body;
  }

  /// Checkout-munkamenet; az előfizetés `subscription`, a csomag `payment` módban.
  Future<String> createCheckoutSession({
    required String userId,
    required String productId,
    required bool subscription,
    required String successUrl,
    required String cancelUrl,
    String? customerId,
    String? email,
  }) async {
    final price = prices[productId];
    if (price == null) throw StripeException('no Stripe price for $productId');
    final form = <String, String>{
      'mode': subscription ? 'subscription' : 'payment',
      'line_items[0][price]': price,
      'line_items[0][quantity]': '1',
      'client_reference_id': userId,
      'metadata[product_id]': productId,
      'metadata[user_id]': userId,
      'success_url': successUrl,
      'cancel_url': cancelUrl,
      'allow_promotion_codes': 'true',
      'customer': ?customerId,
      if (customerId == null && email != null) 'customer_email': email,
      if (!subscription && customerId == null) 'customer_creation': 'always',
      if (subscription) 'subscription_data[metadata][user_id]': userId,
      if (subscription) 'subscription_data[metadata][product_id]': productId,
    };
    final s = await _post('/checkout/sessions', form);
    return s['url'] as String;
  }

  /// Ügyfélportál (csomagváltás, lemondás, számlák, kártyacsere).
  Future<String> createPortalSession({required String customerId, required String returnUrl}) async {
    final s = await _post('/billing_portal/sessions', {'customer': customerId, 'return_url': returnUrl});
    return s['url'] as String;
  }

  /// Előfizetés azonnali lemondása (fióktörléskor, hogy ne terheljük tovább a kártyát).
  Future<void> cancelSubscription(String subscriptionId) async {
    final res = await _client.delete(
      Uri.parse('$apiBase/subscriptions/$subscriptionId'),
      headers: {'authorization': 'Bearer $secretKey'},
    );
    if (res.statusCode >= 300 && res.statusCode != 404) {
      final body = jsonDecode(res.body) as Map<String, dynamic>;
      throw StripeException((body['error'] as Map?)?['message'] as String? ?? 'stripe ${res.statusCode}');
    }
  }

  /// `Stripe-Signature: t=…,v1=…` ellenőrzése (HMAC-SHA256, 5 perces tűréssel).
  bool verifySignature(String payload, String? header, {DateTime? now}) {
    if (header == null || webhookSecret.isEmpty) return false;
    String? t;
    final v1 = <String>[];
    for (final part in header.split(',')) {
      final kv = part.split('=');
      if (kv.length != 2) continue;
      if (kv[0] == 't') t = kv[1];
      if (kv[0] == 'v1') v1.add(kv[1]);
    }
    final ts = int.tryParse(t ?? '');
    if (ts == null || v1.isEmpty) return false;
    final age = (now ?? DateTime.now()).millisecondsSinceEpoch ~/ 1000 - ts;
    if (age.abs() > 300) return false;
    final expected = Hmac(sha256, utf8.encode(webhookSecret)).convert(utf8.encode('$t.$payload')).toString();
    return v1.any((sig) => _constantTimeEquals(sig, expected));
  }

  static bool _constantTimeEquals(String a, String b) {
    if (a.length != b.length) return false;
    var diff = 0;
    for (var i = 0; i < a.length; i++) {
      diff |= a.codeUnitAt(i) ^ b.codeUnitAt(i);
    }
    return diff == 0;
  }

  /// Tesztekhez: aláírt fejléc egy payloadhoz.
  String signForTest(String payload, DateTime at) {
    final t = at.millisecondsSinceEpoch ~/ 1000;
    final sig = Hmac(sha256, utf8.encode(webhookSecret)).convert(utf8.encode('$t.$payload')).toString();
    return 't=$t,v1=$sig';
  }
}

class StripeException implements Exception {
  StripeException(this.message);
  final String message;
  @override
  String toString() => 'StripeException: $message';
}
