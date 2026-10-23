import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:sqlite3/sqlite3.dart';

/// Névtelen használati statisztika és hibajelentés (csak a felhasználó
/// hozzájárulásával küldi az app). Napi összesítést tárolunk: eseménynév,
/// platform, verzió, darabszám. A napi aktív felhasználókat naponta más sóval
/// képzett hash számolja, így két nap adata nem köthető össze, és a fiókhoz
/// sem: a só véletlen, csak a memóriában van, és a nap végén elvész (az
/// adatbázisból a felhasználók listájával sem számolható vissza). A hibákból az üzenet és a veremnyom marad meg, összevonva.
class TelemetryStore {
  /// A napi só: véletlen, csak az adott napra (a korábbiak elvesznek). Újraindításkor
  /// új só jön – aznap ugyanaz a felhasználó legfeljebb kétszer számít.
  String? _saltDay;
  List<int> _salt = const [];

  List<int> _saltOf(String day) {
    if (_saltDay != day) {
      final rng = Random.secure();
      _salt = List.generate(32, (_) => rng.nextInt(256));
      _saltDay = day;
    }
    return _salt;
  }

  TelemetryStore(this._db) {
    _db.execute('''
      CREATE TABLE IF NOT EXISTS event_counts (
        day TEXT NOT NULL,
        name TEXT NOT NULL,
        platform TEXT NOT NULL,
        version TEXT NOT NULL,
        count INTEGER NOT NULL,
        PRIMARY KEY (day, name, platform, version)
      );
      CREATE TABLE IF NOT EXISTS daily_users (
        day TEXT NOT NULL,
        user_hash TEXT NOT NULL,
        platform TEXT NOT NULL,
        PRIMARY KEY (day, user_hash)
      );
      CREATE TABLE IF NOT EXISTS error_reports (
        hash TEXT PRIMARY KEY,
        message TEXT NOT NULL,
        stack TEXT NOT NULL,
        platform TEXT NOT NULL,
        version TEXT NOT NULL,
        count INTEGER NOT NULL,
        first_seen TEXT NOT NULL,
        last_seen TEXT NOT NULL
      );
    ''');
  }

  final Database _db;
  DateTime Function() clock = DateTime.now;

  /// Az app által küldhető események; más nevet nem tárolunk.
  static const knownEvents = {
    'app_open',
    'stock_opened',
    'photo_recognized',
    'analysis_done',
    'paywall_view',
    'purchase_done',
    'share_image',
    'share_text',
    'alert_created',
    'telemetry_on',
    'ask_question',
    'portfolio_review',
    'daily_brief',
    'morning_brief',
    'holdings_read',
    'news_explained',
    'earnings_summary',
    'description_resolved',
    'instrument_explained',
    'move_explained',
    'research_followup',
    'research_saved_note',
    'shared_cache_hit',
    'shared_cache_store',
    'list_created',
    'targets_set',
    'backup_saved',
    'calendar_exported',
    'portfolio_move',
    'tickers_imported',
    'backup_restored',
    'bulk_alerts',
  };

  /// Ennyi napig őrizzük a napi összesítést, illetve a napi aktív felhasználók
  /// hash-eit és a hibajelentéseket.
  static const keepCounts = Duration(days: 400);
  static const keepUsers = Duration(days: 90);
  static const keepErrors = Duration(days: 30);

  /// Egy küldés legfeljebb ennyi hibát és eseményenként ennyi darabot vihet.
  static const maxErrorsPerBatch = 5;
  static const maxCountPerEvent = 500;

  static String _day(DateTime t) => t.toUtc().toIso8601String().substring(0, 10);

  static String _clean(Object? v, int max, {String fallback = 'unknown'}) {
    final s = (v is String ? v : '').trim();
    if (s.isEmpty) return fallback;
    return s.length <= max ? s : s.substring(0, max);
  }

  /// Egy app-küldés feldolgozása: `{platform, version, events: {név: db}, errors: [{message, stack}]}`.
  /// Szerveroldali számláló (pl. a megosztott AI-válaszok találatai): a napi
  /// eseményszámokhoz adódik, „server” platformmal.
  void bump(String name, {int by = 1}) {
    if (!knownEvents.contains(name) || by <= 0) return;
    _db.execute(
      'INSERT INTO event_counts (day, name, platform, version, count) VALUES (?, ?, ?, ?, ?) '
      'ON CONFLICT(day, name, platform, version) DO UPDATE SET count = count + excluded.count',
      [_day(clock().toUtc()), name, 'server', '-', by],
    );
  }

  /// Egy esemény összesített száma egy napon (teszthez és az admin oldalhoz).
  int countOn(String name, DateTime day) =>
      _db.select('SELECT COALESCE(SUM(count), 0) AS n FROM event_counts WHERE day = ? AND name = ?', [
            _day(day.toUtc()),
            name,
          ]).first['n']
          as int;

  /// Az app `defaultTargetPlatform.name` értékei (és a web).
  static const knownPlatforms = {'android', 'iOS', 'macOS', 'windows', 'linux', 'fuchsia', 'web'};

  /// Naponta legfeljebb ennyi új (eddig nem látott) hibasor kerül be.
  static const maxNewErrorsPerDay = 200;

  void record(String userId, Map<String, dynamic> batch) {
    final now = clock().toUtc();
    final day = _day(now);
    // Csak ismert platform és szabályos verziószám: tetszőleges szöveg nem
    // nyithat új sorokat (és nem torzíthatja az admin táblát).
    final p = _clean(batch['platform'], 16);
    final platform = knownPlatforms.contains(p) ? p : 'other';
    final v = _clean(batch['version'], 24);
    final version = RegExp(r'^\d{1,3}\.\d{1,3}\.\d{1,4}(\+\d{1,6})?$').hasMatch(v) ? v : 'other';
    _db.execute('BEGIN');
    try {
      _db.execute('INSERT OR IGNORE INTO daily_users (day, user_hash, platform) VALUES (?, ?, ?)', [
        day,
        Hmac(sha256, _saltOf(day)).convert(utf8.encode(userId)).toString(),
        platform,
      ]);
      final events = batch['events'];
      if (events is Map) {
        for (final MapEntry(:key, :value) in events.entries) {
          if (key is! String || !knownEvents.contains(key) || value is! int || value <= 0) continue;
          _db.execute(
            'INSERT INTO event_counts (day, name, platform, version, count) VALUES (?, ?, ?, ?, ?) '
            'ON CONFLICT(day, name, platform, version) DO UPDATE SET count = count + excluded.count',
            [day, key, platform, version, value > maxCountPerEvent ? maxCountPerEvent : value],
          );
        }
      }
      final errors = batch['errors'];
      if (errors is List) {
        for (final e in errors.take(maxErrorsPerBatch)) {
          if (e is! Map) continue;
          final message = _clean(e['message'], 500, fallback: '');
          if (message.isEmpty) continue;
          final stack = _clean(e['stack'], 4000, fallback: '');
          // Ugyanaz a hiba (üzenet + a verem eleje) egy sorba kerül.
          final top = stack.split('\n').take(4).join('\n');
          final hash = sha256.convert(utf8.encode('$message\n$top')).toString();
          final known = _db.select('SELECT 1 FROM error_reports WHERE hash = ?', [hash]).isNotEmpty;
          if (!known &&
              (_db.select('SELECT COUNT(*) AS n FROM error_reports WHERE first_seen >= ?', [day]).first['n'] as int) >=
                  maxNewErrorsPerDay) {
            continue;
          }
          _db.execute(
            'INSERT INTO error_reports (hash, message, stack, platform, version, count, first_seen, last_seen) '
            'VALUES (?, ?, ?, ?, ?, 1, ?, ?) ON CONFLICT(hash) DO UPDATE SET count = count + 1, '
            'last_seen = excluded.last_seen, platform = excluded.platform, version = excluded.version',
            [hash, message, stack, platform, version, now.toIso8601String(), now.toIso8601String()],
          );
        }
      }
      _purge(now);
      _db.execute('COMMIT');
    } catch (_) {
      _db.execute('ROLLBACK');
      rethrow;
    }
  }

  void _purge(DateTime now) {
    _db.execute('DELETE FROM event_counts WHERE day < ?', [_day(now.subtract(keepCounts))]);
    _db.execute('DELETE FROM daily_users WHERE day < ?', [_day(now.subtract(keepUsers))]);
    _db.execute('DELETE FROM error_reports WHERE last_seen < ?', [now.subtract(keepErrors).toIso8601String()]);
  }

  /// Összesítés az utolsó [days] napra (a legújabb nap elöl): napi aktív
  /// felhasználók, események, a szerver saját számai (új fiókok, elemzések,
  /// vásárlások), platformok, verziók és a leggyakoribb hibák.
  Map<String, dynamic> stats({int days = 30}) {
    final now = clock().toUtc();
    final from = _day(now.subtract(Duration(days: days - 1)));
    final fromTs = '${from}T00:00:00';
    final daily = <String, Map<String, dynamic>>{};
    Map<String, dynamic> row(String day) => daily.putIfAbsent(day, () => {'day': day, 'events': <String, int>{}});
    for (var i = 0; i < days; i++) {
      row(_day(now.subtract(Duration(days: i))));
    }
    for (final r in _db.select('SELECT day, COUNT(*) AS n FROM daily_users WHERE day >= ? GROUP BY day', [from])) {
      row(r['day'] as String)['active_users'] = r['n'];
    }
    for (final r in _db.select(
      'SELECT day, name, SUM(count) AS n FROM event_counts WHERE day >= ? GROUP BY day, name',
      [from],
    )) {
      (row(r['day'] as String)['events'] as Map<String, int>)[r['name'] as String] = r['n'] as int;
    }
    // A szerver saját adatai (ezekhez nem kell az app hozzájárulása).
    for (final (key, sql) in [
      (
        'new_accounts',
        'SELECT substr(created_at, 1, 10) AS day, COUNT(*) AS n FROM users WHERE created_at >= ? GROUP BY day',
      ),
      (
        'analyses',
        'SELECT substr(created_at, 1, 10) AS day, COUNT(*) AS n FROM usage_log WHERE created_at >= ? GROUP BY day',
      ),
      (
        'purchases',
        'SELECT substr(verified_at, 1, 10) AS day, COUNT(*) AS n FROM purchases WHERE verified_at >= ? GROUP BY day',
      ),
    ]) {
      for (final r in _db.select(sql, [fromTs])) {
        final day = r['day'] as String;
        if (daily.containsKey(day)) daily[day]![key] = r['n'];
      }
    }
    final rows = daily.values.toList()..sort((a, b) => (b['day'] as String).compareTo(a['day'] as String));
    Map<String, int> grouped(String sql) => {
      for (final r in _db.select(sql, [from])) r['k'] as String: r['n'] as int,
    };
    int count(String sql) => _db.select(sql).first['n'] as int;
    return {
      // Fiókok és bekapcsolt funkciók (a szinkronizált adatokból, pillanatnyi állapot).
      'accounts': {
        'email': count('SELECT COUNT(*) AS n FROM users WHERE email IS NOT NULL'),
        'synced': count('SELECT COUNT(*) AS n FROM user_sync'),
        'weekly_digest': count(
          "SELECT COUNT(*) AS n FROM user_sync WHERE replace(data, ' ', '') LIKE '%\"weekly_digest\":true%'",
        ),
        'email_alerts_off': count(
          "SELECT COUNT(*) AS n FROM user_sync WHERE replace(data, ' ', '') LIKE '%\"email_alerts\":false%'",
        ),
      },
      'days': rows,
      'platforms': grouped('SELECT platform AS k, COUNT(*) AS n FROM daily_users WHERE day >= ? GROUP BY platform'),
      'versions': grouped(
        "SELECT version AS k, SUM(count) AS n FROM event_counts WHERE day >= ? AND name = 'app_open' GROUP BY version",
      ),
      'totals': grouped('SELECT name AS k, SUM(count) AS n FROM event_counts WHERE day >= ? GROUP BY name'),
      'errors': [
        for (final r in _db.select(
          'SELECT message, stack, platform, version, count, first_seen, last_seen FROM error_reports '
          'ORDER BY count DESC, last_seen DESC LIMIT 20',
        ))
          {
            'message': r['message'],
            'stack': r['stack'],
            'platform': r['platform'],
            'version': r['version'],
            'count': r['count'],
            'first_seen': r['first_seen'],
            'last_seen': r['last_seen'],
          },
      ],
    };
  }

  // Fiók törlésekor nincs teendő: a tárolt adatok nem köthetők a fiókhoz.
}
