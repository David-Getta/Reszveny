import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'db.dart';
import 'mailer.dart';

/// Egy részvény aktuális ára, napi változása (%) és az utolsó kötés ideje.
typedef Quote = ({double price, double? changePercent, DateTime? time});
typedef QuoteLookup = Future<Quote?> Function(String symbol);

/// Árfolyam-riasztások figyelése a szerveren, az e-mailes fiókok szinkronizált
/// riasztásai alapján: ha egy teljesül, megjelöljük (a készülékek a következő
/// szinkronnál átveszik), és e-mailt küldünk – akkor is, ha az app nincs nyitva.
/// A felhasználó az appban kikapcsolhatja (`email_alerts: false`).
class AlertWatcher {
  AlertWatcher({
    required this.store,
    required this.mailer,
    required this.quote,
    this.quotePause = const Duration(seconds: 1),
    this.sendPause = const Duration(milliseconds: 600),
    this.unsubscribeBase,
    DateTime Function()? clock,
  }) : _clock = clock ?? DateTime.now;

  final Store store;
  final Mailer mailer;
  final QuoteLookup quote;
  final DateTime Function() _clock;

  /// Szünet két e-mail között: a levelező másodpercenkénti kerete (Resend: 2/s) egy
  /// nagy piaci esésnél se teljen be.
  final Duration sendPause;

  /// A leiratkozó linkek alapcíme (`…/u`); nélküle nincs `List-Unsubscribe`.
  final String? unsubscribeBase;

  /// Egy sorban álló levél ennyi sikertelen próba vagy ennyi idő után elmarad.
  static const maxMailAttempts = 5;
  static const mailExpiry = Duration(days: 1);

  /// Egy körben legfeljebb ennyi részvény árát kérdezzük le (a piaci API kerete miatt);
  /// ha több van, a következő kör a folytatással kezd (körbeforogva mind sorra kerül).
  static const maxSymbolsPerRound = 200;

  /// Szünet két árlekérés között: a piaci API percenkénti keretét (60/perc) a
  /// riasztásfigyelő egymaga ne merítse ki.
  final Duration quotePause;

  /// Hol tart a körbeforgás (a rendezett tickerlistában).
  int _cursor = 0;

  Timer? _timer;
  bool _running = false;

  void start(Duration every) {
    _timer?.cancel();
    // Egy kör hibája ne állítsa le a szervert (kezeletlen aszinkron hiba).
    _timer = Timer.periodic(
      every,
      (_) => unawaited(
        checkOnce().catchError((Object e) {
          stderr.writeln('Riasztásfigyelés hiba: $e');
          return 0;
        }),
      ),
    );
  }

  void stop() => _timer?.cancel();

  static bool _hit(Map a, Quote q) {
    final v = a['value'];
    if (v is! num) return false;
    final price = q.price;
    // Csak az élesítés (létrehozás, szerkesztés) utáni kötés számít: hétvégén és nyitás
    // előtt még az előző nap ára és mozgása látszik (ahogy az appban is).
    final armed = DateTime.tryParse('${a['edited'] ?? a['created_at'] ?? ''}');
    if (q.time != null && armed != null && !q.time!.isAfter(armed)) return false;
    return switch (a['kind']) {
      'above' => price >= v,
      'below' => price <= v,
      'move' => (q.changePercent ?? 0).abs() >= v,
      // Követő stop: a csúcsot a hívó előbb frissíti ([_raisePeak]).
      'trailing' => a['peak'] is num && price <= (a['peak'] as num) * (1 - v / 100),
      _ => false,
    };
  }

  /// Követő stop: a riasztás óta látott legmagasabb ár feljegyzése. Igaz, ha változott.
  static bool _raisePeak(Map a, double price) {
    if (a['kind'] != 'trailing') return false;
    final peak = a['peak'];
    if (peak is num && peak >= price) return false;
    a['peak'] = price;
    return true;
  }

  static bool _active(Object? a) => a is Map && a['triggered_at'] == null && a['symbol'] is String;

  /// Egy kör: a teljesült riasztások megjelölése és az e-mailek elküldése.
  /// Visszaadja, hány e-mail ment ki.
  Future<int> checkOnce() async {
    if (_running) return 0;
    _running = true;
    try {
      final accounts = <({String userId, String email})>[];
      final symbols = <String>{};
      for (final a in store.syncedAccounts()) {
        try {
          final data = (jsonDecode(a.data) as Map).cast<String, dynamic>();
          if (data['email_alerts'] == false) continue;
          final alerts = (data['alerts'] as List?)?.where(_active).toList() ?? const [];
          if (alerts.isEmpty) continue;
          accounts.add((userId: a.userId, email: a.email));
          for (final al in alerts) {
            symbols.add('${(al as Map)['symbol']}'.toUpperCase());
          }
        } catch (_) {
          // Sérült csomag: kihagyjuk.
        }
      }
      final quotes = <String, Quote>{};
      final all = symbols.toList()..sort();
      final batch = all.length <= maxSymbolsPerRound
          ? all
          : [for (var i = 0; i < maxSymbolsPerRound; i++) all[(_cursor + i) % all.length]];
      if (all.length > maxSymbolsPerRound) _cursor = (_cursor + maxSymbolsPerRound) % all.length;
      for (final (i, s) in batch.indexed) {
        if (i > 0 && quotePause > Duration.zero) await Future<void>.delayed(quotePause);
        try {
          final q = await quote(s);
          if (q != null && q.price > 0) quotes[s] = q;
        } catch (_) {}
      }
      final now = _clock().toUtc();
      for (final acc in accounts) {
        // Egy fiók hibás csomagja nem akasztja meg a többiekét.
        try {
          _mark(acc.userId, quotes, now);
        } catch (e) {
          stderr.writeln('Riasztások jelölése nem sikerült (${acc.userId}): $e');
        }
      }
      return await _sendQueued();
    } finally {
      _running = false;
    }
  }

  /// A teljesült riasztások jelölése a fiók friss csomagjában, és a levél sorba állítása.
  /// Az árak lekérése alatt egy készülék közben feltölthetett: a jelölés a friss csomagon
  /// fut, és a beolvasás és a mentés között nincs várakozás (az SQLite-hívások szinkronok),
  /// így egy közbeni feltöltés sem vész el.
  void _mark(String userId, Map<String, Quote> quotes, DateTime now) {
    final fresh = store.syncData(userId);
    if (fresh == null) return;
    final Object? decoded;
    try {
      decoded = jsonDecode(fresh.data);
    } catch (_) {
      return;
    }
    if (decoded is! Map) return;
    final data = decoded.cast<String, dynamic>();
    if (data['email_alerts'] == false) return;
    final list = data['alerts'];
    if (list is! List) return;
    final hits = <Map>[];
    var peaks = false;
    for (final al in list) {
      if (!_active(al)) continue;
      final q = quotes['${(al as Map)['symbol']}'.toUpperCase()];
      if (q == null) continue;
      if (_raisePeak(al, q.price)) peaks = true;
      if (!_hit(al, q)) continue;
      al['triggered_at'] = now.toIso8601String();
      al['triggered_price'] = q.price;
      al['triggered_change'] = q.changePercent;
      hits.add(al);
    }
    // Csak új csúcs: elmentjük, e-mail nélkül.
    if (hits.isEmpty && !peaks) return;
    store.saveSyncData(userId, jsonEncode(data));
    if (hits.isEmpty) return;
    final (subject, text) = alertEmail(hits, hu: data['lang'] == 'hu');
    store.enqueueAlertMail(userId, subject: subject, body: text);
  }

  /// A sorban álló levelek küldése (az előző körök sikertelenjei is); sikeres küldés
  /// után törlődnek, hiba esetén a következő kör újra próbálja. Az elküldöttek száma.
  Future<int> _sendQueued() async {
    var sent = 0;
    // A sor időbélyegei az adatbázis órájával készülnek.
    final now = store.clock().toUtc();
    for (final (i, m) in store.pendingAlertMails().indexed) {
      final email = store.emailOf(m.userId);
      if (email == null || m.attempts >= maxMailAttempts || now.difference(m.createdAt) > mailExpiry) {
        store.deleteAlertMail(m.id);
        continue;
      }
      if (i > 0 && sendPause > Duration.zero) await Future<void>.delayed(sendPause);
      final unsubscribe = unsubscribeBase == null
          ? null
          : '$unsubscribeBase/${store.unsubscribeToken(m.userId)}?kind=alerts';
      try {
        await mailer.send(
          email,
          subject: m.subject,
          text: unsubscribe == null ? m.body : '${m.body}\n$unsubscribe\n',
          headers: unsubscribe == null
              ? null
              : {'List-Unsubscribe': '<$unsubscribe>', 'List-Unsubscribe-Post': 'List-Unsubscribe=One-Click'},
        );
        store.deleteAlertMail(m.id);
        sent++;
      } catch (e) {
        store.failedAlertMail(m.id);
        stderr.writeln('Riasztás-e-mail nem ment ki (újrapróbáljuk): $e');
      }
    }
    return sent;
  }

  static String _n(Object? v) {
    if (v is! num) return '$v';
    final d = v.toDouble();
    return d == d.roundToDouble() ? d.toStringAsFixed(0) : d.toStringAsFixed(d.abs() < 1 ? 4 : 2);
  }

  /// Az e-mail tárgya és szövege (magyarul vagy angolul).
  static (String, String) alertEmail(List<Map> hits, {required bool hu}) {
    String line(Map a) {
      final s = a['symbol'], ccy = a['currency'] == null ? '' : ' ${a['currency']}';
      final price = '${_n(a['triggered_price'])}$ccy';
      final change = a['triggered_change'] is num
          ? '${(a['triggered_change'] as num) > 0 ? '+' : ''}${_n(a['triggered_change'])}%'
          : '';
      return switch ((a['kind'], hu)) {
        ('above', true) => '$s: $price – a ${_n(a['value'])}$ccy szint fölé ment.',
        ('below', true) => '$s: $price – a ${_n(a['value'])}$ccy szint alá esett.',
        ('move', true) => '$s: $change ma (a riasztás ${_n(a['value'])}% mozgásra szólt), ár: $price.',
        ('trailing', true) => '$s: $price – ${_n(a['value'])}%-ot esett a ${_n(a['peak'])}$ccy csúcsról.',
        ('trailing', false) => '$s: $price – fell ${_n(a['value'])}% from its ${_n(a['peak'])}$ccy peak.',
        ('above', false) => '$s: $price – rose above ${_n(a['value'])}$ccy.',
        ('below', false) => '$s: $price – fell below ${_n(a['value'])}$ccy.',
        (_, true) => '$s: $price.',
        _ => '$s: $change today (your alert was set for a ${_n(a['value'])}% move), price: $price.',
      };
    }

    final subject = hits.length == 1
        ? (hu ? 'WhatStock riasztás: ${line(hits.first).split(':').first}' : 'WhatStock alert: ${hits.first['symbol']}')
        : (hu ? 'WhatStock: ${hits.length} riasztás teljesült' : 'WhatStock: ${hits.length} alerts triggered');
    final body = StringBuffer()
      ..writeln(hu ? 'Teljesült árfolyam-riasztás:' : 'Price alert triggered:')
      ..writeln();
    for (final h in hits) {
      body.writeln(line(h));
    }
    body
      ..writeln()
      ..writeln(hu ? 'Nyisd meg a WhatStockot a részletekért.' : 'Open WhatStock for the details.')
      ..writeln(
        hu
            ? 'Az e-mail értesítést az appban, a Riasztások oldalon kapcsolhatod ki. Ez nem befektetési tanács.'
            : 'You can turn off e-mail alerts in the app, on the Price alerts page. This is not investment advice.',
      );
    return (subject, body.toString());
  }
}
