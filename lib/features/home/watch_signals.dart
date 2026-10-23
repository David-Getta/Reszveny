import '../../core/models/price_history.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../analysis/price_stats.dart';

/// Technikai jelzés egy figyelt részvényen a napi záróárakból.
enum WatchSignalKind { rsiOversold, rsiOverbought, crossedAbove200, crossedBelow200 }

typedef WatchSignal = ({String symbol, WatchSignalKind kind, double value});

/// A kedvencek jelzései: 14 napos RSI 30 alatt / 70 felett, és ha a mai
/// záróár a 200 napos mozgóátlag fölé vagy alá került (tegnap még a másik
/// oldalán volt). A sorrend a figyelt lista sorrendje; egy részvényhez több
/// jelzés is lehet.
List<WatchSignal> watchSignals(Iterable<String> symbols, Map<String, PriceHistory> histories) {
  final out = <WatchSignal>[];
  for (final s in symbols) {
    final pts = histories[s]?.points;
    if (pts == null || pts.length < 15) continue;
    final rsi = PriceStats.rsi(pts, 14);
    if (rsi != null && rsi < 30) out.add((symbol: s, kind: WatchSignalKind.rsiOversold, value: rsi));
    if (rsi != null && rsi > 70) out.add((symbol: s, kind: WatchSignalKind.rsiOverbought, value: rsi));
    if (pts.length >= 201) {
      final today = PriceStats.sma(pts, 200), yesterday = PriceStats.sma(pts.sublist(0, pts.length - 1), 200);
      if (today != null && yesterday != null && today > 0 && yesterday > 0) {
        final last = pts.last.close, prev = pts[pts.length - 2].close;
        if (last > today && prev <= yesterday) {
          out.add((symbol: s, kind: WatchSignalKind.crossedAbove200, value: (last / today - 1) * 100));
        } else if (last < today && prev >= yesterday) {
          out.add((symbol: s, kind: WatchSignalKind.crossedBelow200, value: (last / today - 1) * 100));
        }
      }
    }
  }
  return out;
}

/// Egy jelzés szövege a felhasználó nyelvén (a chipeken és az értesítésben).
String describeSignal(AppLocalizations l10n, Fmt fmt, WatchSignal x) => switch (x.kind) {
  // Egy tizedessel: a 29,6 ne „30 · túladott” legyen.
  WatchSignalKind.rsiOversold => l10n.signalRsiOversold(fmt.number(x.value, decimals: 1)),
  WatchSignalKind.rsiOverbought => l10n.signalRsiOverbought(fmt.number(x.value, decimals: 1)),
  WatchSignalKind.crossedAbove200 => l10n.signalCrossedAbove,
  WatchSignalKind.crossedBelow200 => l10n.signalCrossedBelow,
};
