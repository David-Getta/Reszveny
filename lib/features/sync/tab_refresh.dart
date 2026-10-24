import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' show AppLifecycleListener;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/app_preferences.dart';
import '../alerts/price_alert.dart';
import '../notes/notes_store.dart';
import '../portfolio/portfolio_store.dart';
import 'sync_service.dart';

/// Weben az app több lapon is nyitva lehet, és mindegyik a saját példányát menti a
/// böngésző tárolójába: amikor egy lap újra előtérbe kerül, beolvassa a többi lap
/// közben mentett változásait – különben a következő mentése felülírná őket
/// (fiók nélkül véglegesen).
class TabRefresh {
  TabRefresh({required this.preferences, required this.portfolio, required this.alerts, required this.notes});

  final AppPreferences preferences;
  final PortfolioStore portfolio;
  final AlertStore alerts;
  final NotesStore notes;

  AppLifecycleListener? _lifecycle;
  bool _running = false;

  /// Csak weben figyel (asztali gépen és telefonon egy példány fut).
  void start() {
    if (!kIsWeb) return;
    try {
      _lifecycle = AppLifecycleListener(onResume: () => unawaited(refresh()));
    } catch (_) {
      // Flutter-kötés nélkül (egységtesztben) nincs életciklus-figyelés.
    }
  }

  /// A tárolóban lévő (egy másik lap által mentett) adat átvétele, ha eltér a
  /// mostanitól; igaz, ha volt mit átvenni.
  Future<bool> refresh() async {
    if (_running || portfolio.batching) return false;
    _running = true;
    try {
      await (await SharedPreferences.getInstance()).reload();
      final stored = SyncService.snapshotOf(
        preferences: await AppPreferences.load(),
        portfolio: await PortfolioStore.load(),
        alerts: await AlertStore.load(),
        notes: await NotesStore.load(),
      );
      final mine = SyncService.snapshotOf(preferences: preferences, portfolio: portfolio, alerts: alerts, notes: notes);
      if (jsonEncode(stored) == jsonEncode(mine)) return false;
      await SyncService.applyNow(
        stored,
        preferences: preferences,
        portfolio: portfolio,
        alerts: alerts,
        notes: notes,
      ).saved;
      return true;
    } catch (e) {
      debugPrint('A másik lap változásai nem olvashatók be: $e');
      return false;
    } finally {
      _running = false;
    }
  }

  void dispose() => _lifecycle?.dispose();
}
