/// Dupla Option-nyomás felismerése a natív oldal eseményeiből
/// (`down`, `downWithOthers`, `up`, `other`).
///
/// Akkor számít dupla nyomásnak, ha az Optiont kétszer, röviden és önmagában
/// nyomták le (közben nem volt más billentyű vagy módosító), és a két
/// lenyomás között legfeljebb [maxGap] telt el – mint a Claude-nál.
class DoubleTapDetector {
  DoubleTapDetector({
    this.maxPress = const Duration(milliseconds: 350),
    this.maxGap = const Duration(milliseconds: 450),
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final Duration maxPress;
  final Duration maxGap;
  final DateTime Function() _clock;

  DateTime? _pressStart;
  bool _dirty = false;
  DateTime? _lastTap;

  /// Egy esemény feldolgozása; igaz, ha éppen most teljesült a dupla nyomás.
  bool add(String event) {
    final now = _clock();
    switch (event) {
      case 'down':
        _pressStart = now;
        _dirty = false;
      case 'downWithOthers':
        _pressStart = now;
        _dirty = true;
        _lastTap = null;
      case 'other':
        _dirty = true;
        _lastTap = null;
      case 'up':
        final start = _pressStart;
        _pressStart = null;
        final clean = start != null && !_dirty && now.difference(start) <= maxPress;
        if (!clean) {
          _lastTap = null;
          return false;
        }
        final last = _lastTap;
        if (last != null && now.difference(last) <= maxGap) {
          _lastTap = null;
          return true;
        }
        _lastTap = now;
    }
    return false;
  }
}
