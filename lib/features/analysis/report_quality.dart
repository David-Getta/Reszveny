import '../../core/models/stock_report.dart';
import 'analysis_options.dart';

/// Gépi minőség-ellenőrzés egy elkészült elemzésre: megvan-e minden szekció a
/// helyes sorrendben, dátumozottak-e a hírek, kijön-e a 100 % a forgatókönyvekből,
/// van-e ársáv és indoklás a legvalószínűbb forgatókönyvhöz, tágulnak-e a
/// hosszú távú sávok az idővel, csak jövőbeli-e a katalizátornaptár, elég-e a
/// forrás, és stimmel-e a terjedelem. Az eval-futtatás
/// (`test/eval`) ezzel pontozza a prompt-változatokat; a felület nem használja.
class ReportQuality {
  const ReportQuality({required this.score, required this.issues, required this.wordCount});

  /// 0–100; minden hiba levon a súlya szerint.
  final int score;
  final List<String> issues;
  final int wordCount;

  static const requiredOrder = [
    ReportSectionKind.summary,
    ReportSectionKind.news,
    ReportSectionKind.business,
    ReportSectionKind.strengths,
    ReportSectionKind.risks,
    ReportSectionKind.financials,
    ReportSectionKind.valuation,
    ReportSectionKind.ownership,
    ReportSectionKind.outlook,
    ReportSectionKind.longterm,
    ReportSectionKind.watch,
  ];

  static final _datePrefix = RegExp(r'^\**\d{4}-\d{2}(-\d{2})?');

  static int countWords(StockReport r) {
    final texts = [r.headline, for (final s in r.sections) ...s.paragraphs, for (final s in r.sections) ...s.bullets];
    return texts.fold(0, (n, t) => n + t.split(RegExp(r'\s+')).where((w) => w.isNotEmpty).length);
  }

  /// [today]: ehhez képest kell jövőbelinek lennie a katalizátoroknak
  /// (alapból az elemzés készítésének napja).
  static ReportQuality check(StockReport r, {AnalysisOptions options = const AnalysisOptions(), DateTime? today}) {
    final issues = <String>[];
    var penalty = 0;
    void issue(int weight, String msg) {
      penalty += weight;
      issues.add(msg);
    }

    final kinds = r.sections.map((s) => s.kind).toList();
    final missing = requiredOrder.where((k) => !kinds.contains(k)).toList();
    if (missing.isNotEmpty) issue(8 * missing.length, 'missing sections: ${missing.map((k) => k.name).join(', ')}');
    final present = kinds.where(requiredOrder.contains).toList();
    final expected = requiredOrder.where(present.contains).toList();
    if (present.join() != expected.join()) issue(5, 'sections out of order');
    if (r.headline.isEmpty) issue(5, 'no headline');

    final news = r.sections.where((s) => s.kind == ReportSectionKind.news).expand((s) => s.bullets).toList();
    final undated = news.where((b) => !_datePrefix.hasMatch(b.trim())).length;
    if (news.isEmpty) {
      issue(8, 'no news bullets');
    } else if (undated > 0) {
      issue((undated * 10 / news.length).ceil(), '$undated of ${news.length} news bullets have no date prefix');
    }

    final o = r.outlook;
    if (o == null) {
      issue(15, 'no outlook_data');
    } else {
      if (o.scenarios.length != 3) issue(6, '${o.scenarios.length} scenarios instead of 3');
      final sum = o.probabilitySum;
      if ((sum - 100).abs() > 5) issue(6, 'scenario probabilities sum to ${sum.toStringAsFixed(0)}');
      final noRange = o.scenarios.where((s) => s.priceLow == null || s.priceHigh == null).length;
      if (noRange > 0) issue(3 * noRange, '$noRange scenarios without a price range');
      final cur = o.currentPrice;
      if (cur != null) {
        final bull = o.scenarios.where((s) => s.kind == ScenarioKind.bull).firstOrNull;
        final bear = o.scenarios.where((s) => s.kind == ScenarioKind.bear).firstOrNull;
        if (bull?.priceHigh != null && bull!.priceHigh! < cur) issue(3, 'bull range is below the current price');
        if (bear?.priceLow != null && bear!.priceLow! > cur) issue(3, 'bear range is above the current price');
      }
      if (o.keyLevels.length < 2) issue(2, 'fewer than 2 key levels');
      if (o.catalysts.isEmpty) issue(3, 'no dated catalysts');
      // A naptárban csak jövőbeli esemény lehet (a múltbeli a hírekhez tartozik).
      final day = (today ?? r.generatedAt).toIso8601String().substring(0, 10);
      final past = o.catalysts.where((c) {
        final d = c.date.trim();
        if (!RegExp(r'^\d{4}-\d{2}(-\d{2})?$').hasMatch(d)) return false;
        return d.compareTo(day.substring(0, d.length)) < 0;
      }).length;
      if (past > 0) issue(2 * past, '$past catalysts dated before the report');
      if (o.marketMood == null) issue(2, 'no market mood');
      if (o.mostLikelyReason.isEmpty) issue(2, 'no reason for the most likely scenario');

      final lt = o.longTerm;
      final years = lt?.horizons.map((h) => h.years).toList() ?? const <int>[];
      if (lt == null) {
        issue(8, 'no long-term view');
      } else {
        if (years.join(',') != '3,5,10') issue(4, 'long-term horizons are ${years.join(', ')} instead of 3, 5, 10');
        // A bizonytalanság az idővel nő: a relatív sávszélesség nem szűkülhet.
        double width(LongTermHorizon h) => (h.priceHigh - h.priceLow) / ((h.priceHigh + h.priceLow) / 2);
        for (var i = 1; i < lt.horizons.length; i++) {
          if (width(lt.horizons[i]) + 1e-9 < width(lt.horizons[i - 1])) {
            issue(
              3,
              'the ${lt.horizons[i].years}-year range is narrower than the ${lt.horizons[i - 1].years}-year one',
            );
          }
        }
        final noLikely = lt.horizons.where((h) => h.priceLikely == null).length;
        if (noLikely > 0) issue(2 * noLikely, '$noLikely long-term horizons without a most likely price in range');
        final noBasis = lt.horizons.where((h) => h.basis.isEmpty).length;
        if (noBasis > 0) issue(2 * noBasis, '$noBasis long-term horizons without the arithmetic behind them');
      }
    }

    if (r.sources.length < 3) issue(5, 'only ${r.sources.length} sources');

    final words = countWords(r);
    final (lo, hi) = options.wordRange;
    if (words < lo * 0.75) issue(6, 'too short: $words words (target $lo-$hi)');
    if (words > hi * 1.3) issue(4, 'too long: $words words (target $lo-$hi)');

    return ReportQuality(score: (100 - penalty).clamp(0, 100), issues: issues, wordCount: words);
  }
}
