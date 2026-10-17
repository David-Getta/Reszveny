/// Az amerikai tőzsdék (NYSE, Nasdaq) rendes kereskedési ideje: hétköznap
/// 9:30–16:00 New York-i idő szerint, a tőzsdei ünnepnapokon zárva, néhány
/// ünnep előtti napon 13:00-kor zár. Az ismert évek ünnepnapjai a listában
/// vannak; más években csak a hétvégét veszi figyelembe.
class UsMarketHours {
  UsMarketHours._();

  /// Teljes zárva tartás (New York-i dátum).
  static final holidays = {
    // 2026
    DateTime(2026, 1, 1), DateTime(2026, 1, 19), DateTime(2026, 2, 16), DateTime(2026, 4, 3),
    DateTime(2026, 5, 25), DateTime(2026, 6, 19), DateTime(2026, 7, 3), DateTime(2026, 9, 7),
    DateTime(2026, 11, 26), DateTime(2026, 12, 25),
    // 2027
    DateTime(2027, 1, 1), DateTime(2027, 1, 18), DateTime(2027, 2, 15), DateTime(2027, 3, 26),
    DateTime(2027, 5, 31), DateTime(2027, 6, 18), DateTime(2027, 7, 5), DateTime(2027, 9, 6),
    DateTime(2027, 11, 25), DateTime(2027, 12, 24),
  };

  /// 13:00-kor záró napok.
  static final earlyCloses = {DateTime(2026, 11, 27), DateTime(2026, 12, 24), DateTime(2027, 11, 26)};

  /// New York eltérése az UTC-től az adott (New York-i) napon: nyári időszámítás
  /// március második vasárnapjától november első vasárnapjáig (−4 óra), egyébként −5.
  static Duration offsetOn(DateTime day) {
    DateTime nthSunday(int month, int n) {
      final first = DateTime(day.year, month, 1);
      return DateTime(day.year, month, 1 + (7 - first.weekday) % 7 + 7 * (n - 1));
    }

    final d = DateTime(day.year, day.month, day.day);
    final dst = !d.isBefore(nthSunday(3, 2)) && d.isBefore(nthSunday(11, 1));
    return Duration(hours: dst ? -4 : -5);
  }

  /// A New York-i falióra az adott UTC-pillanatban.
  static DateTime newYorkTime(DateTime utc) {
    final u = utc.toUtc();
    // Az átállás napján a nap elején még a régi eltérés érvényes; percre pontos
    // átállás itt nem számít (hajnali 2 órakor nincs kereskedés).
    final guess = u.add(offsetOn(u));
    final wall = u.add(offsetOn(guess));
    return DateTime(wall.year, wall.month, wall.day, wall.hour, wall.minute, wall.second);
  }

  /// A New York-i falióra-időpont UTC-ben.
  static DateTime utcOf(DateTime newYork) =>
      DateTime.utc(newYork.year, newYork.month, newYork.day, newYork.hour, newYork.minute).subtract(offsetOn(newYork));

  static bool isTradingDay(DateTime day) {
    final d = DateTime(day.year, day.month, day.day);
    return d.weekday != DateTime.saturday && d.weekday != DateTime.sunday && !holidays.contains(d);
  }

  /// Nyitva van-e most a piac, és mikor változik ez (UTC).
  static ({bool open, DateTime next}) status(DateTime nowUtc) {
    final ny = newYorkTime(nowUtc);
    final today = DateTime(ny.year, ny.month, ny.day);
    final open = DateTime(today.year, today.month, today.day, 9, 30);
    final close = DateTime(today.year, today.month, today.day, earlyCloses.contains(today) ? 13 : 16);
    if (isTradingDay(today) && !ny.isBefore(open) && ny.isBefore(close)) {
      return (open: true, next: utcOf(close));
    }
    var day = isTradingDay(today) && ny.isBefore(open) ? today : today.add(const Duration(days: 1));
    for (var i = 0; i < 14 && !isTradingDay(day); i++) {
      day = DateTime(day.year, day.month, day.day + 1);
    }
    return (open: false, next: utcOf(DateTime(day.year, day.month, day.day, 9, 30)));
  }
}
