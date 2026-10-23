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

  /// Van-e hozzáférés a mellékfunkciókhoz (kérdés, segédhívás): csomag, élő
  /// próbaidő vagy megvett extra elemzés.
  bool hasAccess(Entitlement e) => e.extra > 0 || (e.tier != null && !_trialExpired(e));

  /// Most felhasználható elemzések: időszaki maradék + extra (a tartozás levonva).
  int available(Entitlement e) {
    final q = _periodQuota(e);
    return ((q - e.used).clamp(0, q) + e.extra).clamp(0, 1 << 30);
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

  /// [cost] elemzés lefoglalása a továbbítás előtt (előbb a keret, a maradék az
  /// extrából): a friss sorból, a beolvasás és az írás között várakozás nélkül,
  /// és csak a két számlálót módosítva – így párhuzamos kérések sem költhetik el
  /// kétszer ugyanazt, és egy közben jóváírt vásárlás sem vész el. `null`, ha
  /// nincs elég.
  ({int period, int extra})? reserve(String userId, {int cost = 1}) {
    final e = store.entitlement(userId);
    if (check(e, cost: cost) != QuotaResult.ok) return null;
    final fromPeriod = (_periodQuota(e) - e.used).clamp(0, cost);
    final held = (period: fromPeriod, extra: cost - fromPeriod);
    store.addUsage(userId, used: held.period, extra: -held.extra);
    return held;
  }

  /// Egy foglalás visszaadása (sikertelen vagy félbemaradt elemzésnél).
  void refund(String userId, ({int period, int extra}) held) =>
      store.addUsage(userId, used: -held.period, extra: held.extra);

  /// Visszatérítés / visszavonás: előfizetésnél az időszak azonnal véget ér,
  /// csomagnál a hozzá tartozó extra elemzések (amennyi még megvan) elvesznek.
  void revoke(Entitlement e, String productId) {
    final plan = PlanSpec.byProductId(productId);
    if (plan != null) {
      if (e.tier == plan.tier) {
        e
          ..tier = null
          ..periodEnd = store.clock()
          ..paidThrough = store.clock();
        store.save(e);
      }
      return;
    }
    // Csomagnál a jóváírt extra elemzések elvesznek; ha már elfogytak, tartozás marad
    // (negatív extra), amit a következő vásárlás vagy a keret fedez.
    final pack = PlanSpec.packs[productId];
    if (pack != null) {
      e.extra -= pack;
      store.save(e);
    }
  }

  /// Vásárlás jóváírása: előfizetés → új időszak; csomag → extra elemzések.
  /// Előfizetésnél [until] a bolt / Stripe szerinti kifizetett időszak vége
  /// (ismeretlenül egy hónap); havi előfizetésnél a keret-időszak is ehhez
  /// igazodik, évesnél havonta gördül tovább.
  bool apply(Entitlement e, String productId, {DateTime? until}) {
    final plan = PlanSpec.byProductId(productId);
    if (plan != null) {
      final now = store.clock();
      final month = now.add(const Duration(days: PlanSpec.periodDays));
      // Ismeretlen kifizetett időszaknál (pl. a Stripe számlája még nem jött meg) az
      // éves előfizetés egy évre szól, nem egy hónapra.
      final fallback = productId == plan.yearlyProductId ? now.add(const Duration(days: 365)) : month;
      final paid = until != null && until.isAfter(now) ? until : fallback;
      e
        ..tier = plan.tier
        ..periodStart = now
        ..periodEnd = paid.difference(now) <= const Duration(days: 35) ? paid : month
        ..paidThrough = paid
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
