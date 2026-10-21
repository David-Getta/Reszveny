import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/app_preferences.dart';
import '../../core/desktop/system_notifier.dart';
import '../../core/models/price_history.dart';
import '../market_data/market_data_provider.dart';
import '../portfolio/portfolio_store.dart';
import 'watch_signals.dart';

/// Technikai jelzés-értesítés: naponta egyszer rendszerértesítés, ha a
/// kedvencek vagy a portfólió valamelyik részvényén jelzés van (RSI túladott /
/// túlvett, a 200 napos átlag átlépése). Asztali gépen, amíg az app fut; a
/// Beállításokban kikapcsolható.
class SignalNotifier {
  SignalNotifier({
    required this.marketData,
    required this.preferences,
    required this.portfolio,
    required this.notifier,
    required this.describe,
    this.interval = const Duration(hours: 6),
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final MarketDataProvider marketData;
  final AppPreferences preferences;
  final PortfolioStore portfolio;
  final AlertNotifier notifier;
  final Duration interval;
  final DateTime Function() _clock;

  /// Az értesítés címe és szövege a felhasználó nyelvén (legfeljebb [maxListed] jelzés).
  final ({String title, String body}) Function(List<WatchSignal> signals) describe;

  static const _key = 'signals_notified';
  static const maxSymbols = 20;
  static const maxListed = 4;

  Timer? _timer;
  bool _checking = false;

  /// Rendszeres ellenőrzés; az első két perc múlva, hogy az indulást ne lassítsa.
  void start() {
    _timer ??= Timer.periodic(interval, (_) => check());
    Timer(const Duration(minutes: 2), check);
  }

  /// A portfólió részvényei elöl, utána a kedvencek.
  List<String> get watched =>
      {for (final p in portfolio.positions) p.symbol.toUpperCase(), ...preferences.favorites}.take(maxSymbols).toList();

  /// Ellenőrzés most; a kiküldött értesítés azonosítójával tér vissza (vagy `null`).
  Future<String?> check() async {
    if (_checking || !preferences.signalAlerts) return null;
    _checking = true;
    try {
      final symbols = watched;
      if (symbols.isEmpty) return null;
      final n = _clock();
      final day = DateTime(n.year, n.month, n.day).toIso8601String().substring(0, 10);
      final prefs = await SharedPreferences.getInstance();
      final done = prefs.getStringList(_key) ?? const [];
      // Naponta egyszer.
      if (done.any((id) => id.startsWith('signals-$day'))) return null;
      final histories = <String, PriceHistory>{};
      await Future.wait([
        for (final s in symbols)
          marketData.history(s, years: 1).then((h) => histories[s] = h).then((_) {}, onError: (Object _) {}),
      ]);
      final signals = watchSignals(symbols, histories);
      if (signals.isEmpty) return null;
      final text = describe(signals.take(maxListed).toList());
      // Az azonosító végén az első részvény: koppintásra az nyílik.
      final id = 'signals-$day-${signals.first.symbol}';
      if (!await notifier.show(id: id, title: text.title, body: text.body)) return null;
      await prefs.setStringList(_key, [...done.skip(done.length > 6 ? done.length - 6 : 0), id]);
      return id;
    } catch (e) {
      debugPrint('Jelzés-értesítés: $e');
      return null;
    } finally {
      _checking = false;
    }
  }

  void dispose() => _timer?.cancel();
}
