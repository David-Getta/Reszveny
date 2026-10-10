import '../../core/models/stock_details.dart';
import '../../core/models/stock_report.dart';
import 'analysis_options.dart';

/// Részvény → AI-elemzés. A konkrét modell/szolgáltató cserélhető.
abstract interface class StockAnalyst {
  String get name;

  /// [details]: a már letöltött adatok (árfolyam, profil, mutatók, hírek),
  /// ezeket kapja meg a modell kontextusként. [outputLanguage]: a nyelv angol
  /// neve, amin az elemzés készüljön. [options]: hossz, olvasói szint, ellenérv,
  /// webkeresések száma.
  Future<StockReport> analyze(
    StockDetails details, {
    String outputLanguage = 'English',
    AnalysisOptions options = const AnalysisOptions(),
  });
}
