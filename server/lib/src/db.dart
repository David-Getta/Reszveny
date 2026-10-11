import 'dart:convert';
import 'dart:math';

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
      CREATE TABLE IF NOT EXISTS sessions (
        token_hash TEXT PRIMARY KEY,
        user_id TEXT NOT NULL REFERENCES users(id),
        created_at TEXT NOT NULL
      );
      CREATE TABLE IF NOT EXISTS login_codes (
        email TEXT NOT NULL,
        code_hash TEXT NOT NULL,
        expires_at TEXT NOT NULL,
        attempts INTEGER NOT NULL DEFAULT 0,
        created_at TEXT NOT NULL
      );
      CREATE TABLE IF NOT EXISTS usage_log (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id TEXT NOT NULL,
        symbol TEXT,
        input_tokens INTEGER,
        output_tokens INTEGER,
        created_at TEXT NOT NULL
      );
      CREATE TABLE IF NOT EXISTS helper_calls (
        user_id TEXT NOT NULL,
        created_at TEXT NOT NULL
      );
      CREATE INDEX IF NOT EXISTS helper_calls_user ON helper_calls(user_id, created_at);
    ''');
    // Fiók-oszlopok (meglévő adatbázisokhoz is).
    final cols = _db.select('PRAGMA table_info(users)').map((r) => r['name'] as String).toSet();
    for (final c in ['email', 'stripe_customer_id', 'stripe_subscription_id']) {
      if (!cols.contains(c)) _db.execute('ALTER TABLE users ADD COLUMN $c TEXT');
    }
    _db.execute('CREATE UNIQUE INDEX IF NOT EXISTS users_email ON users(email)');
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
    final h = hashToken(token);
    final rows = _db.select('SELECT id FROM users WHERE token_hash = ?', [h]);
    if (rows.isNotEmpty) return rows.first['id'] as String;
    final s = _db.select('SELECT user_id FROM sessions WHERE token_hash = ?', [h]);
    return s.isEmpty ? null : s.first['user_id'] as String;
  }

  /// Új munkamenet-token egy meglévő felhasználóhoz (belépés másik eszközön).
  String issueToken(String userId) {
    final token = _randomId('tok') + _randomId('');
    _db.execute('INSERT INTO sessions (token_hash, user_id, created_at) VALUES (?, ?, ?)', [
      hashToken(token),
      userId,
      clock().toUtc().toIso8601String(),
    ]);
    return token;
  }

  /// Token visszavonása (kijelentkezés).
  void revokeToken(String token) => _db.execute('DELETE FROM sessions WHERE token_hash = ?', [hashToken(token)]);

  // ---- Fiók ----

  static String normalizeEmail(String email) => email.trim().toLowerCase();

  String? emailOf(String userId) {
    final r = _db.select('SELECT email FROM users WHERE id = ?', [userId]);
    return r.isEmpty ? null : r.first['email'] as String?;
  }

  String? userIdForEmail(String email) {
    final r = _db.select('SELECT id FROM users WHERE email = ?', [normalizeEmail(email)]);
    return r.isEmpty ? null : r.first['id'] as String;
  }

  void setEmail(String userId, String email) =>
      _db.execute('UPDATE users SET email = ? WHERE id = ?', [normalizeEmail(email), userId]);

  /// Hány kód ment ki erre a címre az elmúlt órában (visszaélés ellen).
  int recentCodeCount(String email) {
    final since = clock().subtract(const Duration(hours: 1)).toUtc().toIso8601String();
    return _db.select('SELECT COUNT(*) AS n FROM login_codes WHERE email = ? AND created_at > ?', [
          normalizeEmail(email),
          since,
        ]).first['n']
        as int;
  }

  /// Új 6 jegyű belépőkód (10 percig érvényes); a korábbiak érvénytelenek lesznek.
  String createLoginCode(String email) {
    final e = normalizeEmail(email);
    final code = (_rng.nextInt(900000) + 100000).toString();
    final now = clock();
    _db.execute('UPDATE login_codes SET expires_at = ? WHERE email = ?', [now.toUtc().toIso8601String(), e]);
    _db.execute('INSERT INTO login_codes (email, code_hash, expires_at, attempts, created_at) VALUES (?, ?, ?, 0, ?)', [
      e,
      hashToken('$e:$code'),
      now.add(const Duration(minutes: 10)).toUtc().toIso8601String(),
      now.toUtc().toIso8601String(),
    ]);
    return code;
  }

  /// Kód ellenőrzése: legfeljebb 5 próbálkozás, utána a kód elvész.
  bool verifyLoginCode(String email, String code) {
    final e = normalizeEmail(email);
    final now = clock().toUtc().toIso8601String();
    final rows = _db.select(
      'SELECT rowid, code_hash, attempts FROM login_codes WHERE email = ? AND expires_at > ? ORDER BY created_at DESC LIMIT 1',
      [e, now],
    );
    if (rows.isEmpty) return false;
    final r = rows.first;
    if ((r['attempts'] as int) >= 5) return false;
    if (r['code_hash'] == hashToken('$e:${code.trim()}')) {
      _db.execute('DELETE FROM login_codes WHERE email = ?', [e]);
      return true;
    }
    _db.execute('UPDATE login_codes SET attempts = attempts + 1 WHERE rowid = ?', [r['rowid']]);
    return false;
  }

  /// A fiók és minden hozzá tartozó adat törlése (GDPR 17. cikk). A vásárlások
  /// felhasználó nélkül maradnak meg (`deleted`), hogy ugyanaz a bolti bizonylat
  /// ne legyen újra beváltható; a számviteli bizonylat a boltnál / a Stripe-nál van.
  void deleteUser(String userId) {
    final email = emailOf(userId);
    _db.execute('BEGIN');
    try {
      _db.execute('DELETE FROM sessions WHERE user_id = ?', [userId]);
      _db.execute('DELETE FROM entitlements WHERE user_id = ?', [userId]);
      _db.execute('DELETE FROM usage_log WHERE user_id = ?', [userId]);
      _db.execute('DELETE FROM helper_calls WHERE user_id = ?', [userId]);
      if (email != null) _db.execute('DELETE FROM login_codes WHERE email = ?', [email]);
      _db.execute("UPDATE purchases SET user_id = 'deleted' WHERE user_id = ?", [userId]);
      _db.execute('DELETE FROM users WHERE id = ?', [userId]);
      _db.execute('COMMIT');
    } catch (_) {
      _db.execute('ROLLBACK');
      rethrow;
    }
  }

  // ---- Stripe ----

  ({String? customerId, String? subscriptionId}) stripeOf(String userId) {
    final r = _db.select('SELECT stripe_customer_id, stripe_subscription_id FROM users WHERE id = ?', [userId]);
    if (r.isEmpty) return (customerId: null, subscriptionId: null);
    return (
      customerId: r.first['stripe_customer_id'] as String?,
      subscriptionId: r.first['stripe_subscription_id'] as String?,
    );
  }

  void setStripe(String userId, {String? customerId, String? subscriptionId}) {
    if (customerId != null) {
      _db.execute('UPDATE users SET stripe_customer_id = ? WHERE id = ?', [customerId, userId]);
    }
    if (subscriptionId != null) {
      _db.execute('UPDATE users SET stripe_subscription_id = ? WHERE id = ?', [subscriptionId, userId]);
    }
  }

  String? userIdForStripeCustomer(String customerId) {
    final r = _db.select('SELECT id FROM users WHERE stripe_customer_id = ?', [customerId]);
    return r.isEmpty ? null : r.first['id'] as String;
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

  /// Segéd-hívások (fotófelismerés, formátumjavítás) száma [since] óta.
  int helperCallsSince(String userId, DateTime since) =>
      _db.select('SELECT COUNT(*) AS n FROM helper_calls WHERE user_id = ? AND created_at >= ?', [
            userId,
            since.toUtc().toIso8601String(),
          ]).first['n']
          as int;

  /// Egy segéd-hívás naplózása; a két napnál régebbi sorokat közben törli.
  void logHelperCall(String userId) {
    final now = clock().toUtc();
    _db.execute('INSERT INTO helper_calls (user_id, created_at) VALUES (?, ?)', [userId, now.toIso8601String()]);
    _db.execute('DELETE FROM helper_calls WHERE created_at < ?', [
      now.subtract(const Duration(days: 2)).toIso8601String(),
    ]);
  }

  void close() => _db.close();

  static DateTime? _date(Object? v) => v is String ? DateTime.tryParse(v) : null;

  /// Kriptográfiailag biztonságos véletlen azonosító (tokenekhez is).
  static String _randomId(String prefix) {
    final hex = List.generate(16, (_) => _rng.nextInt(256).toRadixString(16).padLeft(2, '0')).join();
    return prefix.isEmpty ? hex : '${prefix}_$hex';
  }

  static final Random _rng = Random.secure();
}
