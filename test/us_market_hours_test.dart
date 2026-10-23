import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/features/home/markets_strip.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:reszveny/core/util/us_market_hours.dart';

void main() {
  test('New York time with daylight saving', () {
    // Nyáron UTC−4, télen UTC−5.
    expect(UsMarketHours.newYorkTime(DateTime.utc(2026, 7, 1, 14)), DateTime(2026, 7, 1, 10));
    expect(UsMarketHours.newYorkTime(DateTime.utc(2026, 1, 15, 14)), DateTime(2026, 1, 15, 9));
    // 2026: március 8. és november 1. az átállás.
    expect(UsMarketHours.offsetOn(DateTime(2026, 3, 7)), const Duration(hours: -5));
    expect(UsMarketHours.offsetOn(DateTime(2026, 3, 8)), const Duration(hours: -4));
    expect(UsMarketHours.offsetOn(DateTime(2026, 10, 31)), const Duration(hours: -4));
    expect(UsMarketHours.offsetOn(DateTime(2026, 11, 1)), const Duration(hours: -5));
    expect(UsMarketHours.utcOf(DateTime(2026, 7, 1, 9, 30)), DateTime.utc(2026, 7, 1, 13, 30));
  });

  test('open during the session, closed before, after, at weekends and on holidays', () {
    // Szerda 10:00 New York (nyár): nyitva, 16:00-kor (20:00 UTC) zár.
    var s = UsMarketHours.status(DateTime.utc(2026, 7, 1, 14));
    expect(s.open, isTrue);
    expect(s.next, DateTime.utc(2026, 7, 1, 20));
    // Szerda 8:00: zárva, 9:30-kor nyit.
    s = UsMarketHours.status(DateTime.utc(2026, 7, 1, 12));
    expect(s.open, isFalse);
    expect(s.next, DateTime.utc(2026, 7, 1, 13, 30));
    // Csütörtök este: július 3. (péntek) ünnep, a hétvége után hétfőn nyit.
    s = UsMarketHours.status(DateTime.utc(2026, 7, 2, 21));
    expect(s.open, isFalse);
    expect(s.next, DateTime.utc(2026, 7, 6, 13, 30));
    // Szombat télen: hétfő 9:30 EST = 14:30 UTC.
    s = UsMarketHours.status(DateTime.utc(2026, 1, 10, 12));
    expect(s.next, DateTime.utc(2026, 1, 12, 14, 30));
    // Hálaadás utáni nap 13:00-kor zár.
    s = UsMarketHours.status(DateTime.utc(2026, 11, 27, 15));
    expect(s.open, isTrue);
    expect(s.next, DateTime.utc(2026, 11, 27, 18));
  });

  test('short durations', () async {
    final l10n = await lookupAppLocalizations(const Locale('en'));
    expect(shortDuration(l10n, const Duration(minutes: 45)), '45 min');
    expect(shortDuration(l10n, const Duration(hours: 2, minutes: 15)), '2 h 15 min');
    expect(shortDuration(l10n, const Duration(days: 2, hours: 3, minutes: 59)), '2 d 3 h');
    expect(shortDuration(l10n, const Duration(seconds: 20)), '1 min');
  });
}
