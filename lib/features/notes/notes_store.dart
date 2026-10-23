import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Egy részvényhez írt saját jegyzet (befektetési napló).
class StockNote {
  const StockNote({required this.text, required this.updatedAt});

  final String text;
  final DateTime updatedAt;

  Map<String, dynamic> toJson() => {'text': text, 'updated_at': updatedAt.toUtc().toIso8601String()};

  static StockNote? fromJson(Object? j) {
    if (j is! Map) return null;
    final text = j['text'];
    if (text is! String || text.trim().isEmpty) return null;
    return StockNote(text: text, updatedAt: DateTime.tryParse('${j['updated_at']}') ?? DateTime.now());
  }
}

/// Saját jegyzetek részvényenként: miért vette, mire figyel, mi lenne az
/// eladási ok. A készüléken tárolódik (belépett fióknál szinkronizálva); az
/// AI-elemzés is megkapja.
class NotesStore extends ChangeNotifier {
  NotesStore([Map<String, StockNote>? notes]) : _notes = {...?notes};

  static const _key = 'stock_notes';

  /// Egy jegyzet legfeljebb ennyi karakter.
  /// Elég egy-két mentett AI-jegyzetnek is a saját sorok mellett.
  static const maxLength = 4000;

  final Map<String, StockNote> _notes;

  static Future<NotesStore> load() async {
    try {
      final raw = (await SharedPreferences.getInstance()).getString(_key);
      if (raw == null) return NotesStore();
      final j = jsonDecode(raw) as Map;
      return NotesStore({for (final e in j.entries) '${e.key}': ?StockNote.fromJson(e.value)});
    } catch (_) {
      return NotesStore();
    }
  }

  StockNote? of(String symbol) => _notes[symbol.toUpperCase()];

  /// Egy bejegyzés a jegyzet végére (üres sorral elválasztva), pl. a vétel indoka.
  Future<void> append(String symbol, String entry) {
    final existing = of(symbol)?.text.trimRight() ?? '';
    return set(symbol, existing.isEmpty ? entry : '$existing\n\n$entry');
  }

  /// Mentés (üres szövegnél törlés).
  Future<void> set(String symbol, String text) async {
    final s = symbol.toUpperCase();
    final t = text.length > maxLength ? text.substring(0, maxLength) : text;
    if (t.trim().isEmpty) {
      if (_notes.remove(s) == null) return;
    } else {
      if (_notes[s]?.text == t) return;
      _notes[s] = StockNote(text: t, updatedAt: DateTime.now());
    }
    notifyListeners();
    await _save();
  }

  Map<String, StockNote> get all => Map.unmodifiable(_notes);

  /// Az összes jegyzet cseréje (szinkronkor a fiók adataira).
  Future<void> replaceAll(Map<String, StockNote> notes) async {
    _notes
      ..clear()
      ..addAll(notes);
    notifyListeners();
    await _save();
  }

  Future<void> clear() async {
    _notes.clear();
    notifyListeners();
    await _save();
  }

  Future<void> _save() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_key, jsonEncode({for (final e in _notes.entries) e.key: e.value.toJson()}));
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}
