import 'dart:async';

import '../../core/desktop/quick_panel.dart';
import '../../core/errors.dart';
import '../../core/models/stock_candidate.dart';
import '../recognition/description_resolver.dart';

/// A natív gyorskereső panel logikája: gépelés közben (rövid várakozás után)
/// keres, üres mezőnél a kedvenceket és a legutóbbiakat ajánlja, Enterre
/// megnyitja a kiválasztott vagy az első találatot.
class QuickSearchController implements QuickPanelHandler {
  QuickSearchController({
    required this.panel,
    required this.search,
    required this.favorites,
    required this.recent,
    required this.recentTitle,
    required this.open,
    required this.pasteImage,
    required this.openWindow,
    required this.describe,
    this.resolve,
    this.debounce = const Duration(milliseconds: 180),
  });

  final NativeQuickPanel panel;
  final Future<List<StockCandidate>> Function(String query) search;

  /// Leírás („tech 100 etf”) megfejtése az AI-val, ha a kereső nem talál semmit;
  /// `null`, ha nincs AI.
  final Future<List<StockCandidate>> Function(String query)? resolve;
  final List<String> Function() favorites;
  final List<String> Function() recent;
  final String Function() recentTitle;

  /// Elrejti a panelt, és a teljes ablakban megnyitja a részvényt.
  final Future<void> Function(StockCandidate candidate) open;
  final Future<void> Function() pasteImage;
  final Future<void> Function() openWindow;

  /// Hiba (vagy „nincs találat”) a felhasználó nyelvén, a panel üzenetsorába.
  final String Function(Object error) describe;
  final Duration debounce;

  static const maxSuggestions = 6;

  /// Minden új gépelés növeli: a lassú keresések elavult válaszait eldobjuk.
  int _seq = 0;
  final Map<String, StockCandidate> _known = {};

  @override
  void onQuery(String text) {
    final id = ++_seq;
    final q = text.trim();
    if (q.isEmpty) {
      final favs = favorites();
      final items = <QuickSuggestion>[
        for (final s in favs) QuickSuggestion(symbol: s, name: _known[s]?.companyName ?? '', detail: '★'),
        for (final s in recent())
          if (!favs.contains(s)) QuickSuggestion(symbol: s, name: _known[s]?.companyName ?? ''),
      ].take(maxSuggestions).map(_withoutDuplicateName).toList();
      panel.setSuggestions(text, items, title: items.isEmpty ? null : recentTitle());
      return;
    }
    Timer(debounce, () async {
      if (id != _seq) return;
      List<StockCandidate> results;
      try {
        results = await search(DescriptionResolver.searchTerm(q));
      } catch (_) {
        results = const [];
      }
      if (id != _seq) return;
      final top = results.take(maxSuggestions).toList();
      for (final c in top) {
        _known[c.symbol] = c;
      }
      await panel.setSuggestions(text, [
        for (final c in top) _withoutDuplicateName(QuickSuggestion(symbol: c.symbol, name: c.companyName)),
      ]);
    });
  }

  @override
  Future<void> onSubmit(String text, String? symbol) async {
    _seq++;
    if (symbol != null) {
      await open(_known[symbol] ?? StockCandidate(symbol: symbol, companyName: symbol, confidence: 1));
      return;
    }
    final q = DescriptionResolver.searchTerm(text);
    if (q.isEmpty) return;
    await panel.setMessage(null);
    await panel.setBusy(true);
    var results = const <StockCandidate>[];
    Object? error;
    try {
      results = await search(q);
    } catch (_) {
      // A kereső hibája után is jöhet a leírás megfejtése vagy a tickerként megnyitás.
    }
    if (results.isEmpty && resolve != null && DescriptionResolver.looksLikeDescription(q)) {
      try {
        results = await resolve!(q);
      } catch (e) {
        error = e;
      }
    }
    await panel.setBusy(false);
    if (results.isNotEmpty) {
      await open(results.first);
    } else if (DescriptionResolver.looksLikeTicker(q)) {
      await open(StockCandidate(symbol: q.toUpperCase(), companyName: q.toUpperCase(), confidence: 1));
    } else {
      // Leírás vagy elgépelés: nem nyitjuk meg tickerként (és nem kerül a legutóbbiak közé).
      await panel.setMessage(describe(error ?? MarketDataException(AppErrorCode.noResults, detail: q)));
    }
  }

  @override
  void onPasteImage() => pasteImage();

  @override
  void onOpenWindow() => openWindow();

  static QuickSuggestion _withoutDuplicateName(QuickSuggestion s) =>
      s.name == s.symbol ? QuickSuggestion(symbol: s.symbol, detail: s.detail) : s;
}
