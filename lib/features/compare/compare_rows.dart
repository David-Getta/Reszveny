import '../../core/models/analysis_extras.dart';
import '../../core/models/stock_details.dart';
import '../../core/models/stock_metrics.dart';
import '../../core/util/formatters.dart';

import '../../l10n/generated/app_localizations.dart';
import '../analysis/price_stats.dart';

/// Melyik irány a jobb egy mutatónál (a kiemeléshez); `none`: nincs kiemelés.
enum Better { higher, lower, none }

/// Az összehasonlító táblázat egy sora: felirat, oszloponként a megjelenített
/// érték, és a legjobb oszlop indexe (ha értelmezhető).
class CompareRow {
  const CompareRow(this.label, this.values, {this.best});

  final String label;
  final List<String?> values;
  final int? best;
}

/// A legjobb érték indexe: legalább két összevethető érték kell. A „kisebb a
/// jobb” mutatóknál (P/E, P/S…) a nem pozitív érték (veszteség) nem nyerhet.
int? bestIndex(List<double?> values, Better better) {
  if (better == Better.none) return null;
  int? best;
  var count = 0;
  for (var i = 0; i < values.length; i++) {
    final v = values[i];
    if (v == null || (better == Better.lower && v <= 0)) continue;
    count++;
    final b = best == null ? null : values[best]!;
    if (b == null || (better == Better.higher ? v > b : v < b)) best = i;
  }
  return count >= 2 ? best : null;
}

/// Hány százalékkal van az ár a 200 napos mozgóátlag felett (+) vagy alatt (-).
double? _vsSma200(StockDetails? d) {
  final pts = d?.history?.points;
  if (pts == null || pts.isEmpty) return null;
  final sma = PriceStats.sma(pts, 200);
  if (sma == null || sma <= 0) return null;
  return ((d!.quote?.price ?? pts.last.close) / sma - 1) * 100;
}

/// Az összehasonlítás sorai: árfolyam, értékeltség, növekedés, jövedelmezőség,
/// eladósodottság, osztalék, kockázat. A pénzösszegek oszloponként a saját
/// devizájukban.
List<CompareRow> buildCompareRows(
  AppLocalizations l10n,
  Fmt fmt,
  List<StockDetails?> stocks, {
  List<EarningsOverview?>? earnings,
}) {
  List<double?> metric(double? Function(StockMetrics m) f) => [
    for (final d in stocks) d?.metrics == null ? null : f(d!.metrics!),
  ];

  CompareRow row(String label, List<double?> raw, String Function(double v, StockDetails d) show, Better better) =>
      CompareRow(label, [
        for (var i = 0; i < stocks.length; i++) raw[i] == null || stocks[i] == null ? null : show(raw[i]!, stocks[i]!),
      ], best: bestIndex(raw, better));

  String pct(double v, StockDetails _) => fmt.percent(v);
  String signed(double v, StockDetails _) => fmt.percent(v, withSign: true);
  String num(double v, StockDetails _) => fmt.number(v);

  return [
    row(
      l10n.labelLastPrice,
      [for (final d in stocks) d?.quote?.price],
      (v, d) => fmt.price(v, d.currency),
      Better.none,
    ),
    row(l10n.labelChange, [for (final d in stocks) d?.quote?.changePercent], signed, Better.none),
    row(
      l10n.compareReturn1y,
      [for (final d in stocks) d?.history == null ? null : PriceStats.returnOver(d!.history!.points, 365)],
      signed,
      Better.higher,
    ),
    // Technikai kép: hol tart az ár a 200 napos átlaghoz képest, és az RSI.
    row(l10n.labelSma200, [for (final d in stocks) _vsSma200(d)], signed, Better.none),
    row(
      l10n.labelRsi,
      [for (final d in stocks) d?.history == null ? null : PriceStats.rsi(d!.history!.points, 14)],
      (v, _) => fmt.number(v, decimals: 0),
      Better.none,
    ),
    row(
      l10n.compareFromHigh,
      [
        for (final d in stocks)
          if (d?.quote?.price case final price? when (d!.metrics?.week52High ?? 0) > 0)
            (price / d.metrics!.week52High! - 1) * 100
          else
            null,
      ],
      signed,
      Better.none,
    ),
    row(
      l10n.labelMarketCap,
      [for (final d in stocks) d?.profile?.marketCap],
      (v, d) => fmt.compact(v, currency: d.currency),
      Better.none,
    ),
    row(l10n.labelPeTrailing, metric((m) => m.peTrailing), num, Better.lower),
    row(l10n.labelPeForward, metric((m) => m.peForward), num, Better.lower),
    row(l10n.labelPs, metric((m) => m.ps), num, Better.lower),
    row(l10n.labelPb, metric((m) => m.pb), num, Better.lower),
    row(l10n.labelPeg, metric((m) => m.peg), num, Better.lower),
    row(l10n.labelRevenueGrowth, metric((m) => m.revenueGrowth), signed, Better.higher),
    row(l10n.labelEpsGrowth, metric((m) => m.epsGrowth), signed, Better.higher),
    row(l10n.labelGrossMargin, metric((m) => m.grossMargin), pct, Better.higher),
    row(l10n.labelNetMargin, metric((m) => m.netMargin), pct, Better.higher),
    row(l10n.labelRoe, metric((m) => m.roe), pct, Better.higher),
    row(l10n.labelDebtToEquity, metric((m) => m.debtToEquity), num, Better.lower),
    row(l10n.labelDividendYield, metric((m) => m.dividendYield), pct, Better.higher),
    row(l10n.labelBeta, metric((m) => m.beta), num, Better.none),
    // Gyorsjelentések: az utolsó negyedév EPS-meglepetése (a nagyobb a jobb) és a következő jelentés napja.
    if (earnings != null) ...[
      row(
        l10n.compareLastSurprise,
        [
          for (final (i, e) in earnings.indexed)
            stocks[i] == null ? null : e?.history.where((h) => h.surprise != null).firstOrNull?.surprise,
        ],
        (v, _) => fmt.percent(v, withSign: true, decimals: 1),
        Better.higher,
      ),
      CompareRow(l10n.compareNextReport, [
        for (final (i, e) in earnings.indexed) stocks[i] == null || e?.next == null ? null : fmt.date(e!.next!.date),
      ]),
    ],
  ];
}

/// Az összehasonlítás szövegként (az AI-kérdéshez): soronként a felirat és az
/// oszlopok értékei, a hiányzó érték kötőjellel.
String compareRowsAsText(List<String> symbols, List<CompareRow> rows) => [
  'Columns: ${symbols.join(' | ')}',
  for (final r in rows) '${r.label}: ${r.values.map((v) => v ?? '-').join(' | ')}',
].join('\n');
