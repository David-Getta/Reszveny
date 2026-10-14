import '../../core/models/stock_report.dart';

/// Egy forgatókönyv valószínűségének változása két elemzés között.
class ScenarioShift {
  const ScenarioShift({required this.kind, required this.before, required this.after});

  final ScenarioKind kind;
  final double before;
  final double after;

  double get delta => after - before;
}

/// Mi változott az előző elemzés óta: ár, piaci hangulat, a forgatókönyvek
/// valószínűsége és a legvalószínűbb forgatókönyv. Csak a számszerű részt
/// hasonlítja (a szöveget nem), így bármely két elemzésre működik.
class ReportDiff {
  const ReportDiff({
    required this.previousAt,
    this.priceBefore,
    this.priceAfter,
    this.currency,
    this.moodBefore,
    this.moodAfter,
    this.scenarios = const [],
    this.mostLikelyBefore,
    this.mostLikelyAfter,
  });

  /// Ennél kisebb (százalékpontos) eltolódást nem tekintünk változásnak.
  static const minShift = 5.0;

  /// Ennél kisebb (százalékos) árváltozást nem emelünk ki.
  static const minPriceMove = 0.5;

  final DateTime previousAt;
  final double? priceBefore;
  final double? priceAfter;
  final String? currency;
  final int? moodBefore;
  final int? moodAfter;

  /// Mindhárom forgatókönyv, ha mindkét elemzésben szerepel.
  final List<ScenarioShift> scenarios;
  final ScenarioKind? mostLikelyBefore;
  final ScenarioKind? mostLikelyAfter;

  /// Árváltozás százalékban (az elemzésekben rögzített ár alapján).
  double? get priceMove {
    final a = priceBefore, b = priceAfter;
    if (a == null || b == null || a <= 0) return null;
    return (b / a - 1) * 100;
  }

  bool get priceChanged => (priceMove?.abs() ?? 0) >= minPriceMove;
  bool get moodChanged => moodBefore != null && moodAfter != null && moodBefore != moodAfter;
  bool get scenariosShifted => scenarios.any((s) => s.delta.abs() >= minShift);
  bool get mostLikelyChanged =>
      mostLikelyBefore != null && mostLikelyAfter != null && mostLikelyBefore != mostLikelyAfter;

  /// Igaz, ha a kilátásokban (hangulat, forgatókönyvek) érdemi a változás.
  bool get outlookChanged => moodChanged || scenariosShifted || mostLikelyChanged;

  /// Van-e egyáltalán mit összehasonlítani (régi elemzés adatai nélkül nincs).
  bool get comparable => priceMove != null || (moodBefore != null && moodAfter != null) || scenarios.isNotEmpty;

  /// Két elemzés összevetése; ha nincs mit összehasonlítani, `null`. Ugyanarról
  /// a részvényről, időrendben ([before] a régebbi) adjuk meg őket.
  static ReportDiff? compare(StockReport before, StockReport after) {
    if (before.symbol != after.symbol || !after.generatedAt.isAfter(before.generatedAt)) return null;
    final a = before.outlook, b = after.outlook;
    if (a == null || b == null) return null;
    // Eltérő devizában (pl. más tőzsdei jegyzés) az ár nem vethető össze.
    final sameCurrency = a.currency == null || b.currency == null || a.currency == b.currency;
    final shifts = <ScenarioShift>[];
    for (final kind in ScenarioKind.values) {
      final x = a.scenarios.where((s) => s.kind == kind).firstOrNull;
      final y = b.scenarios.where((s) => s.kind == kind).firstOrNull;
      if (x == null || y == null) {
        shifts.clear();
        break;
      }
      shifts.add(ScenarioShift(kind: kind, before: x.probability, after: y.probability));
    }
    final diff = ReportDiff(
      previousAt: before.generatedAt,
      priceBefore: sameCurrency ? a.currentPrice : null,
      priceAfter: sameCurrency ? b.currentPrice : null,
      currency: b.currency ?? a.currency,
      moodBefore: a.marketMood,
      moodAfter: b.marketMood,
      scenarios: shifts,
      mostLikelyBefore: a.mostLikely?.kind,
      mostLikelyAfter: b.mostLikely?.kind,
    );
    return diff.comparable ? diff : null;
  }
}
