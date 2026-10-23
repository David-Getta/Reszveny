import 'dart:async';

import 'package:reszveny/l10n/app_l10n_delegate.dart';
import 'package:reszveny/l10n/supported_locales.dart';

/// Minden teszt előtt: a nyelvek külön részben vannak (igény szerinti betöltés), az app
/// induláskor előre betölti a sajátját – a tesztekben mindet, hogy az első képkockán is
/// legyen szöveg, bármelyik nyelven indul a teszt.
Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  for (final l in SupportedLocales.locales) {
    await AppL10nDelegate.preload(l);
  }
  await testMain();
}
