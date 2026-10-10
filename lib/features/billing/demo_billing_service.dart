import 'dart:async';

import '../fx/fx_service.dart';
import 'billing_service.dart';
import 'plan.dart';
import 'pricing.dart';

/// Szimulált bolt: asztali gépen, weben és tesztekben a vásárlás azonnal
/// „sikerül”. Az árakat az USD-alapárból számolja a felhasználó pénznemére
/// (ECB-árfolyam, helyi kerekítés); élesben a bolt adja őket.
class DemoBillingService implements BillingService {
  DemoBillingService({
    this.latency = const Duration(milliseconds: 400),
    String Function()? currency,
    this.fx,
    this.locale = 'en',
  }) : _currency = currency ?? (() => 'USD');

  final Duration latency;
  final String Function() _currency;
  final FxService? fx;

  /// A formázáshoz használt nyelv (pl. `hu`).
  final String locale;
  final _events = StreamController<BillingEvent>.broadcast();

  @override
  String get name => 'Demo';

  @override
  bool get isDemo => true;

  @override
  Stream<BillingEvent> get events => _events.stream;

  @override
  Future<bool> isAvailable() async => true;

  @override
  Future<List<StoreProduct>> products() async {
    await Future<void>.delayed(latency);
    final currency = _currency().toUpperCase();
    double? rate;
    if (currency != 'USD' && fx != null) {
      rate = (await fx!.rate('USD', currency))?.rate;
    }
    final effective = currency == 'USD' || rate != null ? currency : 'USD';
    StoreProduct make(String id, String title, StoreProductKind kind) {
      final amount = Pricing.localize(Pricing.baseUsd[id]!, effective, rate);
      return StoreProduct(
        id: id,
        title: title,
        price: Pricing.format(amount, effective, locale),
        rawPrice: amount,
        currency: effective,
        kind: kind,
      );
    }

    return [
      for (final p in PlanSpec.paid) make(p.productId, p.tier.name, StoreProductKind.subscription),
      for (final p in AddOnPack.all) make(p.productId, '+${p.analyses}', StoreProductKind.pack),
    ];
  }

  @override
  Future<void> buy(StoreProduct product) async {
    _events.add(BillingEvent(productId: product.id, status: BillingStatus.pending));
    await Future<void>.delayed(latency);
    _events.add(BillingEvent(productId: product.id, status: BillingStatus.purchased));
  }

  @override
  Future<void> restore() async {
    await Future<void>.delayed(latency);
  }
}
