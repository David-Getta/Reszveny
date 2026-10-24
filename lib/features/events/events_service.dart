import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/app_preferences.dart';
import '../../core/models/analysis_extras.dart';
import '../../core/util/us_market_hours.dart';
import '../analysis/report_store.dart';
import '../market_data/market_data_provider.dart';
import '../portfolio/dividend_forecast.dart';
import '../portfolio/portfolio_store.dart';

/// Gyorsjelentés (piaci adatból), elemzésben megjelölt esemény, vagy a rögzített
/// kifizetések ritmusából várható osztalék.
enum UpcomingEventKind { earnings, catalyst, dividend }

/// Egy figyelt részvény friss negyedéves eredménye.
typedef RecentResult = ({String symbol, EarningsSurprise result});

/// Egy közelgő esemény: gyorsjelentés (piaci adatból) vagy egy elemzésben
/// megjelölt esemény (a felhasználó nyelvén, ahogy az elemzés írta).
class UpcomingEvent {
  const UpcomingEvent({
    required this.symbol,
    required this.date,
    required this.kind,
    this.text = '',
    this.hour,
    this.epsEstimate,
    this.amount,
    this.currency,
    this.announced = false,
  });

  final String symbol;

  /// A nap (helyi idő szerint, időpont nélkül).
  final DateTime date;
  final UpcomingEventKind kind;

  /// Elemzésből származó eseménynél a leírás.
  final String text;

  /// Gyorsjelentésnél: `bmo` (nyitás előtt), `amc` (zárás után) vagy `null`.
  final String? hour;
  final double? epsEstimate;

  /// Várható osztaléknál: az utolsó rögzített kifizetés összege és pénzneme.
  final double? amount;
  final String? currency;

  /// Jövőre rögzített (bejelentett) osztalék: pontos összeg, már rögzítve (nem becslés).
  final bool announced;
}

/// A kedvencek és a portfólió közelgő gyorsjelentései, valamint az elmentett
/// elemzések dátumozott eseményei, időrendben. A gyorsjelentés-dátumokat
/// tickerenként 12 órára megjegyzi.
class EventsService extends ChangeNotifier {
  EventsService({
    required this.marketData,
    required this.preferences,
    required this.portfolio,
    required this.reports,
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now {
    // Új vétel, eladás vagy osztalék: a lista a gyorsítótárból azonnal frissül
    // (a már ismert gyorsjelentés-dátumokhoz nem kell új lekérés).
    portfolio.addListener(_onPortfolioChanged);
    // A kedvencek változása is (új kedvenc dátuma, levett kedvenc eltűnése).
    preferences.addListener(_onPortfolioChanged);
  }

  final MarketDataProvider marketData;
  final AppPreferences preferences;
  final PortfolioStore portfolio;
  final ReportStore reports;
  final DateTime Function() _clock;

  /// Ennyi napra előre mutatjuk az eseményeket.
  static const horizonDays = 90;

  /// Legfeljebb ennyi részvény gyorsjelentését kérdezzük le (és egyszerre ennyit).
  static const maxSymbols = 30;
  static const parallel = 4;
  static const cacheFor = Duration(hours: 12);

  final Map<String, (DateTime at, EarningsOverview overview)> _earnings = {};

  /// Sikertelen lekérések ideje tickerenként: ennyi ideig nem kérdezzük újra
  /// (és a portfólió változása sem indít miattuk hálózati kört).
  final Map<String, DateTime> _failed = {};
  static const retryFailedAfter = Duration(hours: 1);
  List<UpcomingEvent> _events = const [];
  List<RecentResult> _recent = const [];

  /// Ennyi napon belül zárult negyedév eredménye számít frissnek.
  static const recentDays = 45;

  /// Legfeljebb ennyi részvénynél kérjük le az eredmény-előzményt is (két hívás
  /// részvényenként); a többinél csak a következő dátumot, hogy sok kedvencnél
  /// se fussunk bele az adatszolgáltató percenkénti korlátjába.
  static const recentMaxSymbols = 15;

  /// A figyelt részvények friss (már megjelent) negyedéves eredményei, a
  /// legújabb negyedév elöl.
  List<RecentResult> get recent => _recent;
  bool _loading = false;
  bool _loaded = false;

  /// Amire a lista épül a portfólióból: a tranzakciók és az osztalékok
  /// (a javításuk is). Más változás (készpénz, jegyzet) nem indít újraépítést.
  String _fingerprint() => '${portfolio.holdingsKey}|${portfolio.dividendsKey}|${preferences.favorites.join(',')}';
  String _seen = '';

  /// Új vétel, eladás vagy osztalék: a lista a gyorsítótárból újraépül; lekérés
  /// csak akkor kell, ha olyan részvény jött, amelyet még nem kérdeztünk le
  /// (a nemrég sikertelen sem számít annak). Töltés közben nem indít semmit –
  /// a [refresh] a végén összeveti az indulásakor látott ujjlenyomatot a
  /// mostanival, és eltérésnél még egy kört fut.
  void _onPortfolioChanged() {
    if (!_loaded || _loading || _fingerprint() == _seen) return;
    if (watched.any((s) => !_earnings.containsKey(s) && !_failed.containsKey(s))) {
      refresh();
    } else {
      _rebuild().catchError((Object e) => debugPrint('Események nem építhetők újra: $e'));
    }
  }

  @override
  void dispose() {
    portfolio.removeListener(_onPortfolioChanged);
    preferences.removeListener(_onPortfolioChanged);
    super.dispose();
  }

  List<UpcomingEvent> get events => _events;

  /// Az elmúlt [recentEarningsDays] nap gyorsjelentései (a korábban lekért dátumból):
  /// a napi összefoglaló ezekhez kéri le a friss eredményt.
  List<UpcomingEvent> get recentEarnings => _recentEarnings;
  List<UpcomingEvent> _recentEarnings = const [];
  final Map<String, UpcomingEarnings> _pastReports = {};
  static const recentEarningsDays = 2;
  bool get loading => _loading;
  bool get loaded => _loaded;

  /// A figyelt részvények: előbb a portfólió tételei (a saját pénz), aztán a
  /// kedvencek – az eredmény-előzményt is ebben a sorrendben kérjük le.
  List<String> get watched =>
      {for (final p in portfolio.positions) p.symbol.toUpperCase(), ...preferences.favorites}.take(maxSymbols).toList();

  /// A mai nap az eseményekhez: New Yorktól keletre egy aznapi (New York-i dátumú)
  /// gyorsjelentés még nem múlt el ([UsMarketHours.eventToday]).
  DateTime get _today => UsMarketHours.eventToday(_clock());

  /// A figyelt részvények gyorsjelentés-dátumainak (és előzményének) lekérése a
  /// gyorsítótár mellé, aztán a lista összeállítása.
  ///
  /// Ha már fut egy frissítés, a hívó azt várja meg (nem tér vissza azonnal a régi
  /// listával); a kényszerített frissítés utána még egyszer lefut.
  Future<void> refresh({bool force = false}) {
    if (_running case final running?) return force ? running.then((_) => refresh(force: true)) : running;
    final run = _refreshOnce(force: force);
    _running = run;
    return run.whenComplete(() {
      if (identical(_running, run)) _running = null;
    });
  }

  Future<void>? _running;

  Future<void> _refreshOnce({bool force = false}) async {
    _loading = true;
    final started = _fingerprint();
    _seen = started;
    notifyListeners();
    try {
      final symbols = watched;
      final withHistory = symbols.take(recentMaxSymbols).toSet();
      final queue = [...symbols];
      Future<void> worker() async {
        while (queue.isNotEmpty) {
          final s = queue.removeLast();
          final cached = _earnings[s];
          if (!force && cached != null && _clock().difference(cached.$1) < cacheFor) continue;
          final failedAt = _failed[s];
          if (!force && failedAt != null && _clock().difference(failedAt) < retryFailedAfter) continue;
          try {
            final overview = withHistory.contains(s)
                ? await marketData.earnings(s).timeout(const Duration(seconds: 20))
                : EarningsOverview(next: await marketData.nextEarnings(s).timeout(const Duration(seconds: 20)));
            // Az újralekérés már a következő negyedévet adja: a most elmúlt jelentés
            // napja megmarad (a napi összefoglaló friss eredményéhez).
            if (cached?.$2.next case final old?
                when _day(old.date).isBefore(_today) && overview.next?.date != old.date) {
              _pastReports[s] = old;
            }
            _earnings[s] = (_clock(), overview);
            _failed.remove(s);
          } catch (e) {
            // Egy részvény hibája nem akadályozza a többit; egy órán át nem kérdezzük újra.
            _failed[s] = _clock();
            debugPrint('Gyorsjelentés-dátum nem tölthető ($s): $e');
          }
        }
      }

      await Future.wait([for (var i = 0; i < parallel; i++) worker()]);
      await _rebuild(symbols: symbols, notify: false);
    } catch (e) {
      // Egy hibás mentett elemzés vagy adat nem viszi el a listát: a meglévő marad.
      debugPrint('Események nem frissíthetők: $e');
    } finally {
      _loading = false;
      notifyListeners();
    }
    // Közben változott a portfólió: még egy kör (az új részvény dátumával).
    if (_fingerprint() != started) await _refreshOnce();
  }

  /// Újraépítés hálózat nélkül (pl. az osztalék-emlékeztetőnek, ha a
  /// gyorsjelentés-emlékeztető ki van kapcsolva).
  Future<void> rebuildOffline() => _rebuild();

  /// A lista és a friss eredmények összeállítása a már lekért dátumokból, az
  /// elmentett elemzésekből és a portfólióból – hálózat nélkül.
  Future<void> _rebuild({List<String>? symbols, bool notify = true}) async {
    // A listener hívásakor az akkori állapotot jegyezzük meg; a [refresh] a sajátját kezeli.
    if (symbols == null) _seen = _fingerprint();
    final today = _today;
    final until = today.add(const Duration(days: horizonDays));
    bool inRange(DateTime d) => !d.isBefore(today) && !d.isAfter(until);
    symbols ??= watched;
    final since = today.subtract(const Duration(days: recentEarningsDays));
    _recentEarnings = [
      for (final s in symbols)
        for (final e in [
          ?_earnings[s]?.$2.next,
          ?_pastReports[s],
        ].where((e) => _day(e.date).isBefore(today) && !_day(e.date).isBefore(since)).take(1))
          UpcomingEvent(
            symbol: s,
            date: _day(e.date),
            kind: UpcomingEventKind.earnings,
            hour: e.hour,
            epsEstimate: e.epsEstimate,
          ),
    ];
    final list = <UpcomingEvent>[
      for (final s in symbols)
        if (_earnings[s]?.$2.next case final e? when inRange(_day(e.date)))
          UpcomingEvent(
            symbol: s,
            date: _day(e.date),
            kind: UpcomingEventKind.earnings,
            hour: e.hour,
            epsEstimate: e.epsEstimate,
          ),
    ];
    // Az elemzések eseményei (a gyorsjelentéssel egy hetet nem ismételjük meg).
    for (final r in await reports.savedReports(limit: ReportStore.maxSaved)) {
      for (final c in r.outlook?.catalysts ?? const []) {
        final d = c.parsedDate;
        if (d == null || !inRange(_day(d))) continue;
        final day = _day(d);
        final dup = list.any(
          (e) =>
              e.symbol == r.symbol &&
              e.kind == UpcomingEventKind.earnings &&
              e.date.difference(day).inDays.abs() <= 3 &&
              _looksLikeEarnings(c.event),
        );
        if (!dup) {
          list.add(UpcomingEvent(symbol: r.symbol, date: day, kind: UpcomingEventKind.catalyst, text: c.event));
        }
      }
    }
    // Várható osztalékok a még birtokolt részvényekre, a rögzített kifizetések ritmusából
    // (a napok már dátumok; a horizont ugyanaz, mint a többi eseményé).
    for (final x in expectedDividends(
      portfolio.dividends,
      portfolio.heldSymbols,
      now: today,
      grace: Duration.zero,
      horizon: const Duration(days: horizonDays),
      scale: portfolio.holdingScale,
    )) {
      list.add(
        UpcomingEvent(
          symbol: x.symbol,
          date: x.date,
          kind: UpcomingEventKind.dividend,
          amount: x.amount,
          currency: x.currency,
          announced: x.announced,
        ),
      );
    }
    list.sort((a, b) {
      final byDate = a.date.compareTo(b.date);
      return byDate != 0 ? byDate : a.symbol.compareTo(b.symbol);
    });
    _events = list;
    // Friss eredmények: a legutóbbi negyedév, ha [recentDays] napon belül zárult.
    _recent =
        <RecentResult>[
          for (final s in symbols)
            if (_earnings[s]?.$2.history.where((h) => h.actual != null && h.estimate != null).firstOrNull case final r?
                when !r.period.isAfter(today) && today.difference(_day(r.period)).inDays <= recentDays)
              (symbol: s, result: r),
        ]..sort((a, b) {
          final byPeriod = b.result.period.compareTo(a.result.period);
          return byPeriod != 0 ? byPeriod : a.symbol.compareTo(b.symbol);
        });
    _loaded = true;
    if (notify) notifyListeners();
  }

  static DateTime _day(DateTime d) => DateTime(d.year, d.month, d.day);

  /// Nyelvfüggetlen jelek arra, hogy az elemzés eseménye maga a gyorsjelentés
  /// (negyedév-jelölés vagy a szokásos rövidítések).
  static final _earningsHint = RegExp(r'\bQ[1-4]\b|\bFY\s?\d|\bEPS\b|\b10-[QK]\b|earnings', caseSensitive: false);

  static bool _looksLikeEarnings(String text) => _earningsHint.hasMatch(text);
}
