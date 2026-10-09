import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/models/stock_details.dart';
import '../../core/models/stock_report.dart';
import 'stock_analyst.dart';

/// Az elemzések állapota és gyorsítótára tickerenként. A kész elemzést
/// lemezre is menti, hogy újraindítás után se kelljen újra fizetni érte.
class ReportStore extends ChangeNotifier {
  ReportStore({required this.analyst, this.ttl = const Duration(hours: 12)});

  final StockAnalyst analyst;
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
    _loading.add(symbol);
    _errors.remove(symbol);
    notifyListeners();
    try {
      final r = await analyst.analyze(details, outputLanguage: outputLanguage);
      _reports[symbol] = r;
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('$_prefix$symbol', jsonEncode(r.toJson()));
      } catch (_) {
        // A gyorsítótár hibája nem akadályozza a megjelenítést.
      }
    } catch (e) {
      _errors[symbol] = e;
    } finally {
      _loading.remove(symbol);
      notifyListeners();
    }
  }
}
