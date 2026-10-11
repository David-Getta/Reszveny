import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/analysis/analysis_options.dart';

/// Felhasználói beállítások: megjelenés (téma) és a legutóbbi keresések.
class AppPreferences extends ChangeNotifier {
  AppPreferences({
    this.themeMode = ThemeMode.system,
    List<String> recent = const [],
    List<String> favorites = const [],
    this.hotkeyJson,
    this.displayCurrency,
    this.autoUpdate = true,
    this.analysisDepth = AnalysisDepth.standard,
    this.readerLevel = ReaderLevel.beginner,
    this.counterArgument = true,
    this.doubleOption = true,
    this.doubleOptionAsked = false,
    this.keepInTray = true,
  }) : _recent = List.of(recent),
       _favorites = List.of(favorites) {
    displayCurrency ??= currencyUnset;
  }

  static const _themeKey = 'theme_mode';
  static const _recentKey = 'recent_symbols';
  static const _hotkeyKey = 'global_hotkey';
  static const _favoritesKey = 'favorite_symbols';
  static const _currencyKey = 'display_currency';
  static const _autoUpdateKey = 'auto_update';
  static const _depthKey = 'analysis_depth';
  static const _doubleOptionKey = 'double_option';
  static const _doubleOptionAskedKey = 'double_option_asked';
  static const _readerKey = 'analysis_reader_level';
  static const _counterKey = 'analysis_counter_argument';
  static const _keepInTrayKey = 'keep_in_tray';
  static const maxRecent = 20;

  /// Megjelenés; módosítása a [setThemeMode] metódussal, hogy mentsünk is.
  ThemeMode themeMode;

  List<String> _recent;
  List<String> get recent => List.unmodifiable(_recent);

  final List<String> _favorites;
  List<String> get favorites => List.unmodifiable(_favorites);
  bool isFavorite(String symbol) => _favorites.contains(symbol.toUpperCase());

  /// Az AI-elemzés hossza (a mély elemzés két elemzést fogyaszt).
  AnalysisDepth analysisDepth;

  /// Kezdő (magyarázó) vagy tapasztalt (tömörebb) olvasónak szóljon az elemzés.
  ReaderLevel readerLevel;

  /// Az összefoglaló végén szerepeljen a tézis legerősebb ellenérve.
  bool counterArgument;

  /// macOS: a dupla Option-nyomás is előhívja az appot.
  bool doubleOption;

  /// Kértük-e már egyszer a „Bemenetfigyelés” engedélyt (csak egyszer kérdezünk).
  bool doubleOptionAsked;

  /// Frissítések automatikus letöltése és telepítése (ahol a platform engedi).
  bool autoUpdate;

  /// Asztali gépen az ablak bezárása után is fusson a menüsorban / tálcán.
  bool keepInTray;

  /// Megjelenítési pénznem (ISO-kód) vagy `null`: csak a részvény saját pénzneme.
  /// A „nincs beállítva” állapotot az [AppPreferences.currencyUnset] jelöli.
  String? displayCurrency;

  /// A felhasználó által átállított globális gyorsbillentyű (hotkey_manager
  /// JSON-ja), vagy `null` az alapértelmezetthez.
  Map<String, dynamic>? hotkeyJson;

  static Future<AppPreferences> load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final mode = ThemeMode.values.asNameMap()[prefs.getString(_themeKey) ?? ''] ?? ThemeMode.system;
      final hk = prefs.getString(_hotkeyKey);
      return AppPreferences(
        themeMode: mode,
        recent: prefs.getStringList(_recentKey) ?? const [],
        favorites: prefs.getStringList(_favoritesKey) ?? const [],
        hotkeyJson: hk == null ? null : (jsonDecode(hk) as Map<String, dynamic>),
        displayCurrency: prefs.getString(_currencyKey) ?? currencyUnset,
        autoUpdate: prefs.getBool(_autoUpdateKey) ?? true,
        analysisDepth: AnalysisDepth.values.asNameMap()[prefs.getString(_depthKey) ?? ''] ?? AnalysisDepth.standard,
        readerLevel: ReaderLevel.values.asNameMap()[prefs.getString(_readerKey) ?? ''] ?? ReaderLevel.beginner,
        counterArgument: prefs.getBool(_counterKey) ?? true,
        doubleOption: prefs.getBool(_doubleOptionKey) ?? true,
        doubleOptionAsked: prefs.getBool(_doubleOptionAskedKey) ?? false,
        keepInTray: prefs.getBool(_keepInTrayKey) ?? true,
      );
    } catch (_) {
      return AppPreferences();
    }
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    themeMode = mode;
    notifyListeners();
    await _save((p) => p.setString(_themeKey, mode.name));
  }

  Future<void> addRecent(String symbol) async {
    final s = symbol.trim().toUpperCase();
    if (s.isEmpty) return;
    _recent
      ..remove(s)
      ..insert(0, s);
    if (_recent.length > maxRecent) _recent = _recent.sublist(0, maxRecent);
    notifyListeners();
    await _save((p) => p.setStringList(_recentKey, _recent));
  }

  /// Jelző: a felhasználó még nem választott; ilyenkor a rendszer nyelvéből
  /// származtatjuk. Az üres sztring = „csak a saját pénznem”.
  static const String currencyUnset = '__unset__';

  Future<void> setAnalysisDepth(AnalysisDepth d) async {
    analysisDepth = d;
    notifyListeners();
    await _save((p) => p.setString(_depthKey, d.name));
  }

  Future<void> setReaderLevel(ReaderLevel l) async {
    readerLevel = l;
    notifyListeners();
    await _save((p) => p.setString(_readerKey, l.name));
  }

  Future<void> setCounterArgument(bool enabled) async {
    counterArgument = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_counterKey, enabled));
  }

  Future<void> setDoubleOption(bool enabled) async {
    doubleOption = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_doubleOptionKey, enabled));
  }

  Future<void> markDoubleOptionAsked() async {
    doubleOptionAsked = true;
    await _save((p) => p.setBool(_doubleOptionAskedKey, true));
  }

  Future<void> setKeepInTray(bool enabled) async {
    keepInTray = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_keepInTrayKey, enabled));
  }

  Future<void> setAutoUpdate(bool enabled) async {
    autoUpdate = enabled;
    notifyListeners();
    await _save((p) => p.setBool(_autoUpdateKey, enabled));
  }

  Future<void> setDisplayCurrency(String? code) async {
    displayCurrency = code ?? '';
    notifyListeners();
    await _save((p) => p.setString(_currencyKey, displayCurrency!));
  }

  Future<void> toggleFavorite(String symbol) async {
    final s = symbol.trim().toUpperCase();
    if (s.isEmpty) return;
    if (!_favorites.remove(s)) _favorites.insert(0, s);
    notifyListeners();
    await _save((p) => p.setStringList(_favoritesKey, _favorites));
  }

  Future<void> setHotkeyJson(Map<String, dynamic>? json) async {
    hotkeyJson = json;
    notifyListeners();
    await _save((p) => json == null ? p.remove(_hotkeyKey) : p.setString(_hotkeyKey, jsonEncode(json)));
  }

  Future<void> clearRecent() async {
    _recent = [];
    notifyListeners();
    await _save((p) => p.remove(_recentKey));
  }

  Future<void> _save(Future<void> Function(SharedPreferences) write) async {
    try {
      await write(await SharedPreferences.getInstance());
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}
