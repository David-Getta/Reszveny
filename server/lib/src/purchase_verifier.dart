/// Vásárlás-ellenőrzés a bolt felé. Éles módban az App Store Server API-t
/// (JWS-aláírt tranzakció) és a Play Developer API-t kell hívni; itt a
/// szerkezet és a fejlesztői („bármit elfogad”) megvalósítás van.
abstract interface class PurchaseVerifier {
  /// Visszaadja a tranzakció azonosítóját, ha a vásárlás érvényes; `null` ha nem.
  Future<String?> verify({required String platform, required String productId, required String verificationData});
}

/// Fejlesztéshez: elfogad, a tranzakció-azonosító a bizonylat hash-e.
class DevVerifier implements PurchaseVerifier {
  const DevVerifier();

  @override
  Future<String?> verify({
    required String platform,
    required String productId,
    required String verificationData,
  }) async {
    if (verificationData.isEmpty) return null;
    return 'dev-${verificationData.hashCode.toRadixString(16)}';
  }
}

/// Éles: App Store Server API (StoreKit 2 JWS) és Play Developer API.
/// Beállítás: APPLE_ISSUER_ID, APPLE_KEY_ID, APPLE_PRIVATE_KEY, GOOGLE_SERVICE_ACCOUNT_JSON.
/// Ennek megírása a bolti fiókok létrejötte után következik (vagy RevenueCat).
class StoreVerifier implements PurchaseVerifier {
  const StoreVerifier();

  @override
  Future<String?> verify({
    required String platform,
    required String productId,
    required String verificationData,
  }) async {
    throw UnimplementedError('A bolti ellenőrzés a bolti fiókok beállítása után készül el (docs/ELOFIZETES.md).');
  }
}
