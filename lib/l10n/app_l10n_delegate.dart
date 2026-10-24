import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'generated/app_localizations.dart';
import 'generated/app_localizations_en.dart';

/// Az app szövegeinek delegate-je. A nyelvek külön, igény szerint betöltött részben
/// vannak (`l10n.yaml`: `use-deferred-loading` – így a webes változat fő fájlja
/// harmadakkora); a már betöltött nyelvet szinkron adja, így nyelvváltáskor és –
/// mert induláskor előre betöltjük ([preload]) – az első képkockán sincs üres képernyő.
class AppL10nDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppL10nDelegate();

  static final _loaded = <Locale, AppLocalizations>{};

  /// A nyelv szövegeinek betöltése és megjegyzése (nem támogatott nyelvnél hibát dob).
  static Future<AppLocalizations> preload(Locale locale) async =>
      _loaded[locale] ??= await lookupAppLocalizations(locale);

  @override
  bool isSupported(Locale locale) => AppLocalizations.delegate.isSupported(locale);

  @override
  Future<AppLocalizations> load(Locale locale) {
    final loaded = _loaded[locale];
    if (loaded != null) return SynchronousFuture(loaded);
    // A nyelv részének letöltése weben elbukhat (hálózat nélkül, vagy egy közben
    // frissített kiadás régi fő fájljával): akkor angolul indul – különben az első
    // képkocka el sem készülne, és üres maradna az oldal. A következő betöltés újra próbálja.
    return preload(locale).timeout(loadTimeout).catchError((Object e) {
      debugPrint('A(z) $locale nyelv szövegei nem tölthetők be: $e');
      return AppLocalizationsEn();
    });
  }

  /// Ennyi ideig várunk egy nyelv szövegeire (lassú hálózaton is bőven elég).
  static const loadTimeout = Duration(seconds: 20);

  @override
  bool shouldReload(AppL10nDelegate old) => false;
}
