import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:markdown/markdown.dart' as md;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'admin_page.dart';
import 'alert_watcher.dart';
import 'db.dart';
import 'digest.dart';
import 'invites.dart';
import 'mailer.dart';
import 'plans.dart';
import 'purchase_verifier.dart';
import 'quota.dart';
import 'rate_limit.dart';
import 'shares.dart';
import 'store_apis.dart';
import 'site_pages.dart';
import 'stripe.dart';
import 'telemetry.dart';
import 'testers.dart';

/// A WhatStock backend útvonalai.
///
/// - `POST /v1/auth/anonymous` → `{token, user_id}` (próbaidő indul)
/// - `GET  /v1/me` → jogosultság (a kliens `EntitlementState` formátuma)
/// - `POST /v1/purchases/verify` `{platform, product_id, verification_data}` → jogosultság
/// - `POST /v1/analyze` → Anthropic Messages API továbbítás kvóta-ellenőrzéssel (402, ha nincs keret)
/// - `POST /v1/anthropic/v1/messages` → segéd-hívás (fotófelismerés, formátumjavítás): kvóta nélkül, de
///   rögzített modellel, token-korláttal, eszközök nélkül és óránkénti/napi kérésszám-korláttal
/// - `GET  /v1/market/*` → Finnhub továbbítás a szerver kulcsával
/// - `POST /v1/auth/email/start` `{email}` → 6 jegyű belépőkód e-mailben
/// - `POST /v1/auth/email/verify` `{email, code}` → fiókhoz kötött token (az előfizetés minden eszközön ugyanaz)
/// - `POST /v1/auth/logout` → a token visszavonása
/// - `GET  /v1/referral` → saját ajánlókód és statisztika; `POST /v1/referral/redeem` `{code}` → egy barát
///   kódjának beváltása (extra elemzések; az ajánló az első elemzésed után kapja meg a sajátját)
/// - `DELETE /v1/account` → a fiók és a szerveren tárolt adatok törlése (a Stripe-előfizetést lemondja)
/// - `GET  /pricing` → árak oldal (magyar / angol); `GET /sample` → minta-elemzés; `GET /glossary` → fogalomtár; `/robots.txt`, `/sitemap.xml` a keresőknek
/// - `GET  /stocks`, `/stocks/<ticker>` → népszerű részvények oldalai (árfolyam, alapadatok, letöltés)
/// - `GET  /legal/terms`, `/legal/privacy` → ÁSZF és adatkezelési tájékoztató a `legal/` mappa markdownjából
/// - `POST /v1/billing/checkout` `{product_id}` → Stripe Checkout URL (böngészős fizetés)
/// - `POST /v1/billing/portal` → Stripe ügyfélportál URL (csomagváltás, lemondás, számlák)
/// - `POST /v1/stripe/webhook` → a Stripe eseményei (aláírás-ellenőrzéssel)
///
/// Zárt előzetesben ([invites]) minden `/v1/` hívás (a Stripe webhook kivételével)
/// az `x-whatstock-invite` fejlécben érvényes meghívókódot vár (403
/// `invite_required` / `invite_invalid` / `invite_expired` / `invite_device_limit`),
/// és kódonként napi elemzéskeret van (402 `invite_daily_limit`).
class Api {
  Api({
    required this.store,
    required this.anthropicApiKey,
    required this.finnhubApiKey,
    required this.verifier,
    Mailer? mailer,
    this.stripe,
    this.publicUrl = 'http://localhost:8080',
    http.Client? client,
    this.anthropicBaseUrl = 'https://api.anthropic.com',
    this.finnhubBaseUrl = 'https://finnhub.io/api/v1',
    this.twelveDataApiKey = '',
    this.twelveDataBaseUrl = 'https://api.twelvedata.com',
    this.anthropicModel = 'claude-opus-5-5',
    this.trialModel = 'claude-sonnet-5-5',
    this.legalDir = 'legal',
    this.invites = const InviteBook(),
    this.testers = const TesterBook(),
    this.referralBonus = 5,
    this.referralMax = 10,
    this.adminToken = '',
    this.downloadBaseUrl = 'https://github.com/David-Getta/Reszveny/releases/latest/download/',
    this.googleNotificationToken = '',
    this.trialPerIpPerDay = 10,
  }) : _client = client ?? http.Client(),
       mailer = mailer ?? ConsoleMailer(),
       quota = Quota(store),
       telemetry = TelemetryStore(store.database),
       shares = ShareStore(store.database);

  /// Megosztott elemzések nyilvános linkjei (`/s/<id>`).
  final ShareStore shares;

  /// A nyitóoldal letöltés-gombjainak alapcíme (a fájlnév hozzáfűzve).
  final String downloadBaseUrl;

  /// Egy IP-címről naponta legfeljebb ennyi új fiók kap próbaidőt (a többi
  /// próbaidő nélkül indul, vásárolni tud); 0 = nincs korlát. Alacsonyra ne
  /// állítsd: a mobilszolgáltatók sok felhasználót egy címen engednek ki.
  final int trialPerIpPerDay;

  /// A Google Play valós idejű értesítéseinek (Pub/Sub push) titka: a push-cím
  /// `?token=` paramétere. Üresen az értesítési végpont nem érhető el.
  final String googleNotificationToken;

  /// Névtelen statisztika és hibajelentések (az app hozzájárulással küldi).
  final TelemetryStore telemetry;

  /// A `/admin` statisztika-oldal kulcsa; üresen az oldal nem érhető el.
  final String adminToken;

  final Mailer mailer;

  /// Ajánlói program: ennyi extra elemzést kap a meghívott és (az első
  /// elemzése után) az ajánló; egy ajánló legfeljebb [referralMax] meghívott után.
  final int referralBonus;
  final int referralMax;

  /// Meghívókódok; ha üres, a szerver nyitott.
  final InviteBook invites;

  /// Tesztelői kódok (`TESTER_CODES`): az ajánlói kód helyén beváltva csomagot adnak.
  final TesterBook testers;
  static const inviteHeader = 'x-whatstock-invite';

  /// Böngészős fizetés (asztali gép, web); `null`, ha nincs beállítva.
  final StripeClient? stripe;

  /// A szerver nyilvános címe (a Stripe ide irányít vissza fizetés után).
  final String publicUrl;

  final Store store;
  final Quota quota;
  final String anthropicApiKey;
  final String finnhubApiKey;
  final PurchaseVerifier verifier;
  final http.Client _client;
  final String anthropicBaseUrl;
  final String finnhubBaseUrl;

  /// Árfolyamtörténet (grafikon): a Finnhub ingyenes csomagja a `/stock/candle`-t
  /// nem adja, ezért ha van Twelve Data-kulcs, a szerver onnan szolgálja ki,
  /// Finnhub-formátumra alakítva (a kliensnek nem kell róla tudnia).
  final String twelveDataApiKey;
  final String twelveDataBaseUrl;

  /// Grafikon-gyorsítótár (szimbólum + időszak → Finnhub-formátumú JSON), hogy
  /// az ingyenes keret (napi 800 hívás) sok felhasználóra is elég legyen.
  final Map<String, ({DateTime at, String body})> _candleCache = {};
  static const candleCacheTtl = Duration(hours: 6);

  /// A modell, amin minden hívás fut; a kliens nem választhat drágábbat.
  final String anthropicModel;

  /// A próbaidő elemzéseinek modellje (olcsóbb). A próbaidő elemzései rövidek,
  /// így egy próba kb. harmadába kerül egy előfizetői elemzésnek.
  final String trialModel;

  /// A jogi szövegek mappája: `terms.hu.md`, `privacy.hu.md`, `terms.en.md`…
  final String legalDir;

  /// A segéd-hívások korlátai felhasználónként. Egy elemzéshez legfeljebb egy
  /// javítás, egy fotóhoz egy felismerés tartozik, így ez bőven elég.
  static const helperPerHour = 20;
  static const helperPerDay = 60;
  static const helperPerDayTrial = 20;
  static const helperMaxTokens = 16000;

  /// Nagy kimenet (a formátumjavítás) csak egy friss elemzés után kérhető;
  /// egyébként (felismerés, fotó-import) ennyi bőven elég.
  static const helperSmallMaxTokens = 4096;

  /// A fotók base64-ben érkeznek; ennél nagyobb kérést nem továbbítunk.
  static const helperMaxBytes = 8 * 1024 * 1024;

  /// Az elemzés kérésének legnagyobb mérete (képpel együtt).
  static const analyzeMaxBytes = 8 * 1024 * 1024;

  /// Szöveg legfeljebb ennyi karakter (egy teljes részletes elemzés is belefér),
  /// kép legfeljebb egy kérésenként; így egy hívás bemenete is korlátos.
  static const helperMaxTextChars = 120000;
  static const helperMaxImages = 1;

  Handler get handler {
    final router = Router()
      ..post('/v1/auth/anonymous', _auth)
      ..get('/v1/me', _me)
      ..post('/v1/purchases/verify', _verify)
      ..post('/v1/stores/apple/notifications', _appleNotification)
      ..post('/v1/stores/google/notifications', _googleNotification)
      ..post('/v1/analyze', _analyze)
      ..post('/v1/anthropic/v1/messages', _anthropicPassthrough)
      ..post('/v1/ask', _ask)
      ..get('/v1/market/<path|.*>', _market)
      ..post('/v1/auth/email/start', _emailStart)
      ..post('/v1/auth/email/verify', _emailVerify)
      ..post('/v1/auth/logout', _logout)
      ..post('/v1/telemetry', _telemetry)
      ..post('/v1/share', _createShare)
      ..get('/s/<id>', _sharePage)
      ..get('/', _landing)
      ..get('/pricing', _pricingPage)
      ..get('/sample', _samplePage)
      ..get('/glossary', _glossaryPage)
      ..get('/stocks', _stocksIndex)
      ..get('/stocks/<symbol>', _stockPage)
      ..get('/robots.txt', (Request r) => Response.ok(robotsTxt(publicUrl), headers: {'content-type': 'text/plain'}))
      ..get(
        '/sitemap.xml',
        (Request r) => Response.ok(sitemapXml(publicUrl), headers: {'content-type': 'application/xml'}),
      )
      ..get('/admin', _adminLogin)
      ..post('/admin', _adminStats)
      ..get('/admin/stats.json', _adminStatsJson)
      ..get('/v1/sync', _getSync)
      ..put('/v1/sync', _putSync)
      ..get('/v1/referral', _referral)
      ..post('/v1/referral/redeem', _redeemReferral)
      ..delete('/v1/account', _deleteAccount)
      ..get('/legal/<name>', _legal)
      ..post('/v1/billing/checkout', _checkout)
      ..post('/v1/billing/portal', _portal)
      ..post('/v1/stripe/webhook', _stripeWebhook)
      ..get('/billing/success', (Request r) => _page('✓', 'Sikeres fizetés · Payment complete'))
      ..get('/billing/cancel', (Request r) => _page('×', 'A fizetés megszakadt · Payment cancelled'))
      ..get('/healthz', (Request r) => Response.ok('ok'));
    return const Pipeline()
        .addMiddleware(_cors())
        .addMiddleware(_logRequests())
        .addMiddleware(_limitBody())
        .addMiddleware(_inviteGate())
        .addHandler(router.call);
  }

  // ---- Segédek ----

  String? _userId(Request r) {
    final t = _token(r);
    return t == null ? null : store.userIdForToken(t);
  }

  static String? _token(Request r) {
    final auth = r.headers['authorization'] ?? '';
    if (!auth.startsWith('Bearer ')) return null;
    return auth.substring(7).trim();
  }

  Map<String, dynamic> _account(String uid) {
    _expireTester(uid);
    return {'user_id': uid, 'email': store.emailOf(uid), 'entitlements': store.entitlement(uid).toJson()};
  }

  /// A tesztelői csomag lejárata: ha a kódot törölték, vagy letelt a megadott
  /// napszám, a csomag megszűnik (ha közben nem vásárolt a fiók).
  void _expireTester(String uid) {
    final r = store.testerRedemptionOf(uid);
    if (r == null) return;
    final t = testers.find(r.code);
    final now = store.clock();
    if (t != null && now.isBefore(r.at.add(Duration(days: t.days)))) return;
    store.removeTesterRedemptions(uid);
    if (store.hasPurchases(uid)) return;
    final e = store.entitlement(uid);
    if (e.tier == null || e.tier == 'trial') return;
    store.save(
      e
        ..tier = null
        ..periodEnd = now,
    );
  }

  static Response _page(String mark, String text) => Response.ok(
    '<!doctype html><meta charset="utf-8"><meta name="viewport" content="width=device-width">'
    '<title>WhatStock</title><body style="background:#1F1E1D;color:#F5F4EF;font-family:-apple-system,system-ui,sans-serif;'
    'display:grid;place-items:center;height:100vh;margin:0;text-align:center">'
    '<div><div style="font-size:48px;color:#D97757">$mark</div><h2>$text</h2>'
    '<p style="color:#A8A49B">Visszatérhetsz a WhatStock appba. · You can return to the WhatStock app.</p></div>',
    headers: {'content-type': 'text/html; charset=utf-8'},
  );

  Response _json(Object body, {int status = 200}) =>
      Response(status, body: jsonEncode(body), headers: {'content-type': 'application/json'});

  Response _error(int status, String code, [String? message]) =>
      _json({'error': code, 'message': ?message}, status: status);

  /// Kérésnapló: idő, metódus, állapot, útvonal – a lekérdezési paraméterek
  /// nélkül, hogy titkos tokenek és keresett részvények ne kerüljenek a naplóba.
  static Middleware _logRequests() =>
      (inner) => (req) async {
        final watch = Stopwatch()..start();
        final res = await inner(req);
        stdout.writeln(
          '${DateTime.now().toUtc().toIso8601String()}  ${watch.elapsed}  ${req.method.padRight(7)} '
          '[${res.statusCode}] /${req.url.path}',
        );
        return res;
      };

  /// A kérés törzsének legnagyobb mérete útvonalanként (a képes AI-kéréseknél
  /// nagyobb, máshol 1 MB): a túl nagy kérés be sem olvasódik (413).
  static int bodyLimit(String path) => switch (path) {
    'v1/analyze' || 'v1/anthropic/v1/messages' => analyzeMaxBytes,
    'v1/share' => 2 * 1024 * 1024,
    _ => 1024 * 1024,
  };

  Middleware _limitBody() =>
      (inner) => (req) async {
        final limit = bodyLimit(req.url.path);
        final length = req.contentLength;
        if (length != null && length > limit) return _error(413, 'too_large');
        if (length != null || req.method == 'GET' || req.method == 'OPTIONS') return inner(req);
        // Darabolt (hossz nélküli) törzs: olvasás közben vágjuk el.
        var seen = 0;
        final capped = req.read().transform(
          StreamTransformer<List<int>, List<int>>.fromHandlers(
            handleData: (chunk, sink) {
              seen += chunk.length;
              if (seen > limit) {
                sink.addError(const _TooLarge());
                sink.close();
              } else {
                sink.add(chunk);
              }
            },
          ),
        );
        try {
          return await inner(req.change(body: capped));
        } on _TooLarge {
          return _error(413, 'too_large');
        }
      };

  static Middleware _cors() =>
      (inner) => (req) async {
        const headers = {
          'access-control-allow-origin': '*',
          'access-control-allow-headers':
              'authorization, content-type, x-api-key, anthropic-version, anthropic-beta, x-finnhub-token, stripe-signature, '
              'x-whatstock-depth, $inviteHeader',
          'access-control-allow-methods': 'GET, POST, PUT, DELETE, OPTIONS',
        };
        if (req.method == 'OPTIONS') return Response.ok('', headers: headers);
        final res = await inner(req);
        return res.change(headers: headers);
      };

  /// Zárt előzetes: érvényes, le nem járt meghívókód kell, és egy kód legfeljebb
  /// [Invite.maxDevices] fiókhoz (eszközhöz) köthető. A kód a kérés
  /// kontextusába kerül (`invite`), a napi keretet az elemzés ellenőrzi.
  Middleware _inviteGate() =>
      (inner) => (req) async {
        if (!invites.enabled || req.method == 'OPTIONS') return inner(req);
        final path = req.url.path;
        // A fizetési szolgáltatók értesítései (Stripe, App Store, Google Play) nem hordoznak meghívót.
        if (!path.startsWith('v1/') || path == 'v1/stripe/webhook' || path.startsWith('v1/stores/')) {
          return inner(req);
        }
        final sent = req.headers[inviteHeader];
        final missing = sent == null || sent.trim().isEmpty;
        final ipKey = _ipKey(_clientIp(req) ?? '-');
        if (!missing && _inviteFailures.blocked(ipKey)) return _error(429, 'rate_limited');
        final invite = invites.find(sent);
        if (invite == null) {
          if (!missing) _inviteFailures.hit(ipKey);
          return _error(403, missing ? 'invite_required' : 'invite_invalid');
        }
        if (invite.isExpired(store.clock())) return _error(403, 'invite_expired');
        final uid = _userId(req);
        final known = uid != null && store.inviteHasDevice(invite.code, uid);
        if (!known && (uid != null || path == 'v1/auth/anonymous')) {
          if (store.inviteDeviceCount(invite.code) >= invite.maxDevices) return _error(403, 'invite_device_limit');
          if (uid != null) store.addInviteDevice(invite.code, uid);
        }
        return inner(req.change(context: {'invite': invite}));
      };

  static Invite? _invite(Request r) => r.context['invite'] as Invite?;

  // ---- Útvonalak ----

  /// Új névtelen fiók IP-címenként óránként legfeljebb ennyi (a fiók ingyenes,
  /// így minden felhasználónkénti korlát csak ezzel együtt ér valamit).
  static const signupsPerIpPerHour = 20;
  final _signups = RateLimiter(signupsPerIpPerHour, const Duration(hours: 1));

  Future<Response> _auth(Request r) async {
    final ip = _clientIp(r);
    if (ip != null && !_signups.allow(_ipKey(ip))) return _error(429, 'rate_limited');
    final body = await _body(r);
    final device = body['device_id'];
    final (id, token) = store.createAnonymousUser(device is String && device.length <= 128 ? device : null);
    _limitTrial(r, id);
    final invite = _invite(r);
    if (invite != null) store.addInviteDevice(invite.code, id);
    return _json({
      'user_id': id,
      'token': token,
      'entitlements': store.entitlement(id).toJson(),
      'invite': ?invite?.toJson(),
    });
  }

  /// A kliens IP-címe: a proxy (Railway) az `x-forwarded-for` végére fűzi a
  /// valódi címet – az elejére a kliens bármit írhat –, ezért a jobbról első
  /// nyilvános cím (a belső hálózati ugrások kimaradnak); közvetlen
  /// kapcsolatnál a socket címe.
  static String? _clientIp(Request r) {
    final hops = (r.headers['x-forwarded-for'] ?? '').split(',').map((h) => h.trim()).where((h) => h.isNotEmpty);
    final fwd = hops.toList().reversed.where((h) => !_privateAddress(h)).firstOrNull;
    if (fwd != null) return fwd;
    final info = r.context['shelf.io.connection_info'];
    return info is HttpConnectionInfo ? info.remoteAddress.address : null;
  }

  /// A korlátokhoz használt kulcs: a cím hash-e (IPv6-nál a /64 előtag, mert egy
  /// gép sok címet kaphat belőle).
  static String _ipKey(String ip) {
    final a = InternetAddress.tryParse(ip);
    final prefix = a != null && a.type == InternetAddressType.IPv6 ? a.rawAddress.sublist(0, 8).join('.') : ip;
    return sha256.convert(utf8.encode('ip:$prefix')).toString();
  }

  /// Belső hálózati (proxy-) cím: privát, helyi, CGNAT vagy egyedi helyi IPv6.
  static bool _privateAddress(String ip) {
    final a = InternetAddress.tryParse(ip);
    if (a == null) return true;
    if (a.isLoopback || a.isLinkLocal) return true;
    final b = a.rawAddress;
    if (a.type == InternetAddressType.IPv4) {
      return b[0] == 10 ||
          (b[0] == 172 && b[1] >= 16 && b[1] < 32) ||
          (b[0] == 192 && b[1] == 168) ||
          (b[0] == 100 && b[1] >= 64 && b[1] < 128);
    }
    return (b[0] & 0xfe) == 0xfc;
  }

  /// Próbaidő-visszaélés ellen: ha erről a címről ma már [trialPerIpPerDay]
  /// próbaidő indult, az új fiók próbaidő nélkül marad. A címet csak hash-elve,
  /// két napig tároljuk.
  void _limitTrial(Request r, String userId) {
    final ip = _clientIp(r);
    if (trialPerIpPerDay <= 0 || ip == null) return;
    final hash = Store.hashToken('trial:$ip');
    if (store.trialGrantsSince(hash, store.clock().subtract(const Duration(days: 1))) >= trialPerIpPerDay) {
      final e = store.entitlement(userId);
      store.save(
        e
          ..tier = null
          ..periodEnd = store.clock(),
      );
      return;
    }
    store.logTrialGrant(hash);
  }

  Future<Response> _me(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    return _json({..._account(uid), 'invite': ?_invite(r)?.toJson()});
  }

  // ---- Fiók: belépés e-mail + kód ----

  static final _emailRe = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  Future<Response> _emailStart(Request r) async {
    final email = Store.normalizeEmail((await _body(r))['email'] as String? ?? '');
    if (!_emailRe.hasMatch(email)) return _error(400, 'invalid_email');
    if (store.recentCodeCount(email) >= 5 || store.recentCodeCount(email, within: const Duration(days: 1)) >= 10) {
      return _error(429, 'too_many_codes');
    }
    final code = store.createLoginCode(email);
    try {
      await mailer.sendLoginCode(email, code);
    } catch (e) {
      return _error(502, 'mail_failed', '$e');
    }
    return _json({'sent': true});
  }

  /// Kód ellenőrzése. Ha a címhez még nincs fiók, a jelenlegi (névtelen)
  /// felhasználó kapja meg; ha már van, a jelenlegi eszköz annak a fióknak a
  /// tokenjét kapja, az itt gyűlt extra elemzések és a fizetős csomag átkerülnek.
  Future<Response> _emailVerify(Request r) async {
    final body = await _body(r);
    final email = Store.normalizeEmail(body['email'] as String? ?? '');
    final code = body['code'] as String? ?? '';
    if (!store.verifyLoginCode(email, code)) return _error(401, 'invalid_code');

    final current = _userId(r);
    final existing = store.userIdForEmail(email);
    String uid;
    String token;
    if (existing == null) {
      if (current != null && store.emailOf(current) == null) {
        uid = current;
        token = _token(r)!;
      } else {
        final (id, t) = store.createAnonymousUser(null);
        uid = id;
        token = t;
      }
      store.setEmail(uid, email);
    } else {
      uid = existing;
      token = current == existing ? _token(r)! : store.issueToken(existing);
      if (current != null && current != existing && store.emailOf(current) == null) {
        _merge(from: current, into: existing);
      }
    }
    return _json({'token': token, ..._account(uid)});
  }

  /// A névtelen fiók átkerül a meglévőbe: az extra elemzések összeadódnak, a
  /// fizetős csomag átköltözik (ha a meglévőnek nincs), a vásárlások és a
  /// Stripe-azonosítók is; a névtelen fiók csomagja megszűnik, a tokenje
  /// érvénytelen – egy vásárlás így csak egy fiókot tesz fizetőssé.
  void _merge({required String from, required String into}) {
    final a = store.entitlement(from);
    final b = store.entitlement(into);
    b.extra += a.extra;
    final aPaid = a.tier != null && a.tier != 'trial';
    final bPaid = b.tier != null && b.tier != 'trial';
    if (aPaid && !bPaid) {
      b
        ..tier = a.tier
        ..periodStart = a.periodStart
        ..periodEnd = a.periodEnd
        ..used = a.used;
    }
    a.extra = 0;
    if (aPaid) {
      a
        ..tier = null
        ..periodEnd = store.clock();
    }
    store
      ..save(a)
      ..save(b)
      ..movePurchases(from: from, into: into);
  }

  // ---- Megosztás nyilvános linkkel ----

  static final _shareId = RegExp(r'^[A-Za-z0-9]{6,16}$');

  /// `POST /v1/share`: az app elküldi a megosztott elemzés nyilvános részét
  /// (és az előnézeti képet); a válasz a link.
  Future<Response> _createShare(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final body = await _body(r);
    final data = cleanShare(body);
    if (data == null) return _error(400, 'bad_share');
    Uint8List? image;
    final b64 = body['image'];
    if (b64 is String && b64.isNotEmpty) {
      try {
        image = base64Decode(b64);
      } catch (_) {
        return _error(400, 'bad_image');
      }
      const png = [0x89, 0x50, 0x4E, 0x47];
      final isPng = image.length > 8 && List.generate(4, (i) => image![i]).join() == png.join();
      if (!isPng || image.length > ShareStore.maxImageBytes) return _error(400, 'bad_image');
    }
    if (shares.createdToday(uid) >= ShareStore.perDay) return _error(429, 'share_limit');
    // Megosztani elemzést lehet: csomag, élő próbaidő vagy extra elemzés kell.
    if (!quota.hasAccess(store.entitlement(uid))) return _error(402, 'no_plan');
    final id = shares.save(uid, data, image);
    return _json({'id': id, 'url': '$publicUrl/s/$id'});
  }

  Response _sharePage(Request r, String id) {
    final png = id.endsWith('.png');
    final key = png ? id.substring(0, id.length - 4) : id;
    if (!_shareId.hasMatch(key)) return _html(shareMissingPage(), status: 404);
    if (png) {
      final img = shares.image(key);
      if (img == null) return Response.notFound('not found');
      return Response.ok(img, headers: {'content-type': 'image/png', 'cache-control': 'public, max-age=86400'});
    }
    final s = shares.find(key, countView: true);
    if (s == null) return _html(shareMissingPage(), status: 404);
    return Response.ok(
      sharePage(s, publicUrl: publicUrl),
      headers: {'content-type': 'text/html; charset=utf-8', 'cache-control': 'public, max-age=300'},
    );
  }

  /// A nyitóoldal a böngésző nyelvén (magyar vagy angol).
  Response _landing(Request r) {
    final asked = (r.url.queryParameters['lang'] ?? r.headers['accept-language'] ?? '').toLowerCase();
    return Response.ok(
      landingPage(
        lang: asked.startsWith('hu') ? 'hu' : 'en',
        downloadBase: downloadBaseUrl,
        closedPreview: invites.enabled,
        publicUrl: publicUrl,
      ),
      headers: {'content-type': 'text/html; charset=utf-8'},
    );
  }

  /// Az árak oldal (magyar vagy angol, mint a nyitóoldal).
  Response _pricingPage(Request r) {
    final asked = (r.url.queryParameters['lang'] ?? r.headers['accept-language'] ?? '').toLowerCase();
    return Response.ok(
      pricingPage(lang: asked.startsWith('hu') ? 'hu' : 'en', askPerDay: askPerDayPaid, publicUrl: publicUrl),
      headers: {'content-type': 'text/html; charset=utf-8', 'cache-control': 'public, max-age=3600'},
    );
  }

  String _pageLang(Request r) =>
      (r.url.queryParameters['lang'] ?? r.headers['accept-language'] ?? '').toLowerCase().startsWith('hu')
      ? 'hu'
      : 'en';

  /// A fogalomtár oldala (a mutatók közérthető magyarázata, az app szövegei).
  Response _glossaryPage(Request r) => Response.ok(
    glossaryPage(lang: _pageLang(r), downloadBase: downloadBaseUrl, publicUrl: publicUrl),
    headers: {'content-type': 'text/html; charset=utf-8', 'cache-control': 'public, max-age=3600'},
  );

  /// A minta-elemzés oldala (kitalált cég, az elemzés szerkezete).
  Response _samplePage(Request r) => Response.ok(
    samplePage(lang: _pageLang(r), downloadBase: downloadBaseUrl, publicUrl: publicUrl),
    headers: {'content-type': 'text/html; charset=utf-8', 'cache-control': 'public, max-age=3600'},
  );

  Response _stocksIndex(Request r) => Response.ok(
    stocksIndexPage(lang: _pageLang(r), downloadBase: downloadBaseUrl, publicUrl: publicUrl),
    headers: {'content-type': 'text/html; charset=utf-8', 'cache-control': 'public, max-age=3600'},
  );

  /// Egy népszerű részvény oldala; más tickerre 404 (nem nyílt Finnhub-proxy).
  Future<Response> _stockPage(Request r, String symbol) async {
    final sym = Uri.decodeComponent(symbol).toUpperCase();
    if (!popularStocks.contains(sym)) return Response.notFound(shareMissingPage(), headers: _htmlType);
    final facts = await _stockFacts(sym);
    return Response.ok(
      stockPage(facts, lang: _pageLang(r), downloadBase: downloadBaseUrl, publicUrl: publicUrl),
      headers: {..._htmlType, 'cache-control': 'public, max-age=900'},
    );
  }

  static const _htmlType = {'content-type': 'text/html; charset=utf-8'};

  /// Részvény-adatok gyorsítótára (1 óra), hogy a keresőrobotok ne fogyasszák a Finnhub-keretet.
  final _factsCache = <String, (DateTime, StockFacts)>{};

  Future<StockFacts> _stockFacts(String symbol) async {
    final cached = _factsCache[symbol];
    if (cached != null && DateTime.now().difference(cached.$1) < const Duration(hours: 1)) return cached.$2;
    Future<Map<String, dynamic>> get(String path, [Map<String, String> extra = const {}]) async {
      try {
        final res = await _client
            .get(
              Uri.parse('$finnhubBaseUrl$path').replace(queryParameters: {'symbol': symbol, ...extra}),
              headers: {'X-Finnhub-Token': finnhubApiKey},
            )
            .timeout(const Duration(seconds: 10));
        final j = res.statusCode == 200 ? jsonDecode(res.body) : null;
        return j is Map<String, dynamic> ? j : const {};
      } catch (_) {
        return const {};
      }
    }

    final [p, q, mj] = await Future.wait([
      get('/stock/profile2'),
      get('/quote'),
      get('/stock/metric', {'metric': 'all'}),
    ]);
    final m = mj['metric'] is Map ? (mj['metric'] as Map).cast<String, dynamic>() : const <String, dynamic>{};
    String? str(Object? v) => v is String && v.trim().isNotEmpty ? v.trim() : null;
    double? num_(Object? v) => v is num ? v.toDouble() : null;
    final price = num_(q['c']);
    final facts = (
      symbol: symbol,
      name: str(p['name']),
      exchange: str(p['exchange']),
      industry: str(p['finnhubIndustry']),
      marketCapMillions: num_(p['marketCapitalization']),
      currency: str(p['currency']),
      country: str(p['country']),
      ipo: str(p['ipo']),
      weburl: str(p['weburl']),
      price: price != null && price > 0 ? price : null,
      change: num_(q['d']),
      changePercent: num_(q['dp']),
      pe: num_(m['peTTM']) ?? num_(m['peBasicExclExtraTTM']),
      dividendYield: num_(m['dividendYieldIndicatedAnnual']) ?? num_(m['currentDividendYieldTTM']),
      beta: num_(m['beta']),
      week52Low: num_(m['52WeekLow']),
      week52High: num_(m['52WeekHigh']),
    );
    // Hibás válasz (se név, se ár) nem kerül a gyorsítótárba; ha csak a mutatók
    // hiányoznak, 10 perc múlva újra próbáljuk (a többi adat egy órára marad).
    if (facts.name != null || facts.price != null) {
      final at = m.isEmpty ? DateTime.now().subtract(const Duration(minutes: 50)) : DateTime.now();
      _factsCache[symbol] = (at, facts);
    }
    return facts;
  }

  // ---- Névtelen statisztika ----

  /// Telemetria: felhasználónként naponta legfeljebb ennyi küldés (az app ritkán küld).
  final _telemetryBatches = RateLimiter(100, const Duration(days: 1));

  Future<Response> _telemetry(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    if (!_telemetryBatches.allow(uid)) return _error(429, 'rate_limited');
    telemetry.record(uid, await _body(r));
    return _json({'ok': true});
  }

  bool _isAdmin(String? key) => _secretEquals(key, adminToken);

  /// Állandó idejű összehasonlítás (a kulcs ne legyen kitalálható időméréssel).
  static bool _secretEquals(String? key, String secret) {
    if (secret.isEmpty || key == null) return false;
    final a = Store.hashToken(key), b = Store.hashToken(secret);
    var diff = 0;
    for (var i = 0; i < a.length; i++) {
      diff |= a.codeUnitAt(i) ^ b.codeUnitAt(i);
    }
    return diff == 0;
  }

  static Response _html(String body, {int status = 200}) => Response(
    status,
    body: body,
    headers: {'content-type': 'text/html; charset=utf-8', 'cache-control': 'no-store', 'x-robots-tag': 'noindex'},
  );

  Response _adminLogin(Request r) => adminToken.isEmpty ? Response.notFound('not found') : _html(adminLoginPage());

  /// Hibás admin-kulcs és meghívókód: IP-címenként óránként legfeljebb ennyi próbálkozás.
  final _adminFailures = RateLimiter(10, const Duration(hours: 1));
  final _inviteFailures = RateLimiter(30, const Duration(hours: 1));

  Future<Response> _adminStats(Request r) async {
    if (adminToken.isEmpty) return Response.notFound('not found');
    final ipKey = _ipKey(_clientIp(r) ?? '-');
    if (_adminFailures.blocked(ipKey)) return _error(429, 'rate_limited');
    final key = Uri.splitQueryString(await r.readAsString())['key'];
    if (!_isAdmin(key)) {
      _adminFailures.hit(ipKey);
      return _html(adminLoginPage(wrong: true), status: 403);
    }
    return _html(adminStatsPage({...telemetry.stats(), 'testers': _testerStats()}));
  }

  /// A tesztelői kódok használata: kinek szól, milyen csomag, hány fiók váltotta be.
  List<Map<String, dynamic>> _testerStats() => [
    for (final t in testers.all)
      {
        'label': t.label,
        'tier': t.tier,
        'days': t.days,
        'used': store.testerRedemptions(t.code, '').count,
        'max': t.maxAccounts,
      },
  ];

  /// Ugyanez JSON-ban, `Authorization: Bearer <ADMIN_TOKEN>` fejléccel (szkriptekhez).
  Response _adminStatsJson(Request r) {
    if (adminToken.isEmpty) return Response.notFound('not found');
    if (!_isAdmin(_token(r))) return _error(403, 'forbidden');
    final days = int.tryParse(r.url.queryParameters['days'] ?? '')?.clamp(1, 400) ?? 30;
    return _json({...telemetry.stats(days: days), 'testers': _testerStats()});
  }

  // ---- Szerver oldali riasztásfigyelés ----

  /// A szinkronizált riasztások figyelője (a Finnhub `/quote` árával).
  late final AlertWatcher alertWatcher = AlertWatcher(store: store, mailer: mailer, quote: _finnhubQuote);

  Future<({double price, double? changePercent})?> _finnhubQuote(String symbol) async {
    final res = await _client
        .get(
          Uri.parse('$finnhubBaseUrl/quote').replace(queryParameters: {'symbol': symbol}),
          headers: {'X-Finnhub-Token': finnhubApiKey},
        )
        .timeout(const Duration(seconds: 15));
    if (res.statusCode != 200) return null;
    final j = jsonDecode(res.body);
    final c = j is Map ? j['c'] : null;
    final dp = j is Map ? j['dp'] : null;
    if (c is! num || c <= 0) return null;
    return (price: c.toDouble(), changePercent: dp is num ? dp.toDouble() : null);
  }

  /// A heti összefoglaló küldője. Twelve Data kulccsal a heti változást is
  /// kiszámolja (és a lekérdezések között szünetet tart az ingyenes keret miatt);
  /// nélküle csak a legutóbbi árat írja.
  late final DigestSender digestSender = DigestSender(
    store: store,
    mailer: mailer,
    week: _weekMove,
    earnings: _earningsDate,
    headline: _latestHeadline,
    results: _lastResult,
    pause: twelveDataApiKey.isEmpty ? const Duration(seconds: 1) : const Duration(seconds: 8),
  );

  Future<WeekMove?> _weekMove(String symbol) async {
    if (twelveDataApiKey.isNotEmpty) {
      try {
        final res = await _client
            .get(
              Uri.parse('$twelveDataBaseUrl/time_series').replace(
                queryParameters: {
                  'symbol': symbol,
                  'interval': '1day',
                  'outputsize': '230',
                  'apikey': twelveDataApiKey,
                },
              ),
            )
            .timeout(const Duration(seconds: 20));
        final m = weekMoveFromTimeSeries(jsonDecode(res.body));
        if (m != null) return m;
      } catch (_) {}
    }
    final q = await _finnhubQuote(symbol);
    return q == null ? null : (price: q.price, weekChange: null, currency: null, closes: const <double>[]);
  }

  /// Twelve Data `time_series` válaszból (újabb elöl) a legutóbbi záróár, a
  /// legalább hét nappal korábbi utolsó záróárhoz mért változás, és a záróárak
  /// időrendben.
  static WeekMove? weekMoveFromTimeSeries(Object? j) {
    if (j is! Map || j['status'] != 'ok' || j['values'] is! List) return null;
    final rows = <(DateTime, double)>[
      for (final r in (j['values'] as List).whereType<Map>())
        if ((DateTime.tryParse('${r['datetime']}'), double.tryParse('${r['close']}')) case (final d?, final c?)) (d, c),
    ]..sort((a, b) => b.$1.compareTo(a.$1));
    if (rows.isEmpty || rows.first.$2 <= 0) return null;
    final last = rows.first;
    final cutoff = last.$1.subtract(const Duration(days: 7));
    final base = rows.where((r) => !r.$1.isAfter(cutoff)).firstOrNull;
    final meta = j['meta'];
    return (
      price: last.$2,
      weekChange: base == null || base.$2 <= 0 ? null : (last.$2 / base.$2 - 1) * 100,
      currency: meta is Map && meta['currency'] is String ? meta['currency'] as String : null,
      // A záróárak időrendben (a technikai jelzésekhez).
      closes: [for (final r in rows.reversed) r.$2],
    );
  }

  /// A Finnhub `/company-news` legfrissebb híre az időszakban.
  Future<({String title, String url})?> _latestHeadline(String symbol, DateTime from, DateTime to) async {
    String d(DateTime t) => t.toIso8601String().substring(0, 10);
    final res = await _client
        .get(
          Uri.parse('$finnhubBaseUrl/company-news')
              .replace(queryParameters: {'symbol': symbol, 'from': d(from), 'to': d(to)}),
          headers: {'X-Finnhub-Token': finnhubApiKey},
        )
        .timeout(const Duration(seconds: 15));
    if (res.statusCode != 200) return null;
    return latestHeadline(jsonDecode(res.body));
  }

  /// A hírlistából a legfrissebb, címmel rendelkező hír.
  static ({String title, String url})? latestHeadline(Object? j) {
    if (j is! List) return null;
    final items = [
      for (final n in j.whereType<Map>())
        if (n['headline'] is String && (n['headline'] as String).trim().isNotEmpty)
          (
            at: n['datetime'] is num ? (n['datetime'] as num).toInt() : 0,
            title: (n['headline'] as String).trim(),
            url: n['url'] is String ? n['url'] as String : '',
          ),
    ]..sort((a, b) => b.at.compareTo(a.at));
    return items.isEmpty ? null : (title: items.first.title, url: items.first.url);
  }

  /// A legutóbbi negyedéves eredmény (Finnhub `/stock/earnings`), ha a negyedév
  /// [since] után zárult és a jelentett és a várt EPS is megvan.
  Future<LastResult?> _lastResult(String symbol, DateTime since) async {
    final res = await _client
        .get(
          Uri.parse('$finnhubBaseUrl/stock/earnings').replace(queryParameters: {'symbol': symbol, 'limit': '1'}),
          headers: {'X-Finnhub-Token': finnhubApiKey},
        )
        .timeout(const Duration(seconds: 15));
    if (res.statusCode != 200) return null;
    final j = jsonDecode(res.body);
    if (j is! List || j.isEmpty || j.first is! Map) return null;
    final e = j.first as Map;
    final actual = e['actual'], estimate = e['estimate'];
    final period = DateTime.tryParse('${e['period']}');
    if (actual is! num || estimate is! num || period == null || period.isBefore(since)) return null;
    return (actual: actual.toDouble(), estimate: estimate.toDouble(), period: period);
  }

  Future<DateTime?> _earningsDate(String symbol, DateTime from, DateTime to) async {
    String d(DateTime t) => t.toIso8601String().substring(0, 10);
    final res = await _client
        .get(
          Uri.parse('$finnhubBaseUrl/calendar/earnings')
              .replace(queryParameters: {'symbol': symbol, 'from': d(from), 'to': d(to)}),
          headers: {'X-Finnhub-Token': finnhubApiKey},
        )
        .timeout(const Duration(seconds: 15));
    if (res.statusCode != 200) return null;
    final j = jsonDecode(res.body);
    final list = j is Map ? j['earningsCalendar'] : null;
    if (list is! List) return null;
    final dates = [for (final e in list.whereType<Map>()) ?DateTime.tryParse('${e['date']}')]..sort();
    return dates.firstOrNull;
  }

  // ---- Szinkron (e-mailes fiókhoz) ----

  /// A szinkronizált adatok legnagyobb mérete.
  static const syncMaxBytes = 512 * 1024;

  Future<Response> _getSync(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final s = store.syncData(uid);
    return _json({'data': s == null ? null : jsonDecode(s.data), 'updated_at': s?.updatedAt.toIso8601String()});
  }

  /// A teljes adatcsomag felülírása (az összefésülést az app végzi). Ha a kérés
  /// megadja, melyik változatra épít (`base`: a letöltött `updated_at`, vagy `null`,
  /// ha még nem volt adat), és azóta más írt, 409 – az app újra letölt és
  /// összefésül, így két eszköz egyidejű feltöltése sem írja felül egymást.
  /// `base` nélkül (régebbi app) az utolsó írás nyer.
  Future<Response> _putSync(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    if (store.emailOf(uid) == null) return _error(403, 'sign_in_required');
    final raw = await r.readAsString();
    if (raw.length > syncMaxBytes) return _error(413, 'too_large');
    final Object? body;
    try {
      body = jsonDecode(raw);
    } catch (_) {
      return _error(400, 'bad_request');
    }
    final data = body is Map ? body['data'] : null;
    if (data is! Map) return _error(400, 'bad_request');
    if (body is Map && body.containsKey('base')) {
      final base = DateTime.tryParse('${body['base'] ?? ''}');
      final current = store.syncData(uid)?.updatedAt;
      final same = current == null ? base == null : base != null && base.isAtSameMomentAs(current);
      if (!same) return _json({'error': 'conflict', 'updated_at': current?.toIso8601String()}, status: 409);
    }
    final at = store.saveSyncData(uid, jsonEncode(data));
    return _json({'updated_at': at.toIso8601String()});
  }

  // ---- Ajánlói program ----

  Future<Response> _referral(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final (invited, rewarded) = store.referralStats(uid);
    return _json({
      'code': store.referralCodeOf(uid),
      'invited': invited,
      'rewarded': rewarded,
      'bonus': referralBonus,
      'max': referralMax,
      'redeemed': store.hasRedeemedReferral(uid),
    });
  }

  /// Egy barát kódjának beváltása: a meghívott azonnal megkapja az extra
  /// elemzéseket; fiókonként egyszer, saját kód nem váltható be.
  Future<Response> _redeemReferral(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final code = (await _body(r))['code'] as String? ?? '';
    // Tesztelői kód: a megadott csomag a megadott napokra, fizetés nélkül.
    if (testers.find(code) case final t?) {
      final used = store.testerRedemptions(t.code, uid);
      // Újra beváltva nem indul újra (a felhasználás és a lejárat marad).
      if (used.mine) return _json({'entitlements': store.entitlement(uid).toJson(), 'bonus': 0, 'tester': t.label});
      if (used.count >= t.maxAccounts) return _error(409, 'tester_code_full');
      store.addTesterRedemption(t.code, uid);
      final now = store.clock();
      final e = store.entitlement(uid)
        ..tier = t.tier
        ..periodStart = now
        ..periodEnd = now.add(Duration(days: t.days))
        ..used = 0;
      store.save(e);
      stdout.writeln('Tesztelői kód beváltva: ${t.label} (${t.tier}, ${t.days} nap)');
      return _json({'entitlements': store.entitlement(uid).toJson(), 'bonus': 0, 'tester': t.label});
    }
    final referrer = store.userIdForReferralCode(code);
    if (referrer == null) return _error(404, 'unknown_code');
    if (referrer == uid) return _error(400, 'own_code');
    if (store.hasRedeemedReferral(uid)) return _error(409, 'already_redeemed');
    // Eldobható névtelen fiókokkal ne lehessen bónuszt gyűjteni: e-mailes fiók
    // kell, és egy kód legfeljebb [referralMax]-szor váltható be.
    if (store.emailOf(uid) == null) return _error(403, 'sign_in_required');
    if (store.referralStats(referrer).$1 >= referralMax) return _error(409, 'code_full');
    store.addReferral(refereeId: uid, referrerId: referrer);
    final e = store.entitlement(uid);
    store.save(e..extra += referralBonus);
    return _json({'entitlements': store.entitlement(uid).toJson(), 'bonus': referralBonus});
  }

  /// Az első elkészült elemzés után az ajánló is megkapja a jutalmát (ha még
  /// nem érte el a felső határt); így üres fiókokkal nem gyűjthető.
  void _rewardReferrer(String refereeId) {
    final referrer = store.pendingReferrer(refereeId);
    if (referrer == null) return;
    final (_, rewarded) = store.referralStats(referrer);
    if (rewarded < referralMax) {
      final e = store.entitlement(referrer);
      store.save(e..extra += referralBonus);
    }
    store.markReferralRewarded(refereeId);
  }

  Future<Response> _logout(Request r) async {
    final t = _token(r);
    if (t != null) store.revokeToken(t);
    return _json({'ok': true});
  }

  /// Fiók törlése: előbb a böngészős (Stripe) előfizetés lemondása – ha ez nem
  /// sikerül, nem törlünk, különben a kártyát tovább terhelnénk fiók nélkül –,
  /// majd minden szerveren tárolt adat törlése. A bolti előfizetést a felhasználó
  /// a boltban mondja le (az app ezt meg is mondja).
  Future<Response> _deleteAccount(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final subscription = store.stripeOf(uid).subscriptionId;
    final s = stripe;
    var cancelled = false;
    if (subscription != null && s != null) {
      try {
        await s.cancelSubscription(subscription);
        cancelled = true;
      } catch (e) {
        return _error(502, 'stripe_cancel_failed', '$e');
      }
    }
    shares.deleteUser(uid);
    store.deleteUser(uid);
    return _json({'deleted': true, 'stripe_subscription_cancelled': cancelled});
  }

  /// ÁSZF és adatkezelési tájékoztató HTML-ben, a kért (vagy a böngésző szerinti)
  /// nyelven, magyar / angol tartalékkal. Ha még nincs közzétéve, 404.
  Future<Response> _legal(Request r, String name) async {
    if (!const {'terms', 'privacy'}.contains(name)) return Response.notFound('not found');
    final asked = (r.url.queryParameters['lang'] ?? r.headers['accept-language'] ?? '').toLowerCase();
    final first = asked.startsWith('hu') ? 'hu' : 'en';
    for (final lang in {first, 'hu', 'en'}) {
      final f = File('$legalDir/$name.$lang.md');
      if (!f.existsSync()) continue;
      final body = md.markdownToHtml(await f.readAsString(), extensionSet: md.ExtensionSet.gitHubWeb);
      return Response.ok(_legalPage(body, lang), headers: {'content-type': 'text/html; charset=utf-8'});
    }
    return Response.notFound(
      _legalPage('<h1>WhatStock</h1><p>Ez a dokumentum még nincs közzétéve. · Not published yet.</p>', 'hu'),
      headers: {'content-type': 'text/html; charset=utf-8'},
    );
  }

  static String _legalPage(String body, String lang) =>
      '<!doctype html><html lang="$lang"><meta charset="utf-8"><meta name="viewport" content="width=device-width">'
      '<title>WhatStock</title><style>body{max-width:760px;margin:0 auto;padding:24px 16px;line-height:1.55;'
      'font-family:-apple-system,system-ui,sans-serif;color:#1F1E1D;background:#FAF9F5}'
      'table{border-collapse:collapse;width:100%;font-size:14px}td,th{border:1px solid #DDD9CE;padding:6px;'
      'vertical-align:top;text-align:left}a{color:#C96442}'
      '@media(prefers-color-scheme:dark){body{background:#1F1E1D;color:#F0EEE6}td,th{border-color:#3A3835}'
      'a{color:#D97757}}</style><body>$body</body></html>';

  // ---- Böngészős fizetés (Stripe) ----

  Future<Response> _checkout(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final s = stripe;
    if (s == null) return _error(503, 'billing_unavailable');
    final email = store.emailOf(uid);
    if (email == null) return _error(403, 'login_required');
    final productId = (await _body(r))['product_id'] as String? ?? '';
    final isSub = PlanSpec.byProductId(productId) != null;
    if (!isSub && !PlanSpec.packs.containsKey(productId)) return _error(400, 'unknown_product');
    // Élő Stripe-előfizetés mellé nem indul második (a váltás a portálon megy):
    // különben a régi lemondása az újat is megszüntetné, a fióktörlés pedig csak
    // az egyiket mondaná le.
    if (isSub && store.stripeOf(uid).subscriptionId != null) {
      final e = store.entitlement(uid);
      if (e.tier != null && e.tier != 'trial') return _error(409, 'already_subscribed');
    }
    try {
      final url = await s.createCheckoutSession(
        userId: uid,
        productId: productId,
        subscription: isSub,
        customerId: store.stripeOf(uid).customerId,
        email: email,
        successUrl: '$publicUrl/billing/success',
        cancelUrl: '$publicUrl/billing/cancel',
      );
      return _json({'url': url});
    } on StripeException catch (e) {
      return _error(502, 'stripe_error', e.message);
    }
  }

  Future<Response> _portal(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final s = stripe;
    if (s == null) return _error(503, 'billing_unavailable');
    final customer = store.stripeOf(uid).customerId;
    if (customer == null) return _error(404, 'no_customer');
    try {
      return _json({'url': await s.createPortalSession(customerId: customer, returnUrl: '$publicUrl/billing/success')});
    } on StripeException catch (e) {
      return _error(502, 'stripe_error', e.message);
    }
  }

  /// Stripe-események: fizetés kész, megújulás, csomagváltás, lemondás.
  /// Minden esemény egyszer számít (a `purchases` tábla dedupl.).
  Future<Response> _stripeWebhook(Request r) async {
    final s = stripe;
    if (s == null) return _error(503, 'billing_unavailable');
    final payload = await r.readAsString();
    if (!s.verifySignature(payload, r.headers['stripe-signature'], now: store.clock())) {
      return _error(400, 'bad_signature');
    }
    final event = jsonDecode(payload) as Map<String, dynamic>;
    final type = event['type'] as String? ?? '';
    final obj = ((event['data'] as Map?)?['object'] as Map?)?.cast<String, dynamic>() ?? const {};
    final eventId = event['id'] as String? ?? '';

    // A tárolt (élő) előfizetés eseménye-e (egy régi, lemondott előfizetésé nem
    // írhatja felül az újat).
    bool current(String uid) {
      final stored = store.stripeOf(uid).subscriptionId;
      return stored != null && stored == obj['id'];
    }

    switch (type) {
      case 'checkout.session.completed' || 'checkout.session.async_payment_succeeded':
        // Késleltetett fizetési módnál a pénz később érkezik: addig nincs jóváírás.
        if (obj['payment_status'] case final String status when status != 'paid' && status != 'no_payment_required') {
          break;
        }
        final uid = obj['client_reference_id'] as String? ?? (obj['metadata'] as Map?)?['user_id'] as String?;
        final productId = (obj['metadata'] as Map?)?['product_id'] as String?;
        if (uid == null || productId == null) break;
        store.setStripe(uid, customerId: obj['customer'] as String?, subscriptionId: obj['subscription'] as String?);
        if (store.recordPurchase(
          userId: uid,
          productId: productId,
          platform: 'stripe',
          transactionId: obj['id'] as String? ?? eventId,
          // Csomagnál a fizetés azonosítója köti a visszatérítéshez.
          linkKey: obj['payment_intent'] as String?,
        )) {
          quota.apply(store.entitlement(uid), productId);
        }
      case 'invoice.paid':
        final uid = store.userIdForStripeCustomer(obj['customer'] as String? ?? '');
        final productId = _productFromInvoice(s, obj);
        if (uid == null || productId == null) break;
        final until = _invoicePeriodEnd(obj);
        if (obj['billing_reason'] != 'subscription_cycle') {
          // Az első számlát a checkout már jóváírta: csak a visszatérítéshez kötjük,
          // és a kifizetett időszak végét pontosítjuk.
          store.recordPurchase(
            userId: uid,
            productId: productId,
            platform: 'stripe',
            transactionId: 'invoice:${obj['id'] ?? eventId}',
            linkKey: obj['payment_intent'] as String?,
          );
          final e = store.entitlement(uid);
          if (until != null && e.tier == PlanSpec.byProductId(productId)?.tier) store.save(e..paidThrough = until);
          break;
        }
        // A megújulás új időszakot nyit.
        if (store.recordPurchase(
          userId: uid,
          productId: productId,
          platform: 'stripe',
          transactionId: obj['id'] as String? ?? eventId,
          linkKey: obj['payment_intent'] as String?,
        )) {
          quota.apply(store.entitlement(uid), productId, until: until);
        }
      case 'customer.subscription.updated':
        final uid = store.userIdForStripeCustomer(obj['customer'] as String? ?? '');
        if (uid == null || !current(uid)) break;
        final items = ((obj['items'] as Map?)?['data'] as List?) ?? const [];
        final priceId = items.isEmpty ? null : ((items.first as Map)['price'] as Map?)?['id'] as String?;
        final plan = priceId == null ? null : PlanSpec.byProductId(s.productForPrice(priceId) ?? '');
        if (plan == null ||
            !store.recordPurchase(
              userId: uid,
              productId: plan.productId,
              platform: 'stripe-event',
              transactionId: eventId,
            )) {
          break;
        }
        final e = store.entitlement(uid);
        if (const {'canceled', 'unpaid', 'incomplete_expired'}.contains(obj['status'])) {
          // Megszűnt (vagy nem fizetett): a csomag véget ér.
          if (e.tier != null && e.tier != 'trial') store.save(e..tier = null);
        } else if (e.tier != null && e.tier != 'trial' && e.tier != plan.tier) {
          // Csomagváltás azonnal érvényes, a felhasznált keret megmarad.
          store.save(e..tier = plan.tier);
        }
      case 'customer.subscription.deleted':
        final uid = store.userIdForStripeCustomer(obj['customer'] as String? ?? '');
        if (uid == null || !current(uid)) break;
        final e = store.entitlement(uid);
        if (e.tier != null && e.tier != 'trial') store.save(e..tier = null);
        store.clearStripeSubscription(uid);
      case 'charge.refunded' || 'charge.dispute.created':
        // Visszatérítés vagy vitatott terhelés: a hozzá tartozó csomag / előfizetés visszavonva (egyszer).
        final pi = obj['payment_intent'] as String?;
        if (pi == null) break;
        final uid = store.userForPurchaseLink('stripe', pi);
        final productId = store.productForPurchaseLink('stripe', pi);
        if (uid == null || productId == null) break;
        if (store.recordPurchase(userId: uid, productId: productId, platform: 'stripe', transactionId: 'revoked:$pi')) {
          quota.revoke(store.entitlement(uid), productId);
        }
    }
    return _json({'received': true});
  }

  /// A számla előfizetési időszakának vége (a sor `period.end`-je, Unix-másodperc).
  static DateTime? _invoicePeriodEnd(Map<String, dynamic> invoice) {
    final lines = ((invoice['lines'] as Map?)?['data'] as List?) ?? const [];
    for (final l in lines.whereType<Map>()) {
      if ((l['period'] as Map?)?['end'] case final num end) {
        return DateTime.fromMillisecondsSinceEpoch(end.toInt() * 1000, isUtc: true);
      }
    }
    return null;
  }

  static String? _productFromInvoice(StripeClient s, Map<String, dynamic> invoice) {
    final lines = ((invoice['lines'] as Map?)?['data'] as List?) ?? const [];
    for (final l in lines.whereType<Map>()) {
      final price = l['price'] as Map? ?? ((l['pricing'] as Map?)?['price_details'] as Map?);
      final id = price?['id'] as String? ?? price?['price'] as String?;
      final p = id == null ? null : s.productForPrice(id);
      if (p != null) return p;
    }
    return null;
  }

  Future<Response> _verify(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final body = await _body(r);
    final platform = body['platform'] as String? ?? '';
    final productId = body['product_id'] as String? ?? '';
    final data = body['verification_data'] as String? ?? '';
    if (PlanSpec.byProductId(productId) == null && !PlanSpec.packs.containsKey(productId)) {
      return _error(400, 'unknown_product');
    }
    final VerifiedPurchase? txn;
    try {
      txn = await verifier.verify(platform: platform, productId: productId, verificationData: data);
    } catch (e) {
      // A bolt most nem érhető el: az app megtartja a bizonylatot, és később újra próbálja.
      stderr.writeln('Vásárlás-ellenőrzés hiba ($platform, $productId): $e');
      return _error(502, 'store_unavailable');
    }
    if (txn == null) return _error(402, 'invalid_purchase');
    // Egy törölt fiók még fizetett előfizetése az új fiókhoz köthető (különben a
    // megújítások a törölt fiókhoz futnának, és a visszaállítás sem menne).
    var relinked = false;
    if (txn.linkKey case final link? when store.userForPurchaseLink(platform, link) == Store.deletedUser) {
      store.relinkPurchases(platform: platform, linkKey: link, to: uid);
      relinked = true;
    }
    final e = store.entitlement(uid);
    final fresh =
        store.recordPurchase(
          userId: uid,
          productId: productId,
          platform: platform,
          transactionId: txn.transactionId,
          linkKey: txn.linkKey,
        ) ||
        relinked;
    if (fresh) quota.apply(e, productId, until: txn.expiresAt);
    return _json({'entitlements': store.entitlement(uid).toJson(), 'applied': fresh});
  }

  // ---- Bolti értesítések (megújítás, visszatérítés) ----

  StoreVerifier? get _stores => verifier is StoreVerifier ? verifier as StoreVerifier : null;

  /// Egy bolti esemény a vásárlás gazdájának fiókján: megújításnál új időszak
  /// (tranzakciónként egyszer), visszavonásnál a keret elvétele (egyszer).
  void _storeEvent({
    required String platform,
    required String linkKey,
    required String productId,
    VerifiedPurchase? renewed,
    String? revokedTransaction,
  }) {
    final uid = store.userForPurchaseLink(platform, linkKey);
    if (uid == null || uid == Store.deletedUser) return;
    final e = store.entitlement(uid);
    if (revokedTransaction != null) {
      final first = store.recordPurchase(
        userId: uid,
        productId: productId,
        platform: platform,
        transactionId: 'revoked:$revokedTransaction',
      );
      if (first) quota.revoke(e, productId);
      return;
    }
    if (renewed == null) return;
    final fresh = store.recordPurchase(
      userId: uid,
      productId: productId,
      platform: platform,
      transactionId: renewed.transactionId,
      linkKey: renewed.linkKey,
    );
    if (fresh) quota.apply(e, productId, until: renewed.expiresAt);
  }

  /// App Store Server Notifications V2 (`{signedPayload}`). Az értesítés tartalmát
  /// nem hisszük el: a tranzakciót az Apple-től kérdezzük vissza.
  Future<Response> _appleNotification(Request r) async {
    final apple = _stores?.apple;
    if (apple == null) return Response.notFound('not found');
    final note = jwsPayload((await _body(r))['signedPayload'] as String? ?? '');
    final data = note?['data'];
    final claimed = jwsPayload(data is Map ? data['signedTransactionInfo'] as String? ?? '' : '');
    final id = claimed?['transactionId']?.toString();
    if (id == null) return _json({'ok': true, 'ignored': true});
    try {
      final info = await apple.transaction(id);
      if (info == null) return _json({'ok': true, 'ignored': true});
      final productId = '${info['productId']}';
      final link = '${info['originalTransactionId'] ?? info['transactionId']}';
      if (info['revocationDate'] != null) {
        _storeEvent(platform: 'app_store', linkKey: link, productId: productId, revokedTransaction: id);
      } else if (apple.accepts(info, productId)) {
        _storeEvent(
          platform: 'app_store',
          linkKey: link,
          productId: productId,
          renewed: VerifiedPurchase(
            '${info['transactionId']}',
            linkKey: link,
            expiresAt: AppleStoreApi.expiresOf(info),
          ),
        );
      }
      return _json({'ok': true});
    } on StoreApiException catch (e) {
      // Az Apple később újraküldi.
      stderr.writeln('App Store értesítés: $e');
      return _error(502, 'store_unavailable');
    }
  }

  /// Google Play valós idejű értesítések (Pub/Sub push). A tokent a Play
  /// Developer API-tól kérdezzük vissza; a push-cím titkos `token` paramétert visz.
  Future<Response> _googleNotification(Request r) async {
    final google = _stores?.google;
    if (google == null || googleNotificationToken.isEmpty) return Response.notFound('not found');
    if (!_secretEquals(r.url.queryParameters['token'], googleNotificationToken)) return _error(403, 'forbidden');
    final message = (await _body(r))['message'];
    Map<String, dynamic>? note;
    try {
      final data = message is Map ? message['data'] as String? : null;
      note = (jsonDecode(utf8.decode(base64Decode(data ?? ''))) as Map).cast<String, dynamic>();
    } catch (_) {
      return _json({'ok': true, 'ignored': true});
    }
    try {
      final sub = note['subscriptionNotification'];
      if (sub is Map) {
        final token = '${sub['purchaseToken']}';
        final productId = '${sub['subscriptionId']}';
        final type = sub['notificationType'];
        // 1 visszaállt, 2 megújult, 4 megvásárolva, 7 újraindítva → új időszak; 12 visszavonva.
        if (const {1, 2, 4, 7}.contains(type)) {
          final v = await google.verify(productId: productId, purchaseToken: token);
          if (v != null) _storeEvent(platform: 'google_play', linkKey: token, productId: productId, renewed: v);
        } else if (type == 12) {
          _storeEvent(platform: 'google_play', linkKey: token, productId: productId, revokedTransaction: 'sub:$token');
        }
      }
      final voided = note['voidedPurchaseNotification'];
      if (voided is Map) {
        final token = '${voided['purchaseToken']}';
        final productId = store.productForPurchaseLink('google_play', token);
        if (productId != null) {
          _storeEvent(
            platform: 'google_play',
            linkKey: token,
            productId: productId,
            revokedTransaction: '${voided['orderId'] ?? token}',
          );
        }
      }
      return _json({'ok': true});
    } on StoreApiException catch (e) {
      stderr.writeln('Google Play értesítés: $e');
      return _error(502, 'store_unavailable');
    }
  }

  /// Elemzés: kvóta-ellenőrzés, továbbítás, siker után levonás és naplózás.
  Future<Response> _analyze(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    _expireTester(uid);
    final e = store.entitlement(uid);
    // A próbaidő kerete: rövid elemzés az olcsóbb modellel (a megvett extra
    // elemzések már a teljes értékűek).
    final invite = _invite(r);
    if (invite != null) {
      final now = store.clock().toUtc();
      final today = DateTime.utc(now.year, now.month, now.day);
      if (store.inviteUsageSince(invite.code, today) >= invite.dailyAnalyses) {
        return _error(402, 'invite_daily_limit');
      }
    }
    final trialRun = quota.drawsFromTrial(e);
    final depth = trialRun ? Depth.brief : Depth.parse(r.headers['x-whatstock-depth']);
    final q = quota.check(e, cost: depth.cost);
    if (q == QuotaResult.insufficient) {
      return _json({'error': 'insufficient_quota', 'needed': depth.cost, 'available': quota.available(e)}, status: 402);
    }
    if (q != QuotaResult.ok) {
      return _error(402, switch (q) {
        QuotaResult.trialExpired => 'trial_expired',
        QuotaResult.noPlan => 'no_plan',
        _ => 'quota_exceeded',
      });
    }
    final body = await r.readAsString();
    if (body.length > analyzeMaxBytes) return _error(413, 'too_large');
    final raw = limitRequest(body, depth: depth, tier: e.tier, model: trialRun ? trialModel : anthropicModel);
    if (raw == null) return _error(400, 'bad_request');
    // A keret a továbbítás előtt foglalódik; sikertelen vagy félbemaradt
    // (pause_turn) válasznál visszajár – csak a befejezett elemzés kerül pénzbe.
    final held = quota.reserve(uid, cost: depth.cost);
    if (held == null) return _error(402, 'quota_exceeded');
    final beta = allowedBeta(r.headers['anthropic-beta']);
    http.Response upstream;
    try {
      upstream = await _forwardAnthropic(raw, beta);
      if (_rejectedWebFetch(upstream)) upstream = await _forwardAnthropic(withoutWebFetch(raw), beta);
    } catch (_) {
      quota.refund(uid, held);
      rethrow;
    }
    Map<String, dynamic>? j;
    try {
      j = (jsonDecode(upstream.body) as Map).cast<String, dynamic>();
    } catch (_) {}
    if (upstream.statusCode != 200 || j?['stop_reason'] == 'pause_turn') {
      quota.refund(uid, held);
    } else {
      final usage = (j?['usage'] as Map?)?.cast<String, dynamic>();
      store.logUsage(uid, _symbolFrom(raw), usage?['input_tokens'] as int?, usage?['output_tokens'] as int?);
      if (invite != null) store.logInviteUsage(invite.code);
      _rewardReferrer(uid);
    }
    return Response(upstream.statusCode, body: upstream.body, headers: {'content-type': 'application/json'});
  }

  /// A csomag és a hossz szerinti korlátok érvényesítése a kérésen: rögzített
  /// modell, a `max_tokens`, a webkeresés és az oldalmegnyitás `max_uses`-a, és
  /// a megnyitott oldal mérete nem lehet nagyobb a megengedettnél; más eszköz
  /// nem fut, így a kliens nem tud drágább elemzést kérni, mint amiért fizet.
  static const _requestKeys = {
    'model',
    'max_tokens',
    'system',
    'messages',
    'tools',
    'output_config',
    'fallbacks',
    'cache_control',
  };

  /// A kérés legfelső szintje az engedélyezett mezőkre szűrve: `fallbacks` csak
  /// `default`, `cache_control` csak az alap (rövid) gyorsítótár, `tools` csak
  /// lista, az `output_config`-ból csak az ismert erőfeszítés és a formátum.
  static Map<String, dynamic> sanitizeTopLevel(Map<String, dynamic> body) {
    final out = {
      for (final e in body.entries)
        if (_requestKeys.contains(e.key)) e.key: e.value,
    };
    if (out['fallbacks'] != 'default') out.remove('fallbacks');
    final cache = out['cache_control'];
    if (cache is! Map || cache.length != 1 || cache['type'] != 'ephemeral') out.remove('cache_control');
    if (out['tools'] is! List) out.remove('tools');
    final config = out['output_config'];
    if (config is Map) {
      final effort = config['effort'];
      out['output_config'] = {
        if (const {'low', 'medium', 'high'}.contains(effort)) 'effort': effort,
        'format': ?config['format'],
      };
    } else {
      out.remove('output_config');
    }
    return out;
  }

  /// `null`, ha a kérés nem értelmezhető (nem engedjük át ellenőrizetlenül).
  static String? limitRequest(
    String raw, {
    required Depth depth,
    required String? tier,
    String model = 'claude-opus-5-5',
  }) {
    Map<String, dynamic> body;
    try {
      body = (jsonDecode(raw) as Map).cast<String, dynamic>();
    } catch (_) {
      return null;
    }
    // Csak az app által használt mezők mennek tovább (pl. a `stream` nem: az
    // elszámoláshoz a teljes válasz kell; más modellre váltó `fallbacks` vagy
    // hosszabb gyorsítótár sem).
    body = sanitizeTopLevel(body);
    body['model'] = model;
    final maxTokens = body['max_tokens'];
    body['max_tokens'] = maxTokens is int && maxTokens < depth.maxTokens ? maxTokens : depth.maxTokens;
    final allowed = depth.searchesFor(tier);
    int cap(Object? asked, int limit) => asked is int && asked < limit ? asked : limit;
    final tools = body['tools'];
    if (tools is List) {
      body['tools'] = [
        for (final t in tools)
          if (t is Map && (t['type'] as String? ?? '').startsWith('web_search'))
            {...t, 'max_uses': cap(t['max_uses'], allowed)}
          else if (t is Map && (t['type'] as String? ?? '').startsWith('web_fetch'))
            {
              'type': t['type'],
              'name': t['name'] ?? 'web_fetch',
              'max_uses': cap(t['max_uses'], depth.fetches),
              'max_content_tokens': cap(t['max_content_tokens'], Depth.maxFetchTokens),
            },
      ];
    }
    body.remove('mcp_servers');
    body.remove('container');
    return jsonEncode(body);
  }

  /// A kérés az oldalmegnyitó eszköz nélkül (ha a fiókban nincs engedélyezve,
  /// az Anthropic 400-zal utasítja el; ilyenkor nélküle fut az elemzés).
  static String withoutWebFetch(String raw) {
    Map<String, dynamic> body;
    try {
      body = (jsonDecode(raw) as Map).cast<String, dynamic>();
    } catch (_) {
      return raw;
    }
    final tools = body['tools'];
    if (tools is List) {
      body['tools'] = [
        for (final t in tools)
          if (!(t is Map && (t['type'] as String? ?? '').startsWith('web_fetch'))) t,
      ];
    }
    return jsonEncode(body);
  }

  static bool _rejectedWebFetch(http.Response res) => res.statusCode == 400 && res.body.contains('web_fetch');

  /// Segéd-hívás szűrése: csak az ismert mezők maradnak (eszközök nélkül),
  /// rögzített modell, legfeljebb [helperMaxTokens] token és közepes erőfeszítés.
  /// `null`, ha a kérés nem értelmezhető vagy több üzenetet tartalmaz a szükségesnél.
  static String? limitHelperRequest(String raw, {String model = 'claude-opus-5-5', int maxOutput = helperMaxTokens}) {
    Map<String, dynamic> body;
    try {
      body = (jsonDecode(raw) as Map).cast<String, dynamic>();
    } catch (_) {
      return null;
    }
    final messages = body['messages'];
    if (messages is! List || messages.isEmpty || messages.length > 2) return null;
    var text = (body['system'] is String ? body['system'] as String : jsonEncode(body['system'] ?? '')).length;
    var images = 0;
    for (final m in messages) {
      final content = m is Map ? m['content'] : null;
      for (final block in content is List ? content : [content]) {
        if (block is String) {
          text += block.length;
        } else if (block is Map && block['type'] == 'text') {
          text += (block['text'] as String? ?? '').length;
        } else if (block is Map && block['type'] == 'image') {
          images++;
        } else {
          return null; // eszközhívás, dokumentum és más tartalom itt nem kell
        }
      }
    }
    if (text > helperMaxTextChars || images > helperMaxImages) return null;
    final maxTokens = body['max_tokens'];
    final config = body['output_config'];
    final effort = config is Map ? config['effort'] : null;
    return jsonEncode({
      'model': model,
      'max_tokens': maxTokens is int && maxTokens > 0 && maxTokens < maxOutput ? maxTokens : maxOutput,
      'system': ?body['system'],
      'messages': messages,
      if (config is Map) 'output_config': {'effort': effort == 'low' ? 'low' : 'medium', 'format': ?config['format']},
      if (body['fallbacks'] == 'default') 'fallbacks': 'default',
    });
  }

  /// Segéd-hívás (fotófelismerés, formátumjavítás): nem von le elemzést, ezért
  /// szűrjük a kérést és korlátozzuk, hányszor hívható.
  /// „Kérdezz az elemzésről”: napi keret (próbaidőben kevesebb, olcsóbb
  /// modellel), rövid válasz, csak szöveg, eszközök nélkül.
  static const askPerDayPaid = 40;
  static const askPerDayTrial = 10;
  static const askMaxMessages = 13;
  static const askMaxChars = 80000;
  static const askMaxTokens = 1500;

  /// Utánanézéses kérdésnél: több kimeneti token, legfeljebb 3 keresés és 2 megnyitott oldal.
  static const askResearchMaxTokens = 2500;
  static const askMaxSearches = 3;
  static const askMaxFetches = 2;

  /// A kérdés-kérés ellenőrzése: felváltva felhasználó és asszisztens, a
  /// felhasználóé az első és az utolsó, csak szöveg, korlátos hossz. `null`, ha nem jó.
  static ({Object? system, List<Map<String, dynamic>> messages})? checkAskRequest(Map<String, dynamic> body) {
    final messages = body['messages'];
    if (messages is! List || messages.isEmpty || messages.length > askMaxMessages || messages.length.isEven) {
      return null;
    }
    final system = body['system'];
    var chars = 0;
    if (system is String) {
      chars += system.length;
    } else if (system is List) {
      for (final b in system) {
        if (b is! Map || b['type'] != 'text') return null;
        chars += '${b['text']}'.length;
      }
    } else if (system != null) {
      return null;
    }
    final out = <Map<String, dynamic>>[];
    for (var i = 0; i < messages.length; i++) {
      final m = messages[i];
      if (m is! Map || m['role'] != (i.isEven ? 'user' : 'assistant')) return null;
      final content = m['content'];
      if (content is String) {
        chars += content.length;
      } else if (content is List) {
        for (final b in content) {
          if (b is! Map || b['type'] != 'text') return null;
          chars += '${b['text']}'.length;
        }
      } else {
        return null;
      }
      out.add({'role': m['role'], 'content': content});
    }
    if (chars > askMaxChars) return null;
    return (system: system, messages: out);
  }

  Future<Response> _ask(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final raw = await _body(r);
    final req = checkAskRequest(raw);
    if (req == null) return _error(400, 'bad_request');
    final e = store.entitlement(uid);
    if (!quota.hasAccess(e)) return _error(402, 'no_plan');
    // Megosztott válasz (pl. egy cég negyedéves összefoglalója adott nyelven):
    // ha már valaki lekérte, mindenki ugyanazt kapja, kérés és keret nélkül.
    // A kulcs a kérés tartalmát is tartalmazza: egy saját kérdéssel nem írható
    // felül, amit mások ugyanazon a kulcson kapnak.
    final clientKey = sharedCacheKey(raw['shared_cache']);
    final cacheKey = clientKey == null
        ? null
        : '$clientKey#${sha256.convert(utf8.encode(jsonEncode([req.system, req.messages, askResearchTools(raw['tools'])])))}';
    final cached = cacheKey == null ? null : store.sharedAnswer(cacheKey, sharedAnswerKeepFor);
    if (cached != null) {
      telemetry.bump('shared_cache_hit');
      return Response.ok(cached, headers: {'content-type': 'application/json', 'x-whatstock-cache': 'hit'});
    }
    final trial = e.tier == null || e.tier == 'trial';
    final limit = trial ? askPerDayTrial : askPerDayPaid;
    if (store.askCallsSince(uid, store.clock().subtract(const Duration(days: 1))) >= limit) {
      return _error(429, 'ask_limit');
    }
    store.logAskCall(uid);
    // Utánanézés (pl. a „Mit jelent ez?” hírmagyarázat): fizetős csomagban kevés
    // webkeresés és oldalmegnyitás; próbaidőben eszközök nélkül.
    final tools = trial ? null : askResearchTools(raw['tools']);
    final body = jsonEncode({
      'model': trial ? trialModel : anthropicModel,
      'max_tokens': tools == null ? askMaxTokens : askResearchMaxTokens,
      'system': ?req.system,
      'messages': req.messages,
      'output_config': {'effort': 'low'},
      'tools': ?tools,
    });
    var upstream = await _forwardAnthropic(body, null);
    if (tools != null && _rejectedWebFetch(upstream)) upstream = await _forwardAnthropic(withoutWebFetch(body), null);
    // Csak a kutatással (eszközökkel) készült, sikeres válasz kerül a megosztott tárba.
    if (cacheKey != null && tools != null && upstream.statusCode == 200 && _isCompleteAnswer(upstream.body)) {
      store.saveSharedAnswer(cacheKey, upstream.body, keepFor: sharedAnswerKeepFor);
      telemetry.bump('shared_cache_store');
    }
    return Response(upstream.statusCode, body: upstream.body, headers: {'content-type': 'application/json'});
  }

  /// A megosztott válaszok ennyi ideig élnek a szerveren.
  static const sharedAnswerKeepFor = Duration(days: 30);

  /// A kliens megosztott-tár kulcsa, ha szabályos (rövid, csak egyszerű jelek).
  static String? sharedCacheKey(Object? v) =>
      v is String && v.length >= 8 && v.length <= 160 && RegExp(r'^[A-Za-z0-9|_.:-]+$').hasMatch(v) ? v : null;

  /// Teljes, szöveges válasz (nem elutasítás, nem csonka).
  static bool _isCompleteAnswer(String body) {
    try {
      final j = jsonDecode(body) as Map<String, dynamic>;
      final content = (j['content'] as List? ?? const []).whereType<Map>();
      return j['stop_reason'] == 'end_turn' &&
          content.any((b) => b['type'] == 'text' && '${b['text']}'.trim().isNotEmpty);
    } catch (_) {
      return false;
    }
  }

  /// A kérdéshez kért kutató eszközök szűrve: csak webkeresés (legfeljebb
  /// [askMaxSearches]) és oldalmegnyitás (legfeljebb [askMaxFetches], korlátozott
  /// mérettel). `null`, ha nincs ilyen eszköz a kérésben.
  static List<Map<String, dynamic>>? askResearchTools(Object? tools) {
    if (tools is! List) return null;
    int cap(Object? asked, int limit) => asked is int && asked > 0 && asked < limit ? asked : limit;
    final out = <Map<String, dynamic>>[
      for (final t in tools)
        if (t is Map && '${t['type']}'.startsWith('web_search'))
          {'type': t['type'], 'name': 'web_search', 'max_uses': cap(t['max_uses'], askMaxSearches)}
        else if (t is Map && '${t['type']}'.startsWith('web_fetch'))
          {
            'type': t['type'],
            'name': 'web_fetch',
            'max_uses': cap(t['max_uses'], askMaxFetches),
            'max_content_tokens': cap(t['max_content_tokens'], Depth.maxFetchTokens),
          },
    ];
    return out.isEmpty ? null : out;
  }

  Future<Response> _anthropicPassthrough(Request r) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    final raw = await r.readAsString();
    if (raw.length > helperMaxBytes) return _error(413, 'too_large');
    final now = store.clock();
    final e = store.entitlement(uid);
    // Csomag (vagy élő próbaidő, vagy extra elemzés) nélkül nincs segédhívás.
    if (!quota.hasAccess(e)) return _error(402, 'no_plan');
    final trial = e.tier == null || e.tier == 'trial';
    if (store.helperCallsSince(uid, now.subtract(const Duration(hours: 1))) >= helperPerHour ||
        store.helperCallsSince(uid, now.subtract(const Duration(days: 1))) >=
            (trial ? helperPerDayTrial : helperPerDay)) {
      return _error(429, 'rate_limited', 'Too many requests, please try again later.');
    }
    final recentAnalysis = store.hasUsageSince(uid, now.subtract(const Duration(hours: 1)));
    final body = limitHelperRequest(
      raw,
      // Próbaidőben az olcsóbb modell (mint az elemzésnél és a kérdésnél).
      model: trial ? trialModel : anthropicModel,
      maxOutput: recentAnalysis ? helperMaxTokens : helperSmallMaxTokens,
    );
    if (body == null) return _error(400, 'bad_request');
    store.logHelperCall(uid);
    final upstream = await _forwardAnthropic(body, allowedBeta(r.headers['anthropic-beta']));
    return Response(upstream.statusCode, body: upstream.body, headers: {'content-type': 'application/json'});
  }

  /// Az app által használt béta-funkciók; más (pl. drágább) bétát nem engedünk át.
  static const allowedBetas = {'server-side-fallback-2026-07-01'};

  /// A kliens `anthropic-beta` fejlécéből csak az engedélyezettek.
  static String? allowedBeta(String? header) {
    final kept = [
      for (final b in (header ?? '').split(','))
        if (allowedBetas.contains(b.trim())) b.trim(),
    ];
    return kept.isEmpty ? null : kept.join(',');
  }

  Future<http.Response> _forwardAnthropic(String body, String? beta) => _client.post(
    Uri.parse('$anthropicBaseUrl/v1/messages'),
    headers: {
      'content-type': 'application/json',
      'x-api-key': anthropicApiKey,
      'anthropic-version': '2023-06-01',
      'anthropic-beta': ?beta,
    },
    body: body,
  );

  /// Az app által használt Finnhub-végpontok; mást nem engedünk át a szerver kulcsával.
  static const marketPaths = {
    'quote',
    'search',
    'stock/candle',
    'stock/profile2',
    'stock/metric',
    'stock/recommendation',
    'stock/financials-reported',
    'stock/insider-transactions',
    'stock/peers',
    'stock/earnings',
    'company-news',
    'calendar/earnings',
  };

  /// Piaci adat felhasználónként 10 percenként legfeljebb ennyi kérés (a közös
  /// adatkeret védelmére; egy teljes kedvenclista frissítése is bőven belefér).
  final _marketCalls = RateLimiter(600, const Duration(minutes: 10));

  /// Rövid árfolyam-gyorsítótár tickerenként (sok felhasználó ugyanazt kéri).
  final _quotes = <String, ({DateTime at, String body})>{};
  static const quoteCacheFor = Duration(seconds: 30);

  Future<Response> _market(Request r, String path) async {
    final uid = _userId(r);
    if (uid == null) return _error(401, 'unauthorized');
    if (!marketPaths.contains(path)) return _error(404, 'not_found');
    if (!_marketCalls.allow(uid)) return _error(429, 'rate_limited');
    if (path == 'stock/candle' && twelveDataApiKey.isNotEmpty) return _twelveDataCandles(r.url.queryParameters);
    final symbol = (r.url.queryParameters['symbol'] ?? '').trim().toUpperCase();
    final now = store.clock();
    final cached = path == 'quote' ? _quotes[symbol] : null;
    if (cached != null && now.difference(cached.at) < quoteCacheFor) {
      return Response.ok(cached.body, headers: {'content-type': 'application/json'});
    }
    final uri = Uri.parse('$finnhubBaseUrl/$path').replace(queryParameters: r.url.queryParameters);
    final http.Response upstream;
    try {
      upstream = await _client
          .get(uri, headers: {'X-Finnhub-Token': finnhubApiKey})
          .timeout(const Duration(seconds: 15));
    } on TimeoutException {
      return _error(504, 'upstream_timeout');
    }
    var body = upstream.body;
    // A Finnhub ingyenes csomagja csak USA-részvényeket áraz: ha nincs ár (c = 0),
    // a Twelve Data is megpróbálható (a nem USA-tőzsdékhez annak fizetős csomagja kell).
    if (path == 'quote' && twelveDataApiKey.isNotEmpty && !_hasFinnhubPrice(upstream)) {
      final td = await _twelveDataQuote(symbol);
      if (td != null) body = jsonEncode(td);
    }
    if (path == 'quote' && upstream.statusCode == 200 && symbol.isNotEmpty) {
      if (_quotes.length > 5000) _quotes.clear();
      _quotes[symbol] = (at: now, body: body);
    }
    return Response(upstream.statusCode, body: body, headers: {'content-type': 'application/json'});
  }

  static bool _hasFinnhubPrice(http.Response res) {
    if (res.statusCode != 200) return false;
    try {
      final j = jsonDecode(res.body);
      return j is Map && j['c'] is num && (j['c'] as num) > 0;
    } catch (_) {
      return false;
    }
  }

  /// Twelve Data `/quote` Finnhub `/quote` alakban (`c`, `d`, `dp`, `h`, `l`, `o`, `pc`, `t`), vagy `null`.
  Future<Map<String, Object?>?> _twelveDataQuote(String symbol) async {
    if (symbol.isEmpty) return null;
    for (final q in twelveDataSymbols(symbol)) {
      try {
        final res = await _client
            .get(Uri.parse('$twelveDataBaseUrl/quote').replace(queryParameters: {...q, 'apikey': twelveDataApiKey}))
            .timeout(const Duration(seconds: 15));
        final m = finnhubQuoteFromTwelveData(jsonDecode(res.body));
        if (m != null) return m;
      } catch (_) {}
    }
    return null;
  }

  /// A Twelve Data `/quote` válaszából Finnhub-alak; hibás vagy üres válasznál `null`.
  static Map<String, Object?>? finnhubQuoteFromTwelveData(Object? j) {
    if (j is! Map || j['status'] == 'error') return null;
    double? n(String k) => double.tryParse('${j[k] ?? ''}');
    final c = n('close');
    if (c == null || c <= 0) return null;
    final ts = j['timestamp'];
    return {
      'c': c,
      'd': n('change'),
      'dp': n('percent_change'),
      'h': n('high'),
      'l': n('low'),
      'o': n('open'),
      'pc': n('previous_close'),
      't': ts is num ? ts.toInt() : int.tryParse('$ts'),
    };
  }

  /// Napi árfolyamok a Twelve Data `time_series` végpontjáról, Finnhub
  /// `/stock/candle` alakban (`s`, `t`, `o`, `h`, `l`, `c`, `v`). Hiba vagy
  /// ismeretlen szimbólum esetén `{"s":"no_data"}` – a kliens ezt „a grafikon nem
  /// érhető el” üzenetként mutatja.
  Future<Response> _twelveDataCandles(Map<String, String> q) async {
    const json = {'content-type': 'application/json'};
    final symbol = (q['symbol'] ?? '').trim().toUpperCase();
    final from = int.tryParse(q['from'] ?? '');
    final to = int.tryParse(q['to'] ?? '');
    if (symbol.isEmpty || from == null || to == null) return Response.ok('{"s":"no_data"}', headers: json);
    String day(int sec) =>
        DateTime.fromMillisecondsSinceEpoch(sec * 1000, isUtc: true).toIso8601String().substring(0, 10);
    final key = '$symbol|${day(from)}|${day(to)}';
    final cached = _candleCache[key];
    final now = store.clock();
    if (cached != null && now.difference(cached.at) < candleCacheTtl) return Response.ok(cached.body, headers: json);
    try {
      // A Twelve Data más jelölést használ (BRK.B, 1796 + HKEX): a változatokat sorban kipróbáljuk.
      List? values;
      for (final q in twelveDataSymbols(symbol)) {
        final uri = Uri.parse('$twelveDataBaseUrl/time_series').replace(
          queryParameters: {
            ...q,
            'interval': '1day',
            'start_date': day(from),
            'end_date': day(to),
            'order': 'ASC',
            'outputsize': '5000',
            'apikey': twelveDataApiKey,
          },
        );
        final j = jsonDecode((await _client.get(uri)).body);
        final v = j is Map && j['status'] == 'ok' ? j['values'] : null;
        if (v is List && v.isNotEmpty) {
          values = v;
          break;
        }
      }
      if (values == null) return Response.ok('{"s":"no_data"}', headers: json);
      final t = <int>[], o = <num?>[], h = <num?>[], l = <num?>[], c = <num?>[], v = <num?>[];
      for (final row in values.whereType<Map>()) {
        final date = DateTime.tryParse('${row['datetime']}'.substring(0, 10));
        final close = num.tryParse('${row['close']}');
        if (date == null || close == null) continue;
        t.add(DateTime.utc(date.year, date.month, date.day).millisecondsSinceEpoch ~/ 1000);
        o.add(num.tryParse('${row['open']}'));
        h.add(num.tryParse('${row['high']}'));
        l.add(num.tryParse('${row['low']}'));
        c.add(close);
        v.add(num.tryParse('${row['volume']}'));
      }
      if (t.isEmpty) return Response.ok('{"s":"no_data"}', headers: json);
      final body = jsonEncode({'s': 'ok', 't': t, 'o': o, 'h': h, 'l': l, 'c': c, 'v': v});
      if (_candleCache.length > 2000) _candleCache.clear();
      _candleCache[key] = (at: now, body: body);
      return Response.ok(body, headers: json);
    } catch (_) {
      return Response.ok('{"s":"no_data"}', headers: json);
    }
  }

  /// A Finnhub-jelölésű ticker Twelve Data-változatai, próbálási sorrendben:
  /// `BRK-B` → `BRK.B`; tőzsdei végződésnél (`1796.HK`) a szimbólum és a tőzsde külön.
  static List<Map<String, String>> twelveDataSymbols(String symbol) {
    const exchanges = {
      'HK': 'HKEX',
      'L': 'LSE',
      'DE': 'XETR',
      'F': 'FSX',
      'PA': 'Euronext',
      'AS': 'Euronext',
      'BR': 'Euronext',
      'MI': 'MTA',
      'MC': 'BME',
      'SW': 'SIX',
      'TO': 'TSX',
      'V': 'TSXV',
      'T': 'JPX',
      'AX': 'ASX',
      'ST': 'OMX',
      'CO': 'OMXC',
      'HE': 'OMXH',
      'OL': 'OSE',
      'VI': 'VSE',
      'WA': 'GPW',
      'BD': 'BSE',
      'SS': 'SSE',
      'SZ': 'SZSE',
      'KS': 'KRX',
      'NS': 'NSE',
      'BO': 'BSE',
      'SA': 'Bovespa',
      'MX': 'BMV',
    };
    final out = <Map<String, String>>[
      {'symbol': symbol},
    ];
    final dot = symbol.lastIndexOf('.');
    if (dot > 0 && exchanges.containsKey(symbol.substring(dot + 1))) {
      out.add({'symbol': symbol.substring(0, dot), 'exchange': exchanges[symbol.substring(dot + 1)]!});
    } else if (symbol.contains('-')) {
      out.add({'symbol': symbol.replaceAll('-', '.')});
    }
    return out;
  }

  static Future<Map<String, dynamic>> _body(Request r) async {
    final s = await r.readAsString();
    if (s.isEmpty) return const {};
    try {
      return (jsonDecode(s) as Map).cast<String, dynamic>();
    } catch (_) {
      return const {};
    }
  }

  /// A kérésben küldött adat-JSON-ból kiolvassa a tickert a naplóhoz.
  static String? _symbolFrom(String raw) {
    final m = RegExp(r'"symbol":\s*"([A-Za-z0-9.\-]{1,12})"').firstMatch(raw);
    return m?.group(1);
  }
}

/// A kérés törzse túllépte a megengedett méretet (olvasás közben derül ki).
class _TooLarge implements Exception {
  const _TooLarge();
}
