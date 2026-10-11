import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/billing/entitlement_service.dart';

/// A backend hibája (HTTP-státusz és a szerver hibakódja, pl. `unauthorized`).
class BackendException implements Exception {
  const BackendException(this.status, this.code, [this.message]);

  final int status;
  final String code;
  final String? message;

  @override
  String toString() => 'BackendException($status $code${message == null ? '' : ': $message'})';
}

/// A StockLens backend kliense: névtelen fiók (token), jogosultság-lekérés,
/// vásárlás-ellenőrzés, és egy hitelesített [http.Client] a továbbított
/// Anthropic/Finnhub hívásokhoz.
///
/// A token a készüléken marad (`SharedPreferences`); első használatkor a kliens
/// automatikusan létrehozza a fiókot (`POST /v1/auth/anonymous`), ami egyben a
/// próbaidőt is elindítja a szerveren.
class BackendClient {
  BackendClient({required String baseUrl, http.Client? inner, Future<String?> Function()? tokenLoader})
    : baseUrl = baseUrl.endsWith('/') ? baseUrl.substring(0, baseUrl.length - 1) : baseUrl,
      _inner = inner ?? http.Client(),
      _tokenLoader = tokenLoader ?? (() => _readStored(_tokenKey));

  static const _tokenKey = 'backend_token';
  static const _deviceKey = 'backend_device_id';

  final String baseUrl;
  final http.Client _inner;
  final Future<String?> Function() _tokenLoader;

  String? _token;
  Future<String>? _pendingToken;

  /// 401 után igaz: a mentett tokent nem próbáljuk újra, új fiók kell.
  bool _storedRejected = false;

  /// Hitelesített kliens: minden kéréshez hozzáteszi a `Authorization` fejlécet,
  /// és hiányzó token esetén előbb fiókot nyit.
  late final http.Client authenticated = _AuthenticatedClient(this);

  /// A jelenlegi token, ha már van (tesztekhez, diagnosztikához).
  String? get token => _token;

  /// Visszaadja a tokent; ha nincs, létrehozza a névtelen fiókot. Egyidejű
  /// hívások ugyanazt a folyamatban lévő kérést várják meg.
  Future<String> ensureToken() {
    final t = _token;
    if (t != null) return Future.value(t);
    return _pendingToken ??= _obtainToken().whenComplete(() => _pendingToken = null);
  }

  Future<String> _obtainToken() async {
    final stored = _storedRejected ? null : await _tokenLoader();
    if (stored != null && stored.isNotEmpty) return _token = stored;
    final deviceId = await _deviceId();
    final res = await _inner
        .post(
          Uri.parse('$baseUrl/v1/auth/anonymous'),
          headers: const {'content-type': 'application/json'},
          body: jsonEncode({'device_id': deviceId}),
        )
        .timeout(const Duration(seconds: 20));
    final body = _decode(res);
    final token = body['token'] as String?;
    if (token == null || token.isEmpty) throw const BackendException(500, 'bad_response', 'missing token');
    _token = token;
    _storedRejected = false;
    await _writeStored(_tokenKey, token);
    return token;
  }

  /// Elfelejti a tokent (pl. 401 után), hogy a következő hívás új fiókot nyisson.
  Future<void> resetToken() async {
    _token = null;
    _storedRejected = true;
    await _writeStored(_tokenKey, null);
  }

  /// `GET /v1/me` → a szerver szerinti jogosultság.
  Future<EntitlementState> me() async {
    final res = await _authorized((h) => _inner.get(Uri.parse('$baseUrl/v1/me'), headers: h));
    return _entitlements(_decode(res));
  }

  /// `POST /v1/purchases/verify` → a szerver ellenőrzi a bolti bizonylatot és
  /// jóváírja a csomagot; a válasz a friss jogosultság.
  Future<EntitlementState> verifyPurchase({
    required String platform,
    required String productId,
    required String verificationData,
  }) async {
    final res = await _authorized(
      (h) => _inner.post(
        Uri.parse('$baseUrl/v1/purchases/verify'),
        headers: {...h, 'content-type': 'application/json'},
        body: jsonEncode({'platform': platform, 'product_id': productId, 'verification_data': verificationData}),
      ),
    );
    return _entitlements(_decode(res));
  }

  /// Hitelesített kérés; 401-re egyszer új fiókkal újrapróbálja.
  Future<http.Response> _authorized(Future<http.Response> Function(Map<String, String> headers) send) async {
    var res = await send(await authHeaders()).timeout(const Duration(seconds: 30));
    if (res.statusCode == 401) {
      await resetToken();
      res = await send(await authHeaders()).timeout(const Duration(seconds: 30));
    }
    return res;
  }

  Future<Map<String, String>> authHeaders() async => {'authorization': 'Bearer ${await ensureToken()}'};

  static EntitlementState _entitlements(Map<String, dynamic> body) {
    final e = body['entitlements'];
    if (e is! Map) throw const BackendException(500, 'bad_response', 'missing entitlements');
    return EntitlementState.fromJson(e.cast<String, dynamic>());
  }

  static Map<String, dynamic> _decode(http.Response res) {
    Map<String, dynamic>? body;
    try {
      body = (jsonDecode(res.body) as Map).cast<String, dynamic>();
    } catch (_) {}
    if (res.statusCode < 200 || res.statusCode >= 300) {
      throw BackendException(
        res.statusCode,
        body?['error'] as String? ?? 'http_${res.statusCode}',
        body?['message'] as String?,
      );
    }
    if (body == null) throw const BackendException(500, 'bad_response');
    return body;
  }

  /// Hibatörzsből a szerver hibakódja (`quota_exceeded`, `trial_expired`, …).
  static String? errorCode(String body) {
    try {
      return (jsonDecode(body) as Map)['error'] as String?;
    } catch (_) {
      return null;
    }
  }

  Future<String> _deviceId() async {
    final stored = await _readStored(_deviceKey);
    if (stored != null && stored.isNotEmpty) return stored;
    final id = 'd_${DateTime.now().microsecondsSinceEpoch.toRadixString(36)}_${_token.hashCode.toRadixString(36)}';
    await _writeStored(_deviceKey, id);
    return id;
  }

  static Future<String?> _readStored(String key) async {
    try {
      return (await SharedPreferences.getInstance()).getString(key);
    } catch (_) {
      return null;
    }
  }

  static Future<void> _writeStored(String key, String? value) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      if (value == null) {
        await prefs.remove(key);
      } else {
        await prefs.setString(key, value);
      }
    } catch (_) {
      // A mentés hibája nem akadályozza a működést.
    }
  }
}

/// `http.Client`, ami a backend tokenjét teszi minden kérésre.
class _AuthenticatedClient extends http.BaseClient {
  _AuthenticatedClient(this._backend);

  final BackendClient _backend;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.headers.addAll(await _backend.authHeaders());
    return _backend._inner.send(request);
  }
}
