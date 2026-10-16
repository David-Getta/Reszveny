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
      CREATE TABLE IF NOT EXISTS user_sync (
        user_id TEXT PRIMARY KEY,
        data TEXT NOT NULL,
        updated_at TEXT NOT NULL
      );
      CREATE TABLE IF NOT EXISTS digest_log (
        user_id TEXT PRIMARY KEY,
        sent_at TEXT NOT NULL
      );
      CREATE TABLE IF NOT EXISTS trial_grants (
        ip_hash TEXT NOT NULL,
        created_at TEXT NOT NULL
      );
      CREATE INDEX IF NOT EXISTS trial_grants_ip ON trial_grants(ip_hash, created_at);
      CREATE TABLE IF NOT EXISTS ask_calls (
        user_id TEXT NOT NULL,
        created_at TEXT NOT NULL
      );
      CREATE INDEX IF NOT EXISTS ask_calls_user ON ask_calls(user_id, created_at);
      CREATE TABLE IF NOT EXISTS invite_devices (
        code TEXT NOT NULL,
        user_id TEXT NOT NULL,
        created_at TEXT NOT NULL,
        PRIMARY KEY (code, user_id)
      );
      CREATE TABLE IF NOT EXISTS tester_redemptions (
        code TEXT NOT NULL,
        user_id TEXT NOT NULL,
        created_at TEXT NOT NULL,
        PRIMARY KEY (code, user_id)
      );
      CREATE TABLE IF NOT EXISTS invite_usage (
        code TEXT NOT NULL,
        created_at TEXT NOT NULL
      );
      CREATE INDEX IF NOT EXISTS invite_usage_code ON invite_usage(code, created_at);
      CREATE TABLE IF NOT EXISTS referral_codes (
        user_id TEXT PRIMARY KEY,
        code TEXT NOT NULL UNIQUE
      );
      CREATE TABLE IF NOT EXISTS referrals (
        referee_id TEXT PRIMARY KEY,
        referrer_id TEXT NOT NULL,
        created_at TEXT NOT NULL,
        rewarded_at TEXT
      );
      CREATE INDEX IF NOT EXISTS referrals_referrer ON referrals(referrer_id);
    ''');
    // Fiók-oszlopok (meglévő adatbázisokhoz is).
    final cols = _db.select('PRAGMA table_info(users)').map((r) => r['name'] as String).toSet();
    for (final c in ['email', 'stripe_customer_id', 'stripe_subscription_id']) {
      if (!cols.contains(c)) _db.execute('ALTER TABLE users ADD COLUMN $c TEXT');
    }
    _db.execute('CREATE UNIQUE INDEX IF NOT EXISTS users_email ON users(email)');
    // A bolti értesítésekhez: melyik vásárlás (eredeti tranzakció / token) kié.
    final pcols = _db.select('PRAGMA table_info(purchases)').map((r) => r['name'] as String).toSet();
    if (!pcols.contains('link_key')) _db.execute('ALTER TABLE purchases ADD COLUMN link_key TEXT');
    _db.execute('CREATE INDEX IF NOT EXISTS purchases_link ON purchases(platform, link_key)');
  }

  factory Store.open(String path) => Store(sqlite3.open(path));
  factory Store.inMemory() => Store(sqlite3.openInMemory());

  final Database _db;
  DateTime Function() clock = DateTime.now;

  /// A nyers adatbázis (a statisztika saját táblákat tart benne).
  Database get database => _db;

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
      _db.execute('DELETE FROM ask_calls WHERE user_id = ?', [userId]);
      _db.execute('DELETE FROM user_sync WHERE user_id = ?', [userId]);
      _db.execute('DELETE FROM digest_log WHERE user_id = ?', [userId]);
      _db.execute('DELETE FROM tester_redemptions WHERE user_id = ?', [userId]);
      _db.execute('DELETE FROM referral_codes WHERE user_id = ?', [userId]);
      _db.execute('DELETE FROM referrals WHERE referee_id = ? OR referrer_id = ?', [userId, userId]);
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
    String? linkKey,
  }) {
    if (transactionId != null) {
      final dup = _db.select('SELECT id FROM purchases WHERE platform = ? AND transaction_id = ?', [
        platform,
        transactionId,
      ]);
      if (dup.isNotEmpty) return false;
    }
    _db.execute(
      'INSERT INTO purchases (user_id, product_id, platform, transaction_id, link_key, verified_at) '
      'VALUES (?, ?, ?, ?, ?, ?)',
      [userId, productId, platform, transactionId, linkKey, clock().toUtc().toIso8601String()],
    );
    return true;
  }

  /// A bolti vásárlás terméke (az első, ezzel a kulccsal rögzített vásárlásé).
  String? productForPurchaseLink(String platform, String linkKey) {
    final rows = _db.select(
      'SELECT product_id FROM purchases WHERE platform = ? AND link_key = ? ORDER BY id LIMIT 1',
      [platform, linkKey],
    );
    return rows.isEmpty ? null : rows.first['product_id'] as String;
  }

  /// Kié a bolti vásárlás (az első, ezzel a kulccsal rögzített vásárlás gazdája).
  String? userForPurchaseLink(String platform, String linkKey) {
    final rows = _db.select('SELECT user_id FROM purchases WHERE platform = ? AND link_key = ? ORDER BY id LIMIT 1', [
      platform,
      linkKey,
    ]);
    return rows.isEmpty ? null : rows.first['user_id'] as String;
  }

  // ---- Ajánlói program ----
  // Mindenkinek saját ajánlókódja van; a meghívott a beváltáskor kap extra
  // elemzéseket, az ajánló az első elkészült elemzése után.

  static const _referralAlphabet = 'ABCDEFGHJKMNPQRSTUVWXYZ23456789';

  /// A felhasználó ajánlókódja (első kéréskor jön létre), pl. `WS-7K2QXM`.
  String referralCodeOf(String userId) {
    final r = _db.select('SELECT code FROM referral_codes WHERE user_id = ?', [userId]);
    if (r.isNotEmpty) return r.first['code'] as String;
    while (true) {
      final code = 'WS-${List.generate(6, (_) => _referralAlphabet[_rng.nextInt(_referralAlphabet.length)]).join()}';
      if (_db.select('SELECT 1 FROM referral_codes WHERE code = ?', [code]).isNotEmpty) continue;
      _db.execute('INSERT INTO referral_codes (user_id, code) VALUES (?, ?)', [userId, code]);
      return code;
    }
  }

  static String normalizeReferral(String code) {
    final c = code.trim().toUpperCase().replaceAll(RegExp(r'[\s_]'), '');
    return c.startsWith('WS-') ? c : (c.startsWith('WS') ? 'WS-${c.substring(2)}' : 'WS-$c');
  }

  String? userIdForReferralCode(String code) {
    final r = _db.select('SELECT user_id FROM referral_codes WHERE code = ?', [normalizeReferral(code)]);
    return r.isEmpty ? null : r.first['user_id'] as String;
  }

  bool hasRedeemedReferral(String refereeId) =>
      _db.select('SELECT 1 FROM referrals WHERE referee_id = ?', [refereeId]).isNotEmpty;

  void addReferral({required String refereeId, required String referrerId}) => _db.execute(
    'INSERT INTO referrals (referee_id, referrer_id, created_at) VALUES (?, ?, ?)',
    [refereeId, referrerId, clock().toUtc().toIso8601String()],
  );

  /// (meghívottak, akik után már jutalmat kapott)
  (int, int) referralStats(String referrerId) {
    final r = _db.select('SELECT COUNT(*) AS n, COUNT(rewarded_at) AS rewarded FROM referrals WHERE referrer_id = ?', [
      referrerId,
    ]).first;
    return (r['n'] as int, r['rewarded'] as int);
  }

  /// Az ajánló, akinek ezért a meghívottért még jár a jutalom (ha van ilyen).
  String? pendingReferrer(String refereeId) {
    final r = _db.select('SELECT referrer_id FROM referrals WHERE referee_id = ? AND rewarded_at IS NULL', [refereeId]);
    return r.isEmpty ? null : r.first['referrer_id'] as String;
  }

  void markReferralRewarded(String refereeId) => _db.execute(
    'UPDATE referrals SET rewarded_at = ? WHERE referee_id = ?',
    [clock().toUtc().toIso8601String(), refereeId],
  );

  // ---- Meghívókódok (zárt előzetes) ----
  // A kódhoz kötött eszközök és elemzések fiók törlése után is megmaradnak
  // (csak véletlen azonosító és időpont), különben a fiók törlésével
  // újra lehetne kezdeni az eszköz- és a napi keretet.

  int inviteDeviceCount(String code) =>
      _db.select('SELECT COUNT(*) AS n FROM invite_devices WHERE code = ?', [code]).first['n'] as int;

  bool inviteHasDevice(String code, String userId) =>
      _db.select('SELECT 1 FROM invite_devices WHERE code = ? AND user_id = ?', [code, userId]).isNotEmpty;

  void addInviteDevice(String code, String userId) => _db.execute(
    'INSERT OR IGNORE INTO invite_devices (code, user_id, created_at) VALUES (?, ?, ?)',
    [code, userId, clock().toUtc().toIso8601String()],
  );

  /// Hány fiók váltotta már be a tesztelői kódot, és ez a fiók köztük van-e.
  ({int count, bool mine}) testerRedemptions(String code, String userId) {
    final rows = _db.select('SELECT user_id FROM tester_redemptions WHERE code = ?', [code]);
    return (count: rows.length, mine: rows.any((r) => r['user_id'] == userId));
  }

  /// A fiók legutóbbi tesztelői beváltása (kód és időpont), vagy `null`.
  ({String code, DateTime at})? testerRedemptionOf(String userId) {
    final rows = _db.select(
      'SELECT code, created_at FROM tester_redemptions WHERE user_id = ? ORDER BY created_at DESC LIMIT 1',
      [userId],
    );
    if (rows.isEmpty) return null;
    return (code: rows.first['code'] as String, at: DateTime.parse(rows.first['created_at'] as String));
  }

  void removeTesterRedemptions(String userId) =>
      _db.execute('DELETE FROM tester_redemptions WHERE user_id = ?', [userId]);

  /// Van-e a fióknak (nem visszavont) bolti vagy böngészős vásárlása.
  bool hasPurchases(String userId) =>
      _db.select('SELECT 1 FROM purchases WHERE user_id = ? LIMIT 1', [userId]).isNotEmpty;

  void addTesterRedemption(String code, String userId) => _db.execute(
    'INSERT OR IGNORE INTO tester_redemptions (code, user_id, created_at) VALUES (?, ?, ?)',
    [code, userId, clock().toUtc().toIso8601String()],
  );

  void logInviteUsage(String code) => _db.execute('INSERT INTO invite_usage (code, created_at) VALUES (?, ?)', [
    code,
    clock().toUtc().toIso8601String(),
  ]);

  int inviteUsageSince(String code, DateTime since) =>
      _db.select('SELECT COUNT(*) AS n FROM invite_usage WHERE code = ? AND created_at >= ?', [
            code,
            since.toUtc().toIso8601String(),
          ]).first['n']
          as int;

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

  /// A fiók szinkronizált adatai (portfólió, kedvencek, riasztások, jegyzetek), vagy `null`.
  ({String data, DateTime updatedAt})? syncData(String userId) {
    final rows = _db.select('SELECT data, updated_at FROM user_sync WHERE user_id = ?', [userId]);
    if (rows.isEmpty) return null;
    return (data: rows.first['data'] as String, updatedAt: DateTime.parse(rows.first['updated_at'] as String));
  }

  /// Az e-mailes fiókok szinkronizált adatai (a riasztásfigyelőnek).
  List<({String userId, String email, String data})> syncedAccounts() => [
    for (final r in _db.select(
      'SELECT s.user_id, u.email, s.data FROM user_sync s JOIN users u ON u.id = s.user_id WHERE u.email IS NOT NULL',
    ))
      (userId: r['user_id'] as String, email: r['email'] as String, data: r['data'] as String),
  ];

  /// Mikor ment ki utoljára heti összefoglaló a fióknak (vagy `null`).
  DateTime? lastDigest(String userId) {
    final rows = _db.select('SELECT sent_at FROM digest_log WHERE user_id = ?', [userId]);
    return rows.isEmpty ? null : DateTime.parse(rows.first['sent_at'] as String);
  }

  void markDigest(String userId) => _db.execute(
    'INSERT INTO digest_log (user_id, sent_at) VALUES (?, ?) '
    'ON CONFLICT(user_id) DO UPDATE SET sent_at = excluded.sent_at',
    [userId, clock().toUtc().toIso8601String()],
  );

  DateTime saveSyncData(String userId, String data) {
    final now = clock().toUtc();
    _db.execute(
      'INSERT INTO user_sync (user_id, data, updated_at) VALUES (?, ?, ?) '
      'ON CONFLICT(user_id) DO UPDATE SET data = excluded.data, updated_at = excluded.updated_at',
      [userId, data, now.toIso8601String()],
    );
    return now;
  }

  /// Ennyi próbaidő indult erről a (hash-elt) IP-címről [since] óta.
  int trialGrantsSince(String ipHash, DateTime since) =>
      _db.select('SELECT COUNT(*) AS n FROM trial_grants WHERE ip_hash = ? AND created_at >= ?', [
            ipHash,
            since.toUtc().toIso8601String(),
          ]).first['n']
          as int;

  /// Egy próbaidő naplózása; a két napnál régebbi sorokat közben törli.
  void logTrialGrant(String ipHash) {
    final now = clock().toUtc();
    _db.execute('INSERT INTO trial_grants (ip_hash, created_at) VALUES (?, ?)', [ipHash, now.toIso8601String()]);
    _db.execute('DELETE FROM trial_grants WHERE created_at < ?', [
      now.subtract(const Duration(days: 2)).toIso8601String(),
    ]);
  }

  /// „Kérdezz az elemzésről” kérdések száma [since] óta.
  int askCallsSince(String userId, DateTime since) =>
      _db.select('SELECT COUNT(*) AS n FROM ask_calls WHERE user_id = ? AND created_at >= ?', [
            userId,
            since.toUtc().toIso8601String(),
          ]).first['n']
          as int;

  /// Egy kérdés naplózása; a két napnál régebbi sorokat közben törli.
  void logAskCall(String userId) {
    final now = clock().toUtc();
    _db.execute('INSERT INTO ask_calls (user_id, created_at) VALUES (?, ?)', [userId, now.toIso8601String()]);
    _db.execute('DELETE FROM ask_calls WHERE created_at < ?', [
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
