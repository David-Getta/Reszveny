import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/app_preferences.dart';
import '../../core/models/price_history.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_quote.dart';
import '../../core/share/share_text.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/centered_scroll.dart';
import '../../widgets/desktop_chrome.dart';
import '../alerts/price_alert.dart';
import '../events/events_service.dart';
import '../news/move_explainer.dart';
import '../stock_detail/widgets/move_why_button.dart';
import '../events/events_view.dart' show eventWhen;
import '../portfolio/add_lot_dialog.dart' show parseDecimal;
import 'watch_signals.dart';

/// A figyelőlista rendezése.
enum WatchSort { own, gainers, losers, name }

/// Tickerek kiolvasása beillesztett szövegből: vessző, pontosvessző, szóköz vagy
/// új sor választja el őket; a `$AAPL` alak is jó. Ismétlés és puszta szám nélkül.
List<String> parseTickers(String text) {
  final out = <String>[];
  for (final t in text.toUpperCase().split(RegExp(r'[\s,;]+'))) {
    final s = t.startsWith(r'$') ? t.substring(1) : t;
    if (!RegExp(r'^[A-Z0-9][A-Z0-9.\-]{0,14}$').hasMatch(s) || !RegExp('[A-Z]').hasMatch(s)) continue;
    if (!out.contains(s)) out.add(s);
  }
  return out;
}

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

  @override
  void initState() {
    super.initState();
    // A közeli gyorsjelentések a sorokhoz (gyorsítótárból, ha friss); az első
    // képkocka után, mert a frissítés azonnal értesíti a figyelőket.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) AppServices.of(context).events.refresh();
    });
  }

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
    if (mounted) AppServices.of(context).telemetry.track('list_created');
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

  /// Napi mozgás-riasztás egyszerre az összes látható részvényre (ahol még nincs ilyen).
  Future<void> _alertAll() async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final prefs = services.preferences;
    final symbols = prefs.watchLists.where((l) => l.name == _list).firstOrNull?.symbols ?? prefs.favorites;
    final percent = await showDialog<double>(context: context, builder: (_) => const _MoveAlertDialog());
    if (percent == null) return;
    var added = 0;
    for (final s in symbols) {
      final has = services.alerts.forSymbol(s).any((a) => a.isActive && a.kind == AlertKind.move);
      if (has) continue;
      await services.alerts.add(symbol: s, kind: AlertKind.move, value: percent);
      added++;
    }
    services.telemetry.track('bulk_alerts');
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l10n.watchAlertAllDone(added))));
  }

  /// A látható lista tickerei szövegként (pl. üzenetben elküldhető, és egy
  /// másik WhatStockba beilleszthető).
  Future<void> _share() async {
    final l10n = AppLocalizations.of(context);
    final prefs = AppServices.of(context).preferences;
    final symbols = prefs.watchLists.where((l) => l.name == _list).firstOrNull?.symbols ?? prefs.favorites;
    if (symbols.isEmpty) return;
    await shareText(symbols.join(', '), subject: 'WhatStock · ${_list ?? l10n.favorites}');
  }

  /// Beillesztett tickerek felvétele a kedvencekhez (és a kiválasztott listára).
  Future<void> _import() async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final text = await showDialog<String>(context: context, builder: (_) => const _ImportTickersDialog());
    if (text == null) return;
    final added = await services.preferences.addSymbols(parseTickers(text), list: _list);
    services.telemetry.track('tickers_imported');
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l10n.watchImported(added))));
  }

  /// A részvény 7 napon belüli gyorsjelentése (ha van), a sor jelzéséhez.
  UpcomingEvent? _soonEarnings(AppServices services, String symbol) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    return services.events.events
        .where(
          (e) =>
              e.kind == UpcomingEventKind.earnings &&
              e.symbol == symbol &&
              !e.date.isBefore(today) &&
              e.date.difference(today).inDays <= 7,
        )
        .firstOrNull;
  }

  Future<void> _listMenu(String action) async {
    if (action == 'alerts') return _alertAll();
    if (action == 'share') return _share();
    if (action == 'import') return _import();
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
          PopupMenuButton<String>(
            key: const ValueKey('watch-list-menu'),
            onSelected: _listMenu,
            itemBuilder: (_) => [
              PopupMenuItem(key: const ValueKey('watch-alert-all'), value: 'alerts', child: Text(l10n.watchAlertAll)),
              PopupMenuItem(key: const ValueKey('watch-share'), value: 'share', child: Text(l10n.watchShare)),
              PopupMenuItem(key: const ValueKey('watch-import'), value: 'import', child: Text(l10n.watchImport)),
              if (_list != null) ...[
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
            ],
          ),
          const SizedBox(width: 4),
        ],
      ),
      body: ListenableBuilder(
        listenable: Listenable.merge([services.preferences, services.alerts, services.events, services.notes]),
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
              earnings: _soonEarnings(services, s),
              result: services.events.recent.where((r) => r.symbol == s).firstOrNull,
              hasNote: services.notes.of(s)?.text.trim().isNotEmpty ?? false,
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
              // Technikai jelzések a lista részvényein (ha van ilyen).
              _SignalsStrip(symbols: list, history: _history, onOpenSymbol: widget.onOpenSymbol),
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

/// A napi mozgás küszöbe (százalék) a tömeges riasztáshoz.
class _MoveAlertDialog extends StatefulWidget {
  const _MoveAlertDialog();

  @override
  State<_MoveAlertDialog> createState() => _MoveAlertDialogState();
}

class _MoveAlertDialogState extends State<_MoveAlertDialog> {
  final _controller = TextEditingController(text: '5');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _save() {
    final v = parseDecimal(_controller.text);
    if (v != null && v > 0 && v < 100) Navigator.of(context).pop(v);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return AlertDialog(
      title: Text(l10n.watchAlertAll),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.watchAlertAllHint, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted)),
          const SizedBox(height: 8),
          TextField(
            key: const ValueKey('watch-alert-percent'),
            controller: _controller,
            autofocus: true,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(labelText: l10n.alertMovePercent, suffixText: '%'),
            onSubmitted: (_) => _save(),
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancel)),
        FilledButton(key: const ValueKey('watch-alert-save'), onPressed: _save, child: Text(l10n.alertSave)),
      ],
    );
  }
}

/// Tickerek beillesztése (pl. egy megosztott listából vagy egy táblázatból).
class _ImportTickersDialog extends StatefulWidget {
  const _ImportTickersDialog();

  @override
  State<_ImportTickersDialog> createState() => _ImportTickersDialogState();
}

class _ImportTickersDialogState extends State<_ImportTickersDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final found = parseTickers(_controller.text);
    return AlertDialog(
      title: Text(l10n.watchImport),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.watchImportHint, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted)),
            const SizedBox(height: 8),
            TextField(
              key: const ValueKey('watch-import-text'),
              controller: _controller,
              autofocus: true,
              minLines: 3,
              maxLines: 6,
              textCapitalization: TextCapitalization.characters,
              onChanged: (_) => setState(() {}),
              decoration: const InputDecoration(hintText: 'AAPL, MSFT, OTP.BD'),
            ),
            if (found.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                found.join(' · '),
                key: const ValueKey('watch-import-found'),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.accent),
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancel)),
        FilledButton(
          key: const ValueKey('watch-import-ok'),
          onPressed: found.isEmpty ? null : () => Navigator.of(context).pop(_controller.text),
          child: Text(l10n.portfolioImportButton),
        ),
      ],
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
    this.earnings,
    this.result,
    this.hasNote = false,
    required this.quote,
    required this.history,
    required this.onTap,
    this.trailing,
  });

  final String symbol;

  /// Van-e aktív árfolyam-riasztás a részvényre (kis harang a ticker mellett).
  final bool hasAlert;

  /// Közeli gyorsjelentés: a ticker alatt „Holnap”, „5 nap múlva”.
  final UpcomingEvent? earnings;

  /// Friss negyedéves eredmény: ha nincs közeli jelentés, a ticker alatt „EPS +2,7%”.
  final RecentResult? result;

  /// Van-e saját jegyzet a részvényhez (kis ikon a ticker mellett).
  final bool hasNote;
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
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
                        if (hasNote)
                          Padding(
                            padding: const EdgeInsetsDirectional.only(start: 3),
                            child: Tooltip(
                              message: l10n.notesTitle,
                              child: Icon(
                                Icons.sticky_note_2_outlined,
                                key: ValueKey('watch-note-$symbol'),
                                size: 12,
                                color: p.muted,
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (result case final r? when earnings == null && r.result.surprise != null)
                      Tooltip(
                        message:
                            '${r.result.beat == true ? l10n.earningsResultBeat(symbol) : l10n.earningsResultMiss(symbol)}'
                            ' · ${l10n.earningsResultBody(fmt.number(r.result.actual), fmt.number(r.result.estimate))}',
                        child: Row(
                          key: ValueKey('watch-result-$symbol'),
                          children: [
                            Icon(
                              r.result.beat == true ? Icons.trending_up_rounded : Icons.trending_down_rounded,
                              size: 11,
                              color: r.result.beat == true ? p.positive : p.negative,
                            ),
                            const SizedBox(width: 3),
                            Flexible(
                              child: Text(
                                'EPS ${fmt.percent(r.result.surprise, withSign: true, decimals: 1)}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: r.result.beat == true ? p.positive : p.negative,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (earnings case final e?)
                      Tooltip(
                        message: '${l10n.eventEarnings} · ${fmt.date(e.date)}',
                        child: Row(
                          key: ValueKey('watch-earnings-$symbol'),
                          children: [
                            Icon(Icons.event_note_rounded, size: 11, color: p.accent),
                            const SizedBox(width: 3),
                            Flexible(
                              child: Text(
                                eventWhen(l10n, e.date, DateTime.now()),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelSmall?.copyWith(color: p.accent),
                              ),
                            ),
                          ],
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
                          // Nagy napi mozgásnál koppintásra „Miért mozog ma?”.
                          if (q.changePercent case final pct? when pct.abs() >= MoveExplainer.minMovePercent)
                            InkWell(
                              key: ValueKey('watch-move-$symbol'),
                              borderRadius: BorderRadius.circular(6),
                              onTap: () =>
                                  showMoveExplanation(context, symbol: symbol, name: symbol, changePercent: pct),
                              // Keskeny telefonon, nagy betűvel kicsinyítve fér el.
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Tooltip(
                                      message: l10n.moveWhyButton,
                                      child: Icon(Icons.auto_awesome_outlined, size: 12, color: p.accent),
                                    ),
                                    const SizedBox(width: 3),
                                    Text(
                                      fmt.percent(pct, withSign: true),
                                      style: theme.textTheme.bodySmall?.copyWith(
                                        color: q.isUp ? p.positive : p.negative,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          else
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

/// „Jelzések”: RSI túladott/túlvett, a 200 napos átlag átlépése ma – chipek,
/// koppintásra a részvény nyílik. Ha nincs jelzés, nem látszik.
class _SignalsStrip extends StatelessWidget {
  const _SignalsStrip({required this.symbols, required this.history, required this.onOpenSymbol});

  final List<String> symbols;
  final Future<PriceHistory> Function(String) history;
  final ValueChanged<StockCandidate> onOpenSymbol;

  Future<Map<String, PriceHistory>> _histories() async {
    final out = <String, PriceHistory>{};
    await Future.wait([
      for (final s in symbols) history(s).then((h) => out[s] = h).then((_) {}, onError: (Object _) {}),
    ]);
    return out;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return FutureBuilder<Map<String, PriceHistory>>(
      key: ValueKey(symbols.join(',')),
      future: _histories(),
      builder: (context, snap) {
        final signals = snap.data == null ? const <WatchSignal>[] : watchSignals(symbols, snap.data!);
        if (signals.isEmpty) return const SizedBox.shrink();
        String text(WatchSignal x) => switch (x.kind) {
          WatchSignalKind.rsiOversold => l10n.signalRsiOversold(fmt.number(x.value, decimals: 0)),
          WatchSignalKind.rsiOverbought => l10n.signalRsiOverbought(fmt.number(x.value, decimals: 0)),
          WatchSignalKind.crossedAbove200 => l10n.signalCrossedAbove,
          WatchSignalKind.crossedBelow200 => l10n.signalCrossedBelow,
        };
        Color tone(WatchSignalKind k) =>
            k == WatchSignalKind.rsiOversold || k == WatchSignalKind.crossedBelow200 ? p.negative : p.positive;
        return Padding(
          key: const ValueKey('watch-signals'),
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.watchSignalsTitle, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
              const SizedBox(height: 6),
              Wrap(
                spacing: 8,
                runSpacing: 6,
                children: [
                  for (final x in signals)
                    ActionChip(
                      key: ValueKey('watch-signal-${x.symbol}-${x.kind.name}'),
                      visualDensity: VisualDensity.compact,
                      avatar: Icon(
                        x.kind == WatchSignalKind.rsiOversold || x.kind == WatchSignalKind.crossedBelow200
                            ? Icons.trending_down_rounded
                            : Icons.trending_up_rounded,
                        size: 16,
                        color: tone(x.kind),
                      ),
                      label: Text.rich(
                        TextSpan(
                          text: '${x.symbol} ',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: text(x),
                              style: const TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () =>
                          onOpenSymbol(StockCandidate(symbol: x.symbol, companyName: x.symbol, confidence: 1)),
                    ),
                ],
              ),
            ],
          ),
        );
      },
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
