import 'dart:async';

import 'package:flutter/foundation.dart';

import '../app_preferences.dart';
import '../util/text.dart';

/// Névtelen használati statisztika és hibajelentés a saját szerverre – csak a
/// felhasználó hozzájárulásával. Eseménynevet és darabszámot küldünk (pl.
/// `analysis_done: 2`), hibánál az üzenetet és a veremnyomot; részvényt,
/// elemzést, e-mail-címet, portfóliót soha. A szerver napi összesítést tárol.
class Telemetry {
  Telemetry({required this.preferences, this.sink, String? platform, this.versionOf})
    : platform = platform ?? (kIsWeb ? 'web' : defaultTargetPlatform.name);

  final AppPreferences preferences;

  /// A küldés (backend-módban a szerver); `null` esetén nincs telemetria.
  final Future<void> Function(Map<String, dynamic> batch)? sink;
  final String platform;

  /// Az app verziója (indulás után derül ki, ezért küldéskor kérdezzük le).
  String? Function()? versionOf;

  /// Az idő (a napváltás a hibák ismétlés-szűrésénél; tesztben állítható).
  @visibleForTesting
  DateTime Function() clock = DateTime.now;

  /// Ennyi idő után küldjük el az összegyűlt eseményeket.
  static const flushDelay = Duration(seconds: 30);

  /// Egy küldésben legfeljebb ennyi hibajelentés (és munkamenetenként egy-egy
  /// hiba csak egyszer).
  static const maxErrors = 5;

  static final _name = RegExp(r'^[a-z][a-z0-9_]{1,39}$');

  final Map<String, int> _events = {};
  final List<Map<String, String>> _errors = [];
  final Set<String> _seenErrors = {};
  String? _seenDay;
  Timer? _timer;

  bool get available => sink != null;

  /// Küldhetünk-e (van szerver, és a felhasználó engedélyezte).
  bool get enabled => available && preferences.telemetryConsent == true;

  /// Meg kell-e még kérdezni a felhasználót.
  bool get shouldAsk => available && preferences.telemetryConsent == null;

  /// Egy esemény (pl. `analysis_done`) számlálása.
  void track(String name) {
    if (!enabled || !_name.hasMatch(name)) return;
    _events[name] = (_events[name] ?? 0) + 1;
    _schedule();
  }

  /// Nem kezelt hiba jelentése (rövidítve, személyes adatok nélkül).
  void reportError(Object error, StackTrace? stack) {
    if (!enabled) return;
    final message = scrub(_clip('${error.runtimeType}: $error', 500));
    final trace = scrub(_clip(stack?.toString() ?? '', 4000));
    // Naponta újra jelenthető: egy hetekig futó (tálcás) appban a visszatérő hiba ne csak
    // egyszer menjen el (a szerver 30 nap jelentés nélkül törli).
    final today = clock().toIso8601String().substring(0, 10);
    if (_seenDay != today) {
      _seenDay = today;
      _seenErrors.clear();
    }
    // Teli csomagnál nem jegyezzük meg látottnak: a következő csomagban még elmehet.
    if (_errors.length >= maxErrors || !_seenErrors.add(message)) return;
    _errors.add({'message': message, 'stack': trace});
    _schedule();
  }

  /// Hozzájárulás megadása vagy visszavonása; visszavonáskor a még el nem
  /// küldött adatok is törlődnek.
  Future<void> setConsent(bool allowed) async {
    if (!allowed) _drop();
    await preferences.setTelemetryConsent(allowed);
    if (allowed) track('telemetry_on');
  }

  /// Az összegyűlt adatok elküldése (időzítve, illetve amikor az app a háttérbe megy).
  Future<void> flush() async {
    _timer?.cancel();
    _timer = null;
    final send = sink;
    if (send == null || (_events.isEmpty && _errors.isEmpty)) return;
    if (!enabled) return _drop();
    final batch = <String, dynamic>{
      'platform': platform,
      'version': ?versionOf?.call(),
      'events': Map.of(_events),
      'errors': List.of(_errors),
    };
    _events.clear();
    _errors.clear();
    try {
      await send(batch);
    } catch (e) {
      // A statisztika nem fontos annyira, hogy újrapróbáljuk.
      debugPrint('Telemetria nem küldhető: $e');
    }
  }

  void _schedule() => _timer ??= Timer(flushDelay, flush);

  void _drop() {
    _timer?.cancel();
    _timer = null;
    _events.clear();
    _errors.clear();
  }

  static String _clip(String s, int max) => clipText(s, max);

  // Ékezetes (nemzetközi) címek is: a `\w` csak ASCII.
  static final _email = RegExp(r'''[^\s@<>()\[\]{}"',;:/\\]+@[^\s@<>()\[\]{}"',;:/\\]+\.[^\s@<>()\[\]{}"',;:/\\]+''');
  static final _secret = RegExp(r'[A-Za-z0-9_\-]{32,}');
  static final _query = RegExp(r'\?[^\s)]*');

  /// A saját mappa a fájlútban a felhasználónevet hordozza (macOS, Linux, Windows).
  /// (Windows alatt a név szóközt is tartalmazhat: a következő elválasztóig.)
  static final _home = RegExp(r'(/(?:Users|home)/)[^/\s]+|(\\Users\\)[^\\\r\n]+', caseSensitive: false);

  /// E-mail-címek, felhasználónevek a fájlutakban, hosszú tokenek és URL-paraméterek
  /// kitakarása a hibaszövegből.
  @visibleForTesting
  static String scrub(String s) => s
      .replaceAll(_email, '<email>')
      .replaceAllMapped(_home, (m) => '${m[1] ?? m[2]}<user>')
      .replaceAll(_query, '?<…>')
      .replaceAll(_secret, '<…>');
}
