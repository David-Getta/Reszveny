import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'generated/app_localizations.dart';

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
    return loaded != null ? SynchronousFuture(loaded) : preload(locale);
  }

  @override
  bool shouldReload(AppL10nDelegate old) => false;
}
