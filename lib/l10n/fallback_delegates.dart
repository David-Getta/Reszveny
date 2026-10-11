import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'supported_locales.dart';

/// A Flutter beépített (Material/Cupertino/Widgets) szövegei nem minden
/// nyelven léteznek (pl. jávai, hausza, joruba). Ez a burkoló ilyenkor az angol
/// rendszer-szövegeket tölti be, miközben az app saját szövegei a kívánt
/// nyelven jelennek meg.
class FallbackLocalizationsDelegate<T> extends LocalizationsDelegate<T> {
  const FallbackLocalizationsDelegate(this.inner, {this.fallback = const Locale('en')});

  final LocalizationsDelegate<T> inner;
  final Locale fallback;

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<T> load(Locale locale) => inner.load(inner.isSupported(locale) ? locale : fallback);

  @override
  bool shouldReload(covariant LocalizationsDelegate<T> old) => false;
}

/// A szövegirány a nyelvhez igazodik akkor is, ha a Flutter nem ismeri a nyelvet
/// (szindhi, szoráni kurd), vagy rosszul tudja (ujgur: balról jobbra).
class DirectionalWidgetsLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const DirectionalWidgetsLocalizationsDelegate();

  static const _inner = FallbackLocalizationsDelegate<WidgetsLocalizations>(GlobalWidgetsLocalizations.delegate);

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    final loaded = await _inner.load(locale);
    final rtl = SupportedLocales.isRtl(locale);
    if (rtl == (loaded.textDirection == TextDirection.rtl)) return loaded;
    return rtl ? const _RtlWidgetsLocalizations() : const DefaultWidgetsLocalizations();
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<WidgetsLocalizations> old) => false;
}

/// Angol rendszerszövegek, jobbról balra iránnyal.
class _RtlWidgetsLocalizations extends DefaultWidgetsLocalizations {
  const _RtlWidgetsLocalizations();

  @override
  TextDirection get textDirection => TextDirection.rtl;
}

/// A három beépített delegate, tartalékkal.
const List<LocalizationsDelegate<dynamic>> fallbackGlobalDelegates = [
  FallbackLocalizationsDelegate<MaterialLocalizations>(GlobalMaterialLocalizations.delegate),
  FallbackLocalizationsDelegate<CupertinoLocalizations>(GlobalCupertinoLocalizations.delegate),
  DirectionalWidgetsLocalizationsDelegate(),
];
