/// Egyszerű, memóriában tartott csúszóablakos korlát kulcsonként (IP-hash,
/// felhasználó): legfeljebb [max] esemény [window] alatt. Egy példányon fut a
/// szerver, így ez elég; újraindításkor üresen indul.
class RateLimiter {
  RateLimiter(this.max, this.window, {DateTime Function()? clock}) : _clock = clock ?? DateTime.now;

  final int max;
  final Duration window;
  final DateTime Function() _clock;
  final _hits = <String, List<DateTime>>{};

  /// A régi kulcsok takarításának küszöbe: takarítás után a megmaradt kulcsok kétszeresére
  /// nő, így sok élő kulcsnál sem fut minden hívásnál egy teljes bejárás (O(n²) helyett).
  int _sweepAt = 10000;

  void _maybeSweep(DateTime since) {
    if (_hits.length <= _sweepAt) return;
    _hits.removeWhere((_, v) => v.isEmpty || !v.last.isAfter(since));
    _sweepAt = _hits.length * 2 > 10000 ? _hits.length * 2 : 10000;
  }

  /// Belefér-e még egy esemény (és ha igen, fel is jegyzi).
  bool allow(String key) {
    final now = _clock();
    final since = now.subtract(window);
    final hits = (_hits[key] ??= [])..removeWhere((t) => !t.isAfter(since));
    if (hits.length >= max) return false;
    hits.add(now);
    // Időnként takarítunk, hogy a régi kulcsok ne gyűljenek.
    _maybeSweep(since);
    return true;
  }

  /// Hiba (pl. rossz jelszó) feljegyzése nélkül: elérte-e már a korlátot.
  bool blocked(String key) {
    final since = _clock().subtract(window);
    final hits = _hits[key];
    if (hits == null) return false;
    hits.removeWhere((t) => !t.isAfter(since));
    if (hits.isEmpty) _hits.remove(key);
    return hits.length >= max;
  }

  /// Egy esemény feljegyzése (a [blocked] ellenőrzéshez); a régi bejegyzések is
  /// takarítva, hogy a hívó által választott kulcsok (pl. IP|e-mail) ne gyűljenek.
  void hit(String key) {
    final now = _clock();
    final since = now.subtract(window);
    final hits = (_hits[key] ??= [])..removeWhere((t) => !t.isAfter(since));
    hits.add(now);
    _maybeSweep(since);
  }

  /// A nyilvántartott kulcsok száma (teszthez).
  int get keyCount => _hits.length;
}
