import 'package:flutter_test/flutter_test.dart';
import 'package:reszveny/features/billing/billing_controller.dart';
import 'package:reszveny/features/billing/billing_service.dart';
import 'package:reszveny/features/billing/demo_billing_service.dart';
import 'package:reszveny/features/billing/entitlement_service.dart';
import 'package:reszveny/features/billing/plan.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('first launch starts a 3-day trial with 3 analyses', () async {
    var now = DateTime(2026, 10, 10, 12);
    final e = EntitlementService(clock: () => now);
    await e.ensureTrial();
    expect(e.isTrial, isTrue);
    expect(e.trialDaysLeft, 3);
    expect(e.quota, 3);
    expect(e.check(), QuotaCheck.ok);
    expect(await e.consume(), isTrue);
    expect(await e.consume(), isTrue);
    expect(await e.consume(), isTrue);
    expect(e.check(), QuotaCheck.exhausted);
    expect(await e.consume(), isFalse);
    now = now.add(const Duration(days: 3, hours: 1));
    expect(e.isTrialExpired, isTrue);
    expect(e.check(), QuotaCheck.trialExpired);
    expect(e.trialDaysLeft, 0);
  });

  test('plans carry the agreed allowances', () {
    expect(PlanSpec.normal.analysesPerPeriod, 8);
    expect(PlanSpec.pro.analysesPerPeriod, 20);
    expect(PlanSpec.max.analysesPerPeriod, 80);
    expect(PlanSpec.ultra.analysesPerPeriod, 150);
    expect(PlanSpec.trial.trialLength, const Duration(days: 3));
  });

  test('subscription period rolls over and resets usage', () async {
    var now = DateTime(2026, 10, 10);
    final e = EntitlementService(clock: () => now);
    await e.activateSubscription(PlanTier.normal);
    for (var i = 0; i < 8; i++) {
      expect(await e.consume(), isTrue);
    }
    expect(e.check(), QuotaCheck.exhausted);
    expect(e.remainingInPeriod, 0);
    now = now.add(const Duration(days: 31));
    expect(e.check(), QuotaCheck.ok);
    expect(e.remainingInPeriod, 8);
    expect(e.periodEnd, DateTime(2026, 10, 10).add(const Duration(days: 60)));
  });

  test('extra credits are used after the monthly allowance and survive exhaustion', () async {
    final now = DateTime(2026, 10, 10);
    final e = EntitlementService(clock: () => now);
    await e.activateSubscription(PlanTier.normal);
    await e.addCredits(2);
    expect(e.remainingTotal, 10);
    for (var i = 0; i < 8; i++) {
      await e.consume();
    }
    expect(e.extraCredits, 2);
    expect(e.check(), QuotaCheck.ok);
    await e.consume();
    expect(e.extraCredits, 1);
    await e.consume();
    expect(e.check(), QuotaCheck.exhausted);
  });

  test('a purchase through the demo store activates the plan or adds credits', () async {
    final e = EntitlementService(clock: DateTime.now);
    final billing = DemoBillingService(latency: Duration.zero);
    final c = BillingController(billing: billing, entitlements: e);
    await c.loadProducts();
    expect(c.products.where((p) => p.kind == StoreProductKind.subscription).length, 4);
    expect(c.products.where((p) => p.kind == StoreProductKind.pack).length, 3);

    final pro = c.products.firstWhere((p) => p.id == PlanSpec.pro.productId);
    await c.buy(pro);
    await Future<void>.delayed(const Duration(milliseconds: 20));
    expect(e.plan?.tier, PlanTier.pro);
    expect(e.remainingInPeriod, 20);

    final pack = c.products.firstWhere((p) => p.id == 'stocklens.pack.20');
    await c.buy(pack);
    await Future<void>.delayed(const Duration(milliseconds: 20));
    expect(e.extraCredits, 20);
    expect(c.lastEvent?.status, BillingStatus.purchased);
    c.dispose();
  });

  test('state survives a JSON round trip', () {
    final s = EntitlementState(
      tier: PlanTier.max,
      periodStart: DateTime.utc(2026, 10, 1),
      periodEnd: DateTime.utc(2026, 10, 31),
      usedInPeriod: 12,
      extraCredits: 3,
    );
    final back = EntitlementState.fromJson(s.toJson());
    expect(back.tier, PlanTier.max);
    expect(back.usedInPeriod, 12);
    expect(back.extraCredits, 3);
    expect(back.periodEnd, DateTime.utc(2026, 10, 31));
  });

  test('an in-depth analysis costs 2: period first, then extra; insufficient when only 1 is left', () async {
    final now = DateTime(2026, 10, 10);
    final e = EntitlementService(clock: () => now);
    await e.activateSubscription(PlanTier.normal);
    for (var i = 0; i < 7; i++) {
      expect(await e.consume(), isTrue);
    }
    expect(e.available, 1);
    expect(e.check(cost: 2), QuotaCheck.insufficient);
    expect(await e.consume(cost: 2), isFalse);
    await e.addCredits(5);
    expect(e.check(cost: 2), QuotaCheck.ok);
    expect(await e.consume(cost: 2), isTrue);
    // 1 az időszakból, 1 az extrából.
    expect(e.used, 8);
    expect(e.extraCredits, 4);
    expect(e.available, 4);
  });

  test('plans carry the agreed web search limits', () {
    expect(PlanSpec.trial.webSearches, 6);
    expect(PlanSpec.normal.webSearches, 4);
    expect(PlanSpec.pro.webSearches, 6);
    expect(PlanSpec.max.webSearches, 8);
    expect(PlanSpec.ultra.webSearches, 10);
  });
}
