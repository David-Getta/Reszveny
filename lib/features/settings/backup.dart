import 'dart:convert';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../app_services.dart';
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
    // A beállítások (e-mailes riasztás, heti összefoglaló) maradnak, ahogy most vannak.
    final merged = {
      ...SyncService.merge(now, backup),
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

BackupSaver saveBackupFile = (bytes, fileName) async {
  final file = XFile.fromData(bytes, mimeType: 'application/json', name: fileName);
  final desktop =
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.macOS ||
          defaultTargetPlatform == TargetPlatform.windows ||
          defaultTargetPlatform == TargetPlatform.linux);
  if (desktop) {
    final to = await getSaveLocation(
      suggestedName: fileName,
      acceptedTypeGroups: const [
        XTypeGroup(label: 'JSON', extensions: ['json'], uniformTypeIdentifiers: ['public.json']),
      ],
    );
    if (to != null) await file.saveTo(to.path);
    return;
  }
  await SharePlus.instance.share(
    ShareParams(files: [file], fileNameOverrides: [fileName], downloadFallbackEnabled: true),
  );
};

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
              if (backup != null) await Backup.restore(services, backup);
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
