import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'plan.dart';

/// Miért nem indítható elemzés.
enum QuotaCheck { ok, noPlan, trialExpired, exhausted, insufficient }

/// A felhasználó jogosultságai: csomag, időszak, felhasznált és extra elemzések.
///
/// Ez a helyi, offline is működő képe az állapotnak. Éles kiadásban a
/// forrás az igazságnak a szerver (vásárlás-ellenőrzés és kvótanyilvántartás,
/// lásd `docs/ELOFIZETES.md`); a kliens ugyanezt a modellt tölti onnan.
class EntitlementState {
  const EntitlementState({
    this.tier,
    this.periodStart,
    this.periodEnd,
    this.usedInPeriod = 0,
    this.extraCredits = 0,
    this.trialStartedAt,
  });

  final PlanTier? tier;
  final DateTime? periodStart;
  final DateTime? periodEnd;
  final int usedInPeriod;
  final int extraCredits;
  final DateTime? trialStartedAt;

  EntitlementState copyWith({
    PlanTier? tier,
    bool clearTier = false,
    DateTime? periodStart,
    DateTime? periodEnd,
    int? usedInPeriod,
    int? extraCredits,
    DateTime? trialStartedAt,
  }) => EntitlementState(
    tier: clearTier ? null : (tier ?? this.tier),
    periodStart: periodStart ?? this.periodStart,
    periodEnd: periodEnd ?? this.periodEnd,
    usedInPeriod: usedInPeriod ?? this.usedInPeriod,
    extraCredits: extraCredits ?? this.extraCredits,
    trialStartedAt: trialStartedAt ?? this.trialStartedAt,
  );

  Map<String, dynamic> toJson() => {
    'tier': tier?.name,
    'period_start': periodStart?.toUtc().toIso8601String(),
    'period_end': periodEnd?.toUtc().toIso8601String(),
    'used': usedInPeriod,
    'extra': extraCredits,
    'trial_started_at': trialStartedAt?.toUtc().toIso8601String(),
  };

  factory EntitlementState.fromJson(Map<String, dynamic> j) => EntitlementState(
    tier: PlanTier.values.asNameMap()[j['tier'] as String? ?? ''],
    periodStart: DateTime.tryParse(j['period_start'] as String? ?? ''),
    periodEnd: DateTime.tryParse(j['period_end'] as String? ?? ''),
    usedInPeriod: (j['used'] as num?)?.toInt() ?? 0,
    extraCredits: (j['extra'] as num?)?.toInt() ?? 0,
    trialStartedAt: DateTime.tryParse(j['trial_started_at'] as String? ?? ''),
  );
}

class EntitlementService extends ChangeNotifier {
  EntitlementService({DateTime Function()? clock, EntitlementState? initial})
    : _clock = clock ?? DateTime.now,
      _state = initial ?? const EntitlementState();

  static const _prefsKey = 'entitlements';

  final DateTime Function() _clock;
  EntitlementState _state;
  EntitlementState get state => _state;

  static Future<EntitlementService> load({DateTime Function()? clock}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_prefsKey);
      final s = raw == null ? null : EntitlementState.fromJson(jsonDecode(raw) as Map<String, dynamic>);
      return EntitlementService(clock: clock, initial: s);
    } catch (_) {
      return EntitlementService(clock: clock);
    }
  }

  /// Első indításkor automatikusan elindul a próbaidő.
  Future<void> ensureTrial() async {
    if (_state.tier != null || _state.trialStartedAt != null) return;
    final now = _clock();
    _state = _state.copyWith(
      tier: PlanTier.trial,
      trialStartedAt: now,
      periodStart: now,
      periodEnd: now.add(PlanSpec.trial.trialLength!),
      usedInPeriod: 0,
    );
    await _persist();
  }

  // ---- Lekérdezések ----

  PlanSpec? get plan => _state.tier == null ? null : PlanSpec.of(_state.tier!);

  bool get isTrial => _state.tier == PlanTier.trial;

  /// A próbaidő lejárt (és nincs fizetős csomag).
  bool get isTrialExpired => isTrial && _state.periodEnd != null && !_clock().isBefore(_state.periodEnd!);

  int get trialDaysLeft {
    if (!isTrial || _state.periodEnd == null) return 0;
    final diff = _state.periodEnd!.difference(_clock());
    if (diff.isNegative) return 0;
    return (diff.inHours / 24).ceil();
  }

  int get quota => _effectivePlan()?.analysesPerPeriod ?? 0;
  int get used => _rolled().usedInPeriod;
  int get remainingInPeriod => (quota - used).clamp(0, quota);
  int get extraCredits => _state.extraCredits;

  /// Összesen indítható elemzés most (időszaki keret + extra).
  int get remainingTotal => check() == QuotaCheck.ok ? remainingInPeriod + extraCredits : extraCredits;

  DateTime? get periodEnd => _rolled().periodEnd;

  /// Indítható-e egy [cost] elemzést fogyasztó elemzés. Ha van keret, de
  /// kevesebb a szükségesnél, [QuotaCheck.insufficient].
  QuotaCheck check({int cost = 1}) {
    final s = _rolled();
    final available = _available(s);
    if (available >= cost) return QuotaCheck.ok;
    if (available > 0) return QuotaCheck.insufficient;
    if (s.tier == null) return QuotaCheck.noPlan;
    if (s.tier == PlanTier.trial && isTrialExpired) return QuotaCheck.trialExpired;
    return QuotaCheck.exhausted;
  }

  /// Most felhasználható elemzések: az időszaki maradék (ha él a csomag) + extra.
  int get available => _available(_rolled());

  int _available(EntitlementState s) {
    final q = _periodQuota(s);
    return (q - s.usedInPeriod).clamp(0, q) + s.extraCredits;
  }

  int _periodQuota(EntitlementState s) {
    if (s.tier == null) return 0;
    if (s.tier == PlanTier.trial && isTrialExpired) return 0;
    return PlanSpec.of(s.tier!).analysesPerPeriod;
  }

  bool get canAnalyze => check() == QuotaCheck.ok;

  // ---- Műveletek ----

  /// [cost] elemzés elhasználása: előbb az időszaki keretből, a maradék az
  /// extrából. Hamis, ha nincs elég keret.
  Future<bool> consume({int cost = 1}) async {
    final s = _rolled();
    if (check(cost: cost) != QuotaCheck.ok) return false;
    final fromPeriod = (_periodQuota(s) - s.usedInPeriod).clamp(0, cost);
    _state = s.copyWith(usedInPeriod: s.usedInPeriod + fromPeriod, extraCredits: s.extraCredits - (cost - fromPeriod));
    await _persist();
    return true;
  }

  /// Előfizetés aktiválása vagy váltása: új időszak, nullázott felhasználás.
  Future<void> activateSubscription(PlanTier tier, {DateTime? periodEnd}) async {
    final now = _clock();
    _state = _state.copyWith(
      tier: tier,
      periodStart: now,
      periodEnd: periodEnd ?? now.add(PlanSpec.period),
      usedInPeriod: 0,
    );
    await _persist();
  }

  Future<void> addCredits(int n) async {
    _state = _state.copyWith(extraCredits: _state.extraCredits + n);
    await _persist();
  }

  /// Bolti termékazonosító alapján érvényesít egy vásárlást.
  Future<bool> applyProduct(String productId) async {
    final plan = PlanSpec.byProductId(productId);
    if (plan != null) {
      await activateSubscription(plan.tier);
      return true;
    }
    final pack = AddOnPack.byProductId(productId);
    if (pack != null) {
      await addCredits(pack.analyses);
      return true;
    }
    return false;
  }

  /// Szerverről érkező állapot átvétele.
  Future<void> replace(EntitlementState s) async {
    _state = s;
    await _persist();
  }

  /// Időszak-görgetés: lejárt fizetős időszak után új időszak kezdődik
  /// (a bolt újítja; a szerver pontosítja).
  EntitlementState _rolled() {
    final s = _state;
    if (s.tier == null || s.tier == PlanTier.trial || s.periodEnd == null) return s;
    final now = _clock();
    if (now.isBefore(s.periodEnd!)) return s;
    var start = s.periodEnd!;
    var end = start.add(PlanSpec.period);
    while (!now.isBefore(end)) {
      start = end;
      end = start.add(PlanSpec.period);
    }
    _state = s.copyWith(periodStart: start, periodEnd: end, usedInPeriod: 0);
    return _state;
  }

  PlanSpec? _effectivePlan() {
    final s = _rolled();
    if (s.tier == null) return null;
    return PlanSpec.of(s.tier!);
  }

  Future<void> _persist() async {
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_prefsKey, jsonEncode(_state.toJson()));
    } catch (_) {
      // A mentés hibája nem akadályozza a működést.
    }
  }
}
