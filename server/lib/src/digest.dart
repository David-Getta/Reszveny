import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'db.dart';
import 'mailer.dart';

/// Egy részvény heti mozgása: a legutóbbi ár és a hét eleje óta mért változás
/// (%); ha a heti adat nem érhető el, csak az ár.
typedef WeekMove = ({double price, double? weekChange, String? currency});

typedef WeekLookup = Future<WeekMove?> Function(String symbol);

/// A következő gyorsjelentés dátuma [from] és [to] között, vagy `null`.
typedef EarningsLookup = Future<DateTime?> Function(String symbol, DateTime from, DateTime to);

/// A részvény legfrissebb híre [from] és [to] között (cím és link), vagy `null`.
typedef HeadlineLookup = Future<({String title, String url})?> Function(String symbol, DateTime from, DateTime to);

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
    this.pause = Duration.zero,
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final Store store;
  final Mailer mailer;
  final WeekLookup week;
  final EarningsLookup earnings;

  /// Ha meg van adva, a hét legnagyobb mozgásai mellé a friss hír is bekerül.
  final HeadlineLookup? headline;

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

  /// A fiók részvényei: előbb a portfólióé (a pénznemmel), aztán a többi kedvenc.
  static ({List<String> portfolio, List<String> favorites, Map<String, String> currencies}) symbolsOf(
    Map<String, dynamic> data,
  ) {
    // A még birtokolt darabszám tickerenként (vétel +, eladás −); a teljesen
    // eladott részvény kimarad.
    final held = <String, double>{}, currencies = <String, String>{};
    for (final l in (data['lots'] as List? ?? const [])) {
      if (l is! Map || l['symbol'] is! String || l['quantity'] is! num) continue;
      final s = (l['symbol'] as String).toUpperCase();
      final q = (l['quantity'] as num).toDouble();
      held[s] = (held[s] ?? 0) + (l['side'] == 'sell' ? -q : q);
      if (l['currency'] is String) currencies[s] ??= l['currency'] as String;
    }
    final portfolio = [
      for (final e in held.entries)
        if (e.value > 1e-9) e.key,
    ];
    final favorites = <String>[
      for (final f in (data['favorites'] as List? ?? const []))
        if (f is String && !portfolio.contains(f.toUpperCase())) f.toUpperCase(),
    ];
    final p = portfolio.take(maxSymbols).toList();
    return (portfolio: p, favorites: favorites.toSet().take(maxSymbols - p.length).toList(), currencies: currencies);
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
              ),
        ];
        final portfolio = lines(s.portfolio), favorites = lines(s.favorites);
        if (portfolio.isEmpty && favorites.isEmpty) continue;
        try {
          final (subject, text) = digestEmail(portfolio, favorites, hu: acc.data['lang'] == 'hu');
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
  static (String, String) digestEmail(List<DigestLine> portfolio, List<DigestLine> favorites, {required bool hu}) {
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

/// Egy részvény sora az összefoglalóban.
class DigestLine {
  const DigestLine(this.symbol, this.price, this.weekChange, this.currency, this.earnings, {this.headline, this.url});

  /// A hét legfrissebb híre a részvényről (csak a legnagyobb mozgásoknál).
  final String? headline;
  final String? url;

  final String symbol;
  final double price;
  final double? weekChange;
  final String? currency;
  final DateTime? earnings;
}
