import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/config/app_config.dart';
import '../../core/errors.dart';
import '../../core/models/analysis_extras.dart';
import '../../core/models/stock_quote.dart';
import '../analysis/claude_stock_analyst.dart';
import '../events/events_service.dart';
import '../fx/fx_service.dart';
import '../market_data/market_data_provider.dart';
import 'watch_news.dart';
import '../../core/util/dates.dart';

/// Egy elkészült napi összefoglaló.
class Brief {
  const Brief({required this.text, required this.at, required this.language});

  final String text;
  final DateTime at;
  final String language;

  Map<String, dynamic> toJson() => {'text': text, 'at': at.toIso8601String(), 'language': language};

  static Brief? fromJson(Object? j) {
    if (j is! Map || j['text'] is! String) return null;
    final at = DateTime.tryParse('${j['at']}');
    if (at == null) return null;
    return Brief(text: j['text'] as String, at: at, language: '${j['language'] ?? ''}');
  }
}

/// „A nap a részvényeiddel”: rövid AI-összefoglaló arról, hogyan mozogtak ma a
/// figyelt részvények (portfólió és kedvencek), és mit mondanak róluk a friss
/// hírek. A „Kérdezz” végponton megy (a napi kérdéskeretből, elemzést nem
/// fogyaszt); a legutóbbi összefoglaló a készüléken marad.
class DailyBrief extends ChangeNotifier {
  DailyBrief({
    required this.config,
    required this.marketData,
    required this.news,
    http.Client? client,
    DateTime Function()? clock,
  }) : _client = client ?? http.Client(),
       _clock = clock ?? DateTime.now;

  final AppConfig config;
  final MarketDataProvider marketData;
  final WatchNewsService news;

  /// A közelgő események (gyorsjelentések), ha vannak: a mai/holnapi jelentés
  /// és a friss eredmény is bekerül az összefoglalóba.
  List<UpcomingEvent> Function()? upcoming;

  /// A saját devizapár utolsó napjai (USD a megjelenítési pénznemben), ha van:
  /// a napi elmozdulás bekerül az adatok közé.
  Future<List<FxRate>> Function()? fx;

  /// Ennyi napon belüli jelentés kerül szóba.
  static const earningsWithinDays = 7;

  /// Ennyi napja jelentett cég eredménye kerül az adatok közé.
  static const reportedWithinDays = 2;
  final http.Client _client;
  final DateTime Function() _clock;

  static const _key = 'daily_brief';

  /// Legfeljebb ennyi részvény és részvényenként ennyi hír kerül a kérésbe.
  static const maxSymbols = 10;
  static const headlinesPerSymbol = 3;

  Brief? _last;
  bool _busy = false;
  bool _loaded = false;

  Brief? get last => _last;
  bool get busy => _busy;

  /// Mai-e a legutóbbi összefoglaló (a felület ilyenkor „Frissítés”-t kínál).
  bool get isToday {
    final l = _last;
    if (l == null) return false;
    final n = _clock();
    return l.at.year == n.year && l.at.month == n.month && l.at.day == n.day;
  }

  Future<void> load() async {
    if (_loaded) return;
    _loaded = true;
    try {
      final raw = (await SharedPreferences.getInstance()).getString(_key);
      _last = raw == null ? null : Brief.fromJson(jsonDecode(raw));
      notifyListeners();
    } catch (_) {}
  }

  static Future<void> clearSaved() async {
    try {
      await (await SharedPreferences.getInstance()).remove(_key);
    } catch (_) {}
  }

  static const systemPrompt = '''
You write a short "today with your stocks" brief for a private investor. The data lists the stocks they hold or follow, today's price change of each, and the latest headlines about them.

Rules:
- Write in the requested language, the way a native financial journalist would brief a friend: plain words, no jargon.
- 90-160 words. Start with one sentence on the overall picture, then "- " bullets for the notable movers (biggest absolute changes first, at most 5).
- Explain a move only with what the headlines support; if no headline explains it, say the reason is not clear from the news. Never invent news, numbers or dates.
- If "home_currency" is given and its daily move is at least 0.3%, add one clause about it in the opening sentence (for example that the forint weakened 0.5% against the dollar), because it changes what foreign holdings are worth in the reader's currency; otherwise leave it out.
- A stock with "reported" data has just published quarterly results: say in its bullet whether earnings per share beat or missed expectations, with the two numbers. A stock with "reports_in_days" reports soon: mention the day briefly (0 = today, 1 = tomorrow). Mention other upcoming events only if a headline does.
- Do not tell the reader to buy or sell; you do not know their situation.
- Plain text only: no headings, tables or Markdown emphasis.''';

  /// A kérés törzse: a részvények napi változása, friss hírei, és ha van, a
  /// közeli gyorsjelentés napja vagy a friss eredmény, JSON-ban.
  static Map<String, dynamic> requestBody({
    required List<BriefStock> stocks,
    required String language,
    required DateTime today,
    BriefFx? homeCurrency,
    String model = '',
  }) => {
    'model': model,
    'max_tokens': 1500,
    'system': [
      {'type': 'text', 'text': systemPrompt},
    ],
    'messages': [
      {
        'role': 'user',
        'content':
            'Language: $language\nToday: ${today.toIso8601String().substring(0, 10)}\n'
            '${homeCurrency == null ? '' : 'Home currency (JSON): ${jsonEncode({'pair': homeCurrency.pair, 'rate': homeCurrency.rate, if (homeCurrency.changePercent != null) 'change_today_pct': double.parse(homeCurrency.changePercent!.toStringAsFixed(2))})}\n'}'
            'Stocks (JSON): ${jsonEncode([
              for (final s in stocks) {
                  'symbol': s.symbol,
                  if (s.changePercent != null) 'change_today_pct': double.parse(s.changePercent!.toStringAsFixed(2)),
                  if (s.price != null) 'price': s.price,
                  'currency': ?s.currency,
                  'headlines': s.headlines,
                  if (s.reportsInDays != null) 'reports_in_days': s.reportsInDays,
                  if (s.reported case final r? when r.actual != null && r.estimate != null) 'reported': {'eps': r.actual, 'expected_eps': r.estimate, 'beat': r.beat},
                },
            ])}',
      },
    ],
  };

  /// Új összefoglaló a [symbols] részvényekről (a figyelt lista elejéről).
  Future<Brief> generate({required List<String> symbols, required String language}) async {
    if (_busy) return _last ?? (throw const AnalysisException(AppErrorCode.aiBadResponse));
    if (!config.hasAnthropicKey) throw const AnalysisException(AppErrorCode.aiNotConfigured);
    _busy = true;
    notifyListeners();
    try {
      await news.refresh();
      final picked = symbols.take(maxSymbols).toList();
      final quotes = await Future.wait([
        for (final s in picked) marketData.quote(s).then<StockQuote?>((q) => q, onError: (Object _) => null),
      ]);
      final today = _clock();
      final day = DateTime(today.year, today.month, today.day);
      final stocks = <BriefStock>[];
      for (final (i, s) in picked.indexed) {
        // Közeli gyorsjelentés: hány nap múlva; ma vagy az elmúlt napokban: a friss eredmény.
        final e = (upcoming?.call() ?? const <UpcomingEvent>[])
            .where((e) => e.symbol == s && e.kind == UpcomingEventKind.earnings)
            .firstOrNull;
        final inDays = e == null ? null : calendarDaysBetween(day, e.date);
        EarningsSurprise? reported;
        if (inDays != null && inDays <= 0 && inDays >= -reportedWithinDays) {
          try {
            reported = (await marketData.earnings(s)).history
                .where((h) => h.actual != null && h.estimate != null && day.difference(h.period).inDays <= 120)
                .firstOrNull;
          } catch (_) {
            reported = null;
          }
        }
        stocks.add((
          symbol: s,
          changePercent: quotes[i]?.changePercent,
          price: quotes[i]?.price,
          currency: null as String?,
          headlines: [for (final n in news.news.where((n) => n.symbol == s).take(headlinesPerSymbol)) n.item.headline],
          reportsInDays: inDays != null && inDays >= 0 && inDays <= earningsWithinDays ? inDays : null,
          reported: reported,
        ));
      }
      BriefFx? home;
      try {
        final rates = await fx?.call() ?? const <FxRate>[];
        if (rates.isNotEmpty) {
          final last = rates.last;
          final prev = rates.length > 1 ? rates[rates.length - 2] : null;
          home = (
            pair: '${last.from}/${last.to}',
            rate: last.rate,
            changePercent: prev == null ? null : (last.rate / prev.rate - 1) * 100,
          );
        }
      } catch (_) {
        home = null;
      }
      final body = requestBody(
        stocks: stocks,
        language: language,
        today: _clock(),
        homeCurrency: home,
        model: config.anthropicModel,
      );
      final text = await askText(config, _client, body);
      final brief = Brief(text: text, at: _clock(), language: language);
      _last = brief;
      try {
        await (await SharedPreferences.getInstance()).setString(_key, jsonEncode(brief.toJson()));
      } catch (_) {}
      return brief;
    } finally {
      _busy = false;
      notifyListeners();
    }
  }
}

/// A saját devizapár a napi összefoglalóhoz (pl. USD/HUF, 361,2, +0,3%).
typedef BriefFx = ({String pair, double rate, double? changePercent});

/// Egy részvény adatai a napi összefoglalóhoz.
typedef BriefStock = ({
  String symbol,
  double? changePercent,
  double? price,
  String? currency,
  List<String> headlines,
  int? reportsInDays,
  EarningsSurprise? reported,
});

/// Rövid szöveges válasz a „Kérdezz” végponton (a napi kérdéskeretből); a hibák
/// az elemzés hibakódjaival jönnek. Az összefoglaló és a hírmagyarázat is ezt használja.
Future<String> askText(AppConfig config, http.Client client, Map<String, dynamic> body) async =>
    (await askWithSources(config, client, body)).text;

/// Egy forrás, amire a válasz hivatkozik (webkeresés vagy megnyitott oldal).
typedef AskSource = ({String title, String url});

/// A kérés `shared_cache` kulcsa: a szerver ezen tárolja a kutatással készült
/// választ, és a többi felhasználónak ugyanazt adja (kérés és keret nélkül).
/// Csak egyszerű jelek lehetnek benne (`|`, betűk, számok, `_.:-`).
const sharedCacheField = 'shared_cache';

/// Egy tetszőleges szöveg (pl. URL) rövid, állandó lenyomata a megosztott
/// kulcsba: két 32 bites FNV-1a (eltérő kezdőértékkel), 16 hexa jegy. A szorzás
/// 16 bites darabokban megy, hogy a weben (53 bites számok) is ugyanaz jöjjön ki.
String stableDigest(String s) {
  final bytes = utf8.encode(s);
  String fnv(int seed) {
    var h = seed;
    for (final b in bytes) {
      final x = h ^ b;
      h = ((x & 0xffff) * 0x01000193 + ((((x >> 16) & 0xffff) * 0x01000193) & 0xffff) << 16) & 0xffffffff;
    }
    return h.toRadixString(16).padLeft(8, '0');
  }

  return fnv(0x811c9dc5) + fnv(0x811c9dc5 ^ 0x5bd1e995);
}

/// Mint az [askText], de a webkeresés idézett forrásait is visszaadja (címmel és
/// URL-lel, ismétlés nélkül, legfeljebb [maxSources]). Ha a válasz nem idéz, a
/// keresési találatok elejéből választ.
Future<({String text, List<AskSource> sources})> askWithSources(
  AppConfig config,
  http.Client client,
  Map<String, dynamic> body, {
  int maxSources = 4,
}) async {
  final http.Response res;
  // A megosztott-tár kulcsot csak a saját szerver érti; közvetlen hívásnál kimarad.
  final sent = config.hasBackend
      ? body
      : {
          for (final e in body.entries)
            if (e.key != sharedCacheField) e.key: e.value,
        };
  try {
    res = await client
        .post(
          Uri.parse(config.askEndpoint),
          headers: {
            'content-type': 'application/json',
            if (config.anthropicApiKey.isNotEmpty) 'x-api-key': config.anthropicApiKey,
            'anthropic-version': ClaudeStockAnalyst.anthropicVersion,
          },
          body: jsonEncode(sent),
        )
        .timeout(const Duration(minutes: 2));
  } on Exception catch (e) {
    throw AnalysisException(AppErrorCode.aiUnreachable, cause: e);
  }
  if (res.statusCode == 429 && res.body.contains('ask_limit')) {
    throw const AnalysisException(AppErrorCode.askLimit);
  }
  if (res.statusCode == 402) throw AnalysisException(ClaudeStockAnalyst.quotaErrorFor(res.body), cause: res.body);
  if (res.statusCode != 200) {
    throw AnalysisException(AppErrorCode.aiHttp, detail: '${res.statusCode}', cause: res.body);
  }
  final String text;
  final sources = <AskSource>[];
  try {
    final j = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
    if (j['stop_reason'] == 'refusal') throw const AnalysisException(AppErrorCode.aiRefused);
    final content = (j['content'] as List? ?? const []).whereType<Map>().toList();
    text = [
      for (final b in content)
        if (b['type'] == 'text') b['text'] as String? ?? '',
    ].join().trim();
    void add(Object? url, Object? title) {
      if (url is! String || !url.startsWith('http') || sources.length >= maxSources) return;
      if (sources.any((s) => s.url == url)) return;
      final t = title is String && title.trim().isNotEmpty ? title.trim() : (Uri.tryParse(url)?.host ?? url);
      sources.add((title: t, url: url));
    }

    for (final b in content) {
      for (final c in (b['citations'] as List? ?? const []).whereType<Map>()) {
        add(c['url'], c['title']);
      }
    }
    if (sources.isEmpty) {
      for (final b in content.where((b) => b['type'] == 'web_search_tool_result')) {
        final results = b['content'];
        for (final r in (results is List ? results : const []).whereType<Map>()) {
          add(r['url'], r['title']);
        }
      }
    }
  } on AppException {
    rethrow;
  } catch (e) {
    throw AnalysisException(AppErrorCode.aiBadResponse, cause: e);
  }
  if (text.isEmpty) throw const AnalysisException(AppErrorCode.aiBadResponse);
  return (text: text, sources: sources);
}
