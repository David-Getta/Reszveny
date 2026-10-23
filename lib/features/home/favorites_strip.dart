import 'dart:async';

import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_quote.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../news/move_explainer.dart';
import '../stock_detail/widgets/move_why_button.dart';
import 'watchlist_page.dart';

/// Kedvencek a kezdőképernyőn: ticker + aktuális ár + napi változás, kártyákon.
class FavoritesStrip extends StatefulWidget {
  const FavoritesStrip({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  State<FavoritesStrip> createState() => _FavoritesStripState();
}

class _FavoritesStripState extends State<FavoritesStrip> {
  final Map<String, Future<StockQuote>> _quotes = {};

  /// Nyitva hagyva (asztali gépen napokig) félóránként, és előtérbe kerüléskor
  /// (ha legalább 5 perce töltött) friss árak.
  static const refreshEvery = Duration(minutes: 30);
  Timer? _timer;
  AppLifecycleListener? _lifecycle;
  DateTime _loadedAt = DateTime.now();

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(refreshEvery, (_) => _refresh());
    _lifecycle = AppLifecycleListener(
      onResume: () {
        if (DateTime.now().difference(_loadedAt) >= const Duration(minutes: 5)) _refresh();
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _lifecycle?.dispose();
    super.dispose();
  }

  void _refresh() {
    if (!mounted) return;
    setState(() {
      _quotes.clear();
      _loadedAt = DateTime.now();
    });
  }

  /// A sikertelen lekérés nem marad meg: a következő rajzolás újra próbálja.
  Future<StockQuote> _quote(String symbol) {
    if (_quotes[symbol] case final cached?) return cached;
    final market = AppServices.of(context).marketData;
    final f = Future.sync(() => market.quote(symbol));
    _quotes[symbol] = f;
    f.then<void>(
      (_) {},
      onError: (Object _) {
        if (identical(_quotes[symbol], f)) _quotes.remove(symbol);
      },
    );
    return f;
  }

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
        // Kedvenc nélkül csak akkor marad el, ha saját lista sincs (azokat innen lehet elérni).
        if (favorites.isEmpty && services.preferences.watchLists.isEmpty) return const SizedBox.shrink();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(l10n.favorites, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                  ),
                ),
                Flexible(
                  child: TextButton(
                    key: const ValueKey('favorites-see-all'),
                    onPressed: () => Navigator.of(
                      context,
                    ).push(MaterialPageRoute<void>(builder: (_) => WatchlistPage(onOpenSymbol: widget.onOpenSymbol))),
                    style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                    child: Text(maxLines: 1, overflow: TextOverflow.ellipsis, l10n.seeAll(favorites.length)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            if (favorites.isEmpty)
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(l10n.noFavorites, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
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
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      // Nagy betűméretnél a kártya szélességében tördelődik.
                                      Flexible(
                                        child: Text(
                                          '${fmt.number(q.price)}  ${fmt.percent(q.changePercent, withSign: true)}',
                                          style: theme.textTheme.bodySmall?.copyWith(
                                            color: up ? p.positive : p.negative,
                                          ),
                                        ),
                                      ),
                                      // Nagy napi mozgásnál: „Miért mozog ma?”
                                      if (q.changePercent case final pct?
                                          when pct.abs() >= MoveExplainer.minMovePercent)
                                        InkWell(
                                          key: ValueKey('fav-move-$s'),
                                          borderRadius: BorderRadius.circular(8),
                                          onTap: () =>
                                              showMoveExplanation(context, symbol: s, name: s, changePercent: pct),
                                          child: Tooltip(
                                            message: l10n.moveWhyButton,
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional.only(start: 6),
                                              child: Icon(Icons.auto_awesome_outlined, size: 13, color: p.accent),
                                            ),
                                          ),
                                        ),
                                    ],
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
