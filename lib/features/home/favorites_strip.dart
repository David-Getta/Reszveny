import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_quote.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';

/// Kedvencek a kezdőképernyőn: ticker + aktuális ár + napi változás, kártyákon.
class FavoritesStrip extends StatefulWidget {
  const FavoritesStrip({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  State<FavoritesStrip> createState() => _FavoritesStripState();
}

class _FavoritesStripState extends State<FavoritesStrip> {
  final Map<String, Future<StockQuote>> _quotes = {};

  Future<StockQuote> _quote(String symbol) =>
      _quotes.putIfAbsent(symbol, () => AppServices.of(context).marketData.quote(symbol));

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return ListenableBuilder(
      listenable: services.preferences,
      builder: (context, _) {
        final favorites = services.preferences.favorites;
        if (favorites.isEmpty) return const SizedBox.shrink();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 8),
              child: Text(l10n.favorites, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final s in favorites)
                  FutureBuilder<StockQuote>(
                    future: _quote(s),
                    builder: (context, snap) {
                      final q = snap.data;
                      final up = q?.isUp ?? true;
                      return Material(
                        color: p.surface,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: p.border),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () => widget.onOpenSymbol(StockCandidate(symbol: s, companyName: s, confidence: 1)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.star_rounded, size: 14, color: p.accent),
                                    const SizedBox(width: 4),
                                    Text(s, style: const TextStyle(fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                const SizedBox(height: 2),
                                if (q != null)
                                  Text(
                                    '${fmt.number(q.price)}  ${fmt.percent(q.changePercent, withSign: true)}',
                                    style: theme.textTheme.bodySmall?.copyWith(color: up ? p.positive : p.negative),
                                  )
                                else
                                  Text(
                                    snap.hasError ? l10n.notAvailable : '…',
                                    style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
