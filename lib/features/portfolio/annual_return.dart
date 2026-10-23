import 'dart:math' as math;

import 'portfolio_store.dart';

/// Egy pénzmozgás: vétel negatív, eladás és a mai érték pozitív összeg.
typedef CashFlow = ({DateTime date, double amount});

/// Pénzsúlyozott éves hozam (XIRR): az a kamatláb, amellyel a pénzmozgások
/// jelenértéke nulla. Figyelembe veszi, mikor vettél és adtál el, ezért a
/// később betett pénz nem „hígítja” a korábbi hozamot. Felezéses kereséssel
/// számol (-99% és +1000% között); ha nincs megoldás, `null`.
double? xirr(List<CashFlow> flows) {
  if (flows.length < 2) return null;
  if (!flows.any((f) => f.amount > 0) || !flows.any((f) => f.amount < 0)) return null;
  final start = flows.map((f) => f.date).reduce((a, b) => a.isBefore(b) ? a : b);
  double npv(double rate) {
    var sum = 0.0;
    for (final f in flows) {
      final years = f.date.difference(start).inHours / 24 / 365;
      sum += f.amount / math.pow(1 + rate, years);
    }
    return sum;
  }

  var lo = -0.99, hi = 10.0;
  var fLo = npv(lo), fHi = npv(hi);
  if (fLo.isNaN || fHi.isNaN || fLo.sign == fHi.sign) return null;
  for (var i = 0; i < 200 && hi - lo > 1e-9; i++) {
    final mid = (lo + hi) / 2;
    final fMid = npv(mid);
    if (fMid.sign == fLo.sign) {
      lo = mid;
      fLo = fMid;
    } else {
      hi = mid;
      fHi = fMid;
    }
  }
  return (lo + hi) / 2;
}

/// A pozíciók éves hozama: a vételek és eladások (mai árfolyamon átváltva) és a
/// mai [value]. `null`, ha valamelyik tranzakciónak nincs dátuma vagy pénzneme
/// nem váltható át, vagy ha az első vétel egy évnél frissebb – rövidebb időre
/// az évesítés félrevezető lenne.
double? positionsAnnualReturn(
  List<Position> all,
  double? Function(String currency) rateOf,
  double value,
  DateTime now,
) {
  final flows = <CashFlow>[];
  for (final p in all) {
    final r = rateOf(p.currency);
    if (r == null) return null;
    for (final l in p.lots) {
      if (l.date == null) return null;
      // A díj is pénzmozgás: a vételnél többet fizettél, az eladásnál kevesebbet kaptál.
      flows.add((date: l.date!, amount: (l.sell ? 1 : -1) * l.cost * r));
    }
  }
  if (flows.isEmpty || flows.any((f) => now.difference(f.date).inDays < 0)) return null;
  final first = flows.map((f) => f.date).reduce((a, b) => a.isBefore(b) ? a : b);
  if (now.difference(first).inDays < 365) return null;
  return xirr([...flows, (date: now, amount: value)]);
}
