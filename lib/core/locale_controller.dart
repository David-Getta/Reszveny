import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../l10n/supported_locales.dart';

/// A felhasználó által választott nyelv. `null` = a rendszer nyelve.
class LocaleController extends ChangeNotifier {
  LocaleController({Locale? initial}) : _override = initial;

  static const _prefsKey = 'app_locale';

  Locale? _override;
  Locale? get override => _override;

  /// Az éppen érvényes nyelv: a választott, vagy a rendszerből feloldott.
  Locale effective(Locale? deviceLocale) => _override ?? SupportedLocales.resolve(deviceLocale);

  /// A készülék nyelvei közül az első támogatott (ugyanígy választ az app felülete is):
  /// `[et-EE, ru-EE]` esetén orosz, nem a tartalék angol.
  static Locale resolveList(List<Locale>? deviceLocales) {
    for (final l in deviceLocales ?? const <Locale>[]) {
      final resolved = SupportedLocales.resolve(l);
      if (resolved != SupportedLocales.fallback || l.languageCode == 'en') return resolved;
    }
    return SupportedLocales.fallback;
  }

  /// Az érvényes nyelv a készülék teljes nyelvlistájából (értesítések, AI-szövegek).
  Locale effectiveFor(List<Locale> deviceLocales) => _override ?? resolveList(deviceLocales);

  static Future<LocaleController> load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final tag = prefs.getString(_prefsKey);
      final lang = tag == null ? null : SupportedLocales.byTag(tag);
      return LocaleController(initial: lang?.locale);
    } catch (_) {
      return LocaleController();
    }
  }

  Future<void> setLocale(Locale? locale) async {
    _override = locale;
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      if (locale == null) {
        await prefs.remove(_prefsKey);
      } else {
        await prefs.setString(_prefsKey, locale.toLanguageTag());
      }
    } catch (_) {
      // A mentés hibája nem akadályozza a nyelvváltást.
    }
  }
}
