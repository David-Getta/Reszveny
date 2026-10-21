import '../../core/util/formatters.dart';
import '../fx/fx_service.dart';
import 'portfolio_store.dart';

/// Egy részvény várható következő osztaléka, a rögzített kifizetésekből becsülve.
typedef ExpectedDividend = ({String symbol, DateTime date, double amount, String currency, int periodDays});

/// A várható következő kifizetések a még birtokolt részvényekre, a rögzített
/// osztalékok dátumaiból és összegeiből. Részvényenként és pénznemenként egy
/// sorozat (két bróker, két pénznem: két sorozat); legalább két dátumozott
/// kifizetés kell; a köztük lévő jellemző (medián) távolságból havi /
/// negyedéves / féléves / éves ritmus adódik (a legutóbbi legfeljebb négy
/// távolságból), a következő = az utolsó + ritmus
/// (naptári napokban, nyári időszámítástól függetlenül), az összeg az utolsó
/// kifizetés. Ami már [grace]-nél régebben lett volna esedékes, kimarad
/// (valószínűleg nem lett rögzítve, vagy elmaradt), ahogy a [horizon]-nál
/// távolabbi is. Dátum, azon belül ticker szerint rendezve.
///
/// Ugyanez a becslés fut a szerveren a heti e-mailhez
/// (`server/lib/src/digest.dart`, `expectedDividendsOf`): a küszöböket ott is
/// át kell írni, ha itt változnak.
List<ExpectedDividend> expectedDividends(
  Iterable<DividendRecord> dividends,
  Iterable<String> heldSymbols, {
  required DateTime now,
  Duration horizon = const Duration(days: 180),
  Duration grace = const Duration(days: 21),
}) {
  final held = {for (final s in heldSymbols) s.toUpperCase()};
  // (ticker, pénznem) → nap → összeg; az egy napon rögzített tételek (pl. két
  // brókernél) egy kifizetésnek számítanak.
  final series = <(String, String), Map<DateTime, double>>{};
  for (final d in dividends) {
    final date = d.date;
    if (date == null || !held.contains(d.symbol)) continue;
    final day = DateTime(date.year, date.month, date.day);
    final byDay = series[(d.symbol, d.currency)] ??= {};
    byDay[day] = (byDay[day] ?? 0) + d.amount;
  }
  final out = <ExpectedDividend>[];
  for (final e in series.entries) {
    final paidOn = e.value.keys.toList()..sort();
    if (paidOn.length < 2) continue;
    final period = periodDaysFor(medianRecentGap(paidOn));
    if (period == null) continue;
    final last = paidOn.last;
    final next = DateTime(last.year, last.month, last.day + period);
    if (next.isBefore(now.subtract(grace)) || next.isAfter(now.add(horizon))) continue;
    out.add((symbol: e.key.$1, date: next, amount: e.value[last]!, currency: e.key.$2, periodDays: period));
  }
  out.sort((a, b) {
    final byDate = a.date.compareTo(b.date);
    return byDate != 0 ? byDate : a.symbol.compareTo(b.symbol);
  });
  return out;
}

/// Bekerülési osztalékhozam százalékban: az utolsó 12 hónap (dátumozott) kapott
/// osztaléka a [cost] vételi értékhez mérve; `null`, ha nincs ilyen tétel. A
/// [rate] a tétel pénznemének átváltása a [cost] pénznemére (`null`: a tétel
/// kimarad); nélküle az összegek változatlanul adódnak össze.
double? yieldOnCost(
  Iterable<DividendRecord> dividends,
  double cost, {
  required DateTime now,
  double? Function(DividendRecord d)? rate,
}) {
  if (cost <= 0) return null;
  final sum = dividendsLast12Months(dividends, now: now, rate: rate);
  return sum == null ? null : sum / cost * 100;
}

/// Az utolsó 12 hónap dátumozott, nem jövőbeli tételei (a 12 havi összeg és a
/// hozzá kért árfolyamok ugyanezt az ablakot használják).
Iterable<DividendRecord> dividendsInLast12Months(Iterable<DividendRecord> dividends, {required DateTime now}) {
  final from = DateTime(now.year - 1, now.month, now.day);
  return dividends.where((d) {
    final date = d.date;
    return date != null && !date.isBefore(from) && !date.isAfter(now);
  });
}

/// Az utolsó 12 hónap (dátumozott, nem jövőbeli) kapott osztalékának összege;
/// a [rate] a tétel átváltása (`null`: a tétel kimarad). `null`, ha egy tétel
/// sem számolható – a hozam, a főoldali sor és az elemzések ugyanezt használják.
double? dividendsLast12Months(
  Iterable<DividendRecord> dividends, {
  required DateTime now,
  double? Function(DividendRecord d)? rate,
}) {
  var sum = 0.0;
  var any = false;
  for (final d in dividendsInLast12Months(dividends, now: now)) {
    final r = rate == null ? 1.0 : rate(d);
    if (r == null) continue;
    sum += d.amount * r;
    any = true;
  }
  return any ? sum : null;
}

/// A tételek összege a [to] pénznemben a mai árfolyamon (a [fx] adja); az
/// átválthatatlan pénznemű tétel kimarad. `null`, ha egy sem számolható.
Future<double?> convertedDividends(FxService fx, Iterable<DividendRecord> dividends, String to) async {
  final ds = dividends.toList();
  if (ds.isEmpty) return null;
  final rates = await fx.ratesFor(ds.map((d) => d.currency), to);
  var sum = 0.0;
  var any = false;
  for (final d in ds) {
    final rate = rates[d.currency];
    if (rate == null) continue;
    sum += d.amount * rate;
    any = true;
  }
  return any ? sum : null;
}

/// Egy év osztaléka az előző évhez képest, százalékban; `null`, ha bármelyik
/// összeg nem pozitív (nincs mihez mérni, vagy az átváltás hiányzik).
double? yearChange(double current, double previous) =>
    previous > 0 && current > 0 ? (current / previous - 1) * 100 : null;

/// Becsült összeg: „~ 2,60 USD” – az Események, a kártyák és a naptár egyformán.
String approxMoney(Fmt fmt, double amount, String currency) => '~ ${fmt.money(amount, currency)}';

/// A legutóbbi kifizetések közti távolságok mediánja napokban (legfeljebb a
/// [recentGaps] utolsó távolság): egy régi, ritkás előzmény ne torzítsa a mai
/// ritmust; döntetlennél a legutóbbi távolsághoz közelebbi. Legalább két nap kell.
int medianRecentGap(List<DateTime> paidOn, {int recentGaps = 4}) {
  final gaps = [for (var i = 1; i < paidOn.length; i++) paidOn[i].difference(paidOn[i - 1]).inDays];
  final recent = gaps.length > recentGaps ? gaps.sublist(gaps.length - recentGaps) : gaps;
  // Páros számú távolságnál a két középső közül a legutóbbi távolsághoz közelebbi
  // nyer: ritmusváltásnál (bármelyik irányban) az újabb ritmus.
  final sorted = [...recent]..sort();
  if (sorted.length.isEven) {
    final lower = sorted[sorted.length ~/ 2 - 1], upper = sorted[sorted.length ~/ 2];
    final last = recent.last;
    return (last - lower).abs() <= (last - upper).abs() ? lower : upper;
  }
  return sorted[sorted.length ~/ 2];
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
