import 'dart:convert';

import 'package:flutter/foundation.dart';
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

/// A fiók a szerver szerint: e-mail (ha be van jelentkezve) és jogosultság.
class Account {
  const Account({this.email, required this.entitlements});

  final String? email;
  final EntitlementState entitlements;

  bool get isSignedIn => email != null && email!.isNotEmpty;
}

/// Zárt előzetes: miért nem enged be a szerver (meghívókód kell / hibás /
/// lejárt / már túl sok eszközön használják).
enum InviteProblem { required, invalid, expired, deviceLimit }

/// Kinek szól az előzetes (a szerver szerint): név a vízjelhez és lejárat.
@immutable
class InviteInfo {
  const InviteInfo({required this.label, this.expires});

  final String label;

  /// Az utolsó érvényes nap (ÉÉÉÉ-HH-NN), ha van.
  final String? expires;

  static InviteInfo? fromJson(Object? j) {
    if (j is! Map || j['label'] is! String) return null;
    return InviteInfo(label: j['label'] as String, expires: j['expires'] as String?);
  }

  @override
  bool operator ==(Object other) => other is InviteInfo && other.label == label && other.expires == expires;

  @override
  int get hashCode => Object.hash(label, expires);
}

/// A WhatStock backend kliense: névtelen fiók (token), jogosultság-lekérés,
/// vásárlás-ellenőrzés, és egy hitelesített [http.Client] a továbbított
/// Anthropic/Finnhub hívásokhoz.
///
/// A token a készüléken marad (`SharedPreferences`); első használatkor a kliens
/// automatikusan létrehozza a fiókot (`POST /v1/auth/anonymous`), ami egyben a
/// próbaidőt is elindítja a szerveren.
class BackendClient {
  BackendClient({required String baseUrl, http.Client? inner, Future<String?> Function()? tokenLoader})
    : baseUrl = baseUrl.endsWith('/') ? baseUrl.substring(0, baseUrl.length - 1) : baseUrl,
      _raw = inner ?? http.Client(),
      _tokenLoader = tokenLoader ?? (() => _readStored(_tokenKey));

  static const _tokenKey = 'backend_token';
  static const _deviceKey = 'backend_device_id';
  static const _inviteKey = 'backend_invite';
  static const inviteHeader = 'x-whatstock-invite';

  final String baseUrl;
  final http.Client _raw;
  final Future<String?> Function() _tokenLoader;

  /// Minden kérés ezen megy: zárt előzetesben a meghívókódot is elküldi.
  late final http.Client _inner = _InviteClient(this, _raw);

  /// Nem null, ha a szerver meghívókód miatt nem enged be: ilyenkor az app a
  /// meghívókód-képernyőt mutatja.
  final ValueNotifier<InviteProblem?> inviteProblem = ValueNotifier(null);

  /// Kinek szól ez a példány (vízjel); null, ha a szerver nyitott.
  final ValueNotifier<InviteInfo?> invite = ValueNotifier(null);

  String? _inviteCode;
  bool _inviteLoaded = false;

  Future<String?> _loadInvite() async {
    if (!_inviteLoaded) {
      _inviteCode = await _readStored(_inviteKey);
      _inviteLoaded = true;
    }
    return _inviteCode;
  }

  /// A beírt meghívókód mentése és kipróbálása: siker esetén a szerver
  /// visszaadja, kinek szól; hibás kódnál [BackendException] (`invite_invalid`…).
  Future<void> submitInvite(String code) async {
    _inviteCode = code.trim().toUpperCase();
    _inviteLoaded = true;
    await _writeStored(_inviteKey, _inviteCode);
    await account();
    inviteProblem.value = null;
  }

  static InviteProblem? inviteProblemFor(String? code) => switch (code) {
    'invite_required' => InviteProblem.required,
    'invite_invalid' => InviteProblem.invalid,
    'invite_expired' => InviteProblem.expired,
    'invite_device_limit' => InviteProblem.deviceLimit,
    _ => null,
  };

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
    invite.value = InviteInfo.fromJson(body['invite']);
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
  Future<EntitlementState> me() async => (await account()).entitlements;

  /// `GET /v1/me` → fiók (e-mail) és jogosultság.
  Future<Account> account() async {
    final res = await _authorized((h) => _inner.get(Uri.parse('$baseUrl/v1/me'), headers: h));
    final body = _decode(res);
    invite.value = InviteInfo.fromJson(body['invite']);
    return Account(email: body['email'] as String?, entitlements: _entitlements(body));
  }

  /// Belépőkód kérése e-mailben (`POST /v1/auth/email/start`).
  Future<void> startEmailLogin(String email) async {
    final res = await _inner
        .post(
          Uri.parse('$baseUrl/v1/auth/email/start'),
          headers: const {'content-type': 'application/json'},
          body: jsonEncode({'email': email.trim()}),
        )
        .timeout(const Duration(seconds: 30));
    _decode(res);
  }

  /// A kód ellenőrzése; siker esetén a fiók tokenjét menti (az előfizetés
  /// innentől minden eszközön ugyanaz).
  Future<Account> verifyEmailLogin(String email, String code) async {
    final res = await _inner
        .post(
          Uri.parse('$baseUrl/v1/auth/email/verify'),
          headers: {...await authHeaders(), 'content-type': 'application/json'},
          body: jsonEncode({'email': email.trim(), 'code': code.trim()}),
        )
        .timeout(const Duration(seconds: 30));
    final body = _decode(res);
    final token = body['token'] as String?;
    if (token != null && token.isNotEmpty) {
      _token = token;
      _storedRejected = false;
      await _writeStored(_tokenKey, token);
    }
    return Account(email: body['email'] as String?, entitlements: _entitlements(body));
  }

  /// Kijelentkezés: a token visszavonása; a következő hívás új, névtelen
  /// munkamenetet nyit.
  Future<void> logout() async {
    try {
      await _inner.post(Uri.parse('$baseUrl/v1/auth/logout'), headers: await authHeaders());
    } catch (_) {
      // Hálózati hiba esetén is kijelentkeztetjük az eszközt.
    }
    await resetToken();
  }

  /// `DELETE /v1/account`: a fiók és a szerveren tárolt adatok törlése (a böngészős
  /// előfizetést a szerver lemondja). Nem az [_authorized] úton megy, mert az 401-re
  /// új fiókot nyitna – itt a 401 azt jelenti, hogy a fiók már nincs meg. Utána a
  /// token elfelejtődik; a következő hívás új, névtelen fiókot nyit.
  Future<void> deleteAccount() async {
    final res = await _inner
        .delete(Uri.parse('$baseUrl/v1/account'), headers: await authHeaders())
        .timeout(const Duration(seconds: 30));
    if (res.statusCode != 401) _decode(res);
    await resetToken();
  }

  /// Böngészős fizetés (Stripe Checkout) címe. 403 `login_required`, ha nincs fiók.
  Future<String> checkoutUrl(String productId) async {
    final res = await _authorized(
      (h) => _inner.post(
        Uri.parse('$baseUrl/v1/billing/checkout'),
        headers: {...h, 'content-type': 'application/json'},
        body: jsonEncode({'product_id': productId}),
      ),
    );
    return _decode(res)['url'] as String;
  }

  /// Az előfizetés kezelése a Stripe ügyfélportálján (csomagváltás, lemondás, számlák).
  Future<String> portalUrl() async {
    final res = await _authorized((h) => _inner.post(Uri.parse('$baseUrl/v1/billing/portal'), headers: h));
    return _decode(res)['url'] as String;
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

/// Minden backend-kérésre ráteszi a meghívókódot (ha van), és ha a szerver
/// meghívókód miatt utasítja el (403 `invite_*`), jelzi az appnak.
class _InviteClient extends http.BaseClient {
  _InviteClient(this._backend, this._inner);

  final BackendClient _backend;
  final http.Client _inner;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final code = await _backend._loadInvite();
    if (code != null && code.isNotEmpty) request.headers[BackendClient.inviteHeader] = code;
    final res = await _inner.send(request);
    if (res.statusCode != 403) return res;
    // A törzset beolvassuk a hibakódért, majd változatlanul továbbadjuk.
    final bytes = await res.stream.toBytes();
    final problem = BackendClient.inviteProblemFor(BackendClient.errorCode(utf8.decode(bytes, allowMalformed: true)));
    if (problem != null) _backend.inviteProblem.value = problem;
    return http.StreamedResponse(
      Stream.value(bytes),
      res.statusCode,
      contentLength: bytes.length,
      request: res.request,
      headers: res.headers,
      reasonPhrase: res.reasonPhrase,
    );
  }

  @override
  void close() => _inner.close();
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
