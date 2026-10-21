import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/app_preferences.dart';
import '../alerts/price_alert.dart';
import '../events/events_service.dart';
import '../market_data/market_data_provider.dart';
import '../fx/fx_service.dart';
import '../portfolio/portfolio_store.dart';
import '../portfolio/portfolio_valuation.dart' show PortfolioSnapshot;

/// Egy figyelt részvény mozgása a legutóbbi látogatás óta.
typedef AwayMove = ({String symbol, double from, double to});

/// „Amíg távol voltál”: mi történt a figyelt részvényekkel a legutóbbi
/// látogatás óta (legalább [AwaySummary.minAway] szünet után).
class AwayReport {
  const AwayReport({
    required this.since,
    required this.moves,
    required this.alertsTriggered,
    required this.reported,
    this.portfolioPercent,
  });

  final DateTime since;

  /// A portfólió értékének változása százalékban azóta (az ár nélküli vagy
  /// árfolyam nélküli pozíciók nélkül); `null`, ha nincs mihez mérni.
  final double? portfolioPercent;

  /// A legnagyobb mozgások (legalább [AwaySummary.minMovePercent]), a legnagyobb elöl.
  final List<AwayMove> moves;

  /// Hány riasztás teljesült azóta.
  final int alertsTriggered;

  /// Mely cégek adtak gyorsjelentést azóta (a látogatáskor még előre jelzett napok alapján).
  final List<String> reported;

  bool get isQuiet => moves.isEmpty && alertsTriggered == 0 && reported.isEmpty && (portfolioPercent?.abs() ?? 0) < 0.5;

  static double percent(AwayMove m) => (m.to - m.from) / m.from * 100;
}

/// Indításkor összeveti a figyelt részvények mai árát a legutóbbi látogatáskor
/// elmentett árakkal (AI és hálózati többlet nélkül: az árak úgyis kellenek a
/// kezdőképernyőhöz). Ha legalább [minAway] telt el, [report] készül; a kártya
/// elvethető. Minden indításkor új pillanatkép készül (árak és a következő
/// gyorsjelentések napja), így a következő látogatás ehhez viszonyít.
class AwaySummary extends ChangeNotifier {
  AwaySummary({
    required this.marketData,
    required this.preferences,
    required this.portfolio,
    required this.alerts,
    required this.events,
    required this.fx,
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final MarketDataProvider marketData;
  final AppPreferences preferences;
  final PortfolioStore portfolio;
  final AlertStore alerts;
  final EventsService events;
  final FxService fx;
  final DateTime Function() _clock;

  /// A megjelenítési pénznem (az AppServices állítja be, a nyelv ismeretében);
  /// nélküle a pozíciók közös pénzneme.
  String? Function()? displayCurrency;

  static const minAway = Duration(hours: 20);
  static const maxSymbols = 20;
  static const minMovePercent = 1.0;
  static const maxMoves = 4;
  static const storeKey = 'visit_snapshot';

  AwayReport? _report;
  AwayReport? get report => _report;
  DateTime? _lastCheck;

  /// A portfólió részvényei elöl, utána a kedvencek.
  List<String> get watched =>
      {for (final p in portfolio.positions) p.symbol.toUpperCase(), ...preferences.favorites}.take(maxSymbols).toList();

  /// Indításkor (és előtérbe kerüléskor, ha azóta legalább [minAway] telt el –
  /// telefonon az app ritkán indul újra): az előző pillanatkép alapján a
  /// jelentés, majd az új pillanatkép.
  Future<void> check() async {
    final now = _clock();
    if (_lastCheck case final last? when now.difference(last) < minAway) return;
    _lastCheck = now;
    final symbols = watched;
    if (symbols.isEmpty) return;
    SharedPreferences prefs;
    try {
      prefs = await SharedPreferences.getInstance();
    } catch (_) {
      return;
    }
    final prev = _parse(prefs.getString(storeKey));
    final prices = <String, double>{};
    await Future.wait([
      for (final s in symbols)
        marketData.quote(s).then((q) {
          if (q.price > 0) prices[s] = q.price;
        }, onError: (_) {}),
    ]);
    if (prev != null && now.difference(prev.at) >= minAway) {
      final moves =
          [
              for (final e in prices.entries)
                if (prev.prices[e.key] case final from? when from > 0) (symbol: e.key, from: from, to: e.value),
            ].where((m) => AwayReport.percent(m).abs() >= minMovePercent).toList()
            ..sort((a, b) => AwayReport.percent(b).abs().compareTo(AwayReport.percent(a).abs()));
      final reported = [
        for (final e in prev.earnings.entries)
          if (!e.value.isAfter(now) && symbols.contains(e.key)) e.key,
      ];
      _report = AwayReport(
        since: prev.at,
        moves: moves.take(maxMoves).toList(),
        alertsTriggered: alerts.alerts.where((a) => a.triggeredAt?.isAfter(prev.at) ?? false).length,
        reported: reported,
        portfolioPercent: await _portfolioPercent(prev.prices, prices),
      );
      notifyListeners();
    }
    if (prices.isEmpty) return;
    // A következő gyorsjelentések napja: amelyik a következő látogatásig elmúlik, az „jelentett”.
    try {
      await events.refresh().timeout(const Duration(seconds: 25));
    } catch (_) {
      // Események nélkül is jó a pillanatkép.
    }
    final earnings = {
      for (final e in events.events)
        if (e.kind == UpcomingEventKind.earnings && prices.containsKey(e.symbol)) e.symbol: e.date,
    };
    try {
      await prefs.setString(
        storeKey,
        jsonEncode({
          'at': now.toIso8601String(),
          'prices': prices,
          'earnings': {for (final e in earnings.entries) e.key: e.value.toIso8601String().substring(0, 10)},
        }),
      );
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }

  /// A portfólió értékváltozása: pozíciónként darab × árkülönbség, az
  /// összesítés pénznemére váltva; amelyikhez nincs ár vagy árfolyam, kimarad.
  Future<double?> _portfolioPercent(Map<String, double> from, Map<String, double> to) async {
    final positions = portfolio.positions;
    final currency = PortfolioSnapshot.totalCurrency(positions, displayCurrency?.call());
    var before = 0.0, after = 0.0;
    for (final p in positions) {
      final a = from[p.symbol], b = to[p.symbol];
      if (a == null || b == null) continue;
      double? rate = 1;
      if (p.currency != currency) {
        try {
          rate = (await fx.rate(p.currency, currency))?.rate;
        } catch (_) {
          rate = null;
        }
      }
      if (rate == null) continue;
      before += p.quantity * a * rate;
      after += p.quantity * b * rate;
    }
    return before > 0 ? (after - before) / before * 100 : null;
  }

  void dismiss() {
    _report = null;
    notifyListeners();
  }

  static ({DateTime at, Map<String, double> prices, Map<String, DateTime> earnings})? _parse(String? raw) {
    if (raw == null) return null;
    try {
      final j = jsonDecode(raw);
      if (j is! Map) return null;
      final at = DateTime.tryParse('${j['at']}');
      if (at == null) return null;
      return (
        at: at,
        prices: {
          for (final e in (j['prices'] is Map ? j['prices'] as Map : const {}).entries)
            if (e.value is num) '${e.key}': (e.value as num).toDouble(),
        },
        earnings: {
          for (final e in (j['earnings'] is Map ? j['earnings'] as Map : const {}).entries)
            '${e.key}': ?DateTime.tryParse('${e.value}'),
        },
      );
    } catch (_) {
      return null;
    }
  }
}
