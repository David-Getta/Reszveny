import 'portfolio_store.dart';

/// Egy részvény várható következő osztaléka, a rögzített kifizetésekből becsülve.
typedef ExpectedDividend = ({String symbol, DateTime date, double amount, String currency, int periodDays});

/// A várható következő kifizetések a még birtokolt részvényekre, a rögzített
/// osztalékok dátumaiból és összegeiből. Legalább két dátumozott kifizetés kell;
/// a köztük lévő jellemző (medián) távolságból havi / negyedéves / féléves / éves
/// ritmus adódik, a következő = az utolsó + ritmus, az összeg az utolsó kifizetés.
/// Ami már [grace]-nél régebben lett volna esedékes, kimarad (valószínűleg nem
/// lett rögzítve, vagy elmaradt), ahogy a [horizon]-nál távolabbi is. Dátum
/// szerint rendezve.
List<ExpectedDividend> expectedDividends(
  Iterable<DividendRecord> dividends,
  Iterable<String> heldSymbols, {
  required DateTime now,
  Duration horizon = const Duration(days: 180),
  Duration grace = const Duration(days: 21),
}) {
  final held = {for (final s in heldSymbols) s.toUpperCase()};
  final bySymbol = <String, List<DividendRecord>>{};
  for (final d in dividends) {
    if (d.date != null && held.contains(d.symbol)) (bySymbol[d.symbol] ??= []).add(d);
  }
  final out = <ExpectedDividend>[];
  for (final e in bySymbol.entries) {
    final ds = e.value..sort((a, b) => a.date!.compareTo(b.date!));
    // Ugyanazon a napon több tétel (pl. két brókernél): egy kifizetés, az összegük együtt.
    final byDay = <DateTime, double>{};
    for (final d in ds) {
      final day = DateTime(d.date!.year, d.date!.month, d.date!.day);
      byDay[day] = (byDay[day] ?? 0) + d.amount;
    }
    final days = byDay.keys.toList();
    if (days.length < 2) continue;
    final gaps = [for (var i = 1; i < days.length; i++) days[i].difference(days[i - 1]).inDays]..sort();
    final period = periodDaysFor(gaps[gaps.length ~/ 2]);
    if (period == null) continue;
    final next = days.last.add(Duration(days: period));
    if (next.isBefore(now.subtract(grace)) || next.isAfter(now.add(horizon))) continue;
    out.add((symbol: e.key, date: next, amount: byDay[days.last]!, currency: ds.last.currency, periodDays: period));
  }
  out.sort((a, b) => a.date.compareTo(b.date));
  return out;
}

/// A kifizetések közti medián távolságból a ritmus napokban (30 / 91 / 182 / 365);
/// `null`, ha túl sűrű (nem rendszeres osztalék) vagy túl ritka.
int? periodDaysFor(int medianGapDays) {
  if (medianGapDays < 20) return null;
  if (medianGapDays <= 45) return 30;
  if (medianGapDays <= 135) return 91;
  if (medianGapDays <= 230) return 182;
  if (medianGapDays <= 420) return 365;
  return null;
}
