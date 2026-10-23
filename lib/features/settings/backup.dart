import 'dart:convert';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/share/save_file.dart';
import '../../l10n/generated/app_localizations.dart';
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

  /// A fájl beolvasása; `null`, ha nem WhatStock-mentés.
  static Map<String, dynamic>? parse(String text) {
    try {
      final j = jsonDecode(text);
      if (j is! Map || j['app'] != app) return null;
      return j.cast<String, dynamic>();
    } catch (_) {
      return null;
    }
  }

  /// Visszaállítás: a mentés és a mostani adatok uniója (a mostaniak elöl).
  static Future<void> restore(AppServices s, Map<String, dynamic> backup) async {
    final now = SyncService.snapshotOf(
      preferences: s.preferences,
      portfolio: s.portfolio,
      alerts: s.alerts,
      notes: s.notes,
    );
    // A mentés után törölt (most hiányzó) tranzakciók, osztalékok, felaprózások,
    // riasztások és jegyzetek visszajönnek: a törlési jelzésük kimarad, és a tétel
    // újabbnak jelölve, hogy egy másik eszköz jelzése se vigye el újra. A most is
    // meglévőt a szokásos összefésülés kezeli (az újabb nyer).
    Set<String> idsOf(List<String> keys) => {
      for (final key in keys)
        for (final m in (now[key] as List? ?? const [])) '${(m as Map)['id']}',
    };
    final present = {
      'deleted': idsOf(['lots', 'dividends', 'splits']),
      'alerts_deleted': idsOf(['alerts']),
      'notes_deleted': {for (final k in (now['notes'] as Map? ?? const {}).keys) '$k'},
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
    final fromBackup = {
      ...backup,
      for (final key in ['lots', 'dividends', 'splits']) key: reviveList(backup[key], 'deleted'),
      'alerts': reviveList(backup['alerts'], 'alerts_deleted'),
      'notes': {
        for (final e in (backup['notes'] as Map? ?? const {}).entries)
          '${e.key}': e.value is Map && back('notes_deleted', '${e.key}')
              ? {...e.value as Map, 'updated_at': stamp}
              : e.value,
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
              final now = DateTime.now();
              final text = const JsonEncoder.withIndent(' ').convert(Backup.data(services, now: now));
              try {
                await saveBackupFile(Uint8List.fromList(utf8.encode(text)), Backup.fileName(now));
                services.telemetry.track('backup_saved');
              } catch (e) {
                debugPrint('Mentés nem sikerült: $e');
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
              if (backup != null) {
                await Backup.restore(services, backup);
                services.telemetry.track('backup_restored');
              }
              messenger.showSnackBar(
                SnackBar(content: Text(backup == null ? l10n.backupInvalid : l10n.backupRestored)),
              );
            },
          ),
        ],
      ),
    );
  }
}
