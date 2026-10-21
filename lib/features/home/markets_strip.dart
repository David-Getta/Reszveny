import 'dart:async';

import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_quote.dart';
import '../../core/util/formatters.dart';
import '../../core/util/us_market_hours.dart';
import '../../l10n/generated/app_localizations.dart';
import '../fx/fx_service.dart';
import '../stock_detail/widgets/move_why_button.dart';
import '../../theme/app_theme.dart';

/// „Piacok ma”: a nagy amerikai indexek napi változása az őket követő ETF-ek
/// árfolyamából, hogy egy részvény mozgása összevethető legyen a piacéval.
class MarketsStrip extends StatefulWidget {
  /// Ekkora napi indexmozgástól kínáljuk fel a „Miért mozog ma?” magyarázatot
  /// (az index egy nap alatt ritkán mozog annyit, mint egy részvény).
  static const minMarketMovePercent = 1.5;
  static bool showsWhy(double pct) => pct.abs() >= minMarketMovePercent;

  const MarketsStrip({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  /// (ETF, a követett index neve).
  static const markets = [('SPY', 'S&P 500'), ('QQQ', 'Nasdaq 100'), ('DIA', 'Dow Jones')];

  /// A mutatott devizapár: a dollár a megjelenítési pénznemben (USD/HUF); ha az
  /// dollár vagy nem jegyzett, akkor EUR/USD.
  static (String, String) fxPair(String? displayCurrency) => FxService.homePair(displayCurrency);

  @override
  State<MarketsStrip> createState() => _MarketsStripState();
}

/// Időtartam röviden: „2 ó 15 p”, „45 p”, „2 nap 3 ó” (a nyelv szövegeivel).
String shortDuration(AppLocalizations l10n, Duration d) {
  final minutes = d.inMinutes.clamp(1, 1 << 30);
  if (minutes < 60) return l10n.durationMinutes(minutes);
  if (minutes < 24 * 60) return l10n.durationHoursMinutes(minutes ~/ 60, minutes % 60);
  return l10n.durationDaysHours(minutes ~/ (24 * 60), (minutes % (24 * 60)) ~/ 60);
}

class _MarketsStripState extends State<MarketsStrip> {
  Future<List<StockQuote?>>? _quotes;
  Future<List<FxRate>>? _fx;
  (String, String)? _pair;

  /// Percenként frissül a nyitvatartás visszaszámlálása.
  Timer? _tick;

  @override
  void initState() {
    super.initState();
    _tick = Timer.periodic(const Duration(minutes: 1), (_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _tick?.cancel();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final services = AppServices.of(context);
    final market = services.marketData;
    _quotes ??= Future.wait([
      for (final (s, _) in MarketsStrip.markets)
        market.quote(s).then<StockQuote?>((q) => q, onError: (Object _) => null),
    ]);
    final pair = MarketsStrip.fxPair(services.displayCurrency(Localizations.localeOf(context)));
    if (pair != _pair) {
      _pair = pair;
      _fx = services.fx.recent(pair.$1, pair.$2);
    }
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
              padding: const EdgeInsets.only(left: 4),
              child: Text(l10n.marketsToday, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
            ),
            Padding(padding: const EdgeInsets.fromLTRB(4, 2, 0, 8), child: _MarketStatus()),
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
                                  Row(
                                    children: [
                                      // Keskeny telefonon, nagy betűvel kicsinyítve fér el.
                                      Flexible(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          alignment: AlignmentDirectional.centerStart,
                                          child: Text(
                                            fmt.percent(q.changePercent, withSign: true),
                                            style: theme.textTheme.bodySmall?.copyWith(
                                              color: (q.changePercent ?? 0) >= 0 ? p.positive : p.negative,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Nagy piaci mozgásnál: „Miért mozog ma?” az indexre.
                                      if (q.changePercent case final pct? when MarketsStrip.showsWhy(pct)) ...[
                                        const SizedBox(width: 4),
                                        InkWell(
                                          key: ValueKey('market-why-$symbol'),
                                          borderRadius: BorderRadius.circular(8),
                                          onTap: () => showMoveExplanation(
                                            context,
                                            symbol: symbol,
                                            name: name,
                                            changePercent: pct,
                                          ),
                                          child: Tooltip(
                                            message: l10n.moveWhyButton,
                                            child: Padding(
                                              padding: const EdgeInsets.all(2),
                                              child: Icon(Icons.auto_awesome_outlined, size: 13, color: p.accent),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ],
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
            // A dollár (vagy az euró) árfolyama a saját pénznemben, a napi változással (ECB).
            FutureBuilder<List<FxRate>>(
              future: _fx,
              builder: (context, snap) {
                final rates = snap.data ?? const [];
                if (rates.isEmpty) return const SizedBox.shrink();
                final last = rates.last;
                final prev = rates.length > 1 ? rates[rates.length - 2] : null;
                final change = prev == null ? null : (last.rate / prev.rate - 1) * 100;
                return Padding(
                  padding: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${last.from}/${last.to} ',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(text: fmt.number(last.rate, decimals: last.rate < 10 ? 4 : 2)),
                        if (change != null)
                          TextSpan(
                            text: ' · ${fmt.percent(change, withSign: true)}',
                            style: TextStyle(color: change >= 0 ? p.positive : p.negative, fontWeight: FontWeight.w600),
                          ),
                      ],
                    ),
                    key: const ValueKey('market-fx'),
                    style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

/// Az amerikai piac nyitvatartása: nyitva (zöld pont, mikor zár) vagy zárva (mikor nyit).
class _MarketStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final now = DateTime.now().toUtc();
    final s = UsMarketHours.status(now);
    final left = shortDuration(l10n, s.next.difference(now));
    return Row(
      key: const ValueKey('market-status'),
      children: [
        Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(color: s.open ? p.positive : p.muted, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Flexible(
          child: Text(
            s.open ? l10n.usMarketOpen(left) : l10n.usMarketClosed(left),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
          ),
        ),
      ],
    );
  }
}
