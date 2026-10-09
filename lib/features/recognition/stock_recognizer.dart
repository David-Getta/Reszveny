import '../../core/models/stock_candidate.dart';
import '../capture/capture_service.dart';

/// A felismerés eredménye: jelöltek megbízhatóság szerint csökkenő sorban,
/// plusz a kép nyers leírása, hogy a felhasználó ellenőrizhesse.
class RecognitionResult {
  const RecognitionResult({required this.candidates, this.rawText, this.summary});

  final List<StockCandidate> candidates;

  /// A képről kiolvasott szöveg (OCR vagy a modell átirata).
  final String? rawText;

  /// Egy mondat arról, mit látott a felismerő.
  final String? summary;

  bool get isEmpty => candidates.isEmpty;
  StockCandidate? get best => candidates.isEmpty ? null : candidates.first;
}

/// Kép → részvény-jelöltek. Több megvalósítás létezhet (AI látás, on-device
/// OCR); a felület csak ezt az interfészt ismeri.
abstract interface class StockRecognizer {
  /// Rövid, felhasználónak mutatható név (pl. "Claude látás").
  String get name;

  /// [outputLanguage] a felhasználó nyelve angolul (pl. `Hungarian`): ezen a
  /// nyelven írja a felismerő a leírást és a bizonyítékot.
  Future<RecognitionResult> recognize(CapturedImage image, {String outputLanguage = 'English'});
}
