import '../../core/util/dates.dart';
import '../../core/util/formatters.dart';
import '../fx/fx_service.dart';
import 'portfolio_store.dart';

/// Egy részvény várható következő osztaléka, a rögzített kifizetésekből becsülve;
/// a [byAccount] az összeg számlánkénti része (a legutóbbi kifizetés szerint). Az
/// [announced] a jövőre rögzített (bejelentett) kifizetés: az összege pontos, és már
/// rögzítve van (nem becslés; a [periodMonths] 0, ha a ritmusa nem ismert).
typedef ExpectedDividend = ({
  String symbol,
  DateTime date,
  double amount,
  String currency,
  int periodMonths,
  Map<String?, double> byAccount,
  bool announced,
});

/// Ennyi napon belül rögzített tételek egy kifizetésnek számítanak (pl. két
/// számlán vagy brókernél egy-két nap eltéréssel jóváírt osztalék).
const payoutWindowDays = 7;

/// A várható következő kifizetések a még birtokolt részvényekre, a rögzített
/// osztalékok dátumaiból és összegeiből. Részvényenként és pénznemenként egy
/// sorozat (két bróker, két pénznem: két sorozat); legalább két dátumozott
/// kifizetés kell; a köztük lévő jellemző (medián) távolságból havi /
/// negyedéves / féléves / éves ritmus adódik (a legutóbbi legfeljebb négy
/// távolságból), a következő = az utolsó + ritmus naptári hónapokban (a hónap
/// napja marad; ha nincs ilyen nap, a hónap utolsó napja), az összeg az utolsó
/// kifizetés. Ami már [grace]-nél régebben lett volna esedékes, kimarad
/// (valószínűleg nem lett rögzítve, vagy elmaradt), ahogy a [horizon]-nál
/// távolabbi is. Ha a sorozatban van jövőre rögzített (bejelentett) kifizetés, a
/// következő az ([announced]), nem a becslés. Dátum, azon belül ticker szerint rendezve.
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
  // (ticker, pénznem) → nap → számla → összeg.
  final series = <(String, String), Map<DateTime, Map<String?, double>>>{};
  for (final d in dividends) {
    final date = d.date;
    if (date == null || !held.contains(d.symbol)) continue;
    final day = DateTime(date.year, date.month, date.day);
    final parts = (series[(d.symbol, d.currency)] ??= {})[day] ??= {};
    parts[d.account] = (parts[d.account] ?? 0) + d.amount;
  }
  final out = <ExpectedDividend>[];
  for (final e in series.entries) {
    // Az egy héten belüli tételek (két brókernél, két számlán) egy kifizetés, az első napjával.
    final payouts = <({DateTime day, Map<String?, double> parts})>[];
    for (final day in e.value.keys.toList()..sort()) {
      final parts = e.value[day]!;
      if (payouts.isNotEmpty && calendarDaysBetween(payouts.last.day, day) < payoutWindowDays) {
        for (final p in parts.entries) {
          payouts.last.parts[p.key] = (payouts.last.parts[p.key] ?? 0) + p.value;
        }
      } else {
        payouts.add((day: day, parts: {...parts}));
      }
    }
    final period = payouts.length < 2 ? null : periodMonthsFor(medianRecentGap([for (final p in payouts) p.day]));
    // A jövőre rögzített (bejelentett) kifizetés maga a következő.
    final today = DateTime(now.year, now.month, now.day);
    if (payouts.where((p) => p.day.isAfter(today)).firstOrNull case final a?) {
      if (a.day.isAfter(now.add(horizon))) continue;
      out.add((
        symbol: e.key.$1,
        date: a.day,
        amount: a.parts.values.fold(0.0, (s, v) => s + v),
        currency: e.key.$2,
        periodMonths: period ?? 0,
        byAccount: a.parts,
        announced: true,
      ));
      continue;
    }
    if (period == null) continue;
    final last = payouts.last;
    final next = addMonths(last.day, period);
    if (next.isBefore(now.subtract(grace)) || next.isAfter(now.add(horizon))) continue;
    out.add((
      symbol: e.key.$1,
      date: next,
      amount: last.parts.values.fold(0.0, (s, v) => s + v),
      currency: e.key.$2,
      periodMonths: period,
      byAccount: last.parts,
      announced: false,
    ));
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
  // Pontosan egy éve kapott tétel már nem számít (különben 366 nap: két éves kifizetés).
  final from = DateTime(now.year - 1, now.month, now.day, now.hour, now.minute, now.second);
  return dividends.where((d) {
    final date = d.date;
    return date != null && date.isAfter(from) && !date.isAfter(now);
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

/// A kifizetések közti medián távolságból (napokban) a ritmus hónapokban
/// (havi 1 / negyedéves 3 / féléves 6 / éves 12); `null`, ha túl sűrű (nem
/// rendszeres osztalék) vagy túl ritka.
int? periodMonthsFor(int medianGapDays) {
  if (medianGapDays < 20) return null;
  if (medianGapDays <= 45) return 1;
  if (medianGapDays <= 135) return 3;
  if (medianGapDays <= 230) return 6;
  if (medianGapDays <= 420) return 12;
  return null;
}

/// [d] + [months] naptári hónap, a hónap napjával; ha a célhónap rövidebb (jan.
/// 31. + 1 hónap), annak utolsó napja – így a havi ritmus nem csúszik el.
DateTime addMonths(DateTime d, int months) {
  final first = DateTime(d.year, d.month + months);
  final lastDay = DateTime(first.year, first.month + 1, 0).day;
  return DateTime(first.year, first.month, d.day > lastDay ? lastDay : d.day);
}

/// Egy hónap osztaléka a havi diagramhoz: a kapott (a mai napig) és a várható
/// (a rögzítettek ritmusából) összeg, átváltva.
typedef DividendMonth = ({DateTime month, double received, double expected});

/// Havi bontás a [now] hónapja körül: az előző [past] − 1 hónap, a folyó és a
/// következő [ahead] hónap. A kapott tételek közül a dátumozott, nem jövőbeli (a
/// jövőre rögzített, bejelentett tétel a saját hónapjában várható); a
/// várhatók az [expected] listából, a ritmusukkal továbbvetítve (a havonta fizető
/// részvény mindhárom következő hónapban), a már esedékes is a saját hónapjában.
/// A [rate] a pénznem átváltása (`null`: a tétel kimarad).
List<DividendMonth> dividendMonths(
  Iterable<DividendRecord> dividends,
  Iterable<ExpectedDividend> expected, {
  required DateTime now,
  required double? Function(String currency) rate,
  int past = 12,
  int ahead = 3,
}) {
  final first = DateTime(now.year, now.month - past + 1);
  final count = past + ahead;
  int? index(DateTime d) {
    final i = (d.year - first.year) * 12 + d.month - first.month;
    return i >= 0 && i < count ? i : null;
  }

  final received = List.filled(count, 0.0), coming = List.filled(count, 0.0);
  for (final d in dividends) {
    final date = d.date;
    if (date == null) continue;
    final (i, r) = (index(date), rate(d.currency));
    if (i == null || r == null) continue;
    // A jövőre rögzített (bejelentett) kifizetés még várható.
    if (date.isAfter(now)) {
      coming[i] += d.amount * r;
    } else {
      received[i] += d.amount * r;
    }
  }
  for (final x in expected) {
    final r = rate(x.currency);
    if (r == null) continue;
    // A következő kifizetés, majd a ritmus szerint a további, amíg az ablakban van (a
    // bejelentett kifizetés már a rögzített tételek közt szerepel: csak az utána következők).
    for (var n = x.announced ? 1 : 0; n == 0 || x.periodMonths > 0; n++) {
      final date = addMonths(x.date, n * x.periodMonths);
      final i = index(date);
      if (i == null) break;
      coming[i] += x.amount * r;
    }
  }
  return [
    for (var i = 0; i < count; i++)
      (month: DateTime(first.year, first.month + i), received: received[i], expected: coming[i]),
  ];
}
