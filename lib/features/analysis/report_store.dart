import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/errors.dart';
import '../../core/models/analysis_extras.dart';
import '../../core/models/stock_details.dart';
import '../billing/entitlement_service.dart';
import '../../core/models/stock_report.dart';
import 'analysis_options.dart';
import 'report_diff.dart';
import 'stock_analyst.dart';

/// Az elemzések állapota és gyorsítótára tickerenként. A kész elemzést
/// lemezre is menti, hogy újraindítás után se kelljen újra fizetni érte.
class ReportStore extends ChangeNotifier {
  static bool _isQuotaError(AppErrorCode c) =>
      c == AppErrorCode.quotaExceeded ||
      c == AppErrorCode.trialExpired ||
      c == AppErrorCode.noPlan ||
      c == AppErrorCode.notEnoughCredits;

  Future<AnalysisExtras?> _loadExtras(String symbol) async {
    final load = extrasLoader;
    if (load == null) return null;
    try {
      final e = await load(symbol).timeout(const Duration(seconds: 15));
      return e.isEmpty ? null : e;
    } catch (e) {
      debugPrint('Többletadatok nem tölthetők: $e');
      return null;
    }
  }

  /// Minden törléskor nő: egy közben futó elemzés eredménye nem íródik vissza.
  int _epoch = 0;

  /// Minden elmentett elemzés törlése a memóriából és a lemezről.
  Future<void> clearCache() async {
    _epoch++;
    _reports.clear();
    _previous.clear();
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      for (final k in prefs.getKeys().where((k) => k.startsWith(_prefix) || k.startsWith(_prevPrefix)).toList()) {
        await prefs.remove(k);
      }
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
  }

  void _notifyQuota() {
    final cb = onQuotaChanged;
    if (cb == null) return;
    cb().then((_) => notifyListeners()).catchError((Object e) => debugPrint('Jogosultság frissítése nem sikerült: $e'));
  }

  ReportStore({required this.analyst, this.entitlements, this.onQuotaChanged, this.extrasLoader});

  /// Az elemzés előtt letöltendő többletadatok (versenytársak, bennfentes
  /// ügyletek, EPS-meglepetések, következő gyorsjelentés). Hiba vagy lassúság
  /// esetén az elemzés nélkülük fut.
  final Future<AnalysisExtras> Function(String symbol)? extrasLoader;

  final StockAnalyst analyst;

  /// Ha meg van adva, elemzés előtt ellenőrzi és utána elhasználja a keretet.
  final EntitlementService? entitlements;

  /// Elemzés után (vagy a szerver kvóta-hibája után) hívjuk: backend-módban
  /// innen frissül a jogosultság a szerver szerinti állapotra.
  final Future<void> Function()? onQuotaChanged;

  /// Minden sikeresen elkészült elemzés után (pl. értékelés-kéréshez).
  void Function(StockReport report)? onGenerated;

  /// Az utoljára elkészült elemzés (az app jelez, ha a felhasználó közben
  /// máshol jár).
  final ValueNotifier<StockReport?> completed = ValueNotifier(null);

  /// A részvény elemzés-kártyái: igazat adnak, ha éppen látszanak.
  final Map<String, Set<bool Function()>> _viewers = {};

  void addViewer(String symbol, bool Function() visible) => _viewers.putIfAbsent(symbol, () => {}).add(visible);

  void removeViewer(String symbol, bool Function() visible) => _viewers[symbol]?.remove(visible);

  /// Látszik-e most a részvény elemzése (akkor nem kell külön szólni).
  bool isOnScreen(String symbol) => _viewers[symbol]?.any((v) => v()) ?? false;

  static const _prefix = 'report_';

  /// Az újraelemzés előtti (eggyel korábbi) elemzés kulcsa, az összevetéshez.
  static const _prevPrefix = 'reportprev_';

  final Map<String, StockReport> _reports = {};
  final Map<String, StockReport> _previous = {};
  final Map<String, Object> _errors = {};
  final Set<String> _loading = {};

  StockReport? report(String symbol) => _reports[symbol];

  /// Az eggyel korábbi elemzés (ha a mostani újraelemzéssel készült).
  StockReport? previous(String symbol) => _previous[symbol];

  /// Mi változott az előző elemzés óta (ha van mivel összevetni).
  ReportDiff? changes(String symbol) {
    final a = _previous[symbol], b = _reports[symbol];
    return a == null || b == null ? null : ReportDiff.compare(a, b);
  }

  Object? error(String symbol) => _errors[symbol];
  bool isLoading(String symbol) => _loading.contains(symbol);

  /// Mióta készül az elemzés (a felület az eltelt időt mutatja), vagy `null`.
  DateTime? loadingSince(String symbol) => _loadingSince[symbol];
  final Map<String, DateTime> _loadingSince = {};

  /// Legfeljebb ennyi elemzést őrzünk meg a készüléken (a legrégebbiek törlődnek).
  static const maxSaved = 50;

  /// Ennél régebbi elemzés megnyitásakor megkérdezzük, kell-e új.
  static const staleAfter = Duration(hours: 12);

  /// A felhasználó ezeknél a régi elemzésnél a korábbit választotta (az app
  /// futása alatt nem kérdezünk újra).
  final Set<String> _keptStale = {};

  /// Ezeknél a megnyitáskor új elemzés indul (az előzmények listájából kérték).
  final Set<String> _refreshRequested = {};

  DateTime Function() clock = DateTime.now;

  bool isStale(StockReport r) => clock().difference(r.generatedAt) >= staleAfter || hasNewResults(r);

  /// Igaz, ha az elemzés óta megjelent a cég következő gyorsjelentése: a jelentés
  /// napján 22:00 UTC-kor már kint van (a New York-i zárás utáni is) – a helyi éjfél
  /// nem jó határ, mert Ázsiában és Ausztráliában az a megjelenés előtt van.
  /// Csak ha a megjelenés az elemzés után volt: a jelentés napján este készült
  /// elemzés már az eredményekkel készült (a „következő” dátum aznap még a mai).
  bool hasNewResults(StockReport r) {
    final e = r.nextEarnings;
    if (e == null) return false;
    final out = DateTime.utc(e.year, e.month, e.day, 22);
    return r.generatedAt.toUtc().isBefore(out) && !clock().toUtc().isBefore(out);
  }

  /// Igaz, ha a mentett elemzés régi, és még nem döntött róla a felhasználó:
  /// ilyenkor a kártya megkérdezi, kell-e új.
  bool needsStaleDecision(String symbol) {
    final r = _reports[symbol];
    return r != null && isStale(r) && !_keptStale.contains(symbol) && !_loading.contains(symbol);
  }

  /// „A korábbi jó lesz”: a régi elemzés látszik, nem kérdezünk újra.
  void keepStale(String symbol) {
    if (_keptStale.add(symbol)) notifyListeners();
  }

  /// Az előzményekből „új elemzés” választva: a kártya megnyitáskor elindítja.
  void requestRefresh(String symbol) => _refreshRequested.add(symbol);

  bool takeRefreshRequest(String symbol) => _refreshRequested.remove(symbol);

  /// Egy elmentett elemzés törlése (a memóriából és a készülékről).
  Future<void> delete(String symbol) async {
    _reports.remove(symbol);
    _previous.remove(symbol);
    _errors.remove(symbol);
    _keptStale.remove(symbol);
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('$_prefix$symbol');
      await prefs.remove('$_prevPrefix$symbol');
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
    notifyListeners();
  }

  /// A készüléken elmentett elemzések, a legújabb elöl („Elemzéseim”). Ha a
  /// [language] meg van adva, csak az azon a nyelven készülteket adja (a többit
  /// a [restore] sem nyitná meg).
  /// A már dekódolt mentések (kulcs → a tárolt szöveg és az elemzés): minden értesítés
  /// után nem kell újra JSON-ból olvasni mind az 50 mentést, csak a megváltozottat.
  final Map<String, (String, StockReport)> _decoded = {};

  Future<List<StockReport>> savedReports({String? language, int limit = maxSaved}) async {
    final out = <String, StockReport>{};
    try {
      final prefs = await SharedPreferences.getInstance();
      final keys = prefs.getKeys().where((k) => k.startsWith(_prefix)).toSet();
      _decoded.removeWhere((k, _) => !keys.contains(k));
      for (final k in keys) {
        final raw = prefs.getString(k);
        if (raw == null) continue;
        if (_decoded[k] case (final text, final r) when identical(text, raw) || text == raw) {
          out[r.symbol] = r;
          continue;
        }
        try {
          final r = StockReport.fromJson(jsonDecode(raw) as Map<String, dynamic>);
          _decoded[k] = (raw, r);
          out[r.symbol] = r;
        } catch (_) {
          // Sérült bejegyzés: kihagyjuk.
        }
      }
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
    for (final r in _reports.values) {
      final prev = out[r.symbol];
      if (prev == null || r.generatedAt.isAfter(prev.generatedAt)) out[r.symbol] = r;
    }
    final list = out.values.where((r) => language == null || r.language == null || r.language == language).toList()
      ..sort((a, b) => b.generatedAt.compareTo(a.generatedAt));
    return list.take(limit).toList();
  }

  /// Betölti a lemezről az utolsó elemzést (a régebbit is: a felület jelzi a
  /// korát, és felajánlja a frissítést). Más nyelven készült elemzést nem.
  Future<StockReport?> restore(String symbol, {String? language}) async {
    final cached = _reports[symbol];
    if (cached != null) {
      if (language == null || cached.language == null || cached.language == language) return cached;
      // Nyelvváltás után a memóriában lévő, más nyelvű elemzés sem látszik (mint a lemezről).
      // Az értesítés a mostani képkocka után: a hívó épp építés közben kérheti (nyelvváltáskor
      // a kártya `didChangeDependencies`-ében), és a többi nyitott oldalt jelölné újraépítésre.
      _reports.remove(symbol);
      _previous.remove(symbol);
      scheduleMicrotask(notifyListeners);
      return null;
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString('$_prefix$symbol');
      if (raw == null) return null;
      final r = StockReport.fromJson(jsonDecode(raw) as Map<String, dynamic>);
      final sameLanguage = language == null || r.language == null || r.language == language;
      if (!sameLanguage) return null;
      _reports[symbol] = r;
      final prev = prefs.getString('$_prevPrefix$symbol');
      if (prev != null) {
        try {
          _previous[symbol] = StockReport.fromJson(jsonDecode(prev) as Map<String, dynamic>);
        } catch (_) {
          // Sérült korábbi elemzés: összevetés nélkül.
        }
      }
      notifyListeners();
      return r;
    } catch (_) {
      return null;
    }
  }

  /// A [keep]-nél több elmentett elemzésből a legrégebbieket törli.
  Future<void> _prune(SharedPreferences prefs, {int keep = maxSaved}) async {
    final keys = prefs.getKeys().where((k) => k.startsWith(_prefix)).toList();
    if (keys.length <= keep) return;
    final dated = <(String, DateTime)>[];
    for (final k in keys) {
      try {
        final j = jsonDecode(prefs.getString(k) ?? '') as Map<String, dynamic>;
        dated.add((k, DateTime.parse(j['generated_at'] as String)));
      } catch (_) {
        dated.add((k, DateTime.fromMillisecondsSinceEpoch(0)));
      }
    }
    dated.sort((a, b) => b.$2.compareTo(a.$2));
    for (final (k, _) in dated.skip(keep)) {
      await prefs.remove(k);
      await prefs.remove('$_prevPrefix${k.substring(_prefix.length)}');
    }
  }

  Future<void> generate(
    StockDetails details, {
    required String outputLanguage,
    AnalysisOptions options = const AnalysisOptions(),
    bool force = false,
  }) async {
    final symbol = details.symbol;
    if (_loading.contains(symbol)) return;
    // A meglévő, más nyelvű elemzés nem tartja vissza az újat.
    final existing = _reports[symbol];
    if (!force && existing != null && (existing.language == null || existing.language == outputLanguage)) return;
    final ent = entitlements;
    if (ent != null) {
      final q = ent.check(cost: options.cost);
      if (q != QuotaCheck.ok) {
        _errors[symbol] = q == QuotaCheck.insufficient
            ? AnalysisException(AppErrorCode.notEnoughCredits, detail: '${options.cost}/${ent.available}')
            : AnalysisException(switch (q) {
                QuotaCheck.trialExpired => AppErrorCode.trialExpired,
                QuotaCheck.noPlan => AppErrorCode.noPlan,
                _ => AppErrorCode.quotaExceeded,
              });
        notifyListeners();
        return;
      }
    }
    _loading.add(symbol);
    _loadingSince[symbol] = clock();
    _errors.remove(symbol);
    notifyListeners();
    final epoch = _epoch;
    try {
      final extras = await _loadExtras(symbol);
      final analyzed = await analyst.analyze(
        extras == null ? details : details.withExtras(extras),
        outputLanguage: outputLanguage,
        options: options,
      );
      // A következő gyorsjelentés napját megjegyezzük: ha eltelik, jelezzük,
      // hogy az elemzés még a friss eredmények előtt készült.
      final r = analyzed.withNextEarnings(analyzed.nextEarnings ?? (extras ?? details.extras)?.nextEarnings?.date);
      // Közben törölték a helyi adatokat (pl. fióktörlés): az eredmény nem íródik vissza.
      if (epoch != _epoch) {
        await entitlements?.consume(cost: options.cost);
        return;
      }
      // A felváltott elemzést megőrizzük az összevetéshez (azonos nyelven).
      final old = _reports[symbol];
      final keepOld = old != null && (old.language == null || r.language == null || old.language == r.language)
          ? old
          : null;
      if (keepOld != null) {
        _previous[symbol] = keepOld;
      } else {
        _previous.remove(symbol);
      }
      _reports[symbol] = r;
      _keptStale.remove(symbol);
      onGenerated?.call(r);
      completed.value = r;
      await entitlements?.consume(cost: options.cost);
      _notifyQuota();
      Future<void> write(SharedPreferences prefs) async {
        await prefs.setString('$_prefix$symbol', jsonEncode(r.toJson()));
        if (keepOld != null) {
          await prefs.setString('$_prevPrefix$symbol', jsonEncode(keepOld.toJson()));
        } else {
          await prefs.remove('$_prevPrefix$symbol');
        }
      }

      try {
        final prefs = await SharedPreferences.getInstance();
        // Előbb a hely (egy teli tárban is elférjen az új), utána az írás; ha így sem
        // fér el, a régebbiek felét elengedjük, és még egyszer próbáljuk.
        await _prune(prefs, keep: maxSaved - 1);
        try {
          await write(prefs);
        } catch (_) {
          await _prune(prefs, keep: maxSaved ~/ 2);
          await write(prefs);
        }
      } catch (_) {
        // A gyorsítótár hibája nem akadályozza a megjelenítést.
      }
    } catch (e) {
      _errors[symbol] = e;
      if (e is AppException && _isQuotaError(e.code)) _notifyQuota();
    } finally {
      _loading.remove(symbol);
      _loadingSince.remove(symbol);
      notifyListeners();
    }
  }
}
