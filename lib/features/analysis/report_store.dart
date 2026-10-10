import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/errors.dart';
import '../../core/models/stock_details.dart';
import '../billing/entitlement_service.dart';
import '../../core/models/stock_report.dart';
import 'stock_analyst.dart';

/// Az elemzések állapota és gyorsítótára tickerenként. A kész elemzést
/// lemezre is menti, hogy újraindítás után se kelljen újra fizetni érte.
class ReportStore extends ChangeNotifier {
  static bool _isQuotaError(AppErrorCode c) =>
      c == AppErrorCode.quotaExceeded || c == AppErrorCode.trialExpired || c == AppErrorCode.noPlan;

  void _notifyQuota() {
    final cb = onQuotaChanged;
    if (cb == null) return;
    cb().then((_) => notifyListeners()).catchError((Object e) => debugPrint('Jogosultság frissítése nem sikerült: $e'));
  }

  ReportStore({required this.analyst, this.entitlements, this.onQuotaChanged, this.ttl = const Duration(hours: 12)});

  final StockAnalyst analyst;

  /// Ha meg van adva, elemzés előtt ellenőrzi és utána elhasználja a keretet.
  final EntitlementService? entitlements;

  /// Elemzés után (vagy a szerver kvóta-hibája után) hívjuk: backend-módban
  /// innen frissül a jogosultság a szerver szerinti állapotra.
  final Future<void> Function()? onQuotaChanged;
  final Duration ttl;

  static const _prefix = 'report_';

  final Map<String, StockReport> _reports = {};
  final Map<String, Object> _errors = {};
  final Set<String> _loading = {};

  StockReport? report(String symbol) => _reports[symbol];
  Object? error(String symbol) => _errors[symbol];
  bool isLoading(String symbol) => _loading.contains(symbol);

  /// Betölti a lemezről, ha van friss példány.
  Future<StockReport?> restore(String symbol, {String? language}) async {
    final cached = _reports[symbol];
    if (cached != null) return cached;
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString('$_prefix$symbol');
      if (raw == null) return null;
      final r = StockReport.fromJson(jsonDecode(raw) as Map<String, dynamic>);
      final fresh = DateTime.now().difference(r.generatedAt) < ttl;
      final sameLanguage = language == null || r.language == null || r.language == language;
      if (!fresh || !sameLanguage) return null;
      _reports[symbol] = r;
      notifyListeners();
      return r;
    } catch (_) {
      return null;
    }
  }

  Future<void> generate(StockDetails details, {required String outputLanguage, bool force = false}) async {
    final symbol = details.symbol;
    if (_loading.contains(symbol)) return;
    if (!force && _reports[symbol] != null) return;
    final ent = entitlements;
    if (ent != null) {
      final q = ent.check();
      if (q != QuotaCheck.ok) {
        _errors[symbol] = AnalysisException(switch (q) {
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
      final r = await analyst.analyze(details, outputLanguage: outputLanguage);
      _reports[symbol] = r;
      await entitlements?.consume();
      _notifyQuota();
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('$_prefix$symbol', jsonEncode(r.toJson()));
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
