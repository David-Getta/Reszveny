import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A piaci adatok gyorsítótárának kulcs-előtagja (`CachingMarketDataProvider`).
const marketCachePrefix = 'mdc_';

/// Írás csak változáskor: asztali gépen (Windows, Linux) minden mentés a teljes beállításfájlt
/// kódolja és írja újra, így egy szinkron átvétele a változatlan tárolókkal is másodpercekig
/// tartana. Az összevetés a memóriabeli másolattal történik (olcsó).
///
/// Egy sikertelen írás után a memóriabeli másolat már az új értéket mutatja: a [writeWithRoom]
/// újrapróbája ezért kényszerítve ír ([_forceWrite] zónaérték), nem hagyja ki „változatlanként”.
extension WriteIfChanged on SharedPreferences {
  bool get _skip => Zone.current[_forceWrite] != true;

  Future<bool> putString(String key, String value) async =>
      (_skip && getString(key) == value) || await setString(key, value);

  Future<bool> putBool(String key, bool value) async => (_skip && getBool(key) == value) || await setBool(key, value);

  Future<bool> putInt(String key, int value) async => (_skip && getInt(key) == value) || await setInt(key, value);

  Future<bool> putDouble(String key, double value) async =>
      (_skip && getDouble(key) == value) || await setDouble(key, value);

  Future<bool> putStringList(String key, List<String> value) async {
    final current = getStringList(key);
    return (_skip && current != null && listEquals(current, value)) || await setStringList(key, value);
  }
}

const _forceWrite = #storageForceWrite;

/// Weben a felhasználói adatok mentésének sorszáma a böngésző tárában: egy másik lap
/// ebből látja olcsón, hogy volt-e közben mentés (különben minden fülváltáskor újraolvasná
/// és összevetné az összes tárolót).
const dataRevisionKey = 'data_rev';

/// Az ebben a lapban legutóbb írt sorszám (a saját mentés nem „másik lap változása”).
int lastOwnRevision = 0;

Future<void> _bumpRevision(SharedPreferences prefs) async {
  if (!kIsWeb) return;
  try {
    final next = (prefs.getInt(dataRevisionKey) ?? 0) + 1;
    lastOwnRevision = next;
    await prefs.setInt(dataRevisionKey, next);
  } catch (_) {}
}

/// A piaci adatok gyorsítótárának törlése (újratölthető): helyet csinál a felhasználó adatainak.
Future<void> freeMarketCache(SharedPreferences prefs) async {
  for (final k in prefs.getKeys().where((k) => k.startsWith(marketCachePrefix)).toList()) {
    await prefs.remove(k);
  }
}

/// A felhasználó adatainak mentése: ha a tároló betelt (weben kb. 5 millió karakter,
/// amit a piaci gyorsítótár nagyrészt kitölthet), a gyorsítótár törlődik, és még egy
/// próba következik – különben a portfólió változása csendben elveszne az újratöltéskor.
/// Igaz, ha a mentés sikerült.
Future<bool> writeWithRoom(Future<void> Function(SharedPreferences prefs) write) async {
  final SharedPreferences prefs;
  try {
    prefs = await SharedPreferences.getInstance();
  } catch (e) {
    debugPrint('A tároló nem érhető el: $e');
    return false;
  }
  try {
    await write(prefs);
    await _bumpRevision(prefs);
    return true;
  } catch (e) {
    debugPrint('Mentés nem sikerült ($e): a gyorsítótár helye felszabadul.');
  }
  try {
    await freeMarketCache(prefs);
    // Kényszerített írás: az előző, sikertelen próba már beírta az értéket a memóriabeli másolatba.
    await runZoned(() => write(prefs), zoneValues: {_forceWrite: true});
    await _bumpRevision(prefs);
    return true;
  } catch (e) {
    debugPrint('Mentés a gyorsítótár törlése után sem sikerült: $e');
    return false;
  }
}
