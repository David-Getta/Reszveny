import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/features/billing/billing_service.dart';
import 'package:reszveny/features/billing/demo_billing_service.dart';
import 'package:reszveny/features/billing/fallback_billing_service.dart';

class _FakeStore implements BillingService {
  _FakeStore({this.available = true, this.items = const []});

  final bool available;
  final List<StoreProduct> items;
  final _events = StreamController<BillingEvent>.broadcast();
  final bought = <String>[];

  @override
  String get name => 'Store';
  @override
  bool get isDemo => false;
  @override
  Stream<BillingEvent> get events => _events.stream;
  @override
  Future<bool> isAvailable() async => available;
  @override
  Future<List<StoreProduct>> products() async => items;
  @override
  Future<void> buy(StoreProduct product) async => bought.add(product.id);
  @override
  Future<void> restore() async {}
}

void main() {
  test('a store without products falls back to the demo store, and purchases work', () async {
    final store = _FakeStore();
    final s = FallbackBillingService(
      primary: store,
      fallback: DemoBillingService(latency: Duration.zero),
    );
    final products = await s.products();
    expect(products.where((p) => p.kind == StoreProductKind.subscription), hasLength(4));
    expect(s.isDemo, isTrue);
    final events = <BillingEvent>[];
    final sub = s.events.listen(events.add);
    await s.buy(products.first);
    await Future<void>.delayed(Duration.zero);
    expect(events.map((e) => e.status), contains(BillingStatus.purchased));
    expect(store.bought, isEmpty);
    await sub.cancel();
  });

  test('an unavailable store falls back too', () async {
    final s = FallbackBillingService(
      primary: _FakeStore(available: false),
      fallback: DemoBillingService(latency: Duration.zero),
    );
    expect(await s.products(), isNotEmpty);
    expect(s.isDemo, isTrue);
  });

  test('a store with subscriptions is used as is', () async {
    const sub = StoreProduct(
      id: 'stocklens.sub.pro',
      title: 'Pro',
      price: '\$15.99',
      rawPrice: 15.99,
      currency: 'USD',
      kind: StoreProductKind.subscription,
    );
    final store = _FakeStore(items: const [sub]);
    final s = FallbackBillingService(
      primary: store,
      fallback: DemoBillingService(latency: Duration.zero),
    );
    expect(await s.products(), [sub]);
    expect(s.isDemo, isFalse);
    await s.buy(sub);
    expect(store.bought, ['stocklens.sub.pro']);
  });
}
