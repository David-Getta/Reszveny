import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/errors.dart';
import '../../core/models/analysis_extras.dart';
import '../../core/models/stock_details.dart';
import '../billing/entitlement_service.dart';
import '../../core/models/stock_report.dart';
import 'analysis_options.dart';
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

  /// Minden elmentett elemzés törlése a memóriából és a lemezről.
  Future<void> clearCache() async {
    _reports.clear();
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      for (final k in prefs.getKeys().where((k) => k.startsWith(_prefix)).toList()) {
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

  static const _prefix = 'report_';

  final Map<String, StockReport> _reports = {};
  final Map<String, Object> _errors = {};
  final Set<String> _loading = {};

  StockReport? report(String symbol) => _reports[symbol];
  Object? error(String symbol) => _errors[symbol];
  bool isLoading(String symbol) => _loading.contains(symbol);

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

  bool isStale(StockReport r) => clock().difference(r.generatedAt) >= staleAfter;

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
    _errors.remove(symbol);
    _keptStale.remove(symbol);
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('$_prefix$symbol');
    } catch (_) {
      // A tárolás hibája nem akadályozza a működést.
    }
    notifyListeners();
  }

  /// A készüléken elmentett elemzések, a legújabb elöl („Elemzéseim”). Ha a
  /// [language] meg van adva, csak az azon a nyelven készülteket adja (a többit
  /// a [restore] sem nyitná meg).
  Future<List<StockReport>> savedReports({String? language, int limit = maxSaved}) async {
    final out = <String, StockReport>{};
    try {
      final prefs = await SharedPreferences.getInstance();
      for (final k in prefs.getKeys().where((k) => k.startsWith(_prefix))) {
        final raw = prefs.getString(k);
        if (raw == null) continue;
        try {
          final r = StockReport.fromJson(jsonDecode(raw) as Map<String, dynamic>);
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
    if (cached != null) return cached;
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString('$_prefix$symbol');
      if (raw == null) return null;
      final r = StockReport.fromJson(jsonDecode(raw) as Map<String, dynamic>);
      final sameLanguage = language == null || r.language == null || r.language == language;
      if (!sameLanguage) return null;
      _reports[symbol] = r;
      notifyListeners();
      return r;
    } catch (_) {
      return null;
    }
  }

  /// A [maxSaved]-nél több elmentett elemzésből a legrégebbieket törli.
  Future<void> _prune(SharedPreferences prefs) async {
    final keys = prefs.getKeys().where((k) => k.startsWith(_prefix)).toList();
    if (keys.length <= maxSaved) return;
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
    for (final (k, _) in dated.skip(maxSaved)) {
      await prefs.remove(k);
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
    if (!force && _reports[symbol] != null) return;
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
    _errors.remove(symbol);
    notifyListeners();
    try {
      final extras = await _loadExtras(symbol);
      final r = await analyst.analyze(
        extras == null ? details : details.withExtras(extras),
        outputLanguage: outputLanguage,
        options: options,
      );
      _reports[symbol] = r;
      await entitlements?.consume(cost: options.cost);
      _notifyQuota();
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('$_prefix$symbol', jsonEncode(r.toJson()));
        await _prune(prefs);
      } catch (_) {
        // A gyorsítótár hibája nem akadályozza a megjelenítést.
      }
    } catch (e) {
      _errors[symbol] = e;
      if (e is AppException && _isQuotaError(e.code)) _notifyQuota();
    } finally {
      _loading.remove(symbol);
      notifyListeners();
    }
  }
}
