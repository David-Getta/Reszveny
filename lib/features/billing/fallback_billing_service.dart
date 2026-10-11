import 'dart:async';

import 'package:flutter/foundation.dart';

import 'billing_service.dart';

/// Valódi bolt (App Store / Play) demó tartalékkal: ha a bolt nem érhető el,
/// vagy még nincs felvéve benne egyetlen előfizetés sem (fejlesztés, saját
/// build, TestFlight előtt), a szimulált boltra vált, hogy az app így is
/// kipróbálható legyen. Amint a bolt termékeket ad, végig a boltot használja.
class FallbackBillingService implements BillingService {
  FallbackBillingService({required this.primary, required this.fallback}) {
    _subs = [primary.events.listen(_events.add), fallback.events.listen(_events.add)];
  }

  final BillingService primary;
  final BillingService fallback;
  final _events = StreamController<BillingEvent>.broadcast();
  late final List<StreamSubscription<BillingEvent>> _subs;

  bool _useFallback = false;

  /// Az éppen használt bolt.
  BillingService get active => _useFallback ? fallback : primary;

  @override
  String get name => active.name;

  @override
  bool get isDemo => active.isDemo;

  @override
  Stream<BillingEvent> get events => _events.stream;

  @override
  Future<bool> isAvailable() async => true;

  @override
  Future<List<StoreProduct>> products() async {
    try {
      if (await primary.isAvailable()) {
        final list = await primary.products();
        if (list.any((p) => p.kind == StoreProductKind.subscription)) {
          _useFallback = false;
          return list;
        }
      }
    } catch (e) {
      debugPrint('A bolt nem érhető el: $e');
    }
    _useFallback = true;
    return fallback.products();
  }

  @override
  Future<void> buy(StoreProduct product) => active.buy(product);

  @override
  Future<void> restore() => active.restore();

  void dispose() {
    for (final s in _subs) {
      s.cancel();
    }
    _events.close();
  }
}
