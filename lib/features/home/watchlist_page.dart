import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/app_preferences.dart';
import '../../core/models/price_history.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_quote.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/centered_scroll.dart';
import '../../widgets/desktop_chrome.dart';

/// A figyelőlista rendezése.
enum WatchSort { own, gainers, losers, name }

/// A kedvencek teljes listája: ár, napi változás és 30 napos mini-grafikon.
/// Saját sorrendben húzással átrendezhető, elhúzva törölhető (visszavonható);
/// a napi változás vagy a név szerint is rendezhető. Saját listák (pl. „Tech”)
/// a chipsorban: a részvény melletti gombbal kerül listára.
class WatchlistPage extends StatefulWidget {
  const WatchlistPage({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  State<WatchlistPage> createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> {
  WatchSort _sort = WatchSort.own;

  /// A kiválasztott saját lista neve, vagy `null`: az összes kedvenc.
  String? _list;
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
    // Saját listában elhúzva csak a listáról kerül le.
    final list = _list;
    if (list != null) {
      await prefs.toggleInList(list, symbol);
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text('$symbol · $list'),
            action: SnackBarAction(label: l10n.undo, onPressed: () => prefs.toggleInList(list, symbol)),
          ),
        );
      return;
    }
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

  /// Lista neve egy kis ablakban (új listához vagy átnevezéshez).
  Future<String?> _askListName({String initial = ''}) async {
    final name = await showDialog<String>(
      context: context,
      builder: (_) => _ListNameDialog(initial: initial),
    );
    return name?.trim().isEmpty ?? true ? null : name!.trim();
  }

  Future<void> _newList({String? withSymbol}) async {
    final prefs = AppServices.of(context).preferences;
    final name = await _askListName();
    if (name == null || !await prefs.addWatchList(name)) return;
    if (withSymbol != null) await prefs.toggleInList(name, withSymbol);
    if (mounted && withSymbol == null) setState(() => _list = name);
  }

  /// „Listához adás”: a részvény saját listái pipával, és új lista.
  Future<void> _addToList(String symbol) async {
    final l10n = AppLocalizations.of(context);
    final prefs = AppServices.of(context).preferences;
    final create = await showModalBottomSheet<bool>(
      context: context,
      showDragHandle: true,
      builder: (context) => SafeArea(
        child: ListenableBuilder(
          listenable: prefs,
          builder: (context, _) => ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                child: Text('$symbol · ${l10n.watchListAddTo}', style: Theme.of(context).textTheme.titleMedium),
              ),
              for (final l in prefs.watchLists)
                CheckboxListTile(
                  key: ValueKey('watch-in-${l.name}'),
                  value: l.symbols.contains(symbol),
                  title: Text(l.name),
                  onChanged: (_) => prefs.toggleInList(l.name, symbol),
                ),
              ListTile(
                key: const ValueKey('watch-in-new'),
                leading: const Icon(Icons.add_rounded),
                title: Text(l10n.watchListNew),
                onTap: () => Navigator.of(context).pop(true),
              ),
            ],
          ),
        ),
      ),
    );
    if (create == true && mounted) await _newList(withSymbol: symbol);
  }

  Future<void> _listMenu(String action) async {
    final prefs = AppServices.of(context).preferences;
    final list = _list;
    if (list == null) return;
    if (action == 'rename') {
      final name = await _askListName(initial: list);
      if (name != null && await prefs.renameWatchList(list, name) && mounted) setState(() => _list = name);
    } else {
      await prefs.removeWatchList(list);
      if (mounted) setState(() => _list = null);
    }
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
          if (_list != null)
            PopupMenuButton<String>(
              key: const ValueKey('watch-list-menu'),
              onSelected: _listMenu,
              itemBuilder: (_) => [
                PopupMenuItem(
                  key: const ValueKey('watch-list-rename'),
                  value: 'rename',
                  child: Text(l10n.watchListRename),
                ),
                PopupMenuItem(
                  key: const ValueKey('watch-list-delete'),
                  value: 'delete',
                  child: Text(l10n.watchListDelete),
                ),
              ],
            ),
          const SizedBox(width: 4),
        ],
      ),
      body: ListenableBuilder(
        listenable: Listenable.merge([services.preferences, services.alerts]),
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
          final lists = services.preferences.watchLists;
          final current = lists.where((l) => l.name == _list).firstOrNull;
          if (_list != null && current == null) _list = null;
          final list = _sorted(current?.symbols ?? favorites);
          // Saját listában a sorrend a felvételé, ott nincs húzás.
          final reorder = _sort == WatchSort.own && current == null;
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
              hasAlert: services.alerts.hasActive(s),
              quote: _quote(s),
              history: _history(s),
              onTap: () => widget.onOpenSymbol(StockCandidate(symbol: s, companyName: s, confidence: 1)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    key: ValueKey('watch-addto-$s'),
                    tooltip: l10n.watchListAddTo,
                    visualDensity: VisualDensity.compact,
                    icon: Icon(
                      services.preferences.listsOf(s).isEmpty
                          ? Icons.playlist_add_rounded
                          : Icons.playlist_add_check_rounded,
                      color: p.muted,
                    ),
                    onPressed: () => _addToList(s),
                  ),
                  if (reorder)
                    ReorderableDragStartListener(
                      index: i,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(Icons.drag_handle_rounded, color: p.muted),
                      ),
                    ),
                ],
              ),
            ),
          );
          final hint = Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Saját listák: „Mind”, a listák, és új lista.
              SingleChildScrollView(
                key: const ValueKey('watch-lists'),
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: Row(
                  children: [
                    for (final (name, label) in [(null, l10n.watchListAll), for (final l in lists) (l.name, l.name)])
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 8),
                        child: ChoiceChip(
                          key: ValueKey('watch-list-${name ?? '*'}'),
                          label: Text(label),
                          selected: _list == name,
                          onSelected: (_) => setState(() => _list = name),
                        ),
                      ),
                    ActionChip(
                      key: const ValueKey('watch-list-new'),
                      avatar: const Icon(Icons.add_rounded, size: 18),
                      label: Text(l10n.watchListNew),
                      onPressed: _newList,
                    ),
                  ],
                ),
              ),
              // Saját listában nincs húzás: ott csak az üres lista kap magyarázatot.
              if (current == null || current.symbols.isEmpty)
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 12, 20, 4),
                  child: Text(
                    current == null ? l10n.watchHint : l10n.watchListEmpty,
                    style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                  ),
                )
              else
                const SizedBox(height: 8),
            ],
          );
          // Teljes szélességű görgetés (görgetősáv a szélen), középre igazított sorokkal.
          return CenteredScroll(
            maxWidth: 760,
            padding: EdgeInsets.zero,
            builder: (context, padding) => reorder
                ? ReorderableListView.builder(
                    buildDefaultDragHandles: false,
                    padding: padding,
                    header: hint,
                    itemCount: list.length,
                    onReorderItem: (from, to) {
                      final next = [...list];
                      next.insert(to, next.removeAt(from));
                      services.preferences.setFavorites(next);
                    },
                    itemBuilder: (_, i) => row(i, list[i]),
                  )
                : ListView(padding: padding, children: [hint, for (final (i, s) in list.indexed) row(i, s)]),
          );
        },
      ),
    );
  }
}

class _ListNameDialog extends StatefulWidget {
  const _ListNameDialog({required this.initial});

  final String initial;

  @override
  State<_ListNameDialog> createState() => _ListNameDialogState();
}

class _ListNameDialogState extends State<_ListNameDialog> {
  late final _controller = TextEditingController(text: widget.initial);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(widget.initial.isEmpty ? l10n.watchListNew : l10n.watchListRename),
      content: TextField(
        key: const ValueKey('watch-list-name'),
        controller: _controller,
        autofocus: true,
        maxLength: AppPreferences.maxListName,
        decoration: InputDecoration(labelText: l10n.watchListName),
        onSubmitted: (v) => Navigator.of(context).pop(v),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancel)),
        FilledButton(
          key: const ValueKey('watch-list-ok'),
          onPressed: () => Navigator.of(context).pop(_controller.text),
          child: Text(l10n.ok),
        ),
      ],
    );
  }
}

class _WatchRow extends StatelessWidget {
  const _WatchRow({
    required this.symbol,
    this.hasAlert = false,
    required this.quote,
    required this.history,
    required this.onTap,
    this.trailing,
  });

  final String symbol;

  /// Van-e aktív árfolyam-riasztás a részvényre (kis harang a ticker mellett).
  final bool hasAlert;
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
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        symbol,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    if (hasAlert)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 3),
                        child: Tooltip(
                          message: l10n.priceAlerts,
                          child: Icon(
                            Icons.notifications_active_rounded,
                            key: ValueKey('watch-alert-$symbol'),
                            size: 13,
                            color: p.accent,
                          ),
                        ),
                      ),
                  ],
                ),
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
