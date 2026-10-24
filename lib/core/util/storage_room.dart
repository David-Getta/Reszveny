import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A piaci adatok gyorsítótárának kulcs-előtagja (`CachingMarketDataProvider`).
const marketCachePrefix = 'mdc_';

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
    return true;
  } catch (e) {
    debugPrint('Mentés nem sikerült ($e): a gyorsítótár helye felszabadul.');
  }
  try {
    for (final k in prefs.getKeys().where((k) => k.startsWith(marketCachePrefix)).toList()) {
      await prefs.remove(k);
    }
    await write(prefs);
    return true;
  } catch (e) {
    debugPrint('Mentés a gyorsítótár törlése után sem sikerült: $e');
    return false;
  }
}
