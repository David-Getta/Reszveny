import 'store_apis.dart';

/// Vásárlás-ellenőrzés a bolt felé: fejlesztői módban mindent elfogad, éles
/// módban az App Store Server API-t és a Play Developer API-t kérdezi.
abstract interface class PurchaseVerifier {
  /// Az ellenőrzött vásárlás, ha érvényes; `null`, ha nem.
  Future<VerifiedPurchase?> verify({
    required String platform,
    required String productId,
    required String verificationData,
  });
}

/// Egy ellenőrzött vásárlás: a tranzakció (időszakonként új) azonosítója, és a
/// vásárlást a későbbi bolti értesítésekhez kötő kulcs (App Store: eredeti
/// tranzakció; Google Play: vásárlási token).
class VerifiedPurchase {
  const VerifiedPurchase(this.transactionId, {this.linkKey, this.expiresAt});

  final String transactionId;
  final String? linkKey;

  /// Előfizetésnél a bolt szerinti időszak vége (meddig van kifizetve).
  final DateTime? expiresAt;
}

/// Fejlesztéshez: elfogad, a tranzakció-azonosító a bizonylat hash-e.
class DevVerifier implements PurchaseVerifier {
  const DevVerifier();

  @override
  Future<VerifiedPurchase?> verify({
    required String platform,
    required String productId,
    required String verificationData,
  }) async {
    if (verificationData.isEmpty) return null;
    return VerifiedPurchase('dev-${verificationData.hashCode.toRadixString(16)}');
  }
}

/// Éles: App Store Server API (StoreKit 2 JWS) és Google Play Developer API.
/// Beállítás: APPLE_ISSUER_ID, APPLE_KEY_ID, APPLE_PRIVATE_KEY, APPLE_BUNDLE_ID,
/// GOOGLE_SERVICE_ACCOUNT_JSON, GOOGLE_PACKAGE_NAME. Amelyik bolt nincs
/// beállítva, annak a vásárlását elutasítja. A böngészős fizetés (Stripe) nem
/// ezen megy át, hanem a webhookon.
class StoreVerifier implements PurchaseVerifier {
  const StoreVerifier({this.apple, this.google});

  final AppleStoreApi? apple;
  final GooglePlayApi? google;

  @override
  Future<VerifiedPurchase?> verify({
    required String platform,
    required String productId,
    required String verificationData,
  }) async {
    if (verificationData.isEmpty) return null;
    return switch (platform) {
      'app_store' => apple?.verify(productId: productId, signedTransaction: verificationData),
      'google_play' => google?.verify(productId: productId, purchaseToken: verificationData),
      _ => null,
    };
  }
}
