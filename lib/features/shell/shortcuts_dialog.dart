import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/desktop/desktop_integration.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';

/// A billentyűparancs felirata: macOS-en ⌘K, máshol Ctrl+K.
String shortcutLabel(String key) => defaultTargetPlatform == TargetPlatform.macOS ? '⌘$key' : 'Ctrl+$key';

/// Az asztali billentyűparancsok listája (Ctrl/⌘ + /, vagy az oldalsáv gombja).
Future<void> showShortcutsDialog(BuildContext context) {
  final l10n = AppLocalizations.of(context);
  final services = AppServices.of(context);
  final rows = [
    (shortcutLabel('K'), l10n.newSearch),
    (shortcutLabel('2'), l10n.portfolio),
    (shortcutLabel('3'), l10n.priceAlerts),
    (shortcutLabel(','), l10n.settings),
    (shortcutLabel('/'), l10n.shortcutsTitle),
    if (DesktopIntegration.isSupported) (services.desktop.shortcutLabelFor(space: l10n.keySpace), l10n.hotkeyLabel),
  ];
  return showDialog<void>(
    context: context,
    builder: (context) {
      final p = AppPalette.of(context);
      final theme = Theme.of(context);
      return AlertDialog(
        key: const ValueKey('shortcuts-dialog'),
        title: Text(l10n.shortcutsTitle),
        content: SizedBox(
          width: 360,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final (keys, label) in rows)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    children: [
                      Expanded(child: Text(label)),
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          border: Border.all(color: p.border),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(keys, style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(MaterialLocalizations.of(context).closeButtonLabel),
          ),
        ],
      );
    },
  );
}
