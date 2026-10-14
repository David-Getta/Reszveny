import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:sqlite3/sqlite3.dart';

/// Egy megosztott elemzés nyilvános adatai (amit a felhasználó maga oszt meg):
/// cég, lényeg, hangulat, forgatókönyvek és a felület feliratai a felhasználó
/// nyelvén. A `/s/<id>` oldal és a link-előnézet (Open Graph) ebből készül.
class SharedReport {
  SharedReport({required this.id, required this.data, required this.hasImage, required this.createdAt, this.views = 0});

  final String id;
  final Map<String, dynamic> data;
  final bool hasImage;
  final DateTime createdAt;
  final int views;
}

class ShareStore {
  ShareStore(this._db) {
    _db.execute('''
      CREATE TABLE IF NOT EXISTS shares (
        id TEXT PRIMARY KEY,
        user_id TEXT NOT NULL,
        dedupe_key TEXT NOT NULL,
        data TEXT NOT NULL,
        image BLOB,
        views INTEGER NOT NULL DEFAULT 0,
        created_at TEXT NOT NULL
      );
      CREATE UNIQUE INDEX IF NOT EXISTS shares_dedupe ON shares(user_id, dedupe_key);
      CREATE INDEX IF NOT EXISTS shares_user ON shares(user_id, created_at);
    ''');
  }

  final Database _db;
  DateTime Function() clock = DateTime.now;

  /// A link ennyi ideig él.
  static const keep = Duration(days: 180);

  /// Felhasználónként naponta legfeljebb ennyi új link.
  static const perDay = 30;

  /// A kép legfeljebb ekkora (az előnézethez egy kisebb PNG is elég).
  static const maxImageBytes = 1024 * 1024;

  static const _alphabet = 'abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789';
  static final _rng = Random.secure();

  static String _newId() => List.generate(10, (_) => _alphabet[_rng.nextInt(_alphabet.length)]).join();

  /// Hány új linket hozott létre a felhasználó az elmúlt napban.
  int createdToday(String userId) =>
      _db.select('SELECT COUNT(*) AS n FROM shares WHERE user_id = ? AND created_at >= ?', [
            userId,
            clock().toUtc().subtract(const Duration(days: 1)).toIso8601String(),
          ]).first['n']
          as int;

  /// Létrehoz egy linket, vagy ugyanarra az elemzésre (részvény + készítés
  /// ideje) a meglévőt adja vissza, frissített adatokkal.
  String save(String userId, Map<String, dynamic> data, Uint8List? image) {
    final now = clock().toUtc();
    final key = '${data['symbol']}|${data['generated_at']}';
    final existing = _db.select('SELECT id FROM shares WHERE user_id = ? AND dedupe_key = ?', [userId, key]);
    final json = jsonEncode(data);
    if (existing.isNotEmpty) {
      final id = existing.first['id'] as String;
      _db.execute('UPDATE shares SET data = ?, image = COALESCE(?, image) WHERE id = ?', [json, image, id]);
      return id;
    }
    final id = _newId();
    _db.execute('INSERT INTO shares (id, user_id, dedupe_key, data, image, created_at) VALUES (?, ?, ?, ?, ?, ?)', [
      id,
      userId,
      key,
      json,
      image,
      now.toIso8601String(),
    ]);
    _db.execute('DELETE FROM shares WHERE created_at < ?', [now.subtract(keep).toIso8601String()]);
    return id;
  }

  /// A link adatai (és a megtekintés számlálása, ha [countView]).
  SharedReport? find(String id, {bool countView = false}) {
    final rows = _db.select(
      'SELECT id, data, image IS NOT NULL AS has_image, views, created_at FROM shares WHERE id = ?',
      [id],
    );
    if (rows.isEmpty) return null;
    final r = rows.first;
    final created = DateTime.parse(r['created_at'] as String);
    if (clock().toUtc().difference(created) > keep) return null;
    if (countView) _db.execute('UPDATE shares SET views = views + 1 WHERE id = ?', [id]);
    return SharedReport(
      id: r['id'] as String,
      data: (jsonDecode(r['data'] as String) as Map).cast<String, dynamic>(),
      hasImage: (r['has_image'] as int) == 1,
      createdAt: created,
      views: (r['views'] as int) + (countView ? 1 : 0),
    );
  }

  Uint8List? image(String id) {
    final rows = _db.select('SELECT image FROM shares WHERE id = ?', [id]);
    if (rows.isEmpty) return null;
    final v = rows.first['image'];
    return v is Uint8List ? v : null;
  }

  /// Fiók törlésekor a megosztásai is törlődnek.
  void deleteUser(String userId) => _db.execute('DELETE FROM shares WHERE user_id = ?', [userId]);
}
