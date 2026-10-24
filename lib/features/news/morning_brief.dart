import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/app_preferences.dart';
import '../../core/desktop/system_notifier.dart';
import '../../core/util/us_market_hours.dart';
import 'daily_brief.dart';
import 'watch_news.dart';
import '../../core/util/text.dart';

/// Reggeli összefoglaló: ha be van kapcsolva, reggel 7 után (amíg az app fut)
/// magától elkészül „A nap a részvényeiddel”, és asztali gépen értesítés jelzi.
/// Naponta legfeljebb egyszer; a napi kérdéskeretből megy, elemzést nem fogyaszt.
class MorningBrief {
  MorningBrief({
    required this.brief,
    required this.news,
    required this.preferences,
    required this.notifier,
    required this.language,
    required this.title,
    this.onMade,
    this.interval = const Duration(minutes: 30),
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final DailyBrief brief;
  final WatchNewsService news;
  final AppPreferences preferences;
  final AlertNotifier notifier;

  /// Az app nyelve angolul (a kéréshez) és az értesítés címe a felhasználó nyelvén.
  final String Function() language;
  final String Function() title;

  /// Elkészült egy reggeli összefoglaló (a névtelen statisztikához).
  final void Function()? onMade;
  final Duration interval;
  final DateTime Function() _clock;

  /// Ettől az órától készül el.
  static const fromHour = 7;

  Timer? _timer;

  void start() {
    _timer ??= Timer.periodic(interval, (_) => check());
    Timer(const Duration(minutes: 2), check);
  }

  /// Az összefoglaló első mondata (az értesítés szövegének). A rövidítés pontja
  /// („U.S. stocks…”, „e.g. the…”) nem mondatvég: az egybetűs tagokból álló szó
  /// után, vagy ha kisbetűvel folytatódik.
  static String firstSentence(String text) {
    final line = text.trim().split('\n').first.trim();
    var end = line.length;
    // A kínai/japán mondatvég után nincs szóköz.
    for (final m in RegExp(r'[.!?](?=\s|$)|[。！？]').allMatches(line)) {
      if (m.group(0) == '.') {
        final word = line.substring(0, m.start).split(RegExp(r'\s')).last;
        final next = line.substring(m.end).trimLeft();
        if (RegExp(r'^(\p{L}\.)*\p{L}$', unicode: true).hasMatch(word)) continue;
        if (next.isNotEmpty && next[0] != next[0].toUpperCase()) continue;
      }
      end = m.end;
      break;
    }
    final s = line.substring(0, end).trim();
    return s.length <= 180 ? s : '${clipText(s, 179)}…';
  }

  /// Ellenőrzés most; igaz, ha elkészült egy új összefoglaló.
  Future<bool> check() async {
    if (!preferences.morningBrief || _clock().hour < fromHour) return false;
    await brief.load();
    final lang = language();
    if (brief.isTodayIn(lang) || brief.busy) return false;
    // Csak ha a legutóbbi összefoglaló óta zárt egy amerikai kereskedési nap: hétvégén
    // és ünnepnap után ne ismételje ugyanazokat a számokat. A mérce a ma reggeli
    // [fromHour] előtti utolsó zárás (nem a mostani): egy szünnap után se csússzon az
    // összefoglaló a következő esti zárásra, és ott se ragadjon.
    final now = _clock();
    final morning = DateTime(now.year, now.month, now.day, fromHour).toUtc();
    if (brief.last case final l?
        when (l.language.isEmpty || l.language == lang) && !l.at.toUtc().isBefore(UsMarketHours.lastClose(morning))) {
      return false;
    }
    final symbols = news.watched;
    if (symbols.isEmpty) return false;
    try {
      final b = await brief.generate(symbols: symbols, language: lang);
      final day = b.at.toIso8601String().substring(0, 10);
      await notifier.show(id: 'brief-$day', title: title(), body: firstSentence(b.text));
      onMade?.call();
      return true;
    } catch (e) {
      debugPrint('Reggeli összefoglaló nem készült el: $e');
      return false;
    }
  }

  void dispose() => _timer?.cancel();
}
