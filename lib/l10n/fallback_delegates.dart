import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// A Flutter beépített (Material/Cupertino/Widgets) szövegei nem minden
/// nyelven léteznek (pl. jávai, hausza). Ez a burkoló ilyenkor az angol
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

/// A három beépített delegate, tartalékkal.
const List<LocalizationsDelegate<dynamic>> fallbackGlobalDelegates = [
  FallbackLocalizationsDelegate<MaterialLocalizations>(GlobalMaterialLocalizations.delegate),
  FallbackLocalizationsDelegate<CupertinoLocalizations>(GlobalCupertinoLocalizations.delegate),
  FallbackLocalizationsDelegate<WidgetsLocalizations>(GlobalWidgetsLocalizations.delegate),
];
