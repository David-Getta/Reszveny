import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' show StringCharacters;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/util/tombstones.dart';

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
    return StockNote(text: text, updatedAt: parseStamp(j['updated_at']) ?? DateTime.now());
  }
}

/// Saját jegyzetek részvényenként: miért vette, mire figyel, mi lenne az
/// eladási ok. A készüléken tárolódik (belépett fióknál szinkronizálva); az
/// AI-elemzés is megkapja.
class NotesStore extends ChangeNotifier {
  NotesStore([Map<String, StockNote>? notes, Map<String, DateTime>? deleted])
    : _notes = {...?notes},
      _deleted = {...?deleted};

  static const _key = 'stock_notes';
  static const _deletedKey = 'stock_notes_deleted';

  /// A törölt jegyzetek tickerei a törlés idejével (UTC): szinkronkor a másik
  /// eszköz régebbi jegyzete nem támad fel.
  final Map<String, DateTime> _deleted;

  Map<String, String> get deletedJson => tombstonesJson(_deleted);

  /// A törlési jelzések cseréje (szinkronkor a fiók állapotára).
  Future<void> replaceAllDeleted(Map<String, DateTime> deleted) async {
    _deleted
      ..clear()
      ..addAll(deleted);
    await _save();
  }

  /// Egy jegyzet legfeljebb ennyi karakter.
  /// Elég egy-két mentett AI-jegyzetnek is a saját sorok mellett.
  static const maxLength = 4000;

  final Map<String, StockNote> _notes;

  static Future<NotesStore> load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      Map<String, DateTime> deleted = const {};
      try {
        deleted = parseTombstones(jsonDecode(prefs.getString(_deletedKey) ?? '{}'));
      } catch (_) {}
      final raw = prefs.getString(_key);
      if (raw == null) return NotesStore(null, deleted);
      final j = jsonDecode(raw) as Map;
      return NotesStore({for (final e in j.entries) '${e.key}': ?StockNote.fromJson(e.value)}, deleted);
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
    // Karakterre (mint a szövegmező számlálója), hogy az emodzsis jegyzet se vágódjon meg.
    final t = text.characters.take(maxLength).toString();
    if (t.trim().isEmpty) {
      if (_notes.remove(s) == null) return;
      _deleted[s] = DateTime.now().toUtc();
    } else {
      if (_notes[s]?.text == t) return;
      _notes[s] = StockNote(text: t, updatedAt: DateTime.now());
      _deleted.remove(s);
    }
    notifyListeners();
    await _save();
  }

  /// Tickerváltás: a jegyzet az új tickerhez kerül (ha ott is volt, utána fűzve).
  Future<void> renameSymbol(String from, String to) async {
    final f = from.trim().toUpperCase(), t = to.trim().toUpperCase();
    final note = _notes[f];
    if (f == t || t.isEmpty || note == null) return;
    await append(t, note.text);
    await set(f, '');
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
    _deleted.clear();
    notifyListeners();
    await _save();
  }

  Future<void> _save() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await Future.wait([
        prefs.setString(_key, jsonEncode({for (final e in _notes.entries) e.key: e.value.toJson()})),
        prefs.setString(_deletedKey, jsonEncode(deletedJson)),
      ]);
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }
}
