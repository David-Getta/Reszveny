import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/backend/backend_client.dart';
import '../account/account_controller.dart';
import 'billing_service.dart';
import 'plan.dart';
import 'demo_billing_service.dart';
import 'entitlement_service.dart';

/// Böngészős fizetés, mint a Claude asztali és webes appjában: a vásárlás a
/// Stripe Checkout oldalán történik, a szerver a webhookból írja jóvá, az app
/// pedig figyeli, mikor változik a fiók jogosultsága. A megjelenített árakat a
/// régió pénznemében mutatja (a Stripe a fizetésnél a helyi pénznemet kínálja).
class WebCheckoutBillingService implements BillingService {
  WebCheckoutBillingService({
    required this.backend,
    required this.account,
    required this.prices,
    required this.openUrl,
    this.pollInterval = const Duration(seconds: 4),
    this.pollTimeout = const Duration(minutes: 15),
  });

  final BackendClient backend;
  final AccountController account;

  /// A megjelenített árak forrása (régió pénzneme, helyi kerekítés).
  final DemoBillingService prices;

  /// URL megnyitása a böngészőben.
  final Future<bool> Function(Uri url) openUrl;
  final Duration pollInterval;
  final Duration pollTimeout;

  final _events = StreamController<BillingEvent>.broadcast();
  Timer? _poll;

  @override
  String get name => 'Stripe';

  @override
  bool get isDemo => false;

  @override
  Stream<BillingEvent> get events => _events.stream;

  @override
  Future<bool> isAvailable() async => true;

  @override
  Future<List<StoreProduct>> products() => prices.products();

  @override
  Future<void> buy(StoreProduct product) async {
    if (!account.isSignedIn) {
      _events.add(BillingEvent(productId: product.id, status: BillingStatus.needsLogin));
      return;
    }
    final String url;
    try {
      url = await backend.checkoutUrl(product.id);
    } on BackendException catch (e) {
      // Már van élő előfizetés: a csomagváltás a Stripe portálon megy (ott
      // nem indul második előfizetés), utána a fiók változását figyeljük.
      if (e.code == 'already_subscribed') {
        final before = account.entitlements.state;
        await manage();
        _events.add(BillingEvent(productId: product.id, status: BillingStatus.pending, platform: 'stripe'));
        _watch(product.id, before);
        return;
      }
      _events.add(
        BillingEvent(
          productId: product.id,
          status: e.code == 'login_required' ? BillingStatus.needsLogin : BillingStatus.error,
          message: e.message ?? e.code,
        ),
      );
      return;
    }
    final before = account.entitlements.state;
    // Ha a böngésző nem nyílik meg, nincs mire várni (a gomb ne pörögjön tovább).
    if (!await openUrl(Uri.parse(url))) {
      _events.add(BillingEvent(productId: product.id, status: BillingStatus.error, platform: 'stripe'));
      return;
    }
    _events.add(BillingEvent(productId: product.id, status: BillingStatus.pending, platform: 'stripe'));
    _watch(product.id, before);
  }

  /// A fizetés után a webhook írja jóvá a csomagot; addig a fiókot figyeljük.
  void _watch(String productId, EntitlementState before) {
    _poll?.cancel();
    final deadline = DateTime.now().add(pollTimeout);
    _poll = Timer.periodic(pollInterval, (t) async {
      if (DateTime.now().isAfter(deadline)) {
        t.cancel();
        // Félbehagyott fizetés: a várakozás lezárul, a csomag újra választható.
        _events.add(BillingEvent(productId: productId, status: BillingStatus.canceled, platform: 'stripe'));
        return;
      }
      try {
        final now = await backend.me();
        if (_changed(before, now)) {
          t.cancel();
          _events.add(
            BillingEvent(productId: productId, status: BillingStatus.purchased, platform: 'stripe', entitlements: now),
          );
        }
      } catch (e) {
        debugPrint('Fizetés állapota nem kérdezhető le: $e');
      }
    });
  }

  static bool _changed(EntitlementState a, EntitlementState b) =>
      a.tier != b.tier || a.extraCredits != b.extraCredits || a.periodStart != b.periodStart;

  @override
  Future<void> restore() async {
    final now = await backend.me();
    // Csak ha van mit visszaállítani (fizetős csomag vagy extra elemzés): különben a
    // vezérlő „nincs mit visszaállítani”-t mond, nem „sikeres vásárlást”.
    final paid = now.tier != null && now.tier != PlanTier.trial;
    if (!paid && now.extraCredits <= 0) return;
    _events.add(BillingEvent(productId: '', status: BillingStatus.restored, platform: 'stripe', entitlements: now));
  }

  /// Az előfizetés kezelése (csomagváltás, lemondás, számlák) a Stripe portálon.
  Future<void> manage() async => openUrl(Uri.parse(await backend.portalUrl()));

  void dispose() {
    _poll?.cancel();
    _events.close();
  }
}
