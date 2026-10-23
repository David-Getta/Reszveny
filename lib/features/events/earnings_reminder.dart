import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/app_preferences.dart';
import '../../core/desktop/system_notifier.dart';
import '../../core/models/analysis_extras.dart';
import 'events_service.dart';

/// Gyorsjelentés- és osztalék-emlékeztető: a kedvencek és a portfólió
/// részvényeinek gyorsjelentése előtti napon (vagy ha azt elmulasztottuk, aznap)
/// egyszer rendszerértesítést küld; a portfólió várható osztalékának napján
/// (a rögzített kifizetések ritmusából) szintén egyszer, hogy a megérkezett
/// összeget rögzíteni lehessen. Asztali gépen működik, amíg az app fut (a tálcán
/// is); a kettő a Beállításokban külön kikapcsolható.
class EarningsReminder {
  EarningsReminder({
    required this.events,
    required this.preferences,
    required this.notifier,
    required this.describe,
    this.describeResult,
    this.describeDividend,
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

  /// A várható osztalék értesítése (a napján); nélküle nincs osztalék-értesítés.
  final ({String title, String body}) Function(UpcomingEvent event)? describeDividend;

  static const _key = 'earnings_reminded';

  /// Az emlékeztetéskor ismert legutolsó jelentett negyedév (`TICKER|nap|negyedév vége`):
  /// az eredmény-értesítés csak ennél újabb negyedévről szól.
  static const _knownKey = 'earnings_known_period';

  Timer? _timer, _first;
  bool _checking = false;

  /// Rendszeres ellenőrzés; az első egy perc múlva, hogy az indulást ne lassítsa.
  void start() {
    _timer ??= Timer.periodic(interval, (_) => check());
    _first ??= Timer(const Duration(minutes: 1), check);
  }

  /// Az értesítés azonosítója (egyszer szól egy jelentésről, illetve egy várható osztalékról).
  static String idOf(UpcomingEvent e) => switch (e.kind) {
    // A pénznem is benne van (két brókernél két sorozat); a végén mindig a nap.
    UpcomingEventKind.dividend => 'dividend-${e.symbol}-${e.currency ?? ''}-${_day(e.date)}',
    _ => 'earnings-${e.symbol}-${_day(e.date)}',
  };

  static String _day(DateTime d) => d.toIso8601String().substring(0, 10);

  /// Két dátum között eltelt naptári napok (az óraátállítás napja 23 vagy 25 óra,
  /// ezért nem a [Duration]-ből).
  static int daysBetween(DateTime from, DateTime to) =>
      DateTime.utc(to.year, to.month, to.day).difference(DateTime.utc(from.year, from.month, from.day)).inDays;

  /// Ellenőrzés most; a kiküldött értesítések azonosítóival tér vissza.
  Future<List<String>> check() async {
    final earnings = preferences.earningsReminders;
    final dividends = preferences.dividendReminders && describeDividend != null;
    if (_checking || (!earnings && !dividends)) return const [];
    _checking = true;
    final sent = <String>[];
    try {
      if (events.watched.isEmpty) return const [];
      // Az osztalék-események a portfólióból jönnek: gyorsjelentés nélkül nem kell hálózat.
      if (earnings) {
        await events.refresh();
      } else {
        await events.rebuildOffline();
      }
      final n = _clock();
      final today = DateTime(n.year, n.month, n.day);
      final prefs = await SharedPreferences.getInstance();
      final done = (prefs.getStringList(_key) ?? const []).toSet();
      for (final e in events.events) {
        final days = daysBetween(today, e.date);
        // Gyorsjelentés: előtte való nap vagy aznap; várható osztalék: a napján.
        final text = switch (e.kind) {
          UpcomingEventKind.earnings when earnings && days >= 0 && days <= 1 => describe(e, tomorrow: days == 1),
          UpcomingEventKind.dividend when dividends && days == 0 => describeDividend!(e),
          _ => null,
        };
        if (text == null) continue;
        final id = idOf(e);
        if (done.contains(id)) continue;
        if (await notifier.show(id: id, title: text.title, body: text.body)) {
          done.add(id);
          sent.add(id);
          if (e.kind == UpcomingEventKind.earnings) await _rememberKnown(prefs, e.symbol, _day(e.date));
        }
      }
      if (earnings) sent.addAll(await _results(done, today, _known(prefs)));
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

  /// Az emlékeztetéskor ismert negyedévek (`TICKER|nap` → a negyedév vége).
  static Map<String, DateTime> _known(SharedPreferences prefs) => {
    for (final e in prefs.getStringList(_knownKey) ?? const <String>[])
      if (e.split('|') case [final symbol, final day, final period]) '$symbol|$day': ?DateTime.tryParse(period),
  };

  /// Megjegyzi a jelentés előtt már ismert legutolsó negyedévet (az egy hétnél
  /// régebbi bejegyzések kikerülnek).
  Future<void> _rememberKnown(SharedPreferences prefs, String symbol, String day) async {
    try {
      final latest = (await events.marketData.earnings(symbol)).history
          .where((h) => h.actual != null)
          .map((h) => h.period)
          .fold<DateTime?>(null, (a, b) => a == null || b.isAfter(a) ? b : a);
      final cutoff = _day(_clock().subtract(const Duration(days: 7)));
      await prefs.setStringList(_knownKey, [
        for (final e in prefs.getStringList(_knownKey) ?? const <String>[])
          if (e.split('|') case [final s, final d, _] when s != symbol || d != day)
            if (d.compareTo(cutoff) >= 0) e,
        '$symbol|$day|${latest == null ? '' : _day(latest)}',
      ]);
    } catch (e) {
      debugPrint('Gyorsjelentés-előzmény ($symbol): $e');
    }
  }

  /// A jelentés után (legfeljebb 4 napig) egyszer szól az eredményről, ha az
  /// előtte való napon emlékeztettünk rá, és már megjelent a jelentett EPS – egy
  /// újabb negyedévé, mint ami az emlékeztetéskor ismert volt (a Finnhub előzményében
  /// az előző negyedév is ott van: egy bank a negyedév vége után két héttel jelent,
  /// így az előző negyedév is a 120 napos ablakba esne).
  Future<List<String>> _results(Set<String> done, DateTime today, Map<String, DateTime> known) async {
    final describe = describeResult;
    if (describe == null) return const [];
    final sent = <String>[];
    for (final id in done.toList()) {
      if (!id.startsWith('earnings-') || id.length < 20) continue;
      final day = DateTime.tryParse(id.substring(id.length - 10));
      final symbol = id.substring('earnings-'.length, id.length - 11);
      if (day == null || symbol.isEmpty) continue;
      final age = daysBetween(day, today);
      final resultId = 'result-$symbol-${id.substring(id.length - 10)}';
      if (age < 0 || age > 4 || done.contains(resultId)) continue;
      try {
        final history = (await events.marketData.earnings(symbol)).history;
        final before = known['$symbol|${id.substring(id.length - 10)}'];
        // Ismert előzmény nélkül (régebbi emlékeztető) szűkebb ablak: 75 nap.
        final window = before == null ? 75 : 120;
        final r = history
            .where((h) => h.actual != null && h.estimate != null && !h.period.isAfter(day))
            .where((h) => day.difference(h.period).inDays <= window)
            .where((h) => before == null || h.period.isAfter(before))
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

  void dispose() {
    _timer?.cancel();
    _first?.cancel();
  }
}
