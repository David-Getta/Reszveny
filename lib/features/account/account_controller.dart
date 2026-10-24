import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/backend/backend_client.dart';
import '../billing/entitlement_service.dart';

/// Fiók, mint a Claude-nál: belépés e-mail címmel és egyszer használatos kóddal.
/// Az előfizetés a fiókhoz tartozik, így minden eszközön ugyanaz.
class AccountController extends ChangeNotifier {
  AccountController({required this.backend, required this.entitlements, String? storedEmail}) : _email = storedEmail;

  static const _emailKey = 'account_email';

  final BackendClient backend;
  final EntitlementService entitlements;

  String? _email;

  /// A bejelentkezett fiók e-mail címe, vagy `null`.
  String? get email => _email;
  bool get isSignedIn => _email != null && _email!.isNotEmpty;

  static Future<String?> loadStoredEmail() async {
    try {
      return (await SharedPreferences.getInstance()).getString(_emailKey);
    } catch (_) {
      return null;
    }
  }

  /// Belépés, kilépés és törlés lépteti: egy közben futó [refresh] régi (másik
  /// fiókhoz tartozó) válasza ilyenkor eldobódik.
  int _generation = 0;

  /// A fiókváltások számlálója: egy hosszabb kérés (pl. vásárlás ellenőrzése) ebből
  /// látja, hogy a válasza még ehhez a fiókhoz tartozik-e.
  int get generation => _generation;

  /// A szerver szerinti fiók- és jogosultság-állapot átvétele.
  Future<void> refresh() async {
    final gen = _generation;
    final a = await backend.account();
    if (gen != _generation) return;
    await entitlements.replace(a.entitlements);
    await _setEmail(a.email);
  }

  Future<void> startLogin(String email) => backend.startEmailLogin(email);

  /// Egy barát ajánlókódjának beváltása: az extra elemzések azonnal látszanak.
  /// Hibánál [BackendException] (`unknown_code`, `own_code`, `already_redeemed`, `sign_in_required`, `code_full`).
  Future<void> redeemReferral(String code) async {
    final gen = _generation;
    final granted = await backend.redeemReferral(code);
    // Közben kiléptek: a jóváírás a régi fiókban van, ez a készülék nem kapja meg.
    if (gen == _generation) await entitlements.replace(granted);
  }

  /// Kód ellenőrzése; hibánál [BackendException]-t dob (`invalid_code`).
  Future<void> verify(String email, String code) async {
    final a = await backend.verifyEmailLogin(email, code);
    _generation++;
    await entitlements.replace(a.entitlements);
    await _setEmail(a.email);
  }

  Future<void> signOut() async {
    await backend.logout();
    final gen = ++_generation;
    await _setEmail(null);
    // A fiók csomagja nem marad a készüléken (hálózat nélkül sem); az új névtelen
    // fiók állapota utána jön.
    await entitlements.replace(const EntitlementState());
    try {
      final a = await backend.account();
      if (gen == _generation) await entitlements.replace(a.entitlements);
    } catch (e) {
      debugPrint('Jogosultság frissítése kijelentkezés után nem sikerült: $e');
    }
  }

  /// A szerver már nem ismeri a belépést (a fiókot egy másik eszközön törölték, vagy
  /// a munkamenet lejárt): a készülék kijelentkezett állapotba kerül, a fizetős
  /// csomag sem marad rajta.
  Future<void> sessionLost() async {
    if (!isSignedIn) return;
    final gen = ++_generation;
    await _setEmail(null);
    await entitlements.replace(const EntitlementState());
    try {
      final a = await backend.account();
      if (gen == _generation) await entitlements.replace(a.entitlements);
    } catch (e) {
      debugPrint('Jogosultság frissítése a munkamenet vége után nem sikerült: $e');
    }
  }

  /// A fiók végleges törlése a szerveren; a készüléken kijelentkezik, és a
  /// jogosultság üres lesz (a fel nem használt elemzések elvesznek).
  Future<void> deleteAccount() async {
    await backend.deleteAccount();
    _generation++;
    await _setEmail(null);
    await entitlements.replace(const EntitlementState());
  }

  Future<void> _setEmail(String? e) async {
    _email = (e == null || e.isEmpty) ? null : e;
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      if (_email == null) {
        await prefs.remove(_emailKey);
      } else {
        await prefs.setString(_emailKey, _email!);
      }
    } catch (_) {
      // A mentés hibája nem akadályozza a működést.
    }
  }
}
