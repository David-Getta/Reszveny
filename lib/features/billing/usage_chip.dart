import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'paywall_page.dart';
import 'plan.dart';

/// Kis kijelző: csomag, hátralévő elemzések, próbaidő. Kattintásra a
/// csomagválasztó nyílik.
class UsageChip extends StatelessWidget {
  const UsageChip({super.key, this.compact = false});

  final bool compact;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return ListenableBuilder(
      listenable: services.entitlements,
      builder: (context, _) {
        final ent = services.entitlements;
        final plan = ent.plan;
        final String label;
        final String detail;
        if (plan == null) {
          label = l10n.planNone;
          detail = ent.extraCredits > 0 ? l10n.extraCredits(ent.extraCredits) : l10n.viewPlans;
        } else if (ent.isTrial) {
          label = l10n.planTrial;
          detail = ent.isTrialExpired ? l10n.trialExpired : l10n.trialDaysLeft(ent.trialDaysLeft);
        } else {
          label = switch (plan.tier) {
            PlanTier.normal => l10n.planNormal,
            PlanTier.pro => l10n.planPro,
            PlanTier.max => l10n.planMax1,
            PlanTier.ultra => l10n.planMax2,
            PlanTier.trial => l10n.planTrial,
          };
          detail = l10n.analysesRemaining(ent.remainingInPeriod, ent.quota);
        }
        final warn = !ent.canAnalyze;
        return Material(
          color: warn ? p.negative.withValues(alpha: 0.12) : p.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: warn ? p.negative.withValues(alpha: 0.5) : p.border),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () => PaywallPage.open(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: compact ? 8 : 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.workspace_premium_outlined, size: 18, color: warn ? p.negative : p.accent),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          label,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          detail,
                          style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
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
