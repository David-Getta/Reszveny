import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app_services.dart';
import '../../core/backend/backend_client.dart' show BackendException;
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import '../account/sign_in_sheet.dart';
import 'billing_controller.dart' show RestoreOutcome;
import 'billing_service.dart';
import 'entitlement_service.dart';
import 'fallback_billing_service.dart';
import 'plan.dart';
import 'pricing.dart';
import 'web_checkout_billing_service.dart';
import '../../widgets/centered_scroll.dart';

/// Csomagválasztó: próbaidő-állapot, négy előfizetés (a Pro és a Max évesen
/// is), extra csomagok, visszaállítás és előfizetés-kezelés.
class PaywallPage extends StatefulWidget {
  const PaywallPage({super.key});

  static Future<void> open(BuildContext context) {
    AppServices.of(context).telemetry.track('paywall_view');
    return Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const PaywallPage()));
  }

  @override
  State<PaywallPage> createState() => _PaywallPageState();
}

class _PaywallPageState extends State<PaywallPage> with WidgetsBindingObserver {
  bool _loaded = false;
  StoreProduct? _afterLogin;

  /// Éves számlázás látszik (a Pro és a Max éves termékei).
  bool _yearly = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  /// Visszatérés a böngészőből: a fiók azonnali frissítése (nem kell megvárni
  /// a következő lekérdezést).
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && mounted) AppServices.of(context).syncEntitlements();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_loaded) return;
    _loaded = true;
    final services = AppServices.of(context);
    services.billingController.loadProducts();
    services.billingController.addListener(_onBilling);
    // Egy korábbi látogatás lezárt vásárlásának üzenete ne jelenjen meg újra.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) services.billingController.clearFinished();
    });
  }

  @override
  void deactivate() {
    AppServices.of(context).billingController.removeListener(_onBilling);
    super.deactivate();
  }

  @override
  void activate() {
    super.activate();
    AppServices.of(context).billingController.addListener(_onBilling);
  }

  /// A böngészős fizetéshez fiók kell: belépés, majd a vásárlás folytatása.
  Future<void> _onBilling() async {
    final services = AppServices.of(context);
    final bc = services.billingController;
    final e = bc.lastEvent;
    final account = services.account;
    if (e == null || e.status != BillingStatus.needsLogin || account == null) return;
    final product = bc.products.where((p) => p.id == e.productId).firstOrNull;
    bc.clearLastEvent();
    if (_afterLogin != null) return;
    _afterLogin = product;
    final ok = await showSignInSheet(context, account);
    final again = _afterLogin;
    _afterLogin = null;
    if (ok && again != null) await bc.buy(again);
  }

  /// Fizetési mód a lap alján (mint a Claude-nál: asztali gépen böngészős
  /// fizetés, telefonon a bolt).
  String? _paymentNote(AppLocalizations l10n, BillingService b) {
    final active = b is FallbackBillingService ? b.active : b;
    if (active.isDemo) return l10n.demoPurchaseNote;
    if (active is WebCheckoutBillingService) return l10n.paymentViaStripe;
    // Csak a saját bolt neve (iOS-en a Google Play említése sem fér bele az App Store szabályaiba).
    return switch (Theme.of(context).platform) {
      TargetPlatform.iOS || TargetPlatform.macOS => l10n.paymentViaAppStore,
      TargetPlatform.android => l10n.paymentViaGooglePlay,
      _ => l10n.paymentViaStore,
    };
  }

  String _planName(AppLocalizations l10n, PlanTier t) => switch (t) {
    PlanTier.trial => l10n.planTrial,
    PlanTier.normal => l10n.planNormal,
    PlanTier.pro => l10n.planPro,
    PlanTier.max => l10n.planMax1,
    PlanTier.ultra => l10n.planMax2,
  };

  /// „Legjobb ár/érték”: a látható csomagok közül az, amelyik elemzésenként a
  /// legolcsóbb, a bolt valódi (helyi) áraiból számolva. Egyenlőségnél a nagyobb
  /// csomag nyer. Havi nézetben ez most az Ultra, éves nézetben a Max.
  static PlanTier? _bestValueTier(List<PlanSpec> specs, List<StoreProduct> subs, {required bool yearly}) {
    PlanTier? best;
    double? bestUnit;
    for (final spec in specs) {
      final id = yearly ? spec.yearlyProductId : spec.productId;
      final prod = subs.where((x) => x.id == id).firstOrNull;
      if (prod == null || prod.rawPrice <= 0) continue;
      final unit = prod.rawPrice / (spec.analysesPerPeriod * (yearly ? 12 : 1));
      if (bestUnit == null || unit <= bestUnit) {
        bestUnit = unit;
        best = spec.tier;
      }
    }
    return best;
  }

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
          final hasYearly = subs.any((x) => x.isYearly);
          final yearly = _yearly && hasYearly;
          final specs = yearly ? PlanSpec.withYearly : PlanSpec.paid;
          final best = _bestValueTier(specs, subs, yearly: yearly);

          return CenteredScroll(
            maxWidth: 980,
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
            builder: (context, padding) => ListView(
              padding: padding,
              children: [
                _StatusCard(ent: ent, fmt: fmt, planName: (t) => _planName(l10n, t)),
                const SizedBox(height: 20),
                Text(l10n.choosePlan, style: theme.textTheme.titleLarge),
                const SizedBox(height: 6),
                Text(l10n.planFeaturesCommon, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                const SizedBox(height: 14),
                if (hasYearly && bc.available && !bc.loading) ...[
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: SegmentedButton<bool>(
                      key: const ValueKey('billing-period'),
                      showSelectedIcon: false,
                      segments: [
                        ButtonSegment(value: false, label: Text(l10n.billingMonthly)),
                        ButtonSegment(
                          value: true,
                          label: Text.rich(
                            TextSpan(
                              text: l10n.billingYearly,
                              children: [
                                TextSpan(
                                  text: '  ${l10n.yearlyDiscount}',
                                  style: TextStyle(color: p.accent, fontWeight: FontWeight.w700, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                      selected: {yearly},
                      onSelectionChanged: (s) => setState(() => _yearly = s.first),
                    ),
                  ),
                  const SizedBox(height: 14),
                ],
                if (bc.loading)
                  const Center(
                    child: Padding(padding: EdgeInsets.all(24), child: CircularProgressIndicator()),
                  )
                else if (!bc.available)
                  Card(
                    child: Padding(padding: const EdgeInsets.all(16), child: Text(l10n.billingUnavailable)),
                  )
                else
                  _PlanGrid(
                    columns: yearly ? 2 : (wide ? 4 : 2),
                    children: [
                      for (final spec in specs)
                        if ((yearly ? spec.yearlyProductId : spec.productId) case final id?)
                          _PlanCard(
                            spec: spec,
                            name: _planName(l10n, spec.tier),
                            product: subs.where((x) => x.id == id).firstOrNull,
                            yearly: yearly,
                            // Éves nézetben a havi előfizetésről is lehet évesre váltani.
                            current: !yearly && ent.plan?.tier == spec.tier && !ent.isTrialExpired,
                            badge: spec.tier == best
                                ? l10n.bestValue
                                : (spec.tier == PlanTier.pro ? l10n.mostPopular : null),
                            busy: bc.busyProductId == id,
                            // Egy folyamatban lévő vásárlás alatt a többi gomb sem indít újat.
                            locked: bc.busyProductId != null,
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
                        _PackChip(
                          product: pack,
                          busy: bc.busyProductId == pack.id,
                          locked: bc.busyProductId != null,
                          onBuy: () => bc.buy(pack),
                        ),
                    ],
                  ),
                ],
                const SizedBox(height: 20),
                if (event != null && event.status == BillingStatus.pending && event.platform == 'stripe')
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        children: [
                          const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)),
                          const SizedBox(width: 12),
                          Expanded(child: Text(l10n.checkoutWaiting)),
                        ],
                      ),
                    ),
                  )
                else if (event != null && event.status != BillingStatus.needsLogin)
                  _EventNote(event: event)
                else if (bc.restoreOutcome case final r? when r != RestoreOutcome.found)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      r == RestoreOutcome.nothing ? l10n.restoreNothing : l10n.errorGeneric,
                      key: const ValueKey('restore-outcome'),
                      style: TextStyle(color: p.muted, fontWeight: FontWeight.w600),
                    ),
                  ),
                Wrap(
                  spacing: 8,
                  children: [
                    TextButton.icon(
                      key: const ValueKey('restore-purchases'),
                      onPressed: bc.restoring ? null : bc.restore,
                      icon: bc.restoring
                          ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                          : const Icon(Icons.restore_rounded, size: 18),
                      label: Text(l10n.restorePurchases),
                    ),
                    TextButton.icon(
                      onPressed: () => _manage(context),
                      icon: const Icon(Icons.manage_accounts_outlined, size: 18),
                      label: Text(l10n.manageSubscription),
                    ),
                  ],
                ),
                // Az App Store és a fogyasztóvédelem is megköveteli: automatikus
                // megújulás, és a feltételek elérhetők a vásárlás helyén.
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    yearly ? l10n.subscriptionLegalYearly : l10n.subscriptionLegal,
                    style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                  ),
                ),
                Wrap(
                  spacing: 4,
                  children: [
                    for (final (label, url) in [
                      (l10n.termsOfUse, services.config.termsUrl),
                      (l10n.privacyPolicy, services.config.privacyUrl),
                    ])
                      if (services.legalUri(url, Localizations.localeOf(context)) case final uri?)
                        TextButton(
                          onPressed: () => launchUrl(uri, mode: LaunchMode.externalApplication),
                          child: Text(label),
                        ),
                  ],
                ),
                if (_paymentNote(l10n, bc.billing) case final note?)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Icon(Icons.lock_outline_rounded, size: 14, color: p.muted),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(note, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _manage(BuildContext context) async {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final billing = AppServices.of(context).billing;
    // Ha nincs mit megnyitni, a felhasználó ezt tudja meg (ne „ne történjen semmi”).
    void elsewhere() => messenger.showSnackBar(
      SnackBar(
        content: Text(switch (theme.platform) {
          TargetPlatform.iOS => l10n.manageSubscriptionAppStore,
          TargetPlatform.android => l10n.manageSubscriptionGooglePlay,
          _ => l10n.manageSubscriptionElsewhere,
        }),
      ),
    );
    if (billing is WebCheckoutBillingService) {
      try {
        await billing.manage();
      } on BackendException catch (e) {
        debugPrint('Ügyfélportál nem nyitható: $e');
        if (e.code == 'no_customer') {
          elsewhere();
        } else {
          messenger.showSnackBar(SnackBar(content: Text(l10n.errorGeneric)));
        }
      } catch (e) {
        debugPrint('Ügyfélportál nem nyitható: $e');
        messenger.showSnackBar(SnackBar(content: Text(l10n.errorGeneric)));
      }
      return;
    }
    final url = switch (theme.platform) {
      TargetPlatform.iOS || TargetPlatform.macOS => 'https://apps.apple.com/account/subscriptions',
      TargetPlatform.android => 'https://play.google.com/store/account/subscriptions',
      _ => null,
    };
    if (url == null) return elsewhere();
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
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
      // Lejárt próbaidő mellett a vett extra elemzésekkel tovább lehet elemezni.
      subtitle = ent.isTrialExpired
          ? (ent.extraCredits > 0 ? l10n.extraCredits(ent.extraCredits) : l10n.trialExpired)
          : '${l10n.trialDaysLeft(ent.trialDaysLeft)} · ${l10n.analysesRemaining(ent.remainingInPeriod, ent.quota)}';
    } else {
      title = planName(plan.tier);
      // Éves csomagnál a havi keret frissül, de a megújulás a kifizetett időszak végén van.
      subtitle =
          '${l10n.analysesRemaining(ent.remainingInPeriod, ent.quota)} · '
          '${l10n.renewsOn(fmt.date(ent.state.paidThrough ?? ent.periodEnd))}';
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
                  if (plan != null && (!ent.isTrial || !ent.isTrialExpired) && ent.extraCredits > 0)
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

/// A csomagkártyák rácsa: soronként egyforma magas kártyák, a magasság a tartalomhoz
/// igazodik (minden nyelven és betűméretnél elfér a pipás lista és a gomb). Nagy
/// betűméretnél kevesebb oszlop, hogy a kártya ne legyen túl keskeny.
class _PlanGrid extends StatelessWidget {
  const _PlanGrid({required this.columns, required this.children});

  final int columns;
  final List<Widget> children;

  static const _gap = 12.0;

  /// Ennél keskenyebb kártya (normál betűméretnél) nem fér el jól.
  static const _minCardWidth = 150.0;

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.textScalerOf(context).scale(1).clamp(1.0, 3.0);
    return LayoutBuilder(
      builder: (context, c) {
        final fit = ((c.maxWidth + _gap) / (_minCardWidth * scale + _gap)).floor();
        final cols = fit.clamp(1, columns);
        return Column(
          children: [
            for (var i = 0; i < children.length; i += cols) ...[
              if (i > 0) const SizedBox(height: _gap),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (var j = i; j < i + cols; j++) ...[
                      if (j > i) const SizedBox(width: _gap),
                      Expanded(child: j < children.length ? children[j] : const SizedBox.shrink()),
                    ],
                  ],
                ),
              ),
            ],
          ],
        );
      },
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
    this.locked = false,
    this.badge,
    this.yearly = false,
  });

  /// Egy másik vásárlás fut: a gomb nem indít újat.
  final bool locked;

  final PlanSpec spec;

  /// Éves ár: „/ év”, alatta a havi megfelelő.
  final bool yearly;
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
          const SizedBox(height: 6),
          for (final f in [l10n.planAnalysesPerMonth(spec.analysesPerPeriod), l10n.planWebSearches(spec.webSearches)])
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.check_rounded, size: 16, color: p.accent),
                  const SizedBox(width: 6),
                  Expanded(child: Text(f, style: theme.textTheme.bodySmall)),
                ],
              ),
            ),
          const Spacer(),
          if (product case final prod?) ...[
            RichText(
              text: TextSpan(
                style: theme.textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: prod.price,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: ' ${yearly ? l10n.perYear : l10n.perMonth}',
                    style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                  ),
                ],
              ),
            ),
            if (yearly)
              Text(
                l10n.pricePerMonthApprox(
                  Pricing.format(prod.rawPrice / 12, prod.currency, Localizations.localeOf(context).toString()),
                ),
                style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
              ),
          ],
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: current
                ? OutlinedButton(onPressed: null, child: Text(l10n.currentPlan))
                : FilledButton(
                    onPressed: product == null || busy || locked ? null : () => onBuy(product!),
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
  const _PackChip({required this.product, required this.busy, required this.onBuy, this.locked = false});

  final StoreProduct product;
  final bool busy;
  final bool locked;
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
      padding: const EdgeInsetsDirectional.fromSTEB(14, 10, 10, 10),
      // Nagy betűméretnél a gomb a felirat alá kerül (egy sorban nem férnének el).
      child: Wrap(
        spacing: 12,
        runSpacing: 8,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.extraCredits(n), style: const TextStyle(fontWeight: FontWeight.w600)),
              Text(product.price, style: TextStyle(color: p.muted, fontSize: 12)),
            ],
          ),
          FilledButton.tonal(onPressed: busy || locked ? null : onBuy, child: Text(l10n.buy)),
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
      // Bolti előfizetés mellé nem indul webes (párhuzamosan számlázna).
      BillingStatus.error when event.message == 'store_subscription' => (l10n.subscribedInStore, p.negative),
      BillingStatus.error => (l10n.purchaseFailed, p.negative),
      BillingStatus.canceled || BillingStatus.needsLogin => (l10n.purchaseCanceled, p.muted),
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
