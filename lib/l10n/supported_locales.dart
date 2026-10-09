import 'dart:ui';

/// Egy támogatott nyelv: a Flutter [Locale] és a saját nevén írt megnevezése
/// (a nyelvválasztóban mindig a nyelv saját nevét mutatjuk).
class AppLanguage {
  const AppLanguage(this.locale, this.nativeName, this.englishName);

  final Locale locale;
  final String nativeName;

  /// Angol név: ezt kapja a felismerő, hogy ezen a nyelven válaszoljon.
  final String englishName;

  String get tag => locale.toLanguageTag();
}

/// Az app által támogatott nyelvek. Az első (angol) az alapértelmezett.
///
/// A sorrend: angol, majd a világ legnagyobb nyelvei, majd Európa nyelvei.
/// Megjegyzés: a wu kínainak nincs általánosan használt írott formája, ezért
/// a [resolve] a `wuu` nyelvkódot az egyszerűsített kínaira irányítja; a
/// kantoni a hongkongi hagyományos írást használja (`zh_Hant_HK`).
class SupportedLocales {
  SupportedLocales._();

  static const Locale fallback = Locale('en');

  static const List<AppLanguage> all = [
    AppLanguage(Locale('en'), 'English', 'English'),
    AppLanguage(Locale('zh'), '简体中文（普通话）', 'Simplified Chinese (Mandarin)'),
    AppLanguage(
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'HK'),
      '繁體中文（粵語）',
      'Traditional Chinese (Cantonese)',
    ),
    AppLanguage(Locale('hi'), 'हिन्दी', 'Hindi'),
    AppLanguage(Locale('es'), 'Español', 'Spanish'),
    AppLanguage(Locale('fr'), 'Français', 'French'),
    AppLanguage(Locale('ar'), 'العربية', 'Arabic'),
    AppLanguage(Locale('bn'), 'বাংলা', 'Bengali'),
    AppLanguage(Locale('ru'), 'Русский', 'Russian'),
    AppLanguage(Locale('pt'), 'Português', 'Portuguese'),
    AppLanguage(Locale('ur'), 'اردو', 'Urdu'),
    AppLanguage(Locale('id'), 'Bahasa Indonesia', 'Indonesian'),
    AppLanguage(Locale('de'), 'Deutsch', 'German'),
    AppLanguage(Locale('ja'), '日本語', 'Japanese'),
    AppLanguage(Locale('mr'), 'मराठी', 'Marathi'),
    AppLanguage(Locale('te'), 'తెలుగు', 'Telugu'),
    AppLanguage(Locale('tr'), 'Türkçe', 'Turkish'),
    AppLanguage(Locale('ta'), 'தமிழ்', 'Tamil'),
    AppLanguage(Locale('vi'), 'Tiếng Việt', 'Vietnamese'),
    AppLanguage(Locale('fil'), 'Filipino', 'Filipino (Tagalog)'),
    AppLanguage(Locale('ko'), '한국어', 'Korean'),
    AppLanguage(Locale('fa'), 'فارسی', 'Persian (Farsi)'),
    AppLanguage(Locale('jv'), 'Basa Jawa', 'Javanese'),
    AppLanguage(Locale('ha'), 'Hausa', 'Hausa'),
    AppLanguage(Locale('sw'), 'Kiswahili', 'Swahili'),
    AppLanguage(Locale('hu'), 'Magyar', 'Hungarian'),
    AppLanguage(Locale('it'), 'Italiano', 'Italian'),
    AppLanguage(Locale('pl'), 'Polski', 'Polish'),
    AppLanguage(Locale('uk'), 'Українська', 'Ukrainian'),
    AppLanguage(Locale('ro'), 'Română', 'Romanian'),
    AppLanguage(Locale('nl'), 'Nederlands', 'Dutch'),
    AppLanguage(Locale('el'), 'Ελληνικά', 'Greek'),
    AppLanguage(Locale('cs'), 'Čeština', 'Czech'),
    AppLanguage(Locale('sv'), 'Svenska', 'Swedish'),
    AppLanguage(Locale('ca'), 'Català', 'Catalan'),
    AppLanguage(Locale('sr'), 'Српски', 'Serbian'),
    AppLanguage(Locale('bg'), 'Български', 'Bulgarian'),
    AppLanguage(Locale('sq'), 'Shqip', 'Albanian'),
    AppLanguage(Locale('hr'), 'Hrvatski', 'Croatian'),
    AppLanguage(Locale('da'), 'Dansk', 'Danish'),
    AppLanguage(Locale('fi'), 'Suomi', 'Finnish'),
    AppLanguage(Locale('nb'), 'Norsk', 'Norwegian'),
    AppLanguage(Locale('sk'), 'Slovenčina', 'Slovak'),
    AppLanguage(Locale('lt'), 'Lietuvių', 'Lithuanian'),
  ];

  static List<Locale> get locales => all.map((l) => l.locale).toList();

  /// Nyelvkódok, amiket egy támogatott nyelvre képezünk le.
  static const Map<String, Locale> _aliases = {
    'wuu': Locale('zh'),
    'yue': Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'HK'),
    'tl': Locale('fil'),
    'no': Locale('nb'),
    'nn': Locale('nb'),
    'in': Locale('id'),
    'iw': Locale('en'),
  };

  /// A rendszer nyelvéből kiválasztja a legjobban illő támogatott nyelvet.
  /// Ismeretlen nyelv esetén angol.
  static Locale resolve(Locale? device) {
    if (device == null) return fallback;
    final alias = _aliases[device.languageCode];
    if (alias != null) return alias;

    // Kínai: írásrendszer és ország alapján.
    if (device.languageCode == 'zh') {
      final script = device.scriptCode;
      final country = device.countryCode;
      final traditional = script == 'Hant' || country == 'HK' || country == 'TW' || country == 'MO';
      return traditional ? all[2].locale : all[1].locale;
    }

    for (final l in all) {
      if (l.locale == device) return l.locale;
    }
    for (final l in all) {
      if (l.locale.languageCode == device.languageCode) return l.locale;
    }
    return fallback;
  }

  static AppLanguage languageFor(Locale locale) {
    final resolved = resolve(locale);
    return all.firstWhere((l) => l.locale == resolved, orElse: () => all.first);
  }

  static AppLanguage? byTag(String tag) {
    for (final l in all) {
      if (l.tag == tag) return l;
    }
    return null;
  }
}
