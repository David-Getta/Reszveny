import 'db.dart';
import 'plans.dart';

enum QuotaResult { ok, noPlan, trialExpired, exhausted, insufficient }

/// Ugyanaz a szabályrendszer, mint a kliens `EntitlementService`-e.
class Quota {
  Quota(this.store);

  final Store store;

  bool _trialExpired(Entitlement e) =>
      e.tier == 'trial' && e.periodEnd != null && !store.clock().isBefore(e.periodEnd!);

  int _periodQuota(Entitlement e) =>
      e.tier == null || _trialExpired(e) ? 0 : (PlanSpec.byTier(e.tier)?.analysesPerPeriod ?? 0);

  /// A következő elemzés a próbaidő keretéből megy-e (nem a megvett extrából).
  bool drawsFromTrial(Entitlement e) => e.tier == 'trial' && !_trialExpired(e) && e.used < PlanSpec.trialAnalyses;

  /// Most felhasználható elemzések: időszaki maradék + extra.
  int available(Entitlement e) {
    final q = _periodQuota(e);
    return (q - e.used).clamp(0, q) + e.extra;
  }

  /// Indítható-e egy [cost] elemzést fogyasztó elemzés.
  QuotaResult check(Entitlement e, {int cost = 1}) {
    final a = available(e);
    if (a >= cost) return QuotaResult.ok;
    if (a > 0) return QuotaResult.insufficient;
    if (e.tier == null) return QuotaResult.noPlan;
    if (_trialExpired(e)) return QuotaResult.trialExpired;
    return QuotaResult.exhausted;
  }

  /// [cost] elemzés levonása (előbb a keret, a maradék az extrából). Hamis, ha nincs elég.
  bool consume(Entitlement e, {int cost = 1}) {
    if (check(e, cost: cost) != QuotaResult.ok) return false;
    final fromPeriod = (_periodQuota(e) - e.used).clamp(0, cost);
    e.used += fromPeriod;
    e.extra -= cost - fromPeriod;
    store.save(e);
    return true;
  }

  /// Visszatérítés / visszavonás: előfizetésnél az időszak azonnal véget ér,
  /// csomagnál a hozzá tartozó extra elemzések (amennyi még megvan) elvesznek.
  void revoke(Entitlement e, String productId) {
    final plan = PlanSpec.byProductId(productId);
    if (plan != null) {
      if (e.tier == plan.tier) {
        e
          ..tier = null
          ..periodEnd = store.clock();
        store.save(e);
      }
      return;
    }
    final pack = PlanSpec.packs[productId];
    if (pack != null) {
      e.extra = (e.extra - pack).clamp(0, e.extra);
      store.save(e);
    }
  }

  /// Vásárlás jóváírása: előfizetés → új időszak; csomag → extra elemzések.
  bool apply(Entitlement e, String productId) {
    final plan = PlanSpec.byProductId(productId);
    if (plan != null) {
      final now = store.clock();
      e
        ..tier = plan.tier
        ..periodStart = now
        ..periodEnd = now.add(const Duration(days: PlanSpec.periodDays))
        ..used = 0;
      store.save(e);
      return true;
    }
    final pack = PlanSpec.packs[productId];
    if (pack != null) {
      e.extra += pack;
      store.save(e);
      return true;
    }
    return false;
  }
}
