import 'package:flutter/widgets.dart';

import 'terms_data.dart';

/// Az adatforrásból angolul érkező iparág-, szektor- és országnevek
/// fordítása a felület nyelvére. Ismeretlen értéknél az eredetit adja vissza.
class Terms {
  Terms._();

  /// A fordítótábla kulcsa egy nyelvhez (`hu`, `zh`, `zh_Hant_HK`…).
  static String tagFor(Locale l) {
    if (l.languageCode == 'zh' && (l.scriptCode == 'Hant' || l.countryCode == 'HK' || l.countryCode == 'TW')) {
      return 'zh_Hant_HK';
    }
    return l.languageCode;
  }

  static String? industry(String? value, Locale locale) {
    if (value == null || value.trim().isEmpty) return value;
    final table = kIndustryNames[tagFor(locale)];
    return table?[value.trim().toLowerCase()] ?? value;
  }

  /// ISO-kód (pl. `HU`) vagy angol országnév → országnév a felület nyelvén.
  static String? country(String? value, Locale locale) {
    if (value == null || value.trim().isEmpty) return value;
    final table = kCountryNames[tagFor(locale)];
    if (table == null) return value;
    final v = value.trim();
    final byCode = table[v.toUpperCase()];
    if (byCode != null) return byCode;
    // Angol névvel érkező ország (pl. „Hungary”).
    final en = kCountryNames['en'];
    if (en != null) {
      for (final e in en.entries) {
        if (e.value.toLowerCase() == v.toLowerCase()) return table[e.key] ?? value;
      }
    }
    return value;
  }
}
