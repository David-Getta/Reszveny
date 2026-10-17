import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/app_preferences.dart';
import '../../core/desktop/system_notifier.dart';
import 'portfolio_store.dart';
import 'portfolio_valuation.dart';

/// Portfólió-riasztás: ha a teljes portfólió egy nap alatt legalább a beállított
/// %-ot mozdul (fel vagy le), egy értesítés jelzi – naponta legfeljebb egyszer,
/// hétvégén nem. Ha a mozgás ugyanaz, mint a legutóbb jelzett (pl. hétfő reggel
/// még a pénteki árak látszanak), nem szól újra.
class PortfolioMoveWatcher {
  PortfolioMoveWatcher({
    required this.portfolio,
    required this.preferences,
    required this.notifier,
    required this.snapshot,
    required this.describe,
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

  /// Ellenőrzés most; igaz, ha értesítést küldött.
  Future<bool> check() async {
    final threshold = preferences.portfolioMoveAlert;
    final now = _clock();
    if (threshold <= 0 || portfolio.positions.isEmpty) return false;
    if (now.weekday == DateTime.saturday || now.weekday == DateTime.sunday) return false;
    final day = now.toIso8601String().substring(0, 10);
    final last = preferences.portfolioMoveNotified?.split('|');
    if (last != null && last.first == day) return false;
    try {
      final s = await snapshot();
      final move = s.dayGainPercent;
      if (move == null || move.abs() < threshold || s.hasExcluded) return false;
      if (last != null && last.length == 2 && last[1] == _rounded(move)) return false;
      final text = describe(s);
      await notifier.show(id: 'portfolio-move-$day', title: text.title, body: text.body);
      await preferences.setPortfolioMoveNotified('$day|${_rounded(move)}');
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
