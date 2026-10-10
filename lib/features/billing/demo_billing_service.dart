import 'dart:async';

import 'billing_service.dart';
import 'plan.dart';

/// Szimulált bolt: asztali gépen, weben és tesztekben a vásárlás azonnal
/// „sikerül”. Az árak itt csak helykitöltők; élesben a bolt adja őket.
class DemoBillingService implements BillingService {
  DemoBillingService({this.latency = const Duration(milliseconds: 400), this.currency = 'HUF'});

  final Duration latency;
  final String currency;
  final _events = StreamController<BillingEvent>.broadcast();

  @override
  String get name => 'Demo';

  @override
  bool get isDemo => true;

  @override
  Stream<BillingEvent> get events => _events.stream;

  @override
  Future<bool> isAvailable() async => true;

  static const Map<String, double> demoPrices = {
    'stocklens.sub.normal': 2990,
    'stocklens.sub.pro': 5990,
    'stocklens.sub.max': 14990,
    'stocklens.sub.ultra': 24990,
    'stocklens.pack.5': 1990,
    'stocklens.pack.20': 6990,
    'stocklens.pack.50': 14990,
  };

  @override
  Future<List<StoreProduct>> products() async {
    await Future<void>.delayed(latency);
    return [
      for (final p in PlanSpec.paid)
        StoreProduct(
          id: p.productId,
          title: p.tier.name,
          price: _fmt(demoPrices[p.productId]!),
          rawPrice: demoPrices[p.productId]!,
          currency: currency,
          kind: StoreProductKind.subscription,
        ),
      for (final p in AddOnPack.all)
        StoreProduct(
          id: p.productId,
          title: '+${p.analyses}',
          price: _fmt(demoPrices[p.productId]!),
          rawPrice: demoPrices[p.productId]!,
          currency: currency,
          kind: StoreProductKind.pack,
        ),
    ];
  }

  String _fmt(double v) {
    final s = v.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+$)'), (m) => '${m[1]} ');
    return currency == 'HUF' ? '$s Ft' : '$s $currency';
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
