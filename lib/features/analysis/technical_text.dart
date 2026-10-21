import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';

/// Az RSI egy sorban: az érték és az állapota (túlvett / túladott / semleges).
String describeRsi(AppLocalizations l10n, Fmt fmt, double rsi) =>
    '${fmt.number(rsi, decimals: 0)} · ${rsi > 70 ? l10n.techOverbought : (rsi < 30 ? l10n.techOversold : l10n.techNeutral)}';

/// Hol tart az ár a mozgóátlaghoz: „x% felette” vagy „x% alatta”; `null`, ha nincs átlag.
String? describeVsAverage(AppLocalizations l10n, Fmt fmt, double last, double? sma, {int decimals = 2}) {
  if (sma == null || sma <= 0) return null;
  final diff = (last / sma - 1) * 100;
  final pct = fmt.percent(diff.abs(), decimals: decimals);
  return diff >= 0 ? l10n.techAbove(pct) : l10n.techBelow(pct);
}
