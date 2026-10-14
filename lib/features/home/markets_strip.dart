import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_quote.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';

/// „Piacok ma”: a nagy amerikai indexek napi változása az őket követő ETF-ek
/// árfolyamából, hogy egy részvény mozgása összevethető legyen a piacéval.
class MarketsStrip extends StatefulWidget {
  const MarketsStrip({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  /// (ETF, a követett index neve).
  static const markets = [('SPY', 'S&P 500'), ('QQQ', 'Nasdaq 100'), ('DIA', 'Dow Jones')];

  @override
  State<MarketsStrip> createState() => _MarketsStripState();
}

class _MarketsStripState extends State<MarketsStrip> {
  Future<List<StockQuote?>>? _quotes;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final market = AppServices.of(context).marketData;
    _quotes ??= Future.wait([
      for (final (s, _) in MarketsStrip.markets)
        market.quote(s).then<StockQuote?>((q) => q, onError: (Object _) => null),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return FutureBuilder<List<StockQuote?>>(
      future: _quotes,
      builder: (context, snap) {
        final quotes = snap.data;
        if (quotes == null || quotes.every((q) => q == null)) return const SizedBox.shrink();
        return Column(
          key: const ValueKey('home-markets'),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 8),
              child: Text(l10n.marketsToday, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
            ),
            Row(
              children: [
                for (final (i, (symbol, name)) in MarketsStrip.markets.indexed)
                  if (quotes[i] case final q?)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(end: i < MarketsStrip.markets.length - 1 ? 8 : 0),
                        child: Material(
                          color: p.surface,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: p.border),
                          ),
                          child: InkWell(
                            key: ValueKey('market-$symbol'),
                            borderRadius: BorderRadius.circular(12),
                            // Demó módban csak az árfolyam van meg, részletes adat nincs.
                            onTap: services.config.isDemoMode
                                ? null
                                : () => widget.onOpenSymbol(StockCandidate(symbol: symbol, companyName: name)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    fmt.percent(q.changePercent, withSign: true),
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: (q.changePercent ?? 0) >= 0 ? p.positive : p.negative,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ],
        );
      },
    );
  }
}
