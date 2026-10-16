import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/app_preferences.dart';
import '../../core/desktop/system_notifier.dart';
import 'daily_brief.dart';
import 'watch_news.dart';

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
  final Duration interval;
  final DateTime Function() _clock;

  /// Ettől az órától készül el.
  static const fromHour = 7;

  Timer? _timer;

  void start() {
    _timer ??= Timer.periodic(interval, (_) => check());
    Timer(const Duration(minutes: 2), check);
  }

  /// Az összefoglaló első mondata (az értesítés szövegének).
  static String firstSentence(String text) {
    final line = text.trim().split('\n').first.trim();
    // A kínai/japán mondatvég után nincs szóköz.
    final m = RegExp(r'^.+?([.!?](\s|$)|[。！？])').firstMatch(line);
    final s = (m?.group(0) ?? line).trim();
    return s.length <= 180 ? s : '${s.substring(0, 179)}…';
  }

  /// Ellenőrzés most; igaz, ha elkészült egy új összefoglaló.
  Future<bool> check() async {
    if (!preferences.morningBrief || _clock().hour < fromHour) return false;
    await brief.load();
    if (brief.isToday || brief.busy) return false;
    final symbols = news.watched;
    if (symbols.isEmpty) return false;
    try {
      final b = await brief.generate(symbols: symbols, language: language());
      final day = b.at.toIso8601String().substring(0, 10);
      await notifier.show(id: 'brief-$day', title: title(), body: firstSentence(b.text));
      return true;
    } catch (e) {
      debugPrint('Reggeli összefoglaló nem készült el: $e');
      return false;
    }
  }

  void dispose() => _timer?.cancel();
}
