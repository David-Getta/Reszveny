import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../app_services.dart';
import '../../core/desktop/desktop_integration.dart';
import '../../core/errors.dart';
import '../../core/models/stock_candidate.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import '../capture/capture_service.dart';
import '../market_data/demo_market_data_provider.dart';
import 'favorites_strip.dart';
import '../recognition/stock_recognizer.dart';
import '../settings/settings_page.dart';
import 'candidate_sheet.dart';
import 'search_field.dart';

/// Kezdőképernyő: nagy üdvözlő sor és egy keresősáv (ticker vagy cégnév,
/// kép csatolása, kamera) – a Claude kezdőképernyőjének mintájára.
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.onOpenSymbol, this.showAppBarActions = true});

  final ValueChanged<StockCandidate> onOpenSymbol;

  /// Keskeny elrendezésben (nincs oldalsáv) a beállítások az AppBarban.
  final bool showAppBarActions;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _busy = false;
  String? _busyLabel;
  List<StockCandidate>? _results;
  String _lastQuery = '';

  Future<void> _submit(String query) async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final q = query.trim();
    if (q.isEmpty) return;
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
        widget.onOpenSymbol(StockCandidate(symbol: q.toUpperCase(), companyName: q.toUpperCase(), confidence: 1));
      } else {
        _showError(MarketDataException(AppErrorCode.noResults, detail: q));
      }
      return;
    }
    if (results.length == 1 || results.first.confidence >= 1) {
      widget.onOpenSymbol(results.first);
      return;
    }
    setState(() => _results = results);
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
          ? desktopAppBar(
              context,
              hasSidebar: false,
              title: Text(l10n.appTitle),
              actions: [
                IconButton(
                  icon: const Icon(Icons.tune_rounded),
                  tooltip: l10n.settings,
                  onPressed: () =>
                      Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const SettingsPage())),
                ),
                const SizedBox(width: 4),
              ],
            )
          : PreferredSize(preferredSize: const Size.fromHeight(28), child: const WindowDragArea()),
      body: CallbackShortcuts(
        bindings: {
          const SingleActivator(LogicalKeyboardKey.keyV, meta: true): _pasteIfNoText,
          const SingleActivator(LogicalKeyboardKey.keyV, control: true): _pasteIfNoText,
        },
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 680),
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                    FavoritesStrip(onOpenSymbol: widget.onOpenSymbol),
                    if (services.config.isDemoMode) ...[
                      const SizedBox(height: 24),
                      _DemoBanner(symbols: DemoMarketDataProvider.supportedSymbols.join(', ')),
                    ],
                    if (DesktopIntegration.isSupported && widget.showAppBarActions) ...[
                      const SizedBox(height: 24),
                      Text(
                        l10n.hotkeyHint(services.desktop.shortcutLabel),
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
