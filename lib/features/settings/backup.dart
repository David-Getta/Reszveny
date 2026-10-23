import 'dart:convert';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/app_preferences.dart';
import '../../core/share/save_file.dart';
import '../../l10n/generated/app_localizations.dart';
import '../notes/notes_store.dart';
import '../portfolio/portfolio_store.dart';
import '../sync/sync_service.dart';

/// Biztonsági mentés egy JSON-fájlba (kedvencek, listák, portfólió, riasztások,
/// jegyzetek), és visszaállítás belőle. Fiók nélkül is véd az adatvesztés ellen;
/// a visszaállítás összefésül, a meglévő adatból semmit nem töröl.
class Backup {
  Backup._();

  static const app = 'WhatStock';

  /// A mentés tartalma.
  static Map<String, dynamic> data(AppServices s, {DateTime? now}) => {
    'app': app,
    'exported_at': (now ?? DateTime.now()).toUtc().toIso8601String(),
    ...SyncService.snapshotOf(preferences: s.preferences, portfolio: s.portfolio, alerts: s.alerts, notes: s.notes),
  };

  static String fileName(DateTime now) => 'WhatStock-backup-${now.toIso8601String().substring(0, 10)}.json';

  /// A mentés listát, illetve objektumot váró mezői.
  static const _listFields = ['favorites', 'watch_lists', 'lots', 'dividends', 'splits', 'alerts'];
  static const _mapFields = [
    'notes',
    'cash',
    'cash_at',
    'goals',
    'targets',
    'favorite_since',
    'switches_at',
    'deleted',
    'alerts_deleted',
    'notes_deleted',
    'favorites_removed',
    'favorites_added',
    'lists_removed',
    'lists_added',
  ];

  /// A fájl beolvasása; `null`, ha nem WhatStock-mentés, vagy egy mezője nem a várt
  /// típusú (akkor semmit nem veszünk át belőle). A kedvencek és a jegyzetek tickerei
  /// nagybetűsek, a kedvencek ismétlés nélkül.
  static Map<String, dynamic>? parse(String text) {
    try {
      final j = jsonDecode(text);
      if (j is! Map || j['app'] != app) return null;
      final m = j.cast<String, dynamic>();
      if (_listFields.any((k) => m[k] != null && m[k] is! List) ||
          _mapFields.any((k) => m[k] != null && m[k] is! Map)) {
        return null;
      }
      return {
        ...m,
        if (m['favorites'] case final List f)
          'favorites': {
            for (final s in f)
              if (s is String && s.trim().isNotEmpty) s.trim().toUpperCase(),
          }.toList(),
        if (m['notes'] case final Map n) 'notes': {for (final e in n.entries) '${e.key}'.trim().toUpperCase(): e.value},
      };
    } catch (_) {
      return null;
    }
  }

  /// A törlési jelzések mezői: a mentéséi nem törölnek a mostani adatból.
  static const _tombstoneFields = ['deleted', 'alerts_deleted', 'notes_deleted', 'favorites_removed', 'lists_removed'];

  /// Visszaállítás: a mentés és a mostani adatok uniója. A mostani adatból semmi nem
  /// vész el: a mentés törlési jelzései kimaradnak, és ami most is megvan (jegyzet,
  /// készpénz, cél), az marad – a mentés csak a hiányzót pótolja, az eltérő mentett
  /// jegyzet a mostani alá kerül.
  static Future<void> restore(AppServices s, Map<String, dynamic> backup) async {
    final now = SyncService.snapshotOf(
      preferences: s.preferences,
      portfolio: s.portfolio,
      alerts: s.alerts,
      notes: s.notes,
    );
    // A mentés után törölt (most hiányzó) tranzakciók, osztalékok, felaprózások,
    // riasztások, jegyzetek, kedvencek és listák visszajönnek: a helyi törlési
    // jelzésük kimarad, és a tétel újabbnak jelölve, hogy egy másik eszköz jelzése
    // se vigye el újra. A most is meglévőt a szokásos összefésülés kezeli (az újabb
    // javítás nyer).
    Set<String> idsOf(List<String> keys) => {
      for (final key in keys)
        for (final m in (now[key] as List? ?? const [])) '${(m as Map)['id']}',
    };
    final notesNow = (now['notes'] as Map? ?? const {});
    final present = {
      'deleted': idsOf(['lots', 'dividends', 'splits']),
      'alerts_deleted': idsOf(['alerts']),
      'notes_deleted': {for (final k in notesNow.keys) '$k'},
      'favorites_removed': {for (final f in (now['favorites'] as List? ?? const [])) '$f'},
      'lists_removed': _listKeys(now['watch_lists']),
    };
    final revived = {for (final k in present.keys) k: <String>{}};
    // Visszajön-e (és ha igen, feljegyzi).
    bool back(String tombKey, String id) {
      final gone = (now[tombKey] as Map? ?? const {}).containsKey(id) && !present[tombKey]!.contains(id);
      if (gone) revived[tombKey]!.add(id);
      return gone;
    }

    final stamp = DateTime.now().toUtc().toIso8601String();
    List<Object?> reviveList(Object? items, String tombKey) => [
      for (final m in items is List ? items : const [])
        if (m is Map && back(tombKey, '${m['id']}')) {...m, 'edited': stamp} else m,
    ];
    // Jegyzetek: ami csak a mentésben van, visszajön; az eltérő mentett szöveg a
    // mostani alá kerül (mint tickerváltáskor), a mostani nem íródik felül.
    final notes = <String, Object?>{};
    for (final e in (backup['notes'] as Map? ?? const {}).entries) {
      final symbol = '${e.key}';
      final saved = StockNote.fromJson(e.value);
      if (saved == null) continue;
      final mine = StockNote.fromJson(notesNow[symbol]);
      if (mine == null) {
        notes[symbol] = back('notes_deleted', symbol) ? {...saved.toJson(), 'updated_at': stamp} : saved.toJson();
      } else if (!mine.text.contains(saved.text.trim())) {
        final text = '${mine.text.trimRight()}\n\n${saved.text.trim()}';
        notes[symbol] = {'text': text.characters.take(NotesStore.maxLength).toString(), 'updated_at': stamp};
      }
    }
    // Készpénz és célok: a mostani marad; a mentés csak a hiányzó pénznemet és célt
    // pótolja (most bélyegezve, hogy egy korábbi helyi törlésnél is visszajöjjön).
    final cashNow = PortfolioStore.parseCashMap(now['cash']);
    final cash = {
      for (final e in PortfolioStore.parseCashMap(backup['cash']).entries)
        if (!cashNow.containsKey(e.key)) e.key: e.value,
    };
    final goalsNow = AppPreferences.parseGoals(now['goals']);
    final fromBackup = {
      ...backup,
      for (final key in _tombstoneFields) key: const <String, String>{},
      // A célarányok idő nélkül: a mostaniak maradnak, a mentés csak a hiányzó tickert pótolja.
      'targets_at': null,
      for (final key in ['lots', 'dividends', 'splits']) key: reviveList(backup[key], 'deleted'),
      'alerts': reviveList(backup['alerts'], 'alerts_deleted'),
      'notes': notes,
      'cash': cash,
      'cash_at': {for (final c in cash.keys) c: stamp},
      'goals': {
        for (final e in AppPreferences.parseGoals(backup['goals']).entries)
          if (e.value.goal case final g? when goalsNow[e.key]?.goal == null)
            e.key: {'amount': g.amount, 'currency': g.currency, 'at': stamp},
      },
      'favorites_added': {
        ...?(backup['favorites_added'] as Map?),
        for (final f in (backup['favorites'] as List? ?? const []))
          if (back('favorites_removed', '$f')) '$f': stamp,
      },
      'lists_added': {
        ...?(backup['lists_added'] as Map?),
        for (final k in _listKeys(backup['watch_lists']))
          if (back('lists_removed', k)) k: stamp,
      },
    };
    final current = {
      ...now,
      for (final e in revived.entries)
        e.key: {
          for (final t in (now[e.key] as Map? ?? const {}).entries)
            if (!e.value.contains(t.key)) t.key: t.value,
        },
    };
    // A beállítások (e-mailes riasztás, heti összefoglaló) maradnak, ahogy most vannak.
    final merged = {
      ...SyncService.merge(current, fromBackup),
      'email_alerts': s.preferences.emailAlerts,
      'weekly_digest': s.preferences.weeklyDigest,
      'switches_at': now['switches_at'],
    };
    await SyncService.applyTo(
      merged,
      preferences: s.preferences,
      portfolio: s.portfolio,
      alerts: s.alerts,
      notes: s.notes,
    );
  }
}

/// A saját listák és tagjaik szinkron-kulcsai egy csomagból.
Set<String> _listKeys(Object? lists) => {
  for (final l in lists is List ? lists : const [])
    if (WatchList.fromJson(l) case final w?) ...[
      AppPreferences.listKey(w.name),
      for (final s in w.symbols) AppPreferences.itemKey(w.name, s),
    ],
};

/// Mentés fájlba: asztali gépen mentés-ablakkal, máshol a megosztás-menüvel. Tesztben lecserélhető.
typedef BackupSaver = Future<void> Function(Uint8List bytes, String fileName);

BackupSaver saveBackupFile = (bytes, fileName) => saveFile(
  bytes,
  fileName,
  mimeType: 'application/json',
  type: const XTypeGroup(label: 'JSON', extensions: ['json'], uniformTypeIdentifiers: ['public.json']),
);

/// Mentés kiválasztása; a szövegét adja vissza. Tesztben lecserélhető.
typedef BackupPicker = Future<String?> Function();

BackupPicker pickBackupFile = () async {
  final file = await openFile(
    acceptedTypeGroups: const [
      XTypeGroup(label: 'JSON', extensions: ['json'], uniformTypeIdentifiers: ['public.json']),
    ],
  );
  return file == null ? null : utf8.decode(await file.readAsBytes(), allowMalformed: true);
};

/// A Beállítások „Biztonsági mentés” kártyája.
class BackupCard extends StatelessWidget {
  const BackupCard({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    return Card(
      child: Column(
        children: [
          ListTile(
            key: const ValueKey('backup-save'),
            leading: const Icon(Icons.save_alt_rounded),
            title: Text(l10n.backupSave),
            subtitle: Text(l10n.backupSaveHint),
            onTap: () async {
              final messenger = ScaffoldMessenger.of(context);
              final now = DateTime.now();
              final text = const JsonEncoder.withIndent(' ').convert(Backup.data(services, now: now));
              try {
                await saveBackupFile(Uint8List.fromList(utf8.encode(text)), Backup.fileName(now));
                services.telemetry.track('backup_saved');
              } catch (e) {
                debugPrint('Mentés nem sikerült: $e');
                // A felhasználó tudja meg, hogy a fájl nem készült el.
                messenger.showSnackBar(SnackBar(content: Text(l10n.backupFailed)));
              }
            },
          ),
          const Divider(height: 1),
          ListTile(
            key: const ValueKey('backup-restore'),
            leading: const Icon(Icons.settings_backup_restore_rounded),
            title: Text(l10n.backupRestore),
            subtitle: Text(l10n.backupRestoreHint),
            onTap: () async {
              final messenger = ScaffoldMessenger.of(context);
              String? text;
              try {
                text = await pickBackupFile();
              } catch (_) {}
              if (text == null) return;
              final backup = Backup.parse(text);
              var ok = backup != null;
              if (backup != null) {
                try {
                  await Backup.restore(services, backup);
                  services.telemetry.track('backup_restored');
                } catch (e) {
                  debugPrint('Visszaállítás nem sikerült: $e');
                  ok = false;
                }
              }
              messenger.showSnackBar(SnackBar(content: Text(ok ? l10n.backupRestored : l10n.backupInvalid)));
            },
          ),
        ],
      ),
    );
  }
}
