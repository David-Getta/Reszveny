import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import 'billing_service.dart';
import 'entitlement_service.dart';
import 'plan.dart';

/// Csomagválasztó: próbaidő-állapot, négy előfizetés, extra csomagok,
/// visszaállítás és előfizetés-kezelés.
class PaywallPage extends StatefulWidget {
  const PaywallPage({super.key});

  static Future<void> open(BuildContext context) =>
      Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const PaywallPage()));

  @override
  State<PaywallPage> createState() => _PaywallPageState();
}

class _PaywallPageState extends State<PaywallPage> {
  bool _loaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_loaded) return;
    _loaded = true;
    AppServices.of(context).billingController.loadProducts();
  }

  String _planName(AppLocalizations l10n, PlanTier t) => switch (t) {
    PlanTier.trial => l10n.planTrial,
    PlanTier.normal => l10n.planNormal,
    PlanTier.pro => l10n.planPro,
    PlanTier.max1 => l10n.planMax1,
    PlanTier.max2 => l10n.planMax2,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final hasSidebar = MediaQuery.sizeOf(context).width >= 860;

    return Scaffold(
      appBar: desktopAppBar(context, title: Text(l10n.subscription), hasSidebar: hasSidebar),
      body: ListenableBuilder(
        listenable: Listenable.merge([services.billingController, services.entitlements]),
        builder: (context, _) {
          final bc = services.billingController;
          final ent = services.entitlements;
          final event = bc.lastEvent;
          final subs = bc.products.where((x) => x.kind == StoreProductKind.subscription).toList();
          final packs = bc.products.where((x) => x.kind == StoreProductKind.pack).toList();
          final wide = MediaQuery.sizeOf(context).width >= 980;

          return Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 980),
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
                children: [
                  _StatusCard(ent: ent, fmt: fmt, planName: (t) => _planName(l10n, t)),
                  const SizedBox(height: 20),
                  Text(l10n.choosePlan, style: theme.textTheme.titleLarge),
                  const SizedBox(height: 6),
                  Text(l10n.planFeaturesCommon, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                  const SizedBox(height: 14),
                  if (bc.loading)
                    const Center(
                      child: Padding(padding: EdgeInsets.all(24), child: CircularProgressIndicator()),
                    )
                  else if (!bc.available)
                    Card(
                      child: Padding(padding: const EdgeInsets.all(16), child: Text(l10n.billingUnavailable)),
                    )
                  else
                    GridView.count(
                      crossAxisCount: wide ? 4 : 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: wide ? 0.82 : 0.9,
                      children: [
                        for (final spec in PlanSpec.paid)
                          _PlanCard(
                            spec: spec,
                            name: _planName(l10n, spec.tier),
                            product: subs.where((x) => x.id == spec.productId).firstOrNull,
                            current: ent.plan?.tier == spec.tier && !ent.isTrialExpired,
                            badge: spec.tier == PlanTier.pro
                                ? l10n.mostPopular
                                : spec.tier == PlanTier.max1
                                ? l10n.bestValue
                                : null,
                            busy: bc.busyProductId == spec.productId,
                            onBuy: (prod) => bc.buy(prod),
                          ),
                      ],
                    ),
                  if (bc.available && packs.isNotEmpty) ...[
                    const SizedBox(height: 24),
                    Text(l10n.extraPacksTitle, style: theme.textTheme.titleMedium),
                    const SizedBox(height: 4),
                    Text(l10n.extraPacksHint, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        for (final pack in packs)
                          _PackChip(product: pack, busy: bc.busyProductId == pack.id, onBuy: () => bc.buy(pack)),
                      ],
                    ),
                  ],
                  const SizedBox(height: 20),
                  if (event != null) _EventNote(event: event),
                  Wrap(
                    spacing: 8,
                    children: [
                      TextButton.icon(
                        onPressed: bc.restore,
                        icon: const Icon(Icons.restore_rounded, size: 18),
                        label: Text(l10n.restorePurchases),
                      ),
                      TextButton.icon(
                        onPressed: () => _manage(context),
                        icon: const Icon(Icons.manage_accounts_outlined, size: 18),
                        label: Text(l10n.manageSubscription),
                      ),
                    ],
                  ),
                  if (bc.billing.isDemo)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(l10n.demoPurchaseNote, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _manage(BuildContext context) async {
    final theme = Theme.of(context);
    final url = switch (theme.platform) {
      TargetPlatform.iOS || TargetPlatform.macOS => 'https://apps.apple.com/account/subscriptions',
      TargetPlatform.android => 'https://play.google.com/store/account/subscriptions',
      _ => null,
    };
    if (url != null) await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
}

class _StatusCard extends StatelessWidget {
  const _StatusCard({required this.ent, required this.fmt, required this.planName});

  final EntitlementService ent;
  final Fmt fmt;
  final String Function(PlanTier) planName;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final plan = ent.plan;
    final String title;
    final String subtitle;
    if (plan == null) {
      title = l10n.planNone;
      subtitle = ent.extraCredits > 0 ? l10n.extraCredits(ent.extraCredits) : l10n.errNoPlan;
    } else if (ent.isTrial) {
      title = l10n.planTrial;
      subtitle = ent.isTrialExpired
          ? l10n.trialExpired
          : '${l10n.trialDaysLeft(ent.trialDaysLeft)} · ${l10n.analysesRemaining(ent.remainingInPeriod, ent.quota)}';
    } else {
      title = planName(plan.tier);
      subtitle =
          '${l10n.analysesRemaining(ent.remainingInPeriod, ent.quota)} · ${l10n.renewsOn(fmt.date(ent.periodEnd))}';
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.workspace_premium_outlined, color: p.accent, size: 28),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${l10n.currentPlan}: $title', style: theme.textTheme.titleMedium),
                  const SizedBox(height: 2),
                  Text(subtitle, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                  if (plan != null && !ent.isTrial && ent.extraCredits > 0)
                    Text(
                      l10n.extraCredits(ent.extraCredits),
                      style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlanCard extends StatelessWidget {
  const _PlanCard({
    required this.spec,
    required this.name,
    required this.product,
    required this.current,
    required this.busy,
    required this.onBuy,
    this.badge,
  });

  final PlanSpec spec;
  final String name;
  final StoreProduct? product;
  final bool current;
  final bool busy;
  final String? badge;
  final void Function(StoreProduct) onBuy;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final highlighted = badge != null;
    return Container(
      decoration: BoxDecoration(
        color: p.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: highlighted ? p.accent : p.border, width: highlighted ? 1.5 : 1),
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (badge != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: p.accent.withValues(alpha: 0.18),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                badge!,
                style: theme.textTheme.labelSmall?.copyWith(color: p.accent, fontWeight: FontWeight.w700),
              ),
            )
          else
            const SizedBox(height: 20),
          const SizedBox(height: 8),
          Text(name, style: theme.textTheme.titleLarge),
          const SizedBox(height: 4),
          Text(
            l10n.planAnalysesPerMonth(spec.analysesPerPeriod),
            style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
          ),
          const Spacer(),
          if (product != null)
            RichText(
              text: TextSpan(
                style: theme.textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: product!.price,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: ' ${l10n.perMonth}',
                    style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: current
                ? OutlinedButton(onPressed: null, child: Text(l10n.currentPlan))
                : FilledButton(
                    onPressed: product == null || busy ? null : () => onBuy(product!),
                    child: busy
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                          )
                        : Text(l10n.subscribe),
                  ),
          ),
        ],
      ),
    );
  }
}

class _PackChip extends StatelessWidget {
  const _PackChip({required this.product, required this.busy, required this.onBuy});

  final StoreProduct product;
  final bool busy;
  final VoidCallback onBuy;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final n = product.pack?.analyses ?? 0;
    return Container(
      decoration: BoxDecoration(
        color: p.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: p.border),
      ),
      padding: const EdgeInsets.fromLTRB(14, 10, 10, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.extraCredits(n), style: const TextStyle(fontWeight: FontWeight.w600)),
              Text(product.price, style: TextStyle(color: p.muted, fontSize: 12)),
            ],
          ),
          const SizedBox(width: 12),
          FilledButton.tonal(onPressed: busy ? null : onBuy, child: Text(l10n.buy)),
        ],
      ),
    );
  }
}

class _EventNote extends StatelessWidget {
  const _EventNote({required this.event});

  final BillingEvent event;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final (text, color) = switch (event.status) {
      BillingStatus.purchased || BillingStatus.restored => (l10n.purchaseSuccess, p.positive),
      BillingStatus.pending => (l10n.purchasePending, p.muted),
      BillingStatus.error => (l10n.purchaseFailed, p.negative),
      BillingStatus.canceled => (l10n.purchaseCanceled, p.muted),
    };
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: TextStyle(color: color, fontWeight: FontWeight.w600),
      ),
    );
  }
}
