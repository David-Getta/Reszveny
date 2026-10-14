import 'dart:convert';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:http/http.dart' as http;

import 'plans.dart';

/// Egy JWS / JWT középső részének (payload) dekódolása aláírás-ellenőrzés
/// nélkül. Csak akkor bízunk meg benne, ha közvetlenül a bolttól (TLS-en át)
/// kaptuk; az apptól érkezőből csak az azonosítót vesszük ki.
Map<String, dynamic>? jwsPayload(String jws) {
  final parts = jws.split('.');
  if (parts.length != 3) return null;
  try {
    final decoded = utf8.decode(base64Url.decode(base64Url.normalize(parts[1])));
    return (jsonDecode(decoded) as Map).cast<String, dynamic>();
  } catch (_) {
    return null;
  }
}

/// App Store Server API: a StoreKit 2 tranzakció (JWS) azonosítóját az
/// Apple-től kérdezzük vissza, és az ő válaszát ellenőrizzük (app, termék,
/// visszavonás, előfizetésnél a lejárat). Előbb az éles, 404-re a sandbox
/// (TestFlight) környezetet kérdezi.
class AppleStoreApi {
  AppleStoreApi({
    required this.issuerId,
    required this.keyId,
    required String privateKeyPem,
    required this.bundleId,
    http.Client? client,
    DateTime Function()? clock,
  }) : _key = ECPrivateKey(privateKeyPem),
       _client = client ?? http.Client(),
       _clock = clock ?? DateTime.now;

  final String issuerId;
  final String keyId;
  final String bundleId;
  final ECPrivateKey _key;
  final http.Client _client;
  final DateTime Function() _clock;

  static const production = 'https://api.storekit.itunes.apple.com';
  static const sandbox = 'https://api.storekit-sandbox.itunes.apple.com';

  String? _token;
  DateTime? _tokenUntil;

  /// ES256-tal aláírt hívó-token (legfeljebb 60 percig érvényes; 20 percre kérjük).
  String _bearer() {
    final now = _clock();
    if (_token != null && _tokenUntil != null && now.isBefore(_tokenUntil!)) return _token!;
    _token = JWT(
      {'iss': issuerId, 'aud': 'appstoreconnect-v1', 'bid': bundleId},
      header: {'kid': keyId},
    ).sign(_key, algorithm: JWTAlgorithm.ES256, expiresIn: const Duration(minutes: 20));
    _tokenUntil = now.add(const Duration(minutes: 15));
    return _token!;
  }

  /// A tranzakció azonosítója, ha a vásárlás érvényes; különben `null`.
  Future<String?> verify({required String productId, required String signedTransaction}) async {
    final claimed = jwsPayload(signedTransaction);
    final id = claimed?['transactionId']?.toString();
    if (id == null || !RegExp(r'^\d{1,32}$').hasMatch(id)) return null;
    for (final base in const [production, sandbox]) {
      final res = await _client
          .get(Uri.parse('$base/inApps/v1/transactions/$id'), headers: {'authorization': 'Bearer ${_bearer()}'})
          .timeout(const Duration(seconds: 20));
      if (res.statusCode == 404) continue;
      if (res.statusCode != 200) throw StoreApiException('apple_${res.statusCode}', res.body);
      final info = jwsPayload((jsonDecode(res.body) as Map)['signedTransactionInfo'] as String? ?? '');
      if (info == null) return null;
      return _accept(info, productId) ? info['transactionId'].toString() : null;
    }
    return null;
  }

  bool _accept(Map<String, dynamic> t, String productId) {
    if (t['bundleId'] != bundleId || t['productId'] != productId) return false;
    if (t['revocationDate'] != null) return false;
    final expires = t['expiresDate'];
    if (PlanSpec.byProductId(productId) != null) {
      // Előfizetés: csak ha még tart az időszak.
      if (expires is! num) return false;
      return DateTime.fromMillisecondsSinceEpoch(expires.toInt(), isUtc: true).isAfter(_clock().toUtc());
    }
    return true;
  }
}

/// Google Play Developer API: szolgáltatásfiókkal (JSON-kulcs) kérünk
/// hozzáférési tokent, majd lekérdezzük a vásárlási tokent: előfizetésnél
/// (`subscriptionsv2`) aktív vagy türelmi időben lévő állapot és lejárat, csomagnál
/// (`products`) megvásárolt állapot kell.
class GooglePlayApi {
  GooglePlayApi({
    required String serviceAccountJson,
    required this.packageName,
    http.Client? client,
    DateTime Function()? clock,
  }) : _account = (jsonDecode(serviceAccountJson) as Map).cast<String, dynamic>(),
       _client = client ?? http.Client(),
       _clock = clock ?? DateTime.now {
    _key = RSAPrivateKey(_account['private_key'] as String);
  }

  final String packageName;
  final Map<String, dynamic> _account;
  late final RSAPrivateKey _key;
  final http.Client _client;
  final DateTime Function() _clock;

  static const base = 'https://androidpublisher.googleapis.com/androidpublisher/v3/applications';

  String? _token;
  DateTime? _tokenUntil;

  Future<String> _accessToken() async {
    final now = _clock();
    if (_token != null && _tokenUntil != null && now.isBefore(_tokenUntil!)) return _token!;
    final tokenUri = _account['token_uri'] as String? ?? 'https://oauth2.googleapis.com/token';
    final assertion = JWT(
      {'scope': 'https://www.googleapis.com/auth/androidpublisher'},
      issuer: _account['client_email'] as String,
      audience: Audience.one(tokenUri),
      header: {'kid': ?_account['private_key_id']},
    ).sign(_key, algorithm: JWTAlgorithm.RS256, expiresIn: const Duration(hours: 1));
    final res = await _client
        .post(
          Uri.parse(tokenUri),
          body: {'grant_type': 'urn:ietf:params:oauth:grant-type:jwt-bearer', 'assertion': assertion},
        )
        .timeout(const Duration(seconds: 20));
    if (res.statusCode != 200) throw StoreApiException('google_token_${res.statusCode}', res.body);
    final j = jsonDecode(res.body) as Map;
    _token = j['access_token'] as String;
    final ttl = (j['expires_in'] as num?)?.toInt() ?? 3600;
    _tokenUntil = now.add(Duration(seconds: ttl - 120));
    return _token!;
  }

  /// A rendelés azonosítója, ha a vásárlás érvényes; különben `null`.
  Future<String?> verify({required String productId, required String purchaseToken}) async {
    if (purchaseToken.isEmpty || purchaseToken.length > 4096) return null;
    final token = Uri.encodeComponent(purchaseToken);
    final isSubscription = PlanSpec.byProductId(productId) != null;
    final url = isSubscription
        ? '$base/$packageName/purchases/subscriptionsv2/tokens/$token'
        : '$base/$packageName/purchases/products/${Uri.encodeComponent(productId)}/tokens/$token';
    final res = await _client
        .get(Uri.parse(url), headers: {'authorization': 'Bearer ${await _accessToken()}'})
        .timeout(const Duration(seconds: 20));
    if (res.statusCode == 404 || res.statusCode == 400 || res.statusCode == 410) return null;
    if (res.statusCode != 200) throw StoreApiException('google_${res.statusCode}', res.body);
    final j = (jsonDecode(res.body) as Map).cast<String, dynamic>();
    if (isSubscription) {
      const live = {'SUBSCRIPTION_STATE_ACTIVE', 'SUBSCRIPTION_STATE_IN_GRACE_PERIOD'};
      if (!live.contains(j['subscriptionState'])) return null;
      final now = _clock().toUtc();
      final items = (j['lineItems'] as List? ?? const []).cast<Map>();
      final current = items.any((i) {
        final until = DateTime.tryParse('${i['expiryTime']}');
        return i['productId'] == productId && until != null && until.isAfter(now);
      });
      if (!current) return null;
      // Megújításonként új rendelés-azonosító (GPA.…..0, …..1), így minden időszak egyszer írható jóvá.
      return j['latestOrderId'] as String? ?? 'gp-$purchaseToken';
    }
    if (j['purchaseState'] != 0) return null;
    return j['orderId'] as String? ?? 'gp-$purchaseToken';
  }
}

class StoreApiException implements Exception {
  const StoreApiException(this.code, [this.detail]);

  final String code;
  final String? detail;

  @override
  String toString() => 'StoreApiException($code)';
}
