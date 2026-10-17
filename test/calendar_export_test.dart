import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/features/events/calendar_export.dart';

void main() {
  test('all-day events with escaped text, CRLF and folded long lines', () {
    final ics = icsCalendar([
      (
        uid: 'earnings-AAPL-2026-10-29',
        day: DateTime(2026, 10, 29),
        summary: 'AAPL · Earnings report',
        description: '',
      ),
      (
        uid: 'catalyst-OTP-2026-12-31',
        day: DateTime(2026, 12, 31),
        summary: 'OTP; új stratégia, osztalék',
        description: 'Az elemzésből\n${'é' * 60}',
      ),
    ], now: DateTime.utc(2026, 10, 17, 1, 2, 3));
    expect(ics, startsWith('BEGIN:VCALENDAR\r\nVERSION:2.0\r\n'));
    expect(ics, endsWith('END:VCALENDAR\r\n'));
    expect(ics, contains('UID:earnings-AAPL-2026-10-29@whatstock.app\r\n'));
    expect(ics, contains('DTSTAMP:20261017T010203Z\r\n'));
    expect(ics, contains('DTSTART;VALUE=DATE:20261029\r\nDTEND;VALUE=DATE:20261030\r\n'));
    // Év végén a következő év első napja a vége.
    expect(ics, contains('DTEND;VALUE=DATE:20270101\r\n'));
    expect(ics, contains(r'SUMMARY:OTP\; új stratégia\, osztalék'));
    expect('BEGIN:VEVENT'.allMatches(ics), hasLength(2));
    expect(ics.split('\r\n').where((l) => l.startsWith('DESCRIPTION')), hasLength(1));
    for (final line in ics.split('\r\n')) {
      expect(utf8.encode(line).length, lessThanOrEqualTo(75), reason: line);
    }
    // Kibontva visszakapjuk az eredeti (védett) sort.
    final unfolded = ics.replaceAll('\r\n ', '');
    expect(unfolded, contains('DESCRIPTION:Az elemzésből\\n${'é' * 60}\r\n'));
  });
}
