import 'db.dart';
import 'plans.dart';

enum QuotaResult { ok, noPlan, trialExpired, exhausted }

/// Ugyanaz a szabályrendszer, mint a kliens `EntitlementService`-e.
class Quota {
  Quota(this.store);

  final Store store;

  QuotaResult check(Entitlement e) {
    if (e.tier == null) return e.extra > 0 ? QuotaResult.ok : QuotaResult.noPlan;
    if (e.tier == 'trial' && e.periodEnd != null && !store.clock().isBefore(e.periodEnd!)) {
      return e.extra > 0 ? QuotaResult.ok : QuotaResult.trialExpired;
    }
    final q = PlanSpec.byTier(e.tier)?.analysesPerPeriod ?? 0;
    if (e.used < q || e.extra > 0) return QuotaResult.ok;
    return QuotaResult.exhausted;
  }

  /// Egy elemzés levonása (előbb a keret, aztán az extra). Hamis, ha nincs keret.
  bool consume(Entitlement e) {
    if (check(e) != QuotaResult.ok) return false;
    final expiredTrial = e.tier == 'trial' && e.periodEnd != null && !store.clock().isBefore(e.periodEnd!);
    final q = e.tier == null || expiredTrial ? 0 : (PlanSpec.byTier(e.tier)?.analysesPerPeriod ?? 0);
    if (e.used < q) {
      e.used++;
    } else {
      e.extra--;
    }
    store.save(e);
    return true;
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
