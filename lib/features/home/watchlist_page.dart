import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/price_history.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_quote.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';

/// A figyelőlista rendezése.
enum WatchSort { own, gainers, losers, name }

/// A kedvencek teljes listája: ár, napi változás és 30 napos mini-grafikon.
/// Saját sorrendben húzással átrendezhető, elhúzva törölhető (visszavonható);
/// a napi változás vagy a név szerint is rendezhető.
class WatchlistPage extends StatefulWidget {
  const WatchlistPage({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  State<WatchlistPage> createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> {
  WatchSort _sort = WatchSort.own;
  final Map<String, Future<StockQuote>> _quotes = {};
  final Map<String, Future<PriceHistory>> _histories = {};
  final Map<String, StockQuote> _loaded = {};

  Future<StockQuote> _quote(String s) => _quotes.putIfAbsent(s, () {
    final f = AppServices.of(context).marketData.quote(s);
    f.then((q) {
      if (!mounted) return;
      _loaded[s] = q;
      if (_sort == WatchSort.gainers || _sort == WatchSort.losers) setState(() {});
    }, onError: (Object _) {});
    return f;
  });

  Future<PriceHistory> _history(String s) =>
      _histories.putIfAbsent(s, () => AppServices.of(context).marketData.history(s, years: 1));

  List<String> _sorted(List<String> favorites) {
    double change(String s) => _loaded[s]?.changePercent ?? double.negativeInfinity;
    return switch (_sort) {
      WatchSort.own => favorites,
      WatchSort.name => [...favorites]..sort(),
      WatchSort.gainers => [...favorites]..sort((a, b) => change(b).compareTo(change(a))),
      WatchSort.losers =>
        [...favorites]..sort((a, b) {
          double c(String s) => _loaded[s]?.changePercent ?? double.infinity;
          return c(a).compareTo(c(b));
        }),
    };
  }

  Future<void> _remove(String symbol) async {
    final prefs = AppServices.of(context).preferences;
    final l10n = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final before = prefs.favorites;
    await prefs.toggleFavorite(symbol);
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('$symbol · ${l10n.removeFromFavorites}'),
          action: SnackBarAction(label: l10n.undo, onPressed: () => prefs.setFavorites(before)),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: desktopAppBar(
        context,
        title: Text(l10n.favorites),
        hasSidebar: MediaQuery.sizeOf(context).width >= 860,
        actions: [
          PopupMenuButton<WatchSort>(
            key: const ValueKey('watch-sort'),
            icon: const Icon(Icons.sort_rounded),
            tooltip: l10n.watchSort,
            initialValue: _sort,
            onSelected: (v) => setState(() => _sort = v),
            itemBuilder: (_) => [
              for (final (v, label) in [
                (WatchSort.own, l10n.watchSortOwn),
                (WatchSort.gainers, l10n.watchSortGainers),
                (WatchSort.losers, l10n.watchSortLosers),
                (WatchSort.name, l10n.watchSortName),
              ])
                PopupMenuItem(key: ValueKey('watch-sort-${v.name}'), value: v, child: Text(label)),
            ],
          ),
          const SizedBox(width: 4),
        ],
      ),
      body: ListenableBuilder(
        listenable: services.preferences,
        builder: (context, _) {
          final favorites = services.preferences.favorites;
          if (favorites.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  l10n.noFavorites,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: p.muted),
                ),
              ),
            );
          }
          final list = _sorted(favorites);
          Widget row(int i, String s) => Dismissible(
            key: ValueKey('watch-$s'),
            direction: DismissDirection.endToStart,
            background: Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              color: p.negative.withValues(alpha: 0.15),
              child: Icon(Icons.star_border_rounded, color: p.negative),
            ),
            onDismissed: (_) => _remove(s),
            child: _WatchRow(
              symbol: s,
              quote: _quote(s),
              history: _history(s),
              onTap: () => widget.onOpenSymbol(StockCandidate(symbol: s, companyName: s, confidence: 1)),
              trailing: _sort == WatchSort.own
                  ? ReorderableDragStartListener(
                      index: i,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(Icons.drag_handle_rounded, color: p.muted),
                      ),
                    )
                  : null,
            ),
          );
          final hint = Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 4),
            child: Text(l10n.watchHint, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
          );
          return Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 760),
              child: _sort == WatchSort.own
                  ? ReorderableListView.builder(
                      buildDefaultDragHandles: false,
                      header: hint,
                      itemCount: list.length,
                      onReorderItem: (from, to) {
                        final next = [...list];
                        next.insert(to, next.removeAt(from));
                        services.preferences.setFavorites(next);
                      },
                      itemBuilder: (_, i) => row(i, list[i]),
                    )
                  : ListView(children: [hint, for (final (i, s) in list.indexed) row(i, s)]),
            ),
          );
        },
      ),
    );
  }
}

class _WatchRow extends StatelessWidget {
  const _WatchRow({
    required this.symbol,
    required this.quote,
    required this.history,
    required this.onTap,
    this.trailing,
  });

  final String symbol;
  final Future<StockQuote> quote;
  final Future<PriceHistory> history;
  final VoidCallback onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 8, 10),
          child: Row(
            children: [
              SizedBox(
                width: 72,
                child: Text(symbol, style: const TextStyle(fontWeight: FontWeight.w700)),
              ),
              Expanded(
                child: FutureBuilder<PriceHistory>(
                  future: history,
                  builder: (context, snap) {
                    final pts = snap.data?.lastDays(30) ?? const [];
                    if (pts.length < 2) return const SizedBox(height: 32);
                    final up = pts.last.close >= pts.first.close;
                    return SizedBox(
                      height: 32,
                      child: CustomPaint(painter: _Spark([for (final x in pts) x.close], up ? p.positive : p.negative)),
                    );
                  },
                ),
              ),
              const SizedBox(width: 12),
              FutureBuilder<StockQuote>(
                future: quote,
                builder: (context, snap) {
                  final q = snap.data;
                  return SizedBox(
                    width: 110,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          q == null ? (snap.hasError ? l10n.notAvailable : '…') : fmt.number(q.price),
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        if (q != null)
                          Text(
                            fmt.percent(q.changePercent, withSign: true),
                            style: theme.textTheme.bodySmall?.copyWith(color: q.isUp ? p.positive : p.negative),
                          ),
                      ],
                    ),
                  );
                },
              ),
              ?trailing,
              if (trailing == null) const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}

/// 30 napos mini-grafikon (vonal, kitöltés nélkül).
class _Spark extends CustomPainter {
  _Spark(this.values, this.color);

  final List<double> values;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final lo = values.reduce((a, b) => a < b ? a : b), hi = values.reduce((a, b) => a > b ? a : b);
    final span = hi - lo == 0 ? 1 : hi - lo;
    final path = Path();
    for (final (i, v) in values.indexed) {
      final x = size.width * i / (values.length - 1);
      final y = size.height - (v - lo) / span * size.height;
      i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }
    canvas.drawPath(
      path,
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.6
        ..strokeJoin = StrokeJoin.round,
    );
  }

  @override
  bool shouldRepaint(_Spark old) => old.values != values || old.color != color;
}
