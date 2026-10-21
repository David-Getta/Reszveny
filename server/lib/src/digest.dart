import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'db.dart';
import 'mailer.dart';

/// Egy részvény heti mozgása: a legutóbbi ár és a hét eleje óta mért változás
/// (%); ha a heti adat nem érhető el, csak az ár.
typedef WeekMove = ({double price, double? weekChange, String? currency, List<double> closes});

typedef WeekLookup = Future<WeekMove?> Function(String symbol);

/// A következő gyorsjelentés dátuma [from] és [to] között, vagy `null`.
typedef EarningsLookup = Future<DateTime?> Function(String symbol, DateTime from, DateTime to);

/// A részvény legfrissebb híre [from] és [to] között (cím és link), vagy `null`.
typedef HeadlineLookup = Future<({String title, String url})?> Function(String symbol, DateTime from, DateTime to);

/// A legutóbbi negyedéves eredmény (jelentett és várt EPS, a negyedév vége), ha
/// a negyedév [since] után zárult; különben `null`.
typedef LastResult = ({double actual, double estimate, DateTime period});
typedef ResultLookup = Future<LastResult?> Function(String symbol, DateTime since);

/// Heti összefoglaló e-mail (bekapcsolható, `weekly_digest: true` a
/// szinkronizált adatban): hétfő reggelente megírja, hogyan mozogtak az előző
/// héten a portfólió és a kedvencek részvényei, és melyiküknek jön
/// gyorsjelentése a következő két hétben.
class DigestSender {
  DigestSender({
    required this.store,
    required this.mailer,
    required this.week,
    required this.earnings,
    this.headline,
    this.results,
    this.pause = Duration.zero,
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final Store store;
  final Mailer mailer;
  final WeekLookup week;
  final EarningsLookup earnings;

  /// Ha meg van adva, a hét legnagyobb mozgásai mellé a friss hír is bekerül.
  final HeadlineLookup? headline;

  /// Ha meg van adva, a [resultDays] napon belül zárult negyedév eredménye is bekerül.
  final ResultLookup? results;
  static const resultDays = 45;

  /// Fiókonként legfeljebb ennyi hír (a legnagyobb heti mozgásokhoz).
  static const maxHeadlines = 5;

  /// Szünet két piaci lekérdezés között (az ingyenes API-keretek miatt).
  final Duration pause;
  final DateTime Function() _clock;

  /// Fiókonként legfeljebb ennyi részvény kerül a levélbe.
  static const maxSymbols = 15;

  /// Egy körben legfeljebb ennyi különböző részvényt kérdezünk le.
  static const maxSymbolsPerRound = 150;

  /// Hétfőn ettől az órától (UTC) küldünk.
  static const sendHourUtc = 6;

  /// Ennyi időn belül nem megy ki újabb összefoglaló ugyanannak a fióknak.
  static const minGap = Duration(days: 6, hours: 12);

  /// Ennyi napra előre nézzük a gyorsjelentéseket.
  static const earningsDays = 14;

  Timer? _timer;
  bool _running = false;

  void start(Duration every) {
    _timer?.cancel();
    _timer = Timer.periodic(every, (_) => unawaited(sendDue()));
  }

  void stop() => _timer?.cancel();

  /// A még birtokolt darabszám tickerenként (vétel +, eladás −) és a tételek
  /// pénzneme a szinkronizált csomag tranzakcióiból.
  static ({Map<String, double> held, Map<String, String> currencies}) holdingsOf(Map<String, dynamic> data) {
    final held = <String, double>{}, currencies = <String, String>{};
    for (final l in (data['lots'] as List? ?? const [])) {
      if (l is! Map || l['symbol'] is! String || l['quantity'] is! num) continue;
      final s = (l['symbol'] as String).toUpperCase();
      final q = (l['quantity'] as num).toDouble();
      held[s] = (held[s] ?? 0) + (l['side'] == 'sell' ? -q : q);
      if (l['currency'] is String) currencies[s] ??= l['currency'] as String;
    }
    // A teljesen eladott részvény kimarad.
    held.removeWhere((_, q) => q <= 1e-9);
    return (held: held, currencies: currencies);
  }

  /// A fiók részvényei: előbb a portfólióé (a pénznemmel), aztán a többi kedvenc.
  static ({List<String> portfolio, List<String> favorites, Map<String, String> currencies}) symbolsOf(
    Map<String, dynamic> data,
  ) {
    final (:held, :currencies) = holdingsOf(data);
    final portfolio = held.keys.toList();
    final favorites = <String>[
      for (final f in (data['favorites'] as List? ?? const []))
        if (f is String && !portfolio.contains(f.toUpperCase())) f.toUpperCase(),
    ];
    final p = portfolio.take(maxSymbols).toList();
    return (portfolio: p, favorites: favorites.toSet().take(maxSymbols - p.length).toList(), currencies: currencies);
  }

  /// A szinkronizált csomag érvényes osztaléktételei: ticker nagybetűvel,
  /// pozitív összeg, pénznem (alapból USD), értelmezhető dátum.
  static Iterable<DigestDividend> _dividendRecords(Map<String, dynamic> data) sync* {
    for (final d in (data['dividends'] as List? ?? const [])) {
      if (d is! Map || d['symbol'] is! String || d['amount'] is! num || (d['amount'] as num) <= 0) continue;
      final date = DateTime.tryParse('${d['date']}');
      if (date == null) continue;
      yield (
        symbol: (d['symbol'] as String).toUpperCase(),
        amount: (d['amount'] as num).toDouble(),
        currency: d['currency'] is String ? d['currency'] as String : 'USD',
        date: date,
      );
    }
  }

  /// A héten (az elmúlt [days] napban) kapott osztalékok a szinkronizált
  /// csomagból, időrendben; a hibás vagy régebbi tételek kimaradnak.
  static List<DigestDividend> dividendsOf(Map<String, dynamic> data, {required DateTime now, int days = 7}) {
    final from = now.subtract(Duration(days: days));
    return [
      for (final d in _dividendRecords(data))
        if (!d.date.isBefore(from) && !d.date.isAfter(now)) d,
    ]..sort((a, b) => a.date.compareTo(b.date));
  }

  /// Az idén (a [now] évében, [now]-ig) kapott osztalékok pénznemenként
  /// összegezve, a pénznem szerint rendezve.
  static Map<String, double> dividendsYearToDate(Map<String, dynamic> data, {required DateTime now}) {
    final sums = <String, double>{};
    for (final d in _dividendRecords(data)) {
      if (d.date.year != now.year || d.date.isAfter(now)) continue;
      sums[d.currency] = (sums[d.currency] ?? 0) + d.amount;
    }
    return {for (final k in sums.keys.toList()..sort()) k: sums[k]!};
  }

  /// A következő [days] napban várható osztalékok a még birtokolt részvényekre,
  /// a rögzített kifizetések ritmusából – ugyanaz a becslés, mint az appban
  /// (`lib/features/portfolio/dividend_forecast.dart`; a küszöböket a kettőben
  /// együtt kell változtatni): tickerenként és pénznemenként egy sorozat,
  /// legalább két dátumozott tétel; a köztük lévő medián távolságból havi /
  /// negyedéves / féléves / éves ritmus; a következő = az utolsó + ritmus, az
  /// utolsó összeggel. Időrendben.
  static List<DigestDividend> expectedDividendsOf(Map<String, dynamic> data, {required DateTime now, int days = 14}) {
    final held = holdingsOf(data).held.keys.toSet();
    // (ticker, pénznem) → nap → összeg; az egy napon rögzített tételek együtt.
    final series = <(String, String), Map<DateTime, double>>{};
    for (final d in _dividendRecords(data)) {
      if (!held.contains(d.symbol)) continue;
      final day = DateTime.utc(d.date.year, d.date.month, d.date.day);
      final byDay = series[(d.symbol, d.currency)] ??= {};
      byDay[day] = (byDay[day] ?? 0) + d.amount;
    }
    final today = DateTime.utc(now.year, now.month, now.day);
    final until = today.add(Duration(days: days));
    final out = <DigestDividend>[];
    for (final e in series.entries) {
      final paidOn = e.value.keys.toList()..sort();
      if (paidOn.length < 2) continue;
      // A legutóbbi legfeljebb négy távolság mediánja: a régi, ritkás előzmény ne torzítson.
      final gaps = [for (var i = 1; i < paidOn.length; i++) paidOn[i].difference(paidOn[i - 1]).inDays];
      final recent = (gaps.length > 4 ? gaps.sublist(gaps.length - 4) : gaps)..sort();
      final period = _periodDays(recent[recent.length ~/ 2]);
      if (period == null) continue;
      final next = paidOn.last.add(Duration(days: period));
      if (next.isBefore(today) || next.isAfter(until)) continue;
      out.add((symbol: e.key.$1, amount: e.value[paidOn.last]!, currency: e.key.$2, date: next));
    }
    return out..sort((a, b) {
      final byDate = a.date.compareTo(b.date);
      if (byDate != 0) return byDate;
      final bySymbol = a.symbol.compareTo(b.symbol);
      return bySymbol != 0 ? bySymbol : a.currency.compareTo(b.currency);
    });
  }

  /// A kifizetések közti medián távolságból a ritmus napokban (30 / 91 / 182 / 365).
  static int? _periodDays(int medianGap) {
    if (medianGap < 20) return null;
    if (medianGap <= 45) return 30;
    if (medianGap <= 135) return 91;
    if (medianGap <= 230) return 182;
    if (medianGap <= 420) return 365;
    return null;
  }

  /// Egy kör: ha hétfő reggel van, a feliratkozott fiókoknak, akiknek az elmúlt
  /// hat és fél napban még nem ment, kiküldi az összefoglalót. Visszaadja, hány
  /// e-mail ment ki.
  Future<int> sendDue() async {
    final now = _clock().toUtc();
    if (now.weekday != DateTime.monday || now.hour < sendHourUtc) return 0;
    if (_running) return 0;
    _running = true;
    try {
      final accounts = <({String userId, String email, Map<String, dynamic> data})>[];
      final symbols = <String>{};
      for (final a in store.syncedAccounts()) {
        try {
          final data = (jsonDecode(a.data) as Map).cast<String, dynamic>();
          if (data['weekly_digest'] != true) continue;
          final last = store.lastDigest(a.userId);
          if (last != null && now.difference(last) < minGap) continue;
          final s = symbolsOf(data);
          if (s.portfolio.isEmpty && s.favorites.isEmpty) continue;
          accounts.add((userId: a.userId, email: a.email, data: data));
          symbols.addAll([...s.portfolio, ...s.favorites]);
        } catch (_) {
          // Sérült csomag: kihagyjuk.
        }
      }
      if (accounts.isEmpty) return 0;
      final moves = <String, WeekMove>{};
      final upcoming = <String, DateTime>{};
      final fresh = <String, LastResult>{};
      final since = now.subtract(const Duration(days: resultDays));
      final from = DateTime.utc(now.year, now.month, now.day);
      final to = from.add(const Duration(days: earningsDays));
      var first = true;
      for (final s in symbols.take(maxSymbolsPerRound)) {
        if (!first && pause > Duration.zero) await Future<void>.delayed(pause);
        first = false;
        try {
          final m = await week(s);
          if (m != null && m.price > 0) moves[s] = m;
        } catch (_) {}
        try {
          final e = await earnings(s, from, to);
          if (e != null) upcoming[s] = e;
        } catch (_) {}
        if (results case final r?) {
          try {
            final v = await r(s, since);
            if (v != null) fresh[s] = v;
          } catch (_) {}
        }
      }
      // A hírek csak a fiókonkénti legnagyobb heti mozgásokhoz kellenek.
      final news = <String, ({String title, String url})?>{};
      final weekAgo = now.subtract(const Duration(days: 7));
      Future<({String title, String url})?> headlineOf(String sym) async {
        final h = headline;
        if (h == null) return null;
        if (news.containsKey(sym)) return news[sym];
        if (pause > Duration.zero) await Future<void>.delayed(pause);
        try {
          return news[sym] = await h(sym, weekAgo, now);
        } catch (_) {
          return news[sym] = null;
        }
      }

      var sent = 0;
      for (final acc in accounts) {
        final s = symbolsOf(acc.data);
        final movers = [
          for (final sym in [...s.portfolio, ...s.favorites])
            if (moves[sym]?.weekChange != null) sym,
        ]..sort((a, b) => moves[b]!.weekChange!.abs().compareTo(moves[a]!.weekChange!.abs()));
        final heads = <String, ({String title, String url})>{};
        for (final sym in movers.take(maxHeadlines)) {
          if (await headlineOf(sym) case final h?) heads[sym] = h;
        }
        List<DigestLine> lines(List<String> syms) => [
          for (final sym in syms)
            if (moves[sym] case final m?)
              DigestLine(
                sym,
                m.price,
                m.weekChange,
                s.currencies[sym] ?? m.currency,
                upcoming[sym],
                headline: heads[sym]?.title,
                url: heads[sym]?.url,
                result: fresh[sym],
                signal: m.closes.isEmpty ? null : signalOf(m.closes),
              ),
        ];
        final portfolio = lines(s.portfolio), favorites = lines(s.favorites);
        if (portfolio.isEmpty && favorites.isEmpty) continue;
        try {
          final (subject, text) = digestEmail(
            portfolio,
            favorites,
            hu: acc.data['lang'] == 'hu',
            dividends: dividendsOf(acc.data, now: now),
            yearToDate: dividendsYearToDate(acc.data, now: now),
            expected: expectedDividendsOf(acc.data, now: now),
          );
          await mailer.send(acc.email, subject: subject, text: text);
          store.markDigest(acc.userId);
          sent++;
        } catch (e) {
          stderr.writeln('Heti összefoglaló nem ment ki: $e');
        }
      }
      return sent;
    } finally {
      _running = false;
    }
  }

  static String _n(double v) => v.toStringAsFixed(v.abs() < 1 ? 4 : 2);

  static String _pct(double v, {required bool hu}) {
    final s = '${v > 0 ? '+' : (v < 0 ? '−' : '')}${v.abs().toStringAsFixed(1)}%';
    return hu ? s.replaceAll('.', ',') : s;
  }

  static const _huMonths = [
    'jan.',
    'febr.',
    'márc.',
    'ápr.',
    'máj.',
    'jún.',
    'júl.',
    'aug.',
    'szept.',
    'okt.',
    'nov.',
    'dec.',
  ];
  static const _enMonths = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

  static String _date(DateTime d, {required bool hu}) =>
      hu ? '${_huMonths[d.month - 1]} ${d.day}.' : '${_enMonths[d.month - 1]} ${d.day}';

  /// Az e-mail tárgya és szövege (magyarul vagy angolul): a sorok a heti
  /// változás szerint csökkenőben, a tárgyban a hét legnagyobb mozgása.
  static (String, String) digestEmail(
    List<DigestLine> portfolio,
    List<DigestLine> favorites, {
    required bool hu,
    List<DigestDividend> dividends = const [],
    List<DigestDividend> expected = const [],
    Map<String, double> yearToDate = const {},
  }) {
    int byChange(DigestLine a, DigestLine b) => (b.weekChange ?? -1e9).compareTo(a.weekChange ?? -1e9);
    portfolio = [...portfolio]..sort(byChange);
    favorites = [...favorites]..sort(byChange);
    final all = [...portfolio, ...favorites];
    final withChange = all.where((l) => l.weekChange != null).toList();
    DigestLine? top;
    for (final l in withChange) {
      if (top == null || l.weekChange!.abs() > top.weekChange!.abs()) top = l;
    }
    final subject = top == null
        ? (hu ? 'WhatStock heti összefoglaló' : 'WhatStock weekly summary')
        : (hu
              ? 'WhatStock heti összefoglaló: ${top.symbol} ${_pct(top.weekChange!, hu: true)}'
              : 'WhatStock weekly summary: ${top.symbol} ${_pct(top.weekChange!, hu: false)}');
    final width = all.map((l) => l.symbol.length).fold(4, (a, b) => a > b ? a : b);
    String line(DigestLine l) {
      final price = '${_n(l.price)}${l.currency == null ? '' : ' ${l.currency}'}';
      final change = l.weekChange == null ? '' : '   ${_pct(l.weekChange!, hu: hu)}';
      return '  ${l.symbol.padRight(width)}   $price$change';
    }

    final b = StringBuffer()
      ..writeln(
        hu ? 'Így mozogtak a részvényeid az elmúlt héten:' : 'Here is how your stocks moved over the past week:',
      )
      ..writeln();
    void section(String title, List<DigestLine> lines) {
      if (lines.isEmpty) return;
      b.writeln(title);
      for (final l in lines) {
        b.writeln(line(l));
      }
      b.writeln();
    }

    section(hu ? 'Portfólió' : 'Portfolio', portfolio);
    section(hu ? 'Kedvencek' : 'Favorites', favorites);
    final soon = all.where((l) => l.earnings != null).toList()..sort((a, b) => a.earnings!.compareTo(b.earnings!));
    if (soon.isNotEmpty) {
      b.writeln(hu ? 'Gyorsjelentés a következő két hétben:' : 'Results due in the next two weeks:');
      for (final l in soon) {
        b.writeln('  ${l.symbol} – ${_date(l.earnings!, hu: hu)}');
      }
      b.writeln();
    }
    // Technikai jelzések a záróárakból (ha van elég adat).
    final signalled = all.where((l) => l.signal != null).toList();
    if (signalled.isNotEmpty) {
      b.writeln(hu ? 'Technikai jelzések:' : 'Technical signals:');
      for (final l in signalled) {
        final s = l.signal!;
        final text = switch (s.kind) {
          DigestSignalKind.rsiOversold => 'RSI ${s.value.round()} (${hu ? 'túladott' : 'oversold'})',
          DigestSignalKind.rsiOverbought => 'RSI ${s.value.round()} (${hu ? 'túlvett' : 'overbought'})',
          DigestSignalKind.crossedAbove200 =>
            hu ? 'a 200 napos átlag fölé került a héten' : 'crossed above its 200-day average this week',
          DigestSignalKind.crossedBelow200 =>
            hu ? 'a 200 napos átlag alá került a héten' : 'crossed below its 200-day average this week',
        };
        b.writeln('  ${l.symbol} – $text');
      }
      b.writeln();
    }
    // A héten kapott osztalékok (az appban rögzített vagy importált tételek).
    if (dividends.isNotEmpty) {
      b.writeln(hu ? 'Kapott osztalékok a héten:' : 'Dividends received this week:');
      for (final d in dividends) {
        b.writeln('  ${d.symbol} – ${_n(d.amount)} ${d.currency} (${_date(d.date, hu: hu)})');
      }
      // Az idei összesítés pénznemenként (átváltás nélkül – a szerver nem ismer árfolyamot).
      if (yearToDate.isNotEmpty) {
        final parts = [for (final e in yearToDate.entries) '${_n(e.value)} ${e.key}'];
        b.writeln('  ${hu ? 'Idén eddig' : 'This year so far'}: ${parts.join(', ')}');
      }
      b.writeln();
    }
    // Várható osztalékok a következő két hétben (a rögzítettek ritmusából becsülve).
    if (expected.isNotEmpty) {
      b.writeln(
        hu
            ? 'Várható osztalék a következő két hétben (a rögzítettek ritmusából):'
            : 'Dividends expected in the next two weeks (from your recorded payments):',
      );
      for (final d in expected) {
        b.writeln('  ${d.symbol} – ~${_n(d.amount)} ${d.currency} (${_date(d.date, hu: hu)})');
      }
      b.writeln();
    }
    // Friss negyedéves eredmények: jelentett és várt EPS, a meglepetés százaléka.
    final reported = all.where((l) => l.result != null).toList()
      ..sort((a, b) => b.result!.period.compareTo(a.result!.period));
    if (reported.isNotEmpty) {
      b.writeln(hu ? 'Friss gyorsjelentések:' : 'Fresh quarterly results:');
      for (final l in reported) {
        final r = l.result!;
        final surprise = r.estimate == 0 ? null : (r.actual / r.estimate - 1) * 100;
        final beat = r.actual >= r.estimate;
        b.writeln(
          '  ${l.symbol} – EPS ${_n(r.actual)} (${hu ? 'várt' : 'expected'} ${_n(r.estimate)}'
          '${surprise == null ? '' : ', ${_pct(surprise, hu: hu)}'}) – '
          '${beat ? (hu ? 'a várt felett' : 'above expectations') : (hu ? 'a várt alatt' : 'below expectations')}',
        );
      }
      b.writeln();
    }
    final withNews = all.where((l) => l.headline != null).toList()
      ..sort((a, b) => (b.weekChange ?? 0).abs().compareTo((a.weekChange ?? 0).abs()));
    if (withNews.isNotEmpty) {
      b.writeln(hu ? 'Hírek a legnagyobb mozgásokhoz:' : 'News behind the biggest moves:');
      for (final l in withNews) {
        b.writeln('  ${l.symbol} – ${l.headline}');
        if (l.url != null && l.url!.isNotEmpty) b.writeln('    ${l.url}');
      }
      b.writeln();
    }
    if (withChange.length < all.length) {
      b
        ..writeln(
          hu
              ? 'Ahol nincs százalék, ott a heti adat nem volt elérhető; az ár a legutóbbi.'
              : 'Where no percentage is shown, the weekly data was not available; the price is the latest.',
        )
        ..writeln();
    }
    b
      ..writeln(
        hu
            ? 'Nyisd meg a WhatStockot a részletekért és a friss elemzésekért.'
            : 'Open WhatStock for the details and fresh analyses.',
      )
      ..writeln(
        hu
            ? 'A heti összefoglalót az appban, a Beállításokban kapcsolhatod ki. Ez nem befektetési tanács.'
            : 'You can turn off the weekly summary in the app, in Settings. This is not investment advice.',
      );
    return (subject, b.toString());
  }
}

/// Egy kapott osztalék a heti levélhez.
typedef DigestDividend = ({String symbol, double amount, String currency, DateTime date});

/// Technikai jelzés a heti levélben: RSI szélsőség, vagy a 200 napos átlag
/// átlépése a héten.
enum DigestSignalKind { rsiOversold, rsiOverbought, crossedAbove200, crossedBelow200 }

typedef DigestSignal = ({DigestSignalKind kind, double value});

/// 14 napos RSI (Wilder-féle simítás) a záróárakból; `null`, ha nincs elég
/// adat vagy az ár nem mozdult. (Ugyanaz, mint az appban.)
double? rsi14(List<double> closes, [int n = 14]) {
  if (closes.length < n + 1) return null;
  var gain = 0.0, loss = 0.0;
  for (var i = 1; i <= n; i++) {
    final d = closes[i] - closes[i - 1];
    if (d >= 0) {
      gain += d;
    } else {
      loss -= d;
    }
  }
  gain /= n;
  loss /= n;
  for (var i = n + 1; i < closes.length; i++) {
    final d = closes[i] - closes[i - 1];
    gain = (gain * (n - 1) + (d > 0 ? d : 0)) / n;
    loss = (loss * (n - 1) + (d < 0 ? -d : 0)) / n;
  }
  if (gain == 0 && loss == 0) return null;
  if (loss == 0) return 100;
  return 100 - 100 / (1 + gain / loss);
}

double? _sma(List<double> closes, int n) =>
    closes.length < n ? null : closes.sublist(closes.length - n).reduce((a, b) => a + b) / n;

/// A sor jelzése a záróárakból (időrendben): előbb az RSI szélsőség, különben
/// a 200 napos átlag átlépése az utolsó öt kereskedési napon.
DigestSignal? signalOf(List<double> closes) {
  final r = rsi14(closes);
  if (r != null && r < 30) return (kind: DigestSignalKind.rsiOversold, value: r);
  if (r != null && r > 70) return (kind: DigestSignalKind.rsiOverbought, value: r);
  if (closes.length < 205) return null;
  final now = _sma(closes, 200), ago = _sma(closes.sublist(0, closes.length - 5), 200);
  if (now == null || ago == null || now <= 0 || ago <= 0) return null;
  final last = closes.last, prev = closes[closes.length - 6];
  if (last > now && prev <= ago) return (kind: DigestSignalKind.crossedAbove200, value: (last / now - 1) * 100);
  if (last < now && prev >= ago) return (kind: DigestSignalKind.crossedBelow200, value: (last / now - 1) * 100);
  return null;
}

/// Egy részvény sora az összefoglalóban.
class DigestLine {
  const DigestLine(
    this.symbol,
    this.price,
    this.weekChange,
    this.currency,
    this.earnings, {
    this.headline,
    this.url,
    this.result,
    this.signal,
  });

  /// A hét legfrissebb híre a részvényről (csak a legnagyobb mozgásoknál).
  final String? headline;
  final String? url;

  /// A nemrég zárult negyedév eredménye (jelentett és várt EPS), ha van.
  final LastResult? result;

  /// Technikai jelzés (RSI szélsőség, a 200 napos átlag átlépése a héten).
  final DigestSignal? signal;

  final String symbol;
  final double price;
  final double? weekChange;
  final String? currency;
  final DateTime? earnings;
}
