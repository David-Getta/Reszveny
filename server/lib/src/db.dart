import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:sqlite3/sqlite3.dart';

import 'plans.dart';

/// Jogosultság-sor a `entitlements` táblából.
class Entitlement {
  Entitlement({
    required this.userId,
    this.tier,
    this.periodStart,
    this.periodEnd,
    this.used = 0,
    this.extra = 0,
    this.trialStartedAt,
  });

  final String userId;
  String? tier;
  DateTime? periodStart;
  DateTime? periodEnd;
  int used;
  int extra;
  DateTime? trialStartedAt;

  /// A kliens `EntitlementState.fromJson` formátuma.
  Map<String, dynamic> toJson() => {
    'tier': tier,
    'period_start': periodStart?.toUtc().toIso8601String(),
    'period_end': periodEnd?.toUtc().toIso8601String(),
    'used': used,
    'extra': extra,
    'trial_started_at': trialStartedAt?.toUtc().toIso8601String(),
  };
}

/// SQLite-alapú tároló: felhasználók (token-hash), jogosultságok, vásárlások.
class Store {
  Store(this._db) {
    _db.execute('''
      CREATE TABLE IF NOT EXISTS users (
        id TEXT PRIMARY KEY,
        token_hash TEXT NOT NULL UNIQUE,
        device_id TEXT,
        created_at TEXT NOT NULL
      );
      CREATE TABLE IF NOT EXISTS entitlements (
        user_id TEXT PRIMARY KEY REFERENCES users(id),
        tier TEXT,
        period_start TEXT,
        period_end TEXT,
        used INTEGER NOT NULL DEFAULT 0,
        extra INTEGER NOT NULL DEFAULT 0,
        trial_started_at TEXT
      );
      CREATE TABLE IF NOT EXISTS purchases (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id TEXT NOT NULL REFERENCES users(id),
        product_id TEXT NOT NULL,
        platform TEXT NOT NULL,
        transaction_id TEXT,
        verified_at TEXT NOT NULL,
        UNIQUE(platform, transaction_id)
      );
      CREATE TABLE IF NOT EXISTS usage_log (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id TEXT NOT NULL,
        symbol TEXT,
        input_tokens INTEGER,
        output_tokens INTEGER,
        created_at TEXT NOT NULL
      );
    ''');
  }

  factory Store.open(String path) => Store(sqlite3.open(path));
  factory Store.inMemory() => Store(sqlite3.openInMemory());

  final Database _db;
  DateTime Function() clock = DateTime.now;

  static String hashToken(String token) => sha256.convert(utf8.encode(token)).toString();

  /// Új névtelen felhasználó; visszaadja az (id, token) párt.
  (String, String) createAnonymousUser(String? deviceId) {
    final id = _randomId('usr');
    final token = _randomId('tok') + _randomId('');
    _db.execute('INSERT INTO users (id, token_hash, device_id, created_at) VALUES (?, ?, ?, ?)', [
      id,
      hashToken(token),
      deviceId,
      clock().toUtc().toIso8601String(),
    ]);
    // Próbaidő indul.
    final now = clock();
    _db.execute(
      'INSERT INTO entitlements (user_id, tier, period_start, period_end, used, extra, trial_started_at) VALUES (?, ?, ?, ?, 0, 0, ?)',
      [
        id,
        'trial',
        now.toUtc().toIso8601String(),
        now.add(const Duration(days: PlanSpec.trialDays)).toUtc().toIso8601String(),
        now.toUtc().toIso8601String(),
      ],
    );
    return (id, token);
  }

  String? userIdForToken(String token) {
    final rows = _db.select('SELECT id FROM users WHERE token_hash = ?', [hashToken(token)]);
    return rows.isEmpty ? null : rows.first['id'] as String;
  }

  Entitlement entitlement(String userId) {
    final rows = _db.select('SELECT * FROM entitlements WHERE user_id = ?', [userId]);
    if (rows.isEmpty) return Entitlement(userId: userId);
    final r = rows.first;
    final e = Entitlement(
      userId: userId,
      tier: r['tier'] as String?,
      periodStart: _date(r['period_start']),
      periodEnd: _date(r['period_end']),
      used: r['used'] as int,
      extra: r['extra'] as int,
      trialStartedAt: _date(r['trial_started_at']),
    );
    return _rolled(e);
  }

  /// Fizetős időszak görgetése: lejárt időszak után új, nullázott felhasználással.
  Entitlement _rolled(Entitlement e) {
    if (e.tier == null || e.tier == 'trial' || e.periodEnd == null) return e;
    final now = clock();
    if (now.isBefore(e.periodEnd!)) return e;
    var start = e.periodEnd!;
    var end = start.add(const Duration(days: PlanSpec.periodDays));
    while (!now.isBefore(end)) {
      start = end;
      end = start.add(const Duration(days: PlanSpec.periodDays));
    }
    e
      ..periodStart = start
      ..periodEnd = end
      ..used = 0;
    save(e);
    return e;
  }

  void save(Entitlement e) {
    _db.execute(
      '''INSERT INTO entitlements (user_id, tier, period_start, period_end, used, extra, trial_started_at)
         VALUES (?, ?, ?, ?, ?, ?, ?)
         ON CONFLICT(user_id) DO UPDATE SET tier=excluded.tier, period_start=excluded.period_start,
           period_end=excluded.period_end, used=excluded.used, extra=excluded.extra,
           trial_started_at=excluded.trial_started_at''',
      [
        e.userId,
        e.tier,
        e.periodStart?.toUtc().toIso8601String(),
        e.periodEnd?.toUtc().toIso8601String(),
        e.used,
        e.extra,
        e.trialStartedAt?.toUtc().toIso8601String(),
      ],
    );
  }

  /// Vásárlás rögzítése; igaz, ha új (nem duplikált tranzakció).
  bool recordPurchase({
    required String userId,
    required String productId,
    required String platform,
    String? transactionId,
  }) {
    if (transactionId != null) {
      final dup = _db.select('SELECT id FROM purchases WHERE platform = ? AND transaction_id = ?', [
        platform,
        transactionId,
      ]);
      if (dup.isNotEmpty) return false;
    }
    _db.execute(
      'INSERT INTO purchases (user_id, product_id, platform, transaction_id, verified_at) VALUES (?, ?, ?, ?, ?)',
      [userId, productId, platform, transactionId, clock().toUtc().toIso8601String()],
    );
    return true;
  }

  void logUsage(String userId, String? symbol, int? inputTokens, int? outputTokens) {
    _db.execute(
      'INSERT INTO usage_log (user_id, symbol, input_tokens, output_tokens, created_at) VALUES (?, ?, ?, ?, ?)',
      [userId, symbol, inputTokens, outputTokens, clock().toUtc().toIso8601String()],
    );
  }

  void close() => _db.close();

  static DateTime? _date(Object? v) => v is String ? DateTime.tryParse(v) : null;

  static String _randomId(String prefix) {
    final r = List.generate(16, (i) => (DateTime.now().microsecondsSinceEpoch * (i + 7) + _counter++ * 131) & 0xff);
    final hex = r.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
    return prefix.isEmpty ? hex : '${prefix}_$hex';
  }

  static int _counter = 0;
}
