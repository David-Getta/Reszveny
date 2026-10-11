import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app_services.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'update_service.dart';

/// Vékony sáv a kezdőképernyő tetején, ha van kész vagy elérhető frissítés.
class UpdateBanner extends StatelessWidget {
  const UpdateBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return ListenableBuilder(
      listenable: services.updates,
      builder: (context, _) {
        final u = services.updates;
        final String text;
        final String? action;
        final VoidCallback? onAction;
        switch (u.status) {
          case UpdateStatus.downloaded:
            text = l10n.updateDownloaded;
            action = l10n.restartNow;
            onAction = u.installDownloaded;
          case UpdateStatus.available:
            text = l10n.updateAvailable(u.latestVersion ?? '');
            final url = u.updateUrl;
            action = l10n.updateNow;
            onAction = url == null
                ? (u.channel == UpdateChannel.sparkle ? u.installDownloaded : null)
                : () => launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
          case UpdateStatus.downloading:
            text = l10n.updateDownloading;
            action = null;
            onAction = null;
          default:
            return const SizedBox.shrink();
        }
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          decoration: BoxDecoration(
            color: p.accent.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: p.accent.withValues(alpha: 0.4)),
          ),
          child: Row(
            children: [
              Icon(Icons.system_update_alt_rounded, size: 18, color: p.accent),
              const SizedBox(width: 10),
              Expanded(child: Text(text, style: Theme.of(context).textTheme.bodySmall)),
              if (action != null && onAction != null) TextButton(onPressed: onAction, child: Text(action)),
            ],
          ),
        );
      },
    );
  }
}
