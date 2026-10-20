import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../news/daily_brief_card.dart';
import '../news/watch_news_view.dart';
import '../events/events_view.dart';
import '../settings/telemetry_consent.dart';
import '../../widgets/hotkey_hint.dart';

import '../../app_services.dart';
import '../../core/desktop/desktop_integration.dart';
import '../../core/errors.dart';
import '../../core/models/stock_candidate.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../../widgets/centered_scroll.dart';
import '../../widgets/desktop_chrome.dart';
import '../capture/capture_service.dart';
import '../market_data/demo_market_data_provider.dart';
import 'favorites_strip.dart';
import 'markets_strip.dart';
import '../portfolio/portfolio_page.dart';
import '../recognition/description_resolver.dart';
import '../recognition/stock_recognizer.dart';
import '../updates/update_banner.dart';
import '../billing/usage_chip.dart';
import 'candidate_sheet.dart';
import 'search_field.dart';
import 'history_section.dart';

/// Kezdőképernyő: nagy üdvözlő sor és egy keresősáv (ticker vagy cégnév,
/// kép csatolása, kamera) – a Claude kezdőképernyőjének mintájára.
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.onOpenSymbol, this.showAppBarActions = true});

  final ValueChanged<StockCandidate> onOpenSymbol;

  /// Keskeny elrendezésben (nincs oldalsáv) a beállítások az AppBarban.
  final bool showAppBarActions;

  /// Jelzés a keresőmező fókuszálására (billentyűparancsból); minden érték új kérés.
  static final focusSearch = ValueNotifier<int>(0);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _busy = false;
  String? _busyLabel;
  List<StockCandidate>? _results;
  String _lastQuery = '';

  /// A keresőmező szövege: megnyitás után kiürítjük, hogy visszalépve (főleg
  /// telefonon) ne kelljen kitörölni.
  final _query = TextEditingController();

  /// Gépelés közbeni javaslatok: azonnal a kedvencekből és a legutóbbiakból,
  /// rövid szünet után a piaci keresőből is.
  List<StockCandidate> _suggestions = const [];

  /// Leírásnak látszó beírás piaci találat nélkül: „Kérdezzük meg az AI-t” sor.
  String? _aiSuggestion;
  String _suggestFor = '';
  Timer? _debounce;
  static const suggestDelay = Duration(milliseconds: 400);
  static const maxSuggestions = 6;

  @override
  void initState() {
    super.initState();
    _query.addListener(_onQueryChanged);
    HomePage.focusSearch.addListener(_focusSearch);
  }

  /// A keresőmező fókusza (a Ctrl/⌘+K billentyűparancshoz).
  final _searchFocus = FocusNode();

  void _focusSearch() {
    if (!mounted) return;
    _searchFocus.requestFocus();
    _query.selection = TextSelection(baseOffset: 0, extentOffset: _query.text.length);
  }

  @override
  void dispose() {
    HomePage.focusSearch.removeListener(_focusSearch);
    _searchFocus.dispose();
    _debounce?.cancel();
    _query.removeListener(_onQueryChanged);
    _query.dispose();
    super.dispose();
  }

  void _clearSuggestions() {
    _debounce?.cancel();
    _suggestFor = '';
    if (_suggestions.isNotEmpty || _aiSuggestion != null) {
      setState(() {
        _suggestions = const [];
        _aiSuggestion = null;
      });
    }
  }

  void _onQueryChanged() {
    final q = _query.text.trim();
    if (q == _suggestFor) return;
    _suggestFor = q;
    _debounce?.cancel();
    if (q.length < 2 || _busy) {
      if (_suggestions.isNotEmpty || _aiSuggestion != null) {
        setState(() {
          _suggestions = const [];
          _aiSuggestion = null;
        });
      }
      return;
    }
    final services = AppServices.of(context);
    final prefs = services.preferences;
    final upper = q.toUpperCase();
    final local = [
      for (final s in {...prefs.favorites, ...prefs.recent})
        if (s.startsWith(upper)) StockCandidate(symbol: s, companyName: s, confidence: 1),
      // Korábban megfejtett leírás („tech 100 etf” → QQQ): azonnal, AI nélkül.
      for (final r in prefs.resolvedStartingWith(q))
        StockCandidate(symbol: r.symbol, companyName: r.name, confidence: 1),
    ].take(3).toList();
    setState(() {
      _suggestions = local;
      _aiSuggestion = null;
    });
    final canAsk = DescriptionResolver.looksLikeDescription(q) && services.config.hasAnthropicKey;
    _debounce = Timer(suggestDelay, () async {
      List<StockCandidate> found = const [];
      try {
        found = await services.marketData.search(q);
      } catch (_) {
        // Javaslat nélkül is kereshet (Enterrel).
      }
      if (!mounted || _query.text.trim() != q) return;
      final seen = {for (final c in local) c.symbol};
      setState(() {
        _suggestions = [
          // A piaci találat cégnevet is ad: ugyanannál a tickernél azt mutatjuk.
          for (final c in local) found.where((f) => f.symbol == c.symbol).firstOrNull ?? c,
          for (final f in found)
            if (seen.add(f.symbol)) f,
        ].take(maxSuggestions).toList();
        // Se saját, se piaci találat egy leírásra: az AI-t lehet kérdezni.
        _aiSuggestion = canAsk && _suggestions.isEmpty ? q : null;
      });
    });
  }

  void _open(StockCandidate c) {
    _clearSuggestions();
    _query.clear();
    widget.onOpenSymbol(c);
  }

  Future<void> _submit(String query) async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final q = query.trim();
    if (q.isEmpty) return;
    _clearSuggestions();
    FocusScope.of(context).unfocus();
    setState(() {
      _busy = true;
      _busyLabel = l10n.loadingData;
      _results = null;
      _lastQuery = q;
    });
    List<StockCandidate> results;
    try {
      results = await services.marketData.search(q);
    } catch (e) {
      // Ha a keresés nem elérhető, ticker-ként próbáljuk.
      results = const [];
      if (e is! AppException || e.code != AppErrorCode.demoUnsupportedSymbol) _showError(e);
    }
    if (!mounted) return;
    setState(() => _busy = false);

    final looksLikeTicker = RegExp(r'^[A-Za-z.\-]{1,8}$').hasMatch(q);
    if (results.isEmpty) {
      if (looksLikeTicker) {
        _open(StockCandidate(symbol: q.toUpperCase(), companyName: q.toUpperCase(), confidence: 1));
      } else if (services.preferences.resolvedFor(q) case final r?) {
        // Korábban megfejtett leírás: AI nélkül.
        _open(StockCandidate(symbol: r.symbol, companyName: r.name, confidence: 1));
      } else if (DescriptionResolver.looksLikeDescription(q) && services.config.hasAnthropicKey) {
        // Leírás („tech 100 etf”): az AI találja ki, melyik részvény vagy ETF.
        await _resolveDescription(q);
      } else {
        _showError(MarketDataException(AppErrorCode.noResults, detail: q));
      }
      return;
    }
    if (results.length == 1 || results.first.confidence >= 1) {
      _open(results.first);
      return;
    }
    setState(() => _results = results);
  }

  /// Az AI megfejtése egy leírásra: egy biztos jelöltnél rögtön megnyitja,
  /// többnél a választólap jön; ha semmi, a „nincs találat” üzenet.
  Future<void> _resolveDescription(String q) async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    setState(() {
      _busy = true;
      _busyLabel = l10n.resolvingDescription;
    });
    RecognitionResult result;
    try {
      final language = SupportedLocales.languageFor(Localizations.localeOf(context));
      result = await services.descriptionResolver.resolve(q, outputLanguage: language.englishName);
      services.telemetry.track('description_resolved');
    } catch (_) {
      result = const RecognitionResult(candidates: []);
    }
    if (!mounted) return;
    setState(() => _busy = false);
    if (result.isEmpty) {
      _showError(MarketDataException(AppErrorCode.noResults, detail: q));
      return;
    }
    final best = result.best!;
    final chosen = result.candidates.length == 1 && best.isConfident ? best : await showCandidateSheet(context, result);
    if (chosen == null || !mounted) return;
    // Megjegyezzük: legközelebb AI nélkül.
    unawaited(services.preferences.rememberResolved(q, symbol: chosen.symbol, name: chosen.companyName));
    _open(chosen);
  }

  Future<void> _capture(bool camera) => _recognizeFrom(() async {
    final services = AppServices.of(context);
    return camera ? services.capture.fromCamera() : services.capture.fromGallery();
  });

  Future<void> _pasteImage() => _recognizeFrom(() => AppServices.of(context).capture.fromClipboard());

  Future<void> _recognizeFrom(Future<CapturedImage?> Function() source) async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final CapturedImage? image;
    try {
      image = await source();
    } catch (e) {
      _showError(e);
      return;
    }
    if (image == null || !mounted) return;

    setState(() {
      _busy = true;
      _busyLabel = l10n.recognizing;
      _results = null;
    });
    final RecognitionResult result;
    try {
      final language = SupportedLocales.languageFor(Localizations.localeOf(context));
      result = await services.recognizer.recognize(image, outputLanguage: language.englishName);
      services.telemetry.track('photo_recognized');
    } catch (e) {
      if (mounted) setState(() => _busy = false);
      _showError(e);
      return;
    }
    if (!mounted) return;
    setState(() => _busy = false);

    if (result.isEmpty) {
      await _showNoCandidates(result);
      return;
    }
    final best = result.best!;
    final chosen = result.candidates.length == 1 && best.isConfident ? best : await showCandidateSheet(context, result);
    if (chosen == null || !mounted) return;
    widget.onOpenSymbol(chosen);
  }

  Future<void> _showNoCandidates(RecognitionResult result) async {
    final l10n = AppLocalizations.of(context);
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.noCandidatesTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.noCandidatesBody),
            if (result.summary != null) ...[
              const SizedBox(height: 12),
              Text(l10n.whatWeSaw, style: Theme.of(context).textTheme.labelLarge),
              Text(result.summary!),
            ],
          ],
        ),
        actions: [TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.ok))],
      ),
    );
  }

  void _showError(Object error) {
    if (!mounted) return;
    final l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMessage(l10n, error))));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final theme = Theme.of(context);
    final p = AppPalette.of(context);
    final supportsCamera = services.capture.supportsCamera;

    return Scaffold(
      appBar: widget.showAppBarActions
          ? desktopAppBar(context, hasSidebar: false, title: Text(l10n.appTitle))
          : PreferredSize(preferredSize: const Size.fromHeight(28), child: const WindowDragArea()),
      body: CallbackShortcuts(
        bindings: {
          const SingleActivator(LogicalKeyboardKey.keyV, meta: true): _pasteIfNoText,
          const SingleActivator(LogicalKeyboardKey.keyV, control: true): _pasteIfNoText,
        },
        child: SafeArea(
          // A görgethető terület a teljes szélesség (görgetősáv a szélen, a
          // touchpad az oldalsó üres sávban is görget); a tartalom középen marad.
          child: CenteredScroll(
            maxWidth: 680,
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
            builder: (context, padding) => SingleChildScrollView(
              padding: padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const UpdateBanner(),
                  if (widget.showAppBarActions)
                    const Align(alignment: AlignmentDirectional.centerStart, child: UsageChip(compact: true)),
                  const SizedBox(height: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/branding/logo_256.png', width: 34, height: 34),
                      const SizedBox(width: 12),
                      Flexible(
                        child: Text(
                          l10n.greeting,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontFamilyFallback: AppTheme.serifFallback,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  SearchField(
                    controller: _query,
                    focusNode: _searchFocus,
                    hint: l10n.searchHint,
                    autofocus: true,
                    enabled: !_busy,
                    onSubmitted: _submit,
                    leading: [
                      _PillAction(
                        icon: Icons.add_photo_alternate_outlined,
                        tooltip: l10n.attachImage,
                        onTap: _busy ? null : () => _capture(false),
                      ),
                      if (supportsCamera)
                        _PillAction(
                          icon: Icons.photo_camera_outlined,
                          tooltip: l10n.takePhoto,
                          onTap: _busy ? null : () => _capture(true),
                        ),
                      if (DesktopIntegration.isSupported)
                        _PillAction(
                          icon: Icons.content_paste_rounded,
                          tooltip: l10n.pasteImage,
                          onTap: _busy ? null : _pasteImage,
                        ),
                    ],
                  ),
                  if ((_suggestions.isNotEmpty || _aiSuggestion != null) && !_busy)
                    Card(
                      key: const ValueKey('search-suggestions'),
                      margin: const EdgeInsets.only(top: 8),
                      child: Column(
                        children: [
                          if (_aiSuggestion case final ai?)
                            ListTile(
                              key: const ValueKey('suggestion-ai'),
                              dense: true,
                              leading: Icon(Icons.auto_awesome_outlined, size: 18, color: p.accent),
                              title: Text(l10n.suggestAskAi(ai), maxLines: 2, overflow: TextOverflow.ellipsis),
                              onTap: () {
                                _clearSuggestions();
                                FocusScope.of(context).unfocus();
                                _resolveDescription(ai);
                              },
                            ),
                          for (final (i, c) in _suggestions.indexed) ...[
                            if (i > 0) const Divider(height: 1),
                            ListTile(
                              key: ValueKey('suggestion-${c.symbol}'),
                              dense: true,
                              leading: Icon(Icons.north_east_rounded, size: 18, color: p.muted),
                              title: Text(c.symbol, style: const TextStyle(fontWeight: FontWeight.w700)),
                              subtitle: c.companyName == c.symbol
                                  ? null
                                  : Text(c.companyName, maxLines: 1, overflow: TextOverflow.ellipsis),
                              onTap: () => _open(c),
                            ),
                          ],
                        ],
                      ),
                    ),
                  const SizedBox(height: 12),
                  Text(
                    l10n.homeHint,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                  ),
                  const SizedBox(height: 24),
                  if (_busy) ...[
                    const Center(
                      child: SizedBox(width: 22, height: 22, child: CircularProgressIndicator(strokeWidth: 2.5)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _busyLabel ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: p.muted),
                    ),
                  ],
                  if (_results != null)
                    _SearchResults(query: _lastQuery, results: _results!, onTap: widget.onOpenSymbol),
                  // A beállításokban elrejthető részek.
                  ListenableBuilder(
                    listenable: services.preferences,
                    builder: (context, _) {
                      final show = services.preferences.showsHome;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (show('markets')) MarketsStrip(onOpenSymbol: widget.onOpenSymbol),
                          if (show('brief')) const DailyBriefCard(),
                          if (show('portfolio')) PortfolioSummaryCard(onOpenSymbol: widget.onOpenSymbol),
                          if (show('favorites')) FavoritesStrip(onOpenSymbol: widget.onOpenSymbol),
                          // Telefonon nincs oldalsáv: a legutóbbiak itt látszanak.
                          if (widget.showAppBarActions) RecentChips(onOpenSymbol: widget.onOpenSymbol),
                          if (show('events')) UpcomingEventsSection(onOpenSymbol: widget.onOpenSymbol),
                          if (show('news')) WatchNewsSection(onOpenSymbol: widget.onOpenSymbol),
                          if (show('analyses')) MyAnalysesList(onOpenSymbol: widget.onOpenSymbol),
                        ],
                      );
                    },
                  ),
                  const TelemetryConsentCard(),
                  if (services.config.isDemoMode) ...[
                    const SizedBox(height: 24),
                    _DemoBanner(symbols: DemoMarketDataProvider.supportedSymbols.join(', ')),
                  ],
                  if (DesktopIntegration.isSupported && widget.showAppBarActions) ...[
                    const SizedBox(height: 24),
                    Text(
                      hotkeyHintText(l10n, services),
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                    ),
                  ],
                  const SizedBox(height: 40),
                  Text(
                    l10n.disclaimer,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// ⌘V / Ctrl+V: ha a vágólapon kép van, azt ismerjük fel; a szöveges
  /// beillesztést a mező maga kezeli.
  Future<void> _pasteIfNoText() async {
    if (!DesktopIntegration.isSupported || _busy) return;
    final services = AppServices.of(context);
    try {
      final image = await services.capture.fromClipboard();
      await _recognizeFrom(() async => image);
    } on AppException {
      // Nincs kép: a TextField normál beillesztése fut.
    }
  }
}

class _PillAction extends StatelessWidget {
  const _PillAction({required this.icon, required this.tooltip, required this.onTap});

  final IconData icon;
  final String tooltip;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    return IconButton(
      icon: Icon(icon, size: 22),
      tooltip: tooltip,
      color: p.muted,
      onPressed: onTap,
      style: IconButton.styleFrom(shape: const CircleBorder(), padding: const EdgeInsets.all(8)),
    );
  }
}

class _SearchResults extends StatelessWidget {
  const _SearchResults({required this.query, required this.results, required this.onTap});

  final String query;
  final List<StockCandidate> results;
  final ValueChanged<StockCandidate> onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
          child: Text(l10n.searchResultsTitle, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
        ),
        Card(
          child: Column(
            children: [
              for (final (i, c) in results.indexed) ...[
                if (i > 0) const Divider(height: 1),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: p.accent.withValues(alpha: 0.16),
                    foregroundColor: p.accent,
                    child: Text(
                      c.symbol.substring(0, c.symbol.length.clamp(0, 2)),
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  title: Text(c.symbol, style: const TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text(c.companyName, maxLines: 1, overflow: TextOverflow.ellipsis),
                  trailing: Icon(Icons.chevron_right_rounded, color: p.muted),
                  onTap: () => onTap(c),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _DemoBanner extends StatelessWidget {
  const _DemoBanner({required this.symbols});

  final String symbols;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: p.accent.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: p.accent.withValues(alpha: 0.35)),
      ),
      child: Row(
        children: [
          Icon(Icons.science_outlined, color: p.accent, size: 20),
          const SizedBox(width: 10),
          Expanded(child: Text(l10n.demoModeBanner(symbols), style: Theme.of(context).textTheme.bodySmall)),
        ],
      ),
    );
  }
}

/// Esc a keresőmezőben: törli a találatokat.
class ClearResultsIntent extends Intent {
  const ClearResultsIntent();
}

const Map<ShortcutActivator, Intent> homeShortcuts = {SingleActivator(LogicalKeyboardKey.escape): ClearResultsIntent()};
