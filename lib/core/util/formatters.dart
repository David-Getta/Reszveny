import 'dart:math' as math;

import 'package:intl/intl.dart';

/// Számok és dátumok formázása a felhasználó nyelvén.
///
/// Olyan nyelveknél, amelyekhez az `intl` csomagban nincs adat, angolra
/// esik vissza, hogy soha ne dobjon kivételt a felület.
class Fmt {
  Fmt(String locale, {this.na = 'n/a'})
    : numberLocale = NumberFormat.localeExists(locale) ? locale : _fallbackFor(locale, _dateLocaleExists),
      dateLocale = _dateLocaleExists(locale) ? locale : _fallbackFor(locale, _dateLocaleExists),
      _rtl = _rtlLanguages.contains(locale.split(RegExp('[_-]')).first);

  final String numberLocale;
  final String dateLocale;

  /// Jobbról balra író nyelv: az előjeles számok balról jobbra írt egységként
  /// (izolálva) kerülnek a szövegbe, különben a „+5%” „5%+”-ként jelenne meg.
  final bool _rtl;
  static const _rtlLanguages = {'ar', 'fa', 'he', 'iw', 'ur', 'ps', 'sd', 'ug', 'ckb', 'yi', 'dv'};

  String _iso(String s) => _rtl ? '\u2066$s\u2069' : s;

  /// A nyelv pluszjele (egyes nyelveken irányjelzővel).
  String get _plus => NumberFormat.decimalPattern(numberLocale).symbols.PLUS_SIGN;

  /// A [decimals] tizedesre kerekített érték (a nullára kerekedő negatív 0).
  static double roundTo(num v, int decimals) {
    final f = math.pow(10, decimals);
    return (v * f).roundToDouble() / f + 0.0;
  }

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

  String number(num? v, {int decimals = 2}) => v == null ? na : _iso(_number(v, decimals));

  /// A szám a nyelv formátumában; a nullára kerekedő negatív érték „0,00” (nem „-0,00”).
  String _number(num v, int decimals) {
    final shown = v.isFinite && roundTo(v, decimals) == 0 ? 0 : v;
    return NumberFormat.decimalPatternDigits(locale: numberLocale, decimalDigits: decimals).format(shown);
  }

  /// Előjeles szám: pozitívnál a nyelv pluszjele, és jobbról balra író nyelvnél egy egységként.
  String _signed(num v, int decimals, {String suffix = ''}) {
    final n = _number(v, decimals);
    final positive = v.isFinite && roundTo(v, decimals) > 0;
    return _iso('${positive ? _plus : ''}$n$suffix');
  }

  /// Darabszám: egész számnál tizedes nélkül, törtrésznél legfeljebb 4 tizedessel (a
  /// felesleges nullák nélkül); egy 0,0001 alatti tört rész sem látszik nullának.
  String quantity(double v) {
    if (v == v.roundToDouble()) return number(v, decimals: 0);
    final f = NumberFormat.decimalPattern(numberLocale)
      ..minimumFractionDigits = 0
      ..maximumFractionDigits = v.abs() < 0.0001 ? 8 : 4;
    return _iso(f.format(v));
  }

  /// A nyelv tizedesjele (pl. magyarul vessző).
  String get decimalSeparator => NumberFormat.decimalPattern(numberLocale).symbols.DECIMAL_SEP;

  /// Pénznemek, amelyeket egész egységben szokás kiírni (forint, jen, won…).
  static const wholeUnitCurrencies = {'HUF', 'JPY', 'KRW', 'IDR', 'ISK', 'CLP', 'VND', 'TWD'};

  /// Pénzösszeg (érték, nyereség): egész egységű pénznemben 100 fölött tizedes
  /// nélkül („1 707 000 HUF”), máskor két tizedessel.
  String money(num? v, String? currency, {bool withSign = false, bool showCurrency = true}) {
    if (v == null) return na;
    final whole = currency != null && wholeUnitCurrencies.contains(currency.toUpperCase()) && v.abs() >= 100;
    final s = withSign ? _signed(v, whole ? 0 : 2) : number(v, decimals: whole ? 0 : 2);
    return currency == null || !showCurrency ? s : '$s $currency';
  }

  /// Árfolyam: egy egység fölött 2 tizedessel, alatta legalább 4-gyel – a nagyon kis
  /// árnál annyival, hogy három értékes jegy látsszon (0,0042 → 0,00420; nem „0,0000”).
  String price(num? v, String? currency) {
    if (v == null) return na;
    final a = v.abs();
    final decimals = a >= 1 || a == 0 || !a.isFinite
        ? (a >= 1 ? 2 : 4)
        : ((-math.log(a) / math.ln10).ceil() + 2).clamp(4, 10);
    final n = number(v, decimals: decimals);
    return currency == null ? n : '$n $currency';
  }

  /// Darabonkénti ár (vételi, átlag- vagy mostani ár): egy egység alatt mint a [price]
  /// (a 0,0042 dolláros ár ne „0,00” legyen), fölötte mint a [money].
  String unit(num? v, String? currency, {bool showCurrency = true}) => v != null && v != 0 && v.abs() < 1
      ? price(v, showCurrency ? currency : null)
      : money(v, currency, showCurrency: showCurrency);

  /// Rövidített nagy számok: 1 234 567 890 → "1.23B". Az SI-szerű utótagok
  /// (K, M, B, T) nemzetközileg érthetők a pénzügyi felületeken.
  /// Az utótag a kerekítés után dől el: a 999 999 „1,00M”, nem „1 000,00K”.
  String compact(num? v, {String? currency}) {
    if (v == null) return na;
    const units = [(1.0, ''), (1e3, 'K'), (1e6, 'M'), (1e9, 'B'), (1e12, 'T')];
    var i = 0;
    while (i < units.length - 1 && v.abs() >= units[i + 1].$1) {
      i++;
    }
    if (i < units.length - 1 && roundTo(v.abs() / units[i].$1, 2) >= 1000) i++;
    final (unit, suffix) = units[i];
    final s = _iso('${_number(v / unit, 2)}$suffix');
    return currency == null ? s : '$s $currency';
  }

  String percent(num? v, {int decimals = 2, bool withSign = false}) {
    if (v == null) return na;
    return withSign ? _signed(v, decimals, suffix: '%') : _iso('${_number(v, decimals)}%');
  }

  String signed(num? v, {int decimals = 2}) => v == null ? na : _signed(v, decimals);

  String date(DateTime? d) {
    if (d == null) return na;
    final local = d.toLocal();
    try {
      return DateFormat.yMMMd(dateLocale).format(local);
    } catch (_) {
      return _isoDate(local);
    }
  }

  /// Hónap és év (pl. „2026. szept.”, „Sep 2026”) – negyedévek jelöléséhez.
  String monthYear(DateTime? d) {
    if (d == null) return na;
    try {
      return DateFormat.yMMM(dateLocale).format(d);
    } catch (_) {
      return '${d.year}-${_two(d.month)}';
    }
  }

  /// Keskeny hónapnév (pl. „O”, „J”) – a havi diagram oszlopai alá.
  String monthNarrow(DateTime d) {
    try {
      return DateFormat('MMMMM', dateLocale).format(d);
    } catch (_) {
      return '${d.month}';
    }
  }

  /// Rövid hónapnév (pl. „okt.”, „Oct”).
  String monthShort(DateTime d) {
    try {
      return DateFormat.MMM(dateLocale).format(d);
    } catch (_) {
      return _two(d.month);
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
