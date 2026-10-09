import 'package:intl/intl.dart';

/// Számok és dátumok formázása a felhasználó nyelvén.
///
/// Olyan nyelveknél, amelyekhez az `intl` csomagban nincs adat, angolra
/// esik vissza, hogy soha ne dobjon kivételt a felület.
class Fmt {
  Fmt(String locale, {this.na = 'n/a'})
    : numberLocale = NumberFormat.localeExists(locale) ? locale : _fallbackFor(locale, _dateLocaleExists),
      dateLocale = _dateLocaleExists(locale) ? locale : _fallbackFor(locale, _dateLocaleExists);

  final String numberLocale;
  final String dateLocale;

  /// Hiányzó adat jelölése (fordított szöveg).
  final String na;

  /// `DateFormat.localeExists` kivételt dob, ha a dátumadatok még nincsenek
  /// betöltve (pl. tesztben); ilyenkor angolra esünk vissza.
  static bool _dateLocaleExists(String locale) {
    try {
      return DateFormat.localeExists(locale);
    } catch (_) {
      return false;
    }
  }

  static String _fallbackFor(String locale, bool Function(String) dateExists) {
    final lang = locale.split(RegExp('[_-]')).first;
    if (lang != locale && NumberFormat.localeExists(lang)) {
      return lang;
    }
    return 'en';
  }

  String number(num? v, {int decimals = 2}) {
    if (v == null) return na;
    return NumberFormat.decimalPatternDigits(locale: numberLocale, decimalDigits: decimals).format(v);
  }

  String price(num? v, String? currency) {
    if (v == null) return na;
    final n = number(v, decimals: v.abs() < 1 ? 4 : 2);
    return currency == null ? n : '$n $currency';
  }

  /// Rövidített nagy számok: 1 234 567 890 → "1.23B". Az SI-szerű utótagok
  /// (K, M, B, T) nemzetközileg érthetők a pénzügyi felületeken.
  String compact(num? v, {String? currency}) {
    if (v == null) return na;
    final abs = v.abs();
    final String s;
    if (abs >= 1e12) {
      s = '${number(v / 1e12)}T';
    } else if (abs >= 1e9) {
      s = '${number(v / 1e9)}B';
    } else if (abs >= 1e6) {
      s = '${number(v / 1e6)}M';
    } else if (abs >= 1e3) {
      s = '${number(v / 1e3)}K';
    } else {
      s = number(v);
    }
    return currency == null ? s : '$s $currency';
  }

  String percent(num? v, {int decimals = 2, bool withSign = false}) {
    if (v == null) return na;
    final sign = withSign && v > 0 ? '+' : '';
    return '$sign${number(v, decimals: decimals)}%';
  }

  String signed(num? v, {int decimals = 2}) {
    if (v == null) return na;
    final sign = v > 0 ? '+' : '';
    return '$sign${number(v, decimals: decimals)}';
  }

  String date(DateTime? d) {
    if (d == null) return na;
    final local = d.toLocal();
    try {
      return DateFormat.yMMMd(dateLocale).format(local);
    } catch (_) {
      return _isoDate(local);
    }
  }

  String dateTime(DateTime? d) {
    if (d == null) return na;
    final local = d.toLocal();
    try {
      return DateFormat.yMMMd(dateLocale).add_Hm().format(local);
    } catch (_) {
      return '${_isoDate(local)} ${_two(local.hour)}:${_two(local.minute)}';
    }
  }

  /// Ha a dátumadatok nincsenek betöltve, ISO-szerű, mindenhol érthető alak.
  static String _isoDate(DateTime d) => '${d.year}-${_two(d.month)}-${_two(d.day)}';
  static String _two(int n) => n.toString().padLeft(2, '0');

  String integer(num? v) {
    if (v == null) return na;
    return NumberFormat.decimalPattern(numberLocale).format(v.round());
  }
}
