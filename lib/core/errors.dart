/// Hibakódok: a szolgáltatások ezeket dobják, a felület fordítja le a
/// felhasználó nyelvére (lásd `errorMessage` a `l10n/error_messages.dart`-ban).
enum AppErrorCode {
  missingAnthropicKey,
  recognitionUnreachable,
  recognitionHttp,
  recognitionRefused,
  recognitionTruncated,
  recognitionBadResponse,
  recognitionEmpty,
  missingFinnhubKey,
  marketUnreachable,
  marketRateLimited,
  marketHttp,
  marketBadResponse,
  noQuote,
  noProfile,
  demoUnsupportedSymbol,
  noResults,
}

/// Az app saját hibatípusa. A [detail] opcionális, nyelvfüggetlen kiegészítés
/// (pl. HTTP státuszkód vagy ticker), amit az üzenetbe helyettesítünk.
class AppException implements Exception {
  const AppException(this.code, {this.detail, this.cause});

  final AppErrorCode code;
  final String? detail;
  final Object? cause;

  @override
  String toString() => 'AppException(${code.name}${detail == null ? '' : ': $detail'})';
}

class RecognitionException extends AppException {
  const RecognitionException(super.code, {super.detail, super.cause});
}

class MarketDataException extends AppException {
  const MarketDataException(super.code, {super.detail, super.cause});
}
