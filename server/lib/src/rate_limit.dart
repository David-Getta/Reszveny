/// Egyszerű, memóriában tartott csúszóablakos korlát kulcsonként (IP-hash,
/// felhasználó): legfeljebb [max] esemény [window] alatt. Egy példányon fut a
/// szerver, így ez elég; újraindításkor üresen indul.
class RateLimiter {
  RateLimiter(this.max, this.window, {DateTime Function()? clock}) : _clock = clock ?? DateTime.now;

  final int max;
  final Duration window;
  final DateTime Function() _clock;
  final _hits = <String, List<DateTime>>{};

  /// Belefér-e még egy esemény (és ha igen, fel is jegyzi).
  bool allow(String key) {
    final now = _clock();
    final since = now.subtract(window);
    final hits = (_hits[key] ??= [])..removeWhere((t) => !t.isAfter(since));
    if (hits.length >= max) return false;
    hits.add(now);
    // Időnként takarítunk, hogy a régi kulcsok ne gyűljenek.
    if (_hits.length > 10000) _hits.removeWhere((_, v) => v.isEmpty || !v.last.isAfter(since));
    return true;
  }

  /// Hiba (pl. rossz jelszó) feljegyzése nélkül: elérte-e már a korlátot.
  bool blocked(String key) {
    final since = _clock().subtract(window);
    return (_hits[key] ?? const []).where((t) => t.isAfter(since)).length >= max;
  }

  /// Egy esemény feljegyzése (a [blocked] ellenőrzéshez).
  void hit(String key) => (_hits[key] ??= []).add(_clock());
}
