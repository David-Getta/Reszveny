import 'dart:convert';
import 'dart:io';
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
    this.paidThrough,
    this.source,
    this.grant,
    this.sourceAt,
  });

  final String userId;
  String? tier;
  DateTime? periodStart;
  DateTime? periodEnd;
  int used;
  int extra;
  DateTime? trialStartedAt;

  /// Meddig van kifizetve az előfizetés (a bolt vagy a Stripe szerint); utána –
  /// rövid türelmi idő után, ha nem jött megújítás – a csomag megszűnik.
  /// `null`: régi sor, ismeretlen (az időszakok tovább gördülnek).
  DateTime? paidThrough;

  /// A csomagot adó előfizetés (`stripe:<előfizetés>`, `app_store:<eredeti tranzakció>`,
  /// `google_play:<token>`): egy másik forrás (pl. egy párhuzamos webes előfizetés)
  /// eseménye nem szüntetheti meg és nem írhatja felül. `null`: régi sor vagy ismeretlen.
  String? source;

  /// A mostani kifizetett időszakot fizető tranzakció (Stripe-fizetés, bolti tranzakció):
  /// egy korábbi időszak visszatérítése nem vonja vissza az azóta külön kifizetettet.
  String? grant;

  /// A forrás legutóbb alkalmazott eseményének ideje (Unix-másodperc): a később
  /// kézbesített régebbi esemény nem írja felül az újabbat.
  int? sourceAt;

  /// Bolti előfizetés (a bolt saját türelmi idejével, l. [Store.storeGrace]).
  bool get fromStore => source != null && !source!.startsWith('stripe:');

  /// A kliens `EntitlementState.fromJson` formátuma.
  Map<String, dynamic> toJson() => {
    'tier': tier,
    'period_start': periodStart?.toUtc().toIso8601String(),
    'period_end': periodEnd?.toUtc().toIso8601String(),
    'used': used,
    'extra': extra,
    'trial_started_at': trialStartedAt?.toUtc().toIso8601String(),
    'paid_through': paidThrough?.toUtc().toIso8601String(),
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
      CREATE INDEX IF NOT EXISTS login_codes_email ON login_codes(email, created_at);
      CREATE TABLE IF NOT EXISTS usage_log (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id TEXT NOT NULL,
        symbol TEXT,
        input_tokens INTEGER,
        output_tokens INTEGER,
        created_at TEXT NOT NULL
      );
      CREATE INDEX IF NOT EXISTS usage_log_user ON usage_log(user_id, created_at);
      CREATE TABLE IF NOT EXISTS alert_mail_queue (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id TEXT NOT NULL,
        subject TEXT NOT NULL,
        body TEXT NOT NULL,
        attempts INTEGER NOT NULL DEFAULT 0,
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
      CREATE TABLE IF NOT EXISTS digest_unsubscribe (
        token TEXT PRIMARY KEY,
        user_id TEXT NOT NULL UNIQUE
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
      CREATE TABLE IF NOT EXISTS shared_answers (
        key TEXT PRIMARY KEY,
        body TEXT NOT NULL,
        created_at TEXT NOT NULL
      );
      CREATE TABLE IF NOT EXISTS analysis_holds (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id TEXT NOT NULL,
        period INTEGER NOT NULL,
        extra INTEGER NOT NULL,
        created_at TEXT NOT NULL
      );
    ''');
    // Fiók-oszlopok (meglévő adatbázisokhoz is).
    final cols = _db.select('PRAGMA table_info(users)').map((r) => r['name'] as String).toSet();
    for (final c in ['email', 'stripe_customer_id', 'stripe_subscription_id']) {
      if (!cols.contains(c)) _db.execute('ALTER TABLE users ADD COLUMN $c TEXT');
    }
    _db.execute('CREATE UNIQUE INDEX IF NOT EXISTS users_email ON users(email)');
    // A bolti értesítésekhez: melyik vásárlás (eredeti tranzakció / token) kié.
    final ecols = _db.select('PRAGMA table_info(entitlements)').map((r) => r['name'] as String).toSet();
    if (!ecols.contains('paid_through')) _db.execute('ALTER TABLE entitlements ADD COLUMN paid_through TEXT');
    // A csomagot adó előfizetés és a mostani időszakot fizető tranzakció (l. [Entitlement.source]).
    if (!ecols.contains('source')) _db.execute('ALTER TABLE entitlements ADD COLUMN source TEXT');
    if (!ecols.contains('grant_key')) _db.execute('ALTER TABLE entitlements ADD COLUMN grant_key TEXT');
    if (!ecols.contains('source_at')) _db.execute('ALTER TABLE entitlements ADD COLUMN source_at INTEGER');
    final pcols = _db.select('PRAGMA table_info(purchases)').map((r) => r['name'] as String).toSet();
    if (!pcols.contains('link_key')) _db.execute('ALTER TABLE purchases ADD COLUMN link_key TEXT');
    // A beváltó postafiókjának lenyomata: a fiók törlése után is megmarad (újra-beváltás ellen).
    final rcols = _db.select('PRAGMA table_info(referrals)').map((r) => r['name'] as String).toSet();
    if (!rcols.contains('mailbox_hash')) _db.execute('ALTER TABLE referrals ADD COLUMN mailbox_hash TEXT');
    _db.execute('CREATE INDEX IF NOT EXISTS referrals_mailbox ON referrals(mailbox_hash)');
    // A korábban tárolt eszközazonosítók törlése (nem használtuk őket, és nem gyűjtünk ilyet).
    _db.execute('UPDATE users SET device_id = NULL WHERE device_id IS NOT NULL');
    _db.execute('CREATE INDEX IF NOT EXISTS purchases_link ON purchases(platform, link_key)');
    // A munkamenet utolsó használata: a régóta nem használt token lejár (a karbantartás törli).
    final scols = _db.select('PRAGMA table_info(sessions)').map((r) => r['name'] as String).toSet();
    if (!scols.contains('last_used')) _db.execute('ALTER TABLE sessions ADD COLUMN last_used TEXT');
    // A törölt fiókok Stripe-ügyfele, amelynek a törlése a fizetési szolgáltatónál még
    // nem sikerült: a karbantartás újrapróbálja.
    _db.execute(
      'CREATE TABLE IF NOT EXISTS pending_stripe_deletions (customer_id TEXT PRIMARY KEY, created_at TEXT NOT NULL)',
    );
    _rekeyLegacyFingerprints();
    // A törölt sorok tartalma ne maradjon a fájlban (a felszabadult lapok nullázva); a
    // bekapcsolás előtti szabad lapokat egyszer egy VACUUM tünteti el.
    _db.execute('PRAGMA secure_delete = ON');
    if ((_db.select('PRAGMA freelist_count').first.values.first as int) > 0) {
      try {
        _db.execute('VACUUM');
      } catch (e) {
        stderr.writeln('VACUUM nem sikerült: $e');
      }
    }
  }

  /// A korábbi változatok kulcs nélküli lenyomatai: az ajánlások postafiók-lenyomata (sima
  /// SHA-256) és a régebben törölt fiókok vásárlásainak nyers bolti / Stripe-azonosítója.
  /// Egyszer átkulcsolva (a szerver titkával), így a titok nélkül nem kereshetők vissza.
  void _rekeyLegacyFingerprints() {
    final legacy = _db.select("SELECT referee_id, mailbox_hash FROM referrals WHERE mailbox_hash NOT LIKE 'k:%'");
    final deleted = _db.select(
      "SELECT id, transaction_id, link_key FROM purchases WHERE user_id = ? AND (transaction_id NOT LIKE 'k:%' "
      "OR (link_key IS NOT NULL AND link_key NOT LIKE 'k:%'))",
      [deletedUser],
    );
    if (legacy.isEmpty && deleted.isEmpty) return;
    _db.execute('BEGIN');
    try {
      for (final r in legacy) {
        _db.execute('UPDATE referrals SET mailbox_hash = ? WHERE referee_id = ?', [
          _legacyMailboxKey(r['mailbox_hash'] as String),
          r['referee_id'],
        ]);
      }
      for (final p in deleted) {
        String? keyed(Object? v) => v is String && !v.startsWith('k:') ? keyedHash(v) : v as String?;
        _db.execute('UPDATE purchases SET transaction_id = ?, link_key = ? WHERE id = ?', [
          keyed(p['transaction_id']),
          keyed(p['link_key']),
          p['id'],
        ]);
      }
      _db.execute('COMMIT');
    } catch (_) {
      _db.execute('ROLLBACK');
      rethrow;
    }
  }

  /// A régi (sima SHA-256) postafiók-lenyomat kulcsolt alakja.
  String _legacyMailboxKey(String sha) => keyedHash('legacy:$sha');

  factory Store.open(String path) => Store(sqlite3.open(path));
  factory Store.inMemory() => Store(sqlite3.openInMemory());

  final Database _db;
  DateTime Function() clock = DateTime.now;

  /// A nyers adatbázis (a statisztika saját táblákat tart benne).
  Database get database => _db;

  static String hashToken(String token) => sha256.convert(utf8.encode(token)).toString();

  /// A szerver saját titka a kulcsolt ujjlenyomatokhoz (első induláskor jön létre, az
  /// adatbázisban marad): ezek nélküle próbálgatással sem fejthetők vissza (egy ismert
  /// e-mail-cím vagy a teljes IPv4-tér sem).
  late final List<int> _secret = () {
    _db.execute(
      'CREATE TABLE IF NOT EXISTS server_secret (id INTEGER PRIMARY KEY CHECK (id = 1), value TEXT NOT NULL)',
    );
    final r = _db.select('SELECT value FROM server_secret WHERE id = 1');
    if (r.isNotEmpty) return base64.decode(r.first['value'] as String);
    final rnd = Random.secure();
    final bytes = List<int>.generate(32, (_) => rnd.nextInt(256));
    _db.execute('INSERT INTO server_secret (id, value) VALUES (1, ?)', [base64.encode(bytes)]);
    return bytes;
  }();

  /// Kulcsolt ujjlenyomat (HMAC-SHA256 a szerver titkával), `k:` előtaggal.
  String keyedHash(String value) => 'k:${Hmac(sha256, _secret).convert(utf8.encode(value))}';

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
    final s = _db.select('SELECT user_id, last_used FROM sessions WHERE token_hash = ?', [h]);
    if (s.isEmpty) return null;
    // Naponta legfeljebb egyszer írjuk (nem minden kérésnél).
    final now = clock().toUtc();
    final last = DateTime.tryParse(s.first['last_used'] as String? ?? '');
    if (last == null || now.difference(last) > const Duration(days: 1)) {
      _db.execute('UPDATE sessions SET last_used = ? WHERE token_hash = ?', [now.toIso8601String(), h]);
    }
    return s.first['user_id'] as String;
  }

  /// Megőrzési idők: egy éve nem használt munkamenet, a meghívók napi számlálójának
  /// régi sorai és a régi használati napló (az admin oldal 30 napot mutat) törlődik.
  static const sessionIdle = Duration(days: 365), usageKept = Duration(days: 400);

  void purgeExpired() {
    final now = clock().toUtc();
    String ago(Duration d) => now.subtract(d).toIso8601String();
    _db.execute('DELETE FROM sessions WHERE COALESCE(last_used, created_at) < ?', [ago(sessionIdle)]);
    _db.execute('DELETE FROM invite_usage WHERE created_at < ?', [ago(const Duration(days: 2))]);
    _db.execute('DELETE FROM usage_log WHERE created_at < ?', [ago(usageKept)]);
    // A rövid életű sorok (belépőkódok, korlát-naplók) új beszúrás nélkül is kikerülnek.
    for (final table in ['login_codes', 'trial_grants', 'helper_calls', 'ask_calls']) {
      _db.execute('DELETE FROM $table WHERE created_at < ?', [ago(const Duration(days: 2))]);
    }
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

  /// Token visszavonása (kijelentkezés): a munkamenet-token, vagy ha ez a fiók
  /// elsődleges tokenje (az eszköz, amelyen a fiók névtelenül indult), az is.
  void revokeToken(String token) {
    final h = hashToken(token);
    _db.execute('DELETE FROM sessions WHERE token_hash = ?', [h]);
    _db.execute("UPDATE users SET token_hash = 'revoked:' || id WHERE token_hash = ?", [h]);
  }

  // ---- Fiók ----

  static String normalizeEmail(String email) => email.trim().toLowerCase();

  bool userExists(String userId) => _db.select('SELECT 1 FROM users WHERE id = ?', [userId]).isNotEmpty;

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

  /// Hány kód ment ki erre a címre az elmúlt [within] időben (alapból egy óra; visszaélés ellen).
  int recentCodeCount(String email, {Duration within = const Duration(hours: 1)}) {
    final since = clock().subtract(within).toUtc().toIso8601String();
    return _db.select('SELECT COUNT(*) AS n FROM login_codes WHERE email = ? AND created_at > ?', [
          normalizeEmail(email),
          since,
        ]).first['n']
        as int;
  }

  /// Hibás kódok naponta címenként, minden kérőtől együtt: csak végső korlát (a
  /// kérőnkénti 15-öt az API tartja), hogy egy idegen ne zárhassa ki a cím gazdáját.
  static const maxDailyLoginFailures = 50;

  /// Új 6 jegyű belépőkód (10 percig érvényes); a korábbiak érvénytelenek lesznek.
  String createLoginCode(String email) {
    final e = normalizeEmail(email);
    final code = (_rng.nextInt(900000) + 100000).toString();
    final now = clock();
    // A két napnál régebbi kódok törlése (a napi korlát csak az utolsó napot nézi): a soha
    // be nem lépett címek se maradjanak meg.
    _db.execute('DELETE FROM login_codes WHERE created_at < ?', [
      now.subtract(const Duration(days: 2)).toUtc().toIso8601String(),
    ]);
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
    // Naponta legfeljebb [maxDailyLoginFailures] hibás próbálkozás címenként (a
    // kódok között is): a 6 jegyű kód így nem találgatható ki ésszerű időn belül.
    final day = clock().subtract(const Duration(days: 1)).toUtc().toIso8601String();
    final failed =
        _db.select('SELECT COALESCE(SUM(attempts), 0) AS n FROM login_codes WHERE email = ? AND created_at > ?', [
              e,
              day,
            ]).first['n']
            as int;
    if (failed >= maxDailyLoginFailures) return false;
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
      _db.execute('DELETE FROM digest_unsubscribe WHERE user_id = ?', [userId]);
      // A tesztelői kód és a meghívó helye névtelenítve foglalt marad (csak véletlen
      // azonosító és időpont): a fiók törlésével nem lehet újrakezdeni a keretüket.
      for (final table in ['tester_redemptions', 'invite_devices']) {
        _db.execute("UPDATE $table SET user_id = 'deleted:' || lower(hex(randomblob(8))) WHERE user_id = ?", [userId]);
      }
      _db.execute('DELETE FROM analysis_holds WHERE user_id = ?', [userId]);
      _db.execute('DELETE FROM referral_codes WHERE user_id = ?', [userId]);
      _db.execute('DELETE FROM alert_mail_queue WHERE user_id = ?', [userId]);
      // Az ajánlás sora névtelenítve marad (nem törlődik): különben a másik fél újra
      // beválthatna egy kódot (a meghívott), illetve az ajánló kerete újraindulna. A
      // 0.2.275 előtti sorokban még nincs postafiók-lenyomat: most kapják meg, mert a
      // névtelenítés után a cím alapján már nem ismerhető fel az újabb beváltás.
      if (email != null) {
        _db.execute('UPDATE referrals SET mailbox_hash = ? WHERE referee_id = ? AND mailbox_hash IS NULL', [
          keyedHash(normalizedMailbox(email)),
          userId,
        ]);
      }
      _db.execute("UPDATE referrals SET referee_id = 'deleted:' || lower(hex(randomblob(8))) WHERE referee_id = ?", [
        userId,
      ]);
      _db.execute('UPDATE referrals SET referrer_id = ? WHERE referrer_id = ?', [deletedUser, userId]);
      if (email != null) _db.execute('DELETE FROM login_codes WHERE email = ?', [email]);
      // A vásárlás bolti azonosítói csak kulcsolt ujjlenyomatként maradnak: így sem
      // váltható be újra, és sem a fizetés, sem a bolti fiók nem azonosítható belőle.
      for (final p in _db.select('SELECT id, transaction_id, link_key FROM purchases WHERE user_id = ?', [userId])) {
        String? keyed(Object? v) => v is String && !v.startsWith('k:') ? keyedHash(v) : v as String?;
        _db.execute('UPDATE purchases SET transaction_id = ?, link_key = ? WHERE id = ?', [
          keyed(p['transaction_id']),
          keyed(p['link_key']),
          p['id'],
        ]);
      }
      _db.execute('UPDATE purchases SET user_id = ? WHERE user_id = ?', [deletedUser, userId]);
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

  /// Fiók-összevonás: a [from] vásárlásai és Stripe-azonosítói (ha az [into]-nak
  /// még nincs) az [into]-hoz kerülnek, a [from] munkamenetei megszűnnek – így
  /// egy vásárlás nem tehet fizetőssé több fiókot, és a bolti értesítések
  /// (megújítás, visszatérítés) az új gazdához érkeznek.
  void movePurchases({required String from, required String into}) {
    _db.execute('UPDATE purchases SET user_id = ? WHERE user_id = ?', [into, from]);
    final a = stripeOf(from), b = stripeOf(into);
    if (b.customerId == null && a.customerId != null) {
      setStripe(into, customerId: a.customerId, subscriptionId: a.subscriptionId);
      _db.execute('UPDATE users SET stripe_customer_id = NULL, stripe_subscription_id = NULL WHERE id = ?', [from]);
    }
    _db.execute('DELETE FROM sessions WHERE user_id = ?', [from]);
    // Az elsődleges token is (a hash helyére egy semmivel nem egyező érték).
    _db.execute('UPDATE users SET token_hash = ? WHERE id = ?', ['revoked:$from', from]);
    // A névtelen fiók használati naplója is a fiókhoz kerül (a fiók törlésekor vele
    // együtt törlődik); a kérés-korlátok sorai elvesznek.
    _db.execute('UPDATE usage_log SET user_id = ? WHERE user_id = ?', [into, from]);
    _db.execute('DELETE FROM helper_calls WHERE user_id = ?', [from]);
    _db.execute('DELETE FROM ask_calls WHERE user_id = ?', [from]);
    // A tesztelői kód beváltása is (így a fiókban is lejár), és a futó foglalások.
    _db.execute('UPDATE OR IGNORE tester_redemptions SET user_id = ? WHERE user_id = ?', [into, from]);
    _db.execute('DELETE FROM tester_redemptions WHERE user_id = ?', [from]);
    _db.execute('UPDATE analysis_holds SET user_id = ? WHERE user_id = ?', [into, from]);
    // A meghívó „eszközei” is: a beolvadt névtelen fiók nem foglal tovább helyet.
    _db.execute('UPDATE OR IGNORE invite_devices SET user_id = ? WHERE user_id = ?', [into, from]);
    _db.execute('DELETE FROM invite_devices WHERE user_id = ?', [from]);
    // A névtelenül megosztott ajánlókód és az általa meghívottak is a fiókhoz kerülnek
    // (különben egy elérhetetlen fiók kapná a jutalmat). Ha a fióknak már van kódja, a
    // régi megszűnik; saját magát a fiók nem ajánlhatja.
    _db.execute('UPDATE OR IGNORE referral_codes SET user_id = ? WHERE user_id = ?', [into, from]);
    _db.execute('DELETE FROM referral_codes WHERE user_id = ?', [from]);
    _db.execute('UPDATE referrals SET referrer_id = ? WHERE referrer_id = ? AND referee_id != ?', [into, from, into]);
  }

  /// Az összevonás után a beolvadt névtelen fiók maradéka is megszűnik (különben
  /// kapcsolat nélküli sorként örökre megmaradna, a fiók törlése sem érné el): az általa
  /// beváltott ajánlás névtelenítve marad (a kód ne legyen újra beváltható).
  void removeMergedUser(String from) {
    _db.execute("UPDATE referrals SET referee_id = 'deleted:' || lower(hex(randomblob(8))) WHERE referee_id = ?", [
      from,
    ]);
    _db.execute('DELETE FROM user_sync WHERE user_id = ?', [from]);
    _db.execute('DELETE FROM analysis_holds WHERE user_id = ?', [from]);
    _db.execute('DELETE FROM entitlements WHERE user_id = ?', [from]);
    _db.execute('DELETE FROM users WHERE id = ?', [from]);
  }

  /// Egy törölt fiók Stripe-ügyfele, amelynek a törlése még nem sikerült (újrapróbálásra).
  void queueStripeCustomerDeletion(String customerId) => _db.execute(
    'INSERT OR IGNORE INTO pending_stripe_deletions (customer_id, created_at) VALUES (?, ?)',
    [customerId, clock().toUtc().toIso8601String()],
  );

  /// A még törlendő Stripe-ügyfelek (legfeljebb [maxAge] óta); a régebbiek kikerülnek.
  List<String> pendingStripeDeletions({Duration maxAge = const Duration(days: 30)}) {
    _db.execute('DELETE FROM pending_stripe_deletions WHERE created_at < ?', [
      clock().toUtc().subtract(maxAge).toIso8601String(),
    ]);
    return [for (final r in _db.select('SELECT customer_id FROM pending_stripe_deletions')) r['customer_id'] as String];
  }

  void stripeCustomerDeleted(String customerId) =>
      _db.execute('DELETE FROM pending_stripe_deletions WHERE customer_id = ?', [customerId]);

  void clearStripeSubscription(String userId) =>
      _db.execute('UPDATE users SET stripe_subscription_id = NULL WHERE id = ?', [userId]);

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
      paidThrough: _date(r['paid_through']),
      source: r['source'] as String?,
      grant: r['grant_key'] as String?,
      sourceAt: r['source_at'] as int?,
    );
    return _rolled(e);
  }

  /// Ennyivel a kifizetett időszak vége után szűnik meg a csomag, ha nem jött
  /// megújítás (a bolt fizetési újrapróbálkozása, késő értesítés).
  static const paidGrace = Duration(days: 3);

  /// Bolti előfizetésnél a bolt fizetési türelmi ideje alatt (az App Store 16, a Google Play
  /// akár 30 napig próbálja újra) megmarad a hozzáférés: helyreálláskor a bolt az eredeti
  /// megújulási naptól számláz, így a felhasználó ezekért a napokért is fizet.
  static const storeGrace = Duration(days: 16);

  /// Fizetős időszak görgetése: lejárt időszak után új, nullázott felhasználással
  /// – amíg az előfizetés ki van fizetve; utána a csomag megszűnik.
  Entitlement _rolled(Entitlement e) {
    if (e.tier == null || e.tier == 'trial' || e.periodEnd == null) return e;
    final now = clock();
    if (e.paidThrough case final paid? when !now.isBefore(paid.add(e.fromStore ? storeGrace : paidGrace))) {
      e
        ..tier = null
        ..periodEnd = paid;
      save(e);
      return e;
    }
    if (now.isBefore(e.periodEnd!)) return e;
    // A kifizetett időszak végéig ér a keret: új keret csak a megújítással jön.
    if (e.paidThrough case final paid? when !e.periodEnd!.isBefore(paid)) return e;
    // A kifizetett időszak vége már közel (egy hónapon belül): a keret odáig tart, újat a
    // megújítás nyit – különben a lejárat előtt kétszer nullázódna (az éves előfizetés
    // utolsó napjainál, vagy ha a Stripe számlája egy nappal a becsült hónap után zár).
    if (e.paidThrough case final paid? when paid.difference(e.periodEnd!) < const Duration(days: PlanSpec.periodDays)) {
      save(e..periodEnd = paid);
      return e;
    }
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

  /// A felhasználás és az extra elemzések módosítása különbséggel (a sor többi
  /// mezőjét nem írja felül; a felhasználás nem megy nulla alá).
  void addUsage(String userId, {int used = 0, int extra = 0}) => _db.execute(
    'UPDATE entitlements SET used = MAX(0, used + ?), extra = extra + ? WHERE user_id = ?',
    [used, extra, userId],
  );

  /// Egy folyamatban lévő elemzés foglalása: ha a szerver közben leáll, az
  /// újraindításkor visszajár ([takeStaleHolds]).
  int addHold(String userId, ({int period, int extra}) held) {
    _db.execute('INSERT INTO analysis_holds (user_id, period, extra, created_at) VALUES (?, ?, ?, ?)', [
      userId,
      held.period,
      held.extra,
      clock().toUtc().toIso8601String(),
    ]);
    return _db.lastInsertRowId;
  }

  /// A foglalás lezárult (levonva vagy visszaadva).
  void removeHold(int id) => _db.execute('DELETE FROM analysis_holds WHERE id = ?', [id]);

  /// Egy foglalás mostani gazdája (a fiók-összevonás átírja); `null`, ha már nincs.
  String? holdOwner(int id) {
    final r = _db.select('SELECT user_id FROM analysis_holds WHERE id = ?', [id]);
    return r.isEmpty ? null : r.first['user_id'] as String?;
  }

  /// Az előző futásból félbemaradt foglalások (és törlésük).
  List<({String userId, int period, int extra})> takeStaleHolds() {
    final rows = _db.select('SELECT user_id, period, extra FROM analysis_holds');
    _db.execute('DELETE FROM analysis_holds');
    return [
      for (final r in rows) (userId: r['user_id'] as String, period: r['period'] as int, extra: r['extra'] as int),
    ];
  }

  void save(Entitlement e) {
    _db.execute(
      // Csak létező fióknak: egy közben törölt fiók (párhuzamos kérés, késve érkező
      // értesítés, a törölt ajánló jutalma) ne kapjon új sort.
      '''INSERT INTO entitlements (user_id, tier, period_start, period_end, used, extra, trial_started_at, paid_through,
           source, grant_key, source_at)
         SELECT ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? WHERE EXISTS (SELECT 1 FROM users WHERE id = ?)
         ON CONFLICT(user_id) DO UPDATE SET tier=excluded.tier, period_start=excluded.period_start,
           period_end=excluded.period_end, used=excluded.used, extra=excluded.extra,
           trial_started_at=excluded.trial_started_at, paid_through=excluded.paid_through,
           source=excluded.source, grant_key=excluded.grant_key, source_at=excluded.source_at''',
      [
        e.userId,
        e.tier,
        e.periodStart?.toUtc().toIso8601String(),
        e.periodEnd?.toUtc().toIso8601String(),
        e.used,
        e.extra,
        e.trialStartedAt?.toUtc().toIso8601String(),
        e.paidThrough?.toUtc().toIso8601String(),
        e.source,
        e.grant,
        e.sourceAt,
        e.userId,
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
      final dup = _db.select('SELECT id FROM purchases WHERE platform = ? AND transaction_id IN (?, ?)', [
        platform,
        transactionId,
        keyedHash(transactionId),
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
      'SELECT product_id FROM purchases WHERE platform = ? AND link_key IN (?, ?) ORDER BY id LIMIT 1',
      [platform, linkKey, keyedHash(linkKey)],
    );
    return rows.isEmpty ? null : rows.first['product_id'] as String;
  }

  /// A törölt fiókok vásárlásainak gazdája (a bolti azonosítók megmaradnak).
  static const deletedUser = 'deleted';

  /// Egy törölt fiókhoz kötött bolti vásárlás átkötése egy új fiókhoz (a törléskor
  /// ujjlenyomattá alakított kulcs az új gazdánál ismét a bolti azonosító).
  void relinkPurchases({required String platform, required String linkKey, required String from, required String to}) =>
      _db.execute(
        'UPDATE purchases SET user_id = ?, link_key = ? WHERE platform = ? AND link_key IN (?, ?) AND user_id = ?',
        [to, linkKey, platform, linkKey, keyedHash(linkKey), from],
      );

  /// A fiók által [since] óta igazolt vásárlások termékei.
  List<String> productsBoughtSince(String userId, DateTime since) => [
    for (final r in _db.select('SELECT product_id FROM purchases WHERE user_id = ? AND verified_at >= ?', [
      userId,
      since.toUtc().toIso8601String(),
    ]))
      r['product_id'] as String,
  ];

  /// Akik már beváltottak egy ajánlói kódot: az e-mail-címük (a még meglévő fiókoké).
  List<String> referralRedeemerEmails() => [
    for (final r in _db.select(
      'SELECT u.email FROM referrals f JOIN users u ON u.id = f.referee_id WHERE u.email IS NOT NULL',
    ))
      r['email'] as String,
  ];

  /// Kié a bolti vásárlás (az első, ezzel a kulccsal rögzített vásárlás gazdája).
  String? userForPurchaseLink(String platform, String linkKey) {
    final rows = _db.select(
      'SELECT user_id FROM purchases WHERE platform = ? AND link_key IN (?, ?) ORDER BY id LIMIT 1',
      [platform, linkKey, keyedHash(linkKey)],
    );
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

  /// [mailbox]: a beváltó normalizált postafiókja (csak a lenyomata kerül tárolásra).
  void addReferral({required String refereeId, required String referrerId, String? mailbox}) => _db.execute(
    'INSERT INTO referrals (referee_id, referrer_id, created_at, mailbox_hash) VALUES (?, ?, ?, ?)',
    [refereeId, referrerId, clock().toUtc().toIso8601String(), mailbox == null ? null : keyedHash(mailbox)],
  );

  /// Beváltott-e már ajánlókódot ez a (normalizált) postafiók – törölt fiókkal is (a
  /// régebbi, kulcs nélküli lenyomattal tárolt sorok is számítanak).
  bool mailboxRedeemedReferral(String mailbox) => _db.select(
    'SELECT 1 FROM referrals WHERE mailbox_hash IN (?, ?) LIMIT 1',
    [keyedHash(mailbox), _legacyMailboxKey(hashToken(mailbox))],
  ).isNotEmpty;

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
    'INSERT OR IGNORE INTO tester_redemptions (code, user_id, created_at) SELECT ?, ?, ? '
    'WHERE EXISTS (SELECT 1 FROM users WHERE id = ?)',
    [code, userId, clock().toUtc().toIso8601String(), userId],
  );

  /// Egy meghívós elemzés a napi keretbe; a sor azonosítója a [removeInviteUsage]-hoz.
  int logInviteUsage(String code) {
    _db.execute('INSERT INTO invite_usage (code, created_at) VALUES (?, ?)', [code, clock().toUtc().toIso8601String()]);
    return _db.lastInsertRowId;
  }

  /// Egy sikertelen meghívós elemzés nem számít a napi keretbe.
  void removeInviteUsage(int id) => _db.execute('DELETE FROM invite_usage WHERE rowid = ?', [id]);

  int inviteUsageSince(String code, DateTime since) =>
      _db.select('SELECT COUNT(*) AS n FROM invite_usage WHERE code = ? AND created_at >= ?', [
            code,
            since.toUtc().toIso8601String(),
          ]).first['n']
          as int;

  /// Volt-e a felhasználónak elkészült elemzése [since] óta.
  bool hasUsageSince(String userId, DateTime since) => _db.select(
    'SELECT 1 FROM usage_log WHERE user_id = ? AND created_at > ? LIMIT 1',
    [userId, since.toUtc().toIso8601String()],
  ).isNotEmpty;

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

  /// Egy segéd-hívás naplózása; a két napnál régebbi sorokat közben törli. A sor
  /// azonosítója a [removeHelperCall]-hoz.
  int logHelperCall(String userId) {
    final now = clock().toUtc();
    _db.execute('INSERT INTO helper_calls (user_id, created_at) VALUES (?, ?)', [userId, now.toIso8601String()]);
    final id = _db.lastInsertRowId;
    _db.execute('DELETE FROM helper_calls WHERE created_at < ?', [
      now.subtract(const Duration(days: 2)).toIso8601String(),
    ]);
    return id;
  }

  /// Egy sikertelen (a modell oldalán elbukott) segéd-hívás nem számít a keretbe.
  void removeHelperCall(int id) => _db.execute('DELETE FROM helper_calls WHERE rowid = ?', [id]);

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

  /// A heti levél leiratkozó linkjének (véletlen, nem kitalálható) azonosítója; az
  /// első kéréskor jön létre, utána ugyanaz marad.
  String unsubscribeToken(String userId) {
    final rows = _db.select('SELECT token FROM digest_unsubscribe WHERE user_id = ?', [userId]);
    if (rows.isNotEmpty) return rows.first['token'] as String;
    final token = List.generate(16, (_) => _rng.nextInt(256).toRadixString(16).padLeft(2, '0')).join();
    _db.execute('INSERT INTO digest_unsubscribe (token, user_id) VALUES (?, ?)', [token, userId]);
    return token;
  }

  String? userForUnsubscribe(String token) {
    final rows = _db.select('SELECT user_id FROM digest_unsubscribe WHERE token = ?', [token]);
    return rows.isEmpty ? null : rows.first['user_id'] as String;
  }

  /// Csak létező fióknak: a levél összeállítása közben törölt fiók ne kapjon új sort.
  void markDigest(String userId) => _db.execute(
    'INSERT INTO digest_log (user_id, sent_at) SELECT ?, ? WHERE EXISTS (SELECT 1 FROM users WHERE id = ?) '
    'ON CONFLICT(user_id) DO UPDATE SET sent_at = excluded.sent_at',
    [userId, clock().toUtc().toIso8601String(), userId],
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
  int logAskCall(String userId) {
    final now = clock().toUtc();
    _db.execute('INSERT INTO ask_calls (user_id, created_at) VALUES (?, ?)', [userId, now.toIso8601String()]);
    final id = _db.lastInsertRowId;
    _db.execute('DELETE FROM ask_calls WHERE created_at < ?', [
      now.subtract(const Duration(days: 2)).toIso8601String(),
    ]);
    return id;
  }

  /// Egy sikertelen kérdés nem számít a napi keretbe.
  void removeAskCall(int id) => _db.execute('DELETE FROM ask_calls WHERE rowid = ?', [id]);

  /// A [body] egy tranzakcióban (hibánál visszagörgetve).
  void transaction(void Function() body) {
    _db.execute('BEGIN');
    try {
      body();
      _db.execute('COMMIT');
    } catch (_) {
      _db.execute('ROLLBACK');
      rethrow;
    }
  }

  /// Megosztott kutatási válasz (pl. egy cég negyedéves összefoglalója): ha
  /// egy felhasználó már lekérte, a többiek ugyanazt kapják [maxAge]-en belül.
  String? sharedAnswer(String key, Duration maxAge) {
    final rows = _db.select('SELECT body, created_at FROM shared_answers WHERE key = ?', [key]);
    if (rows.isEmpty) return null;
    final at = _date(rows.first['created_at']);
    if (at == null || clock().toUtc().difference(at) > maxAge) return null;
    return rows.first['body'] as String;
  }

  /// A válasz eltárolása; a [keepFor]-nál régebbi sorokat közben törli.
  void saveSharedAnswer(String key, String body, {Duration keepFor = const Duration(days: 30)}) {
    final now = clock().toUtc();
    _db.execute('INSERT OR REPLACE INTO shared_answers (key, body, created_at) VALUES (?, ?, ?)', [
      key,
      body,
      now.toIso8601String(),
    ]);
    _db.execute('DELETE FROM shared_answers WHERE created_at < ?', [now.subtract(keepFor).toIso8601String()]);
  }

  // ---- Riasztás-e-mailek sora ----
  // A teljesült riasztás levele sorba kerül, és csak sikeres küldés után törlődik:
  // egy levelezőhiba (pl. 429) ne vigye el végleg az értesítést.

  void enqueueAlertMail(String userId, {required String subject, required String body}) => _db.execute(
    'INSERT INTO alert_mail_queue (user_id, subject, body, attempts, created_at) VALUES (?, ?, ?, 0, ?)',
    [userId, subject, body, clock().toUtc().toIso8601String()],
  );

  List<({int id, String userId, String subject, String body, int attempts, DateTime createdAt})> pendingAlertMails() =>
      [
        for (final r in _db.select('SELECT * FROM alert_mail_queue ORDER BY id'))
          (
            id: r['id'] as int,
            userId: r['user_id'] as String,
            subject: r['subject'] as String,
            body: r['body'] as String,
            attempts: r['attempts'] as int,
            createdAt: DateTime.parse(r['created_at'] as String),
          ),
      ];

  void deleteAlertMail(int id) => _db.execute('DELETE FROM alert_mail_queue WHERE id = ?', [id]);

  /// A fiók összes sorban álló riasztó levele (leiratkozáskor).
  void deleteAlertMailsOf(String userId) => _db.execute('DELETE FROM alert_mail_queue WHERE user_id = ?', [userId]);

  void failedAlertMail(int id) => _db.execute('UPDATE alert_mail_queue SET attempts = attempts + 1 WHERE id = ?', [id]);

  void close() => _db.close();

  static DateTime? _date(Object? v) => v is String ? DateTime.tryParse(v) : null;

  /// Kriptográfiailag biztonságos véletlen azonosító (tokenekhez is).
  static String _randomId(String prefix) {
    final hex = List.generate(16, (_) => _rng.nextInt(256).toRadixString(16).padLeft(2, '0')).join();
    return prefix.isEmpty ? hex : '${prefix}_$hex';
  }

  static final Random _rng = Random.secure();
}

/// A postafiók azonosítója a visszaélés-ellenőrzéshez: kisbetűvel, a `+címke`
/// nélkül, Gmailnél a pontok nélkül (ugyanoda érkező címek egynek számítanak).
String normalizedMailbox(String email) {
  final e = email.trim().toLowerCase();
  final at = e.lastIndexOf('@');
  if (at <= 0) return e;
  var local = e.substring(0, at).split('+').first;
  var domain = e.substring(at + 1);
  if (domain == 'googlemail.com') domain = 'gmail.com';
  if (domain == 'gmail.com') local = local.replaceAll('.', '');
  return '$local@$domain';
}
