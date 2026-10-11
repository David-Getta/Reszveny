import 'package:flutter/material.dart';

import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'paywall_page.dart';

/// A próbaidő alatt: a próba-elemzés rövid, és gyorsabb modellel készül; az
/// előfizetéssel a legerősebb modell, több webes kutatás és hosszabb elemzés jár.
class TrialUpsellNote extends StatelessWidget {
  const TrialUpsellNote({super.key, this.showButton = true});

  /// „Csomagok megtekintése” gomb (a beállításokban nem kell, ott van külön kártya).
  final bool showButton;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Container(
      key: const ValueKey('trial-upsell'),
      width: double.infinity,
      padding: const EdgeInsetsDirectional.fromSTEB(12, 10, 12, 10),
      decoration: BoxDecoration(
        color: p.accent.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: p.accent.withValues(alpha: 0.30)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Icon(Icons.workspace_premium_outlined, size: 18, color: p.accent),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.aiTrialBriefNote, style: theme.textTheme.bodySmall),
                if (showButton)
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        visualDensity: VisualDensity.compact,
                        minimumSize: const Size(0, 32),
                      ),
                      onPressed: () => PaywallPage.open(context),
                      child: Text(l10n.viewPlans),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
