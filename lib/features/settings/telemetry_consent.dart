import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';

/// Egyszeri kérdés a kezdőképernyőn: engedélyezi-e a névtelen statisztikát és
/// hibajelentést. Csak backend-módban, és amíg nem döntött.
class TelemetryConsentCard extends StatelessWidget {
  const TelemetryConsentCard({super.key});

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final telemetry = services.telemetry;
    return ListenableBuilder(
      listenable: services.preferences,
      builder: (context, _) {
        if (!telemetry.shouldAsk) return const SizedBox.shrink();
        final l10n = AppLocalizations.of(context);
        final p = AppPalette.of(context);
        final theme = Theme.of(context);
        return Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Card(
            key: const ValueKey('telemetry-consent'),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.insights_rounded, color: p.accent),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          l10n.telemetryTitle,
                          style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(l10n.telemetryBody, style: theme.textTheme.bodyMedium?.copyWith(color: p.muted)),
                  const SizedBox(height: 6),
                  Wrap(
                    alignment: WrapAlignment.end,
                    spacing: 8,
                    children: [
                      TextButton(
                        key: const ValueKey('telemetry-decline'),
                        onPressed: () => telemetry.setConsent(false),
                        child: Text(l10n.telemetryDecline),
                      ),
                      FilledButton.tonal(
                        key: const ValueKey('telemetry-allow'),
                        onPressed: () => telemetry.setConsent(true),
                        child: Text(l10n.telemetryAllow),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Kapcsoló a beállításokban (bármikor visszavonható).
class TelemetrySwitchTile extends StatelessWidget {
  const TelemetrySwitchTile({super.key});

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    return SwitchListTile(
      key: const ValueKey('telemetry-switch'),
      secondary: const Icon(Icons.insights_rounded),
      title: Text(l10n.telemetrySetting),
      subtitle: Text(l10n.telemetrySettingHint),
      value: services.preferences.telemetryConsent ?? false,
      onChanged: services.telemetry.setConsent,
    );
  }
}
