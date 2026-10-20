import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/// Egy devizaárfolyam két pénznem között.
class FxRate {
  const FxRate({required this.from, required this.to, required this.rate, required this.date});

  final String from;
  final String to;
  final double rate;
  final DateTime date;

  double convert(double amount) => amount * rate;
}

/// Devizaárfolyamok. Az ECB napi referencia-árfolyamait használjuk a
/// Frankfurter nyílt API-n keresztül (kulcs nélkül, https://www.frankfurter.app).
/// Az eredmény 12 óráig memóriában marad.
class FxService extends ChangeNotifier {
  FxService({http.Client? client, this.baseUrl = 'https://api.frankfurter.app'}) : _client = client ?? http.Client();

  final http.Client _client;
  final String baseUrl;

  /// Az ECB által jegyzett pénznemek.
  static const List<String> supportedCurrencies = [
    'EUR',
    'USD',
    'GBP',
    'CHF',
    'HUF',
    'PLN',
    'CZK',
    'RON',
    'BGN',
    'SEK',
    'NOK',
    'DKK',
    'ISK',
    'TRY',
    'JPY',
    'CNY',
    'KRW',
    'HKD',
    'SGD',
    'INR',
    'IDR',
    'MYR',
    'PHP',
    'THB',
    'ILS',
    'AUD',
    'NZD',
    'CAD',
    'MXN',
    'BRL',
    'ZAR',
  ];

  static bool isSupported(String? code) => code != null && supportedCurrencies.contains(code.toUpperCase());

  final Map<String, FxRate> _cache = {};
  final Map<String, Future<FxRate?>> _inFlight = {};
  static const _ttl = Duration(hours: 12);

  /// Árfolyam [from] → [to]; `null`, ha azonos pénznem, nem támogatott, vagy
  /// nem érhető el (ilyenkor a felület egyszerűen nem mutat átváltást).
  Future<FxRate?> rate(String from, String to) {
    final f = from.toUpperCase(), t = to.toUpperCase();
    if (f == t || !isSupported(f) || !isSupported(t)) return Future.value(null);
    final key = '$f>$t';
    final cached = _cache[key];
    if (cached != null && DateTime.now().difference(cached.date) < _ttl + const Duration(days: 3)) {
      return Future.value(cached);
    }
    return _inFlight.putIfAbsent(key, () async {
      try {
        final res = await _client
            .get(Uri.parse('$baseUrl/latest').replace(queryParameters: {'from': f, 'to': t}))
            .timeout(const Duration(seconds: 15));
        if (res.statusCode != 200) return null;
        final parsed = parseLatest(jsonDecode(res.body) as Map<String, dynamic>, f, t);
        if (parsed != null) {
          _cache[key] = parsed;
          notifyListeners();
        }
        return parsed;
      } catch (e) {
        debugPrint('Árfolyam lekérése nem sikerült ($key): $e');
        return null;
      } finally {
        _inFlight.remove(key);
      }
    });
  }

  /// A „saját” devizapár: a dollár a megjelenítési pénznemben (USD/HUF); ha az
  /// dollár vagy nem jegyzett, akkor EUR/USD.
  static (String, String) homePair(String? displayCurrency) {
    final c = displayCurrency?.toUpperCase();
    return c == null || c == 'USD' || !isSupported(c) ? ('EUR', 'USD') : ('USD', c);
  }

  final Map<String, (DateTime, List<FxRate>)> _recent = {};

  /// Az utolsó napok árfolyamai (időrendben, legfeljebb [days] napra vissza),
  /// a napi változáshoz; egy óráig memóriában marad. Hiba esetén üres lista.
  Future<List<FxRate>> recent(String from, String to, {int days = 8}) async {
    final f = from.toUpperCase(), t = to.toUpperCase();
    if (f == t || !isSupported(f) || !isSupported(t)) return const [];
    final key = '$f>$t';
    final cached = _recent[key];
    if (cached != null && DateTime.now().difference(cached.$1) < const Duration(hours: 1)) return cached.$2;
    try {
      final end = DateTime.now().toUtc();
      final start = end.subtract(Duration(days: days));
      String d(DateTime x) => x.toIso8601String().substring(0, 10);
      final res = await _client
          .get(Uri.parse('$baseUrl/${d(start)}..${d(end)}').replace(queryParameters: {'from': f, 'to': t}))
          .timeout(const Duration(seconds: 15));
      if (res.statusCode != 200) return const [];
      final series = parseSeries(jsonDecode(res.body) as Map<String, dynamic>, f, t);
      _recent[key] = (DateTime.now(), series);
      return series;
    } catch (e) {
      debugPrint('Árfolyam-sorozat lekérése nem sikerült ($key): $e');
      return const [];
    }
  }

  /// A Frankfurter időszakos válasza: `{"rates":{"2026-10-13":{"HUF":355.2},…}}`,
  /// időrendben. Ha a válasz egynapos (`"rates":{"HUF":…}`), egy elem.
  static List<FxRate> parseSeries(Map<String, dynamic> j, String from, String to) {
    final rates = (j['rates'] as Map?)?.cast<String, dynamic>() ?? const {};
    final out = <FxRate>[];
    for (final e in rates.entries) {
      final day = DateTime.tryParse(e.key);
      final v = e.value is Map ? (e.value as Map)[to] : null;
      if (day != null && v is num) out.add(FxRate(from: from, to: to, rate: v.toDouble(), date: day));
    }
    if (out.isEmpty) {
      final single = parseLatest(j, from, to);
      if (single != null) out.add(single);
    }
    out.sort((a, b) => a.date.compareTo(b.date));
    return out;
  }

  /// Azonnali (már gyorsítótárazott) árfolyam, szinkron megjelenítéshez.
  FxRate? cachedRate(String from, String to) => _cache['${from.toUpperCase()}>${to.toUpperCase()}'];

  /// A Frankfurter `/latest` válasza: `{"amount":1,"base":"USD","date":"2026-10-09","rates":{"HUF":355.2}}`.
  static FxRate? parseLatest(Map<String, dynamic> j, String from, String to) {
    final rates = (j['rates'] as Map?)?.cast<String, dynamic>();
    final v = rates?[to];
    if (v is! num) return null;
    return FxRate(
      from: from,
      to: to,
      rate: v.toDouble(),
      date: DateTime.tryParse(j['date'] as String? ?? '') ?? DateTime.now(),
    );
  }
}

/// Alapértelmezett megjelenítési pénznem a rendszer nyelve / országa alapján.
String defaultCurrencyFor({String? countryCode, String? languageCode}) {
  const byCountry = {
    'HU': 'HUF',
    'US': 'USD',
    'GB': 'GBP',
    'CH': 'CHF',
    'PL': 'PLN',
    'CZ': 'CZK',
    'RO': 'RON',
    'BG': 'BGN',
    'SE': 'SEK',
    'NO': 'NOK',
    'DK': 'DKK',
    'IS': 'ISK',
    'TR': 'TRY',
    'JP': 'JPY',
    'CN': 'CNY',
    'KR': 'KRW',
    'HK': 'HKD',
    'SG': 'SGD',
    'IN': 'INR',
    'ID': 'IDR',
    'MY': 'MYR',
    'PH': 'PHP',
    'TH': 'THB',
    'IL': 'ILS',
    'AU': 'AUD',
    'NZ': 'NZD',
    'CA': 'CAD',
    'MX': 'MXN',
    'BR': 'BRL',
    'ZA': 'ZAR',
  };
  const byLanguage = {
    'hu': 'HUF',
    'en': 'USD',
    'pl': 'PLN',
    'cs': 'CZK',
    'ro': 'RON',
    'bg': 'BGN',
    'sv': 'SEK',
    'nb': 'NOK',
    'da': 'DKK',
    'tr': 'TRY',
    'ja': 'JPY',
    'zh': 'CNY',
    'ko': 'KRW',
    'hi': 'INR',
    'bn': 'INR',
    'mr': 'INR',
    'te': 'INR',
    'ta': 'INR',
    'ur': 'INR',
    'id': 'IDR',
    'jv': 'IDR',
    'fil': 'PHP',
    'th': 'THB',
    'de': 'EUR',
    'fr': 'EUR',
    'it': 'EUR',
    'es': 'EUR',
    'pt': 'EUR',
    'nl': 'EUR',
    'el': 'EUR',
    'fi': 'EUR',
    'sk': 'EUR',
    'lt': 'EUR',
    'ca': 'EUR',
    'hr': 'EUR',
    'sq': 'EUR',
    'sr': 'EUR',
    'uk': 'EUR',
    'ru': 'USD',
    'ar': 'USD',
    'fa': 'USD',
    'vi': 'USD',
    'ha': 'USD',
    'sw': 'USD',
    'ms': 'MYR',
    'he': 'ILS',
    'pa': 'INR',
    'gu': 'INR',
    'kn': 'INR',
    'ml': 'INR',
    'or': 'INR',
    'as': 'INR',
    'mai': 'INR',
    'bho': 'INR',
    'su': 'IDR',
    'ceb': 'PHP',
    'ilo': 'PHP',
    'hil': 'PHP',
    'af': 'ZAR',
    'zu': 'ZAR',
    'xh': 'ZAR',
    'nso': 'ZAR',
    'tn': 'ZAR',
    'st': 'ZAR',
    'ts': 'ZAR',
    'sl': 'EUR',
    'lv': 'EUR',
    'gl': 'EUR',
    'bs': 'EUR',
    'mk': 'EUR',
  };
  final c = countryCode?.toUpperCase();
  if (c != null && byCountry.containsKey(c)) return byCountry[c]!;
  return byLanguage[languageCode?.toLowerCase()] ?? 'USD';
}
