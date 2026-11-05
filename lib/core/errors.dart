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

  /// Az árfolyam-szolgáltató épp nem érhető el (a szerver 502/503/504-et ad): átmeneti,
  /// nem a felhasználó internetkapcsolata a hibás.
  marketUnavailable,
  marketRateLimited,
  marketHttp,
  marketBadResponse,
  noQuote,
  noProfile,
  demoUnsupportedSymbol,
  noResults,
  aiNotConfigured,
  aiUnreachable,

  /// Az AI-szolgáltató épp nem érhető el (a szerver 502/503/504-et ad): átmeneti.
  aiUnavailable,
  aiHttp,
  aiRefused,
  aiBadResponse,

  /// Az AI válasza a hosszkorláton megszakadt (nem teljes; a keret nem fogyott).
  aiTruncated,
  clipboardNoImage,

  /// A kép nem olvasható (ismeretlen formátum vagy sérült fájl).
  imageUnsupported,

  /// Túl sok kérés rövid idő alatt (a szerver vagy az AI-szolgáltatás korlátja).
  rateLimited,
  chartUnavailable,
  statementsUnavailable,
  quotaExceeded,
  trialExpired,
  noPlan,

  /// Van még keret, de kevesebb, mint amennyit a választott hossz fogyaszt.
  /// A [AppException.detail] formátuma: `szükséges/maradt`, pl. `2/1`.
  notEnoughCredits,

  /// Zárt előzetes: elfogyott a meghívókód mai elemzéskerete.
  previewDailyLimit,

  /// Elfogyott a mai keret az elemzéssel kapcsolatos kérdésekre.
  askLimit,
}

/// A szerver (vagy egy átjáró) szerint a fölöttes szolgáltató (AI, árfolyam) épp nem érhető el
/// (502/503/504): átmeneti, nem az app és nem a felhasználó kapcsolatának hibája.
bool isServiceOutage(int status) => status == 502 || status == 503 || status == 504;

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

class AnalysisException extends AppException {
  const AnalysisException(super.code, {super.detail, super.cause});
}
