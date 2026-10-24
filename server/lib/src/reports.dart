import 'package:sqlite3/sqlite3.dart';

/// A felhasználók jelentései egy AI-válaszról (téves, sértő vagy egyéb): a Google Play
/// AI-tartalom szabálya az appon belüli jelzést kéri. Fiók nélkül tároljuk (csak a
/// jelentett szöveg, az ok és a megjegyzés), korlátos ideig és darabszámban.
class ReportStore {
  ReportStore(this._db) {
    _db.execute('''
      CREATE TABLE IF NOT EXISTS ai_reports (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        kind TEXT NOT NULL,
        reason TEXT NOT NULL,
        symbol TEXT NOT NULL,
        note TEXT NOT NULL,
        excerpt TEXT NOT NULL,
        platform TEXT NOT NULL,
        version TEXT NOT NULL,
        created_at TEXT NOT NULL
      );
      CREATE INDEX IF NOT EXISTS ai_reports_created ON ai_reports(created_at);
    ''');
  }

  final Database _db;
  DateTime Function() clock = DateTime.now;

  /// Ennyi ideig őrizzük, és legfeljebb ennyi sort (a legrégebbi megy ki először).
  static const keep = Duration(days: 180);
  static const maxRows = 5000;

  /// Felhasználónként naponta legfeljebb ennyi jelentés (a [RateLimiter] számolja).
  static const perDay = 20;

  static const kinds = {'analysis', 'portfolio', 'ask', 'research', 'followup', 'brief'};
  static const reasons = {'inaccurate', 'harmful', 'other'};
  static const maxExcerpt = 20000;
  static const maxNote = 1000;

  static String _clip(Object? v, int max) {
    final s = (v is String ? v : '').trim();
    return s.length <= max ? s : s.substring(0, max);
  }

  /// Egy jelentés mentése; `false`, ha ismeretlen a fajta vagy az ok, vagy üres a szöveg.
  bool save(Map<String, dynamic> body) {
    final kind = body['kind'], reason = body['reason'];
    final excerpt = _clip(body['text'], maxExcerpt);
    if (!kinds.contains(kind) || !reasons.contains(reason) || excerpt.isEmpty) return false;
    final symbol = _clip(body['symbol'], 24);
    final now = clock().toUtc();
    _db.execute(
      'INSERT INTO ai_reports (kind, reason, symbol, note, excerpt, platform, version, created_at) '
      'VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
      [
        kind,
        reason,
        RegExp(r'^[A-Za-z0-9.\-:^=]*$').hasMatch(symbol) ? symbol : '',
        _clip(body['note'], maxNote),
        excerpt,
        _clip(body['platform'], 16),
        _clip(body['version'], 24),
        now.toIso8601String(),
      ],
    );
    _db.execute('DELETE FROM ai_reports WHERE id NOT IN (SELECT id FROM ai_reports ORDER BY id DESC LIMIT ?)', [
      maxRows,
    ]);
    return true;
  }

  /// A megőrzési időn túli jelentések törlése; a szerver naponta futtatja.
  void purgeExpired() =>
      _db.execute('DELETE FROM ai_reports WHERE created_at < ?', [clock().toUtc().subtract(keep).toIso8601String()]);

  /// A legutóbbi jelentések (az admin oldalhoz), a legújabb elöl.
  List<Map<String, dynamic>> recent({int limit = 50}) => [
    for (final r in _db.select(
      'SELECT kind, reason, symbol, note, excerpt, platform, version, created_at FROM ai_reports '
      'ORDER BY id DESC LIMIT ?',
      [limit],
    ))
      {
        'kind': r['kind'],
        'reason': r['reason'],
        'symbol': r['symbol'],
        'note': r['note'],
        // Az admin oldalon az eleje elég; a teljes szöveg az adatbázisban marad.
        'excerpt': (r['excerpt'] as String).length > 2000
            ? '${(r['excerpt'] as String).substring(0, 2000)}…'
            : r['excerpt'],
        'platform': r['platform'],
        'version': r['version'],
        'created_at': r['created_at'],
      },
  ];
}
