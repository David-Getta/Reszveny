import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/app_preferences.dart';
import '../../core/desktop/system_notifier.dart';
import '../../core/util/us_market_hours.dart';
import 'portfolio_store.dart';
import 'portfolio_valuation.dart';

/// Portfólió-riasztás: ha a teljes portfólió egy nap alatt legalább a beállított
/// %-ot mozdul (fel vagy le), egy értesítés jelzi – naponta legfeljebb egyszer,
/// hétvégén nem, és egy kereskedési napról (a legfrissebb ár UTC-napja) csak egyszer:
/// másnap reggel, ünnepnapon még az előző nap mozgása látszik, arról nem szól újra.
/// A kitűzött portfólió-cél elérésekor is szól, célonként egyszer.
class PortfolioMoveWatcher {
  PortfolioMoveWatcher({
    required this.portfolio,
    required this.preferences,
    required this.notifier,
    required this.snapshot,
    required this.describe,
    this.describeGoal,
    this.onNotified,
    this.interval = const Duration(minutes: 15),
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final PortfolioStore portfolio;
  final AppPreferences preferences;
  final AlertNotifier notifier;

  /// A portfólió friss pillanatképe (árakkal, az összesítés pénznemében).
  final Future<PortfolioSnapshot> Function() snapshot;

  /// Az értesítés szövege a felhasználó nyelvén.
  final ({String title, String body}) Function(PortfolioSnapshot s) describe;

  /// A cél elérésének szövege (ha nincs megadva, a célt nem figyeli).
  final ({String title, String body}) Function(PortfolioSnapshot s, ({double amount, String currency}) goal)?
  describeGoal;
  final void Function()? onNotified;
  final Duration interval;
  final DateTime Function() _clock;

  Timer? _timer;

  void start() {
    _timer ??= Timer.periodic(interval, (_) => check());
    Timer(const Duration(minutes: 3), check);
  }

  /// A napi mozgás tizedre kerekítve (ezt hasonlítjuk a legutóbb jelzetthez).
  static String _rounded(double v) => v.toStringAsFixed(1);

  /// A cél azonosítója (összeg és pénznem): új célnál újra szól.
  static String _goalKey(({double amount, String currency}) g) => '${g.amount}|${g.currency}';

  /// Ellenőrzés most; igaz, ha értesítést küldött.
  Future<bool> check() async {
    if (portfolio.positions.isEmpty) return false;
    final threshold = preferences.portfolioMoveAlert;
    final now = _clock();
    final day = now.toIso8601String().substring(0, 10);
    final last = preferences.portfolioMoveNotified?.split('|');
    // Hétvége New York szerint: keletebbre a pénteki kereskedés helyben szombatra esik.
    final weekday = UsMarketHours.newYorkTime(now.toUtc()).weekday;
    final moveDue =
        threshold > 0 &&
        weekday != DateTime.saturday &&
        weekday != DateTime.sunday &&
        (last == null || last.first != day);
    final goal = preferences.portfolioGoal;
    final goalDue = describeGoal != null && goal != null && preferences.portfolioGoalNotified != _goalKey(goal);
    if (!moveDue && !goalDue) return false;
    try {
      final s = await snapshot();
      var sent = false;
      if (goalDue && s.currency == goal.currency && !s.hasExcluded && s.totalValue >= goal.amount) {
        final text = describeGoal!(s, goal);
        await notifier.show(id: 'portfolio-goal', title: text.title, body: text.body);
        await preferences.setPortfolioGoalNotified(_goalKey(goal));
        sent = true;
      }
      final move = s.dayGainPercent;
      if (!moveDue || move == null || move.abs() < threshold || s.hasExcluded) return sent;
      final session = s.quoteTime?.toUtc().toIso8601String().substring(0, 10);
      if (last != null && last.length >= 3 && session != null && last[2] == session) return sent;
      // Kereskedési nap nélkül (vagy a régi, két tagú jelzésnél): ugyanaz a kerekített mozgás nem új.
      if (last != null && last.length >= 2 && (session == null || last.length == 2) && last[1] == _rounded(move)) {
        return sent;
      }
      final text = describe(s);
      await notifier.show(id: 'portfolio-move-$day', title: text.title, body: text.body);
      await preferences.setPortfolioMoveNotified('$day|${_rounded(move)}${session == null ? '' : '|$session'}');
      onNotified?.call();
      return true;
    } catch (e) {
      debugPrint('Portfólió-riasztás ellenőrzése nem sikerült: $e');
      return false;
    }
  }

  void dispose() => _timer?.cancel();
}

/// A legnagyobbat mozdult pozíció napi változása (%), az értesítés szövegéhez.
({String symbol, double percent})? biggestMover(PortfolioSnapshot s) {
  ({String symbol, double percent})? best;
  for (final r in s.rows) {
    final price = r.price, change = r.dayChange;
    if (!r.inTotal || price == null || change == null || price - change == 0) continue;
    final pct = change / (price - change) * 100;
    if (best == null || pct.abs() > best.percent.abs()) best = (symbol: r.position.symbol, percent: pct);
  }
  return best;
}
