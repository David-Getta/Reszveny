import 'dart:convert';

/// Egy egész napos naptárbejegyzés.
typedef CalendarEntry = ({String uid, DateTime day, String summary, String description});

/// iCalendar (.ics) fájl egész napos eseményekkel – a Google Naptár, az Apple
/// Naptár és az Outlook is beolvassa. Az [uid] állandó, így újraimportáláskor
/// a naptár frissíti a bejegyzést, nem duplázza.
String icsCalendar(List<CalendarEntry> entries, {required DateTime now}) {
  String d(DateTime t) => '${t.year.toString().padLeft(4, '0')}${_two(t.month)}${_two(t.day)}';
  final u = now.toUtc();
  final stamp = '${d(u)}T${_two(u.hour)}${_two(u.minute)}${_two(u.second)}Z';
  final lines = [
    'BEGIN:VCALENDAR',
    'VERSION:2.0',
    'PRODID:-//WhatStock//Events//EN',
    'CALSCALE:GREGORIAN',
    'METHOD:PUBLISH',
    for (final e in entries) ...[
      'BEGIN:VEVENT',
      'UID:${_escape(e.uid)}@whatstock.app',
      'DTSTAMP:$stamp',
      'DTSTART;VALUE=DATE:${d(e.day)}',
      'DTEND;VALUE=DATE:${d(DateTime(e.day.year, e.day.month, e.day.day + 1))}',
      'SUMMARY:${_escape(e.summary)}',
      if (e.description.isNotEmpty) 'DESCRIPTION:${_escape(e.description)}',
      'TRANSP:TRANSPARENT',
      'END:VEVENT',
    ],
    'END:VCALENDAR',
  ];
  return '${lines.map(_fold).join('\r\n')}\r\n';
}

String _two(int v) => v.toString().padLeft(2, '0');

/// A szövegmezőkben a `\`, `;`, `,` és az új sor védett (RFC 5545 3.3.11).
String _escape(String s) =>
    s.replaceAll(r'\', r'\\').replaceAll(';', r'\;').replaceAll(',', r'\,').replaceAll(RegExp(r'\r?\n'), r'\n');

/// 75 bájtnál hosszabb sorok tördelése (a folytatósor szóközzel kezdődik),
/// UTF-8 karakter közepén nem vágva.
String _fold(String line) {
  if (utf8.encode(line).length <= 75) return line;
  final out = StringBuffer();
  var bytes = 0;
  for (final rune in line.runes) {
    final ch = String.fromCharCode(rune);
    final n = utf8.encode(ch).length;
    if (bytes + n > 75) {
      out.write('\r\n ');
      bytes = 1;
    }
    out.write(ch);
    bytes += n;
  }
  return out.toString();
}
