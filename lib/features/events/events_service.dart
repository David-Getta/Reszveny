import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/app_preferences.dart';
import '../../core/models/analysis_extras.dart';
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

  /// Változott a portfólió, miközben épp töltöttünk: a végén még egy kör.
  bool _dirty = false;

  void _onPortfolioChanged() {
    if (!_loaded && !_loading) return;
    if (_loading) {
      _dirty = true;
      return;
    }
    refresh();
  }

  @override
  void dispose() {
    portfolio.removeListener(_onPortfolioChanged);
    super.dispose();
  }

  List<UpcomingEvent> get events => _events;
  bool get loading => _loading;
  bool get loaded => _loaded;

  /// A figyelt részvények: előbb a portfólió tételei (a saját pénz), aztán a
  /// kedvencek – az eredmény-előzményt is ebben a sorrendben kérjük le.
  List<String> get watched =>
      {for (final p in portfolio.positions) p.symbol.toUpperCase(), ...preferences.favorites}.take(maxSymbols).toList();

  DateTime get _today {
    final n = _clock();
    return DateTime(n.year, n.month, n.day);
  }

  Future<void> refresh({bool force = false}) async {
    if (_loading) return;
    _loading = true;
    notifyListeners();
    try {
      final today = _today;
      final until = today.add(const Duration(days: horizonDays));
      bool inRange(DateTime d) => !d.isBefore(today) && !d.isAfter(until);

      final symbols = watched;
      final withHistory = symbols.take(recentMaxSymbols).toSet();
      final queue = [...symbols];
      Future<void> worker() async {
        while (queue.isNotEmpty) {
          final s = queue.removeLast();
          final cached = _earnings[s];
          if (!force && cached != null && _clock().difference(cached.$1) < cacheFor) continue;
          try {
            final overview = withHistory.contains(s)
                ? await marketData.earnings(s).timeout(const Duration(seconds: 20))
                : EarningsOverview(next: await marketData.nextEarnings(s).timeout(const Duration(seconds: 20)));
            _earnings[s] = (_clock(), overview);
          } catch (e) {
            // Egy részvény hibája nem akadályozza a többit.
            debugPrint('Gyorsjelentés-dátum nem tölthető ($s): $e');
          }
        }
      }

      await Future.wait([for (var i = 0; i < parallel; i++) worker()]);

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
      // Várható osztalékok a még birtokolt részvényekre, a rögzített kifizetések ritmusából.
      for (final x in expectedDividends(
        portfolio.dividends,
        portfolio.positions.map((p) => p.symbol),
        now: _clock(),
        horizon: const Duration(days: horizonDays),
      )) {
        if (!inRange(_day(x.date))) continue;
        list.add(
          UpcomingEvent(
            symbol: x.symbol,
            date: _day(x.date),
            kind: UpcomingEventKind.dividend,
            amount: x.amount,
            currency: x.currency,
          ),
        );
      }
      list.sort((a, b) {
        final byDate = a.date.compareTo(b.date);
        return byDate != 0 ? byDate : a.symbol.compareTo(b.symbol);
      });
      _events = list;
      // Friss eredmények: a legutóbbi negyedév, ha [recentDays] napon belül zárult.
      final recent =
          <RecentResult>[
            for (final s in symbols)
              if (_earnings[s]?.$2.history.where((h) => h.actual != null && h.estimate != null).firstOrNull
                  case final r? when !r.period.isAfter(today) && today.difference(_day(r.period)).inDays <= recentDays)
                (symbol: s, result: r),
          ]..sort((a, b) {
            final byPeriod = b.result.period.compareTo(a.result.period);
            return byPeriod != 0 ? byPeriod : a.symbol.compareTo(b.symbol);
          });
      _recent = recent;
      _loaded = true;
    } finally {
      _loading = false;
      notifyListeners();
    }
    if (_dirty) {
      _dirty = false;
      await refresh();
    }
  }

  static DateTime _day(DateTime d) => DateTime(d.year, d.month, d.day);

  /// Nyelvfüggetlen jelek arra, hogy az elemzés eseménye maga a gyorsjelentés
  /// (negyedév-jelölés vagy a szokásos rövidítések).
  static final _earningsHint = RegExp(r'\bQ[1-4]\b|\bFY\s?\d|\bEPS\b|\b10-[QK]\b|earnings', caseSensitive: false);

  static bool _looksLikeEarnings(String text) => _earningsHint.hasMatch(text);
}
