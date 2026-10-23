import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/desktop/system_notifier.dart';
import '../../core/models/stock_quote.dart';
import '../market_data/market_data_provider.dart';
import 'price_alert.dart';

/// Egy teljesült riasztás az akkori árral.
class AlertHit {
  const AlertHit({required this.alert, required this.quote});

  final PriceAlert alert;
  final StockQuote quote;
}

/// A riasztások figyelése: [interval]-onként lekéri az aktív riasztások
/// részvényeinek árát, a teljesülteket megjelöli (egyszer szólnak), és
/// rendszerértesítést küld. A felület a [lastHits]-et figyelve az appon
/// belül is jelez.
class AlertMonitor extends ChangeNotifier {
  AlertMonitor({
    required this.store,
    required this.marketData,
    AlertNotifier? notifier,
    required this.describe,
    this.interval = const Duration(minutes: 5),
    DateTime Function()? clock,
  }) : notifier = notifier ?? SystemNotifier(),
       _clock = clock ?? DateTime.now;

  final AlertStore store;
  final MarketDataProvider marketData;
  final AlertNotifier notifier;
  final Duration interval;
  final DateTime Function() _clock;

  /// Az értesítés címe és szövege a felhasználó nyelvén.
  final ({String title, String body}) Function(AlertHit hit) describe;

  Timer? _timer;
  bool _checking = false;

  /// A legutóbbi ellenőrzés találatai (üres, ha nem teljesült semmi).
  List<AlertHit> lastHits = const [];

  /// Értesítésre koppintás után megnyitandó részvény (a keret figyeli).
  final ValueNotifier<String?> openRequest = ValueNotifier(null);

  void requestOpen(String symbol, {bool summary = false}) {
    _pendingSummary = summary ? symbol.toUpperCase() : null;
    openRequest.value = null;
    openRequest.value = symbol;
  }

  /// Az értesítésről (gyorsjelentés eredménye) megnyitott részvénynél rögtön az
  /// összefoglaló is kell; a részvény oldala egyszer kéri el.
  String? _pendingSummary;

  bool takeSummaryRequest(String symbol) {
    if (_pendingSummary != symbol.toUpperCase()) return false;
    _pendingSummary = null;
    return true;
  }

  /// Rendszeres ellenőrzés indítása. Az első rögtön lefut – vagy ha [after] meg van
  /// adva (az első szinkron), utána (legfeljebb 20 mp várakozással): a szerver által
  /// közben már jelzett (e-mailben elküldött) riasztás így nem szól újra az asztalon.
  void start({Future<void>? after}) {
    _timer ??= Timer.periodic(interval, (_) => check());
    unawaited(() async {
      try {
        await after?.timeout(const Duration(seconds: 20));
      } catch (_) {}
      await check();
    }());
  }

  /// Ellenőrzés most. Egy részvény árának hibája nem állítja meg a többit.
  Future<List<AlertHit>> check() async {
    if (_checking) return const [];
    _checking = true;
    final hits = <AlertHit>[];
    try {
      final bySymbol = <String, List<PriceAlert>>{};
      for (final a in store.active) {
        bySymbol.putIfAbsent(a.symbol, () => []).add(a);
      }
      for (final e in bySymbol.entries) {
        StockQuote q;
        try {
          q = await marketData.quote(e.key);
        } catch (err) {
          debugPrint('Riasztás: ${e.key} ára nem érhető el: $err');
          continue;
        }
        // Az ár lekérése alatt a riasztás változhatott (szerkesztés, törlés, szinkron):
        // csak a változatlan, még aktív példány számít.
        bool unchanged(PriceAlert a) => switch (store.active.where((x) => x.id == a.id).firstOrNull) {
          final now? => now.modified == a.modified && now.kind == a.kind && now.value == a.value,
          null => false,
        };
        // Követő stop: előbb a csúcs frissül (a riasztás óta látott legmagasabb ár).
        final checked = <PriceAlert>[];
        for (final a in e.value.where(unchanged)) {
          if (a.kind == AlertKind.trailing && (a.peak == null || q.price > a.peak!)) {
            await store.raisePeak(a.id, q.price);
            checked.add(a.withPeak(q.price));
          } else {
            checked.add(a);
          }
        }
        for (final a in checked.where((a) => a.isHit(q))) {
          if (!unchanged(a)) continue;
          await store.markTriggered(a.id, _clock(), q.price);
          hits.add(AlertHit(alert: a, quote: q));
        }
      }
      for (final h in hits) {
        final text = describe(h);
        await notifier.show(id: h.alert.id, title: text.title, body: text.body);
      }
      if (hits.isNotEmpty) {
        lastHits = hits;
        notifyListeners();
      }
    } finally {
      _checking = false;
    }
    return hits;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
