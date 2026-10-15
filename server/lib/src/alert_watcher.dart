import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'db.dart';
import 'mailer.dart';

/// Egy részvény aktuális ára és napi változása (%).
typedef QuoteLookup = Future<({double price, double? changePercent})?> Function(String symbol);

/// Árfolyam-riasztások figyelése a szerveren, az e-mailes fiókok szinkronizált
/// riasztásai alapján: ha egy teljesül, megjelöljük (a készülékek a következő
/// szinkronnál átveszik), és e-mailt küldünk – akkor is, ha az app nincs nyitva.
/// A felhasználó az appban kikapcsolhatja (`email_alerts: false`).
class AlertWatcher {
  AlertWatcher({required this.store, required this.mailer, required this.quote, DateTime Function()? clock})
    : _clock = clock ?? DateTime.now;

  final Store store;
  final Mailer mailer;
  final QuoteLookup quote;
  final DateTime Function() _clock;

  /// Egy körben legfeljebb ennyi részvény árát kérdezzük le (a piaci API kerete miatt).
  static const maxSymbolsPerRound = 200;

  Timer? _timer;
  bool _running = false;

  void start(Duration every) {
    _timer?.cancel();
    _timer = Timer.periodic(every, (_) => unawaited(checkOnce()));
  }

  void stop() => _timer?.cancel();

  static bool _hit(Map a, double price, double? changePercent) {
    final v = a['value'];
    if (v is! num) return false;
    return switch (a['kind']) {
      'above' => price >= v,
      'below' => price <= v,
      'move' => (changePercent ?? 0).abs() >= v,
      _ => false,
    };
  }

  static bool _active(Object? a) => a is Map && a['triggered_at'] == null && a['symbol'] is String;

  /// Egy kör: a teljesült riasztások megjelölése és az e-mailek elküldése.
  /// Visszaadja, hány e-mail ment ki.
  Future<int> checkOnce() async {
    if (_running) return 0;
    _running = true;
    try {
      final accounts = <({String userId, String email, Map<String, dynamic> data})>[];
      final symbols = <String>{};
      for (final a in store.syncedAccounts()) {
        try {
          final data = (jsonDecode(a.data) as Map).cast<String, dynamic>();
          if (data['email_alerts'] == false) continue;
          final alerts = (data['alerts'] as List?)?.where(_active).toList() ?? const [];
          if (alerts.isEmpty) continue;
          accounts.add((userId: a.userId, email: a.email, data: data));
          for (final al in alerts) {
            symbols.add('${(al as Map)['symbol']}'.toUpperCase());
          }
        } catch (_) {
          // Sérült csomag: kihagyjuk.
        }
      }
      final quotes = <String, ({double price, double? changePercent})>{};
      for (final s in symbols.take(maxSymbolsPerRound)) {
        try {
          final q = await quote(s);
          if (q != null && q.price > 0) quotes[s] = q;
        } catch (_) {}
      }
      var sent = 0;
      final now = _clock().toUtc();
      for (final acc in accounts) {
        final hits = <Map>[];
        for (final al in (acc.data['alerts'] as List)) {
          if (!_active(al)) continue;
          final q = quotes['${(al as Map)['symbol']}'.toUpperCase()];
          if (q == null || !_hit(al, q.price, q.changePercent)) continue;
          al['triggered_at'] = now.toIso8601String();
          al['triggered_price'] = q.price;
          al['triggered_change'] = q.changePercent;
          hits.add(al);
        }
        if (hits.isEmpty) continue;
        store.saveSyncData(acc.userId, jsonEncode(acc.data));
        try {
          final (subject, text) = alertEmail(hits, hu: acc.data['lang'] == 'hu');
          await mailer.send(acc.email, subject: subject, text: text);
          sent++;
        } catch (e) {
          stderr.writeln('Riasztás-e-mail nem ment ki: $e');
        }
      }
      return sent;
    } finally {
      _running = false;
    }
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
