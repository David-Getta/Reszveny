import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/app_preferences.dart';
import '../../core/models/analysis_extras.dart';
import '../analysis/report_store.dart';
import '../market_data/market_data_provider.dart';
import '../portfolio/portfolio_store.dart';

enum UpcomingEventKind { earnings, catalyst }

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
  }) : _clock = clock ?? DateTime.now;

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

  /// A figyelt részvények friss (már megjelent) negyedéves eredményei, a
  /// legújabb negyedév elöl.
  List<RecentResult> get recent => _recent;
  bool _loading = false;
  bool _loaded = false;

  List<UpcomingEvent> get events => _events;
  bool get loading => _loading;
  bool get loaded => _loaded;

  /// A figyelt részvények: kedvencek és a portfólió tételei.
  List<String> get watched =>
      {...preferences.favorites, for (final p in portfolio.positions) p.symbol.toUpperCase()}.take(maxSymbols).toList();

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
      final queue = [...symbols];
      Future<void> worker() async {
        while (queue.isNotEmpty) {
          final s = queue.removeLast();
          final cached = _earnings[s];
          if (!force && cached != null && _clock().difference(cached.$1) < cacheFor) continue;
          try {
            _earnings[s] = (_clock(), await marketData.earnings(s).timeout(const Duration(seconds: 20)));
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
  }

  static DateTime _day(DateTime d) => DateTime(d.year, d.month, d.day);

  /// Nyelvfüggetlen jelek arra, hogy az elemzés eseménye maga a gyorsjelentés
  /// (negyedév-jelölés vagy a szokásos rövidítések).
  static final _earningsHint = RegExp(r'\bQ[1-4]\b|\bFY\s?\d|\bEPS\b|\b10-[QK]\b|earnings', caseSensitive: false);

  static bool _looksLikeEarnings(String text) => _earningsHint.hasMatch(text);
}
