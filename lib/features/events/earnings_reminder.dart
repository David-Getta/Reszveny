import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/app_preferences.dart';
import '../../core/desktop/system_notifier.dart';
import '../../core/models/analysis_extras.dart';
import 'events_service.dart';

/// Gyorsjelentés-emlékeztető: a kedvencek és a portfólió részvényeinek
/// gyorsjelentése előtti napon (vagy ha azt elmulasztottuk, aznap) egyszer
/// rendszerértesítést küld. Asztali gépen működik, amíg az app fut (a tálcán is);
/// a Beállításokban kikapcsolható.
class EarningsReminder {
  EarningsReminder({
    required this.events,
    required this.preferences,
    required this.notifier,
    required this.describe,
    this.describeResult,
    this.interval = const Duration(hours: 3),
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final EventsService events;
  final AppPreferences preferences;
  final AlertNotifier notifier;
  final Duration interval;
  final DateTime Function() _clock;

  /// Az értesítés címe és szövege a felhasználó nyelvén (`tomorrow`: holnap vagy ma).
  final ({String title, String body}) Function(UpcomingEvent event, {required bool tomorrow}) describe;

  /// Az eredmény értesítése (a jelentés után, ha előtte szóltunk róla).
  final ({String title, String body}) Function(String symbol, EarningsSurprise result)? describeResult;

  static const _key = 'earnings_reminded';

  Timer? _timer;
  bool _checking = false;

  /// Rendszeres ellenőrzés; az első egy perc múlva, hogy az indulást ne lassítsa.
  void start() {
    _timer ??= Timer.periodic(interval, (_) => check());
    Timer(const Duration(minutes: 1), check);
  }

  /// Az értesítés azonosítója (egyszer szól egy jelentésről).
  static String idOf(UpcomingEvent e) => 'earnings-${e.symbol}-${e.date.toIso8601String().substring(0, 10)}';

  /// Ellenőrzés most; a kiküldött értesítések azonosítóival tér vissza.
  Future<List<String>> check() async {
    if (_checking || !preferences.earningsReminders) return const [];
    _checking = true;
    final sent = <String>[];
    try {
      if (events.watched.isEmpty) return const [];
      await events.refresh();
      final n = _clock();
      final today = DateTime(n.year, n.month, n.day);
      final prefs = await SharedPreferences.getInstance();
      final done = (prefs.getStringList(_key) ?? const []).toSet();
      for (final e in events.events) {
        if (e.kind != UpcomingEventKind.earnings) continue;
        final days = e.date.difference(today).inDays;
        if (days < 0 || days > 1) continue;
        final id = idOf(e);
        if (done.contains(id)) continue;
        final text = describe(e, tomorrow: days == 1);
        if (await notifier.show(id: id, title: text.title, body: text.body)) {
          done.add(id);
          sent.add(id);
        }
      }
      sent.addAll(await _results(done, today));
      if (sent.isNotEmpty) {
        // A régi (egy hétnél korábbi) jelentések azonosítói kikerülnek.
        final cutoff = today.subtract(const Duration(days: 7)).toIso8601String().substring(0, 10);
        await prefs.setStringList(_key, [
          for (final id in done)
            if (id.substring(id.length - 10).compareTo(cutoff) >= 0) id,
        ]);
      }
    } catch (e) {
      debugPrint('Gyorsjelentés-emlékeztető: $e');
    } finally {
      _checking = false;
    }
    return sent;
  }

  /// A jelentés után (legfeljebb 4 napig) egyszer szól az eredményről, ha az
  /// előtte való napon emlékeztettünk rá, és már megjelent a jelentett EPS.
  Future<List<String>> _results(Set<String> done, DateTime today) async {
    final describe = describeResult;
    if (describe == null) return const [];
    final sent = <String>[];
    for (final id in done.toList()) {
      if (!id.startsWith('earnings-') || id.length < 20) continue;
      final day = DateTime.tryParse(id.substring(id.length - 10));
      final symbol = id.substring('earnings-'.length, id.length - 11);
      if (day == null || symbol.isEmpty) continue;
      final age = today.difference(day).inDays;
      final resultId = 'result-$symbol-${id.substring(id.length - 10)}';
      if (age < 0 || age > 4 || done.contains(resultId)) continue;
      try {
        final history = (await events.marketData.earnings(symbol)).history;
        final r = history
            .where((h) => h.actual != null && h.estimate != null && !h.period.isAfter(day))
            .where((h) => day.difference(h.period).inDays <= 120)
            .firstOrNull;
        if (r == null) continue;
        final text = describe(symbol, r);
        if (await notifier.show(id: resultId, title: text.title, body: text.body)) {
          done.add(resultId);
          sent.add(resultId);
        }
      } catch (e) {
        debugPrint('Gyorsjelentés-eredmény ($symbol): $e');
      }
    }
    return sent;
  }

  void dispose() => _timer?.cancel();
}
