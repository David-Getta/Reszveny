import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' show AppLifecycleListener;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/app_preferences.dart';
import '../../core/util/storage_room.dart';
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

  /// A legutóbb látott mentési sorszám és a legutóbbi teljes összevetés ideje: ha azóta
  /// egy lap sem mentett, a tárolók nem töltődnek be újra (legfeljebb ennyi időnként mégis,
  /// biztonsági hálóként egy sorszámot nem növelő mentés miatt).
  int _seenRevision = -1;
  DateTime? _fullCheckAt;
  static const fullCheckEvery = Duration(minutes: 5);

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
      final prefs = await SharedPreferences.getInstance();
      await prefs.reload();
      final revision = prefs.getInt(dataRevisionKey) ?? 0;
      final now = DateTime.now();
      final recent = _fullCheckAt != null && now.difference(_fullCheckAt!) < fullCheckEvery;
      if (recent && (revision == _seenRevision || revision == lastOwnRevision)) return false;
      _seenRevision = revision;
      _fullCheckAt = now;
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
