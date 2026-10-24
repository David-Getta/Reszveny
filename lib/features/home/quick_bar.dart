import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../app_services.dart';
import '../../core/errors.dart';
import '../../core/models/stock_candidate.dart';
import '../capture/capture_service.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/supported_locales.dart';
import '../recognition/description_resolver.dart';
import 'candidate_sheet.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'search_field.dart';

/// A gyorsbillentyűvel előhívott sáv Windowson és Linuxon (macOS-en natív
/// panel van, lásd `NativeQuickPanel`): ilyenkor maga a főablak kicsi, keret
/// nélküli sávvá alakul. Enter: megnyitja a találatot a teljes ablakban;
/// Esc: elrejti a sávot.
class QuickBar extends StatefulWidget {
  const QuickBar({super.key, required this.onOpenSymbol, required this.onOpenWindow, this.onNeedAiConsent});

  final ValueChanged<StockCandidate> onOpenSymbol;
  final VoidCallback onOpenWindow;

  /// Az AI-hoz még nincs hozzájárulás: a 72 pont magas sávban nem fér el az engedélykérő
  /// ablak (csak a gombjai látszanának), ezért a teljes ablakban kérdez.
  final Future<void> Function()? onNeedAiConsent;

  @override
  State<QuickBar> createState() => _QuickBarState();
}

class _QuickBarState extends State<QuickBar> {
  final _controller = TextEditingController();
  final _focus = FocusNode();
  bool _busy = false;

  @override
  void dispose() {
    _controller.dispose();
    _focus.dispose();
    super.dispose();
  }

  /// Kép felismerése a vágólapról (a gombbal; [image]: a Ctrl+V már beolvasta).
  Future<void> _pasteImage([CapturedImage? image]) async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    if (_busy) return;
    if (services.preferences.aiConsent != true) {
      await widget.onNeedAiConsent?.call();
      return;
    }
    final language = SupportedLocales.languageFor(Localizations.localeOf(context));
    setState(() => _busy = true);
    try {
      final result = await services.recognizer.recognize(
        image ?? await services.capture.fromClipboard(),
        outputLanguage: language.englishName,
      );
      services.telemetry.track('photo_recognized');
      if (!mounted) return;
      final best = result.best;
      if (best == null) {
        messenger.showSnackBar(SnackBar(content: Text(l10n.noCandidatesTitle)));
        return;
      }
      StockCandidate? chosen = best;
      if (result.candidates.length > 1 && !best.isConfident) {
        chosen = await showCandidateSheet(context, result);
      }
      if (chosen != null) widget.onOpenSymbol(chosen);
    } catch (e) {
      // Minden hiba üzenet (a vágólap-bővítmény hibája és a felismerésé is).
      messenger.showSnackBar(SnackBar(content: Text(errorMessage(l10n, e))));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _submit(String query) async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final q = DescriptionResolver.searchTerm(query);
    if (q.isEmpty || _busy) return;
    final language = SupportedLocales.languageFor(Localizations.localeOf(context));
    setState(() => _busy = true);
    List<StockCandidate> results = const [];
    Object? error;
    try {
      results = await services.marketData.search(q);
    } catch (_) {
      results = const [];
    }
    // Leírás („tech 100 etf”): ha a kereső nem találja, az AI fejti meg – hozzájárulással.
    final describe = results.isEmpty && DescriptionResolver.looksLikeDescription(q) && services.config.hasAnthropicKey;
    if (describe && services.preferences.aiConsent != true) {
      if (mounted) setState(() => _busy = false);
      await widget.onNeedAiConsent?.call();
      return;
    }
    if (describe) {
      try {
        results = (await services.descriptionResolver.resolve(q, outputLanguage: language.englishName)).candidates;
        services.telemetry.track('description_resolved');
      } catch (e) {
        error = e;
      }
    }
    if (!mounted) return;
    setState(() => _busy = false);
    final StockCandidate chosen;
    if (results.isNotEmpty) {
      chosen = results.first;
    } else if (DescriptionResolver.looksLikeTicker(q)) {
      chosen = StockCandidate(symbol: q.toUpperCase(), companyName: q.toUpperCase(), confidence: 1);
    } else {
      // Leírás vagy elgépelés: nem nyitjuk meg tickerként (és nem kerül a legutóbbiak közé).
      final shown = error ?? MarketDataException(AppErrorCode.noResults, detail: q);
      messenger.showSnackBar(SnackBar(content: Text(errorMessage(l10n, shown))));
      return;
    }
    _controller.clear();
    widget.onOpenSymbol(chosen);
  }

  /// Ctrl/⌘+V: kép esetén felismerés, egyébként a szöveg beillesztése a mezőbe (a
  /// gyorsbillentyű elnyeli a mező saját beillesztését, ezért itt kell megtenni).
  Future<void> _paste() async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    CapturedImage? image;
    try {
      image = await services.capture.fromClipboard();
    } on AppException catch (e) {
      // Van kép, de nem olvasható: az üzenet; nincs kép: a szöveg jön.
      if (e.code != AppErrorCode.clipboardNoImage) {
        messenger.showSnackBar(SnackBar(content: Text(errorMessage(l10n, e))));
        return;
      }
    } catch (_) {
      // A vágólap-bővítmény hibája (pl. foglalt vágólap): szövegként próbáljuk.
    }
    if (image != null) return _pasteImage(image);
    final text = (await Clipboard.getData(Clipboard.kTextPlain))?.text?.replaceAll(RegExp(r'\s+'), ' ');
    if (text == null || text.isEmpty || !mounted) return;
    final v = _controller.value;
    final at = v.selection.isValid ? v.selection : TextSelection.collapsed(offset: v.text.length);
    _controller.value = v.replaced(at, text);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final services = AppServices.of(context);
    return Scaffold(
      body: CallbackShortcuts(
        bindings: {
          const SingleActivator(LogicalKeyboardKey.escape): () => services.desktop.hideQuickBar(),
          const SingleActivator(LogicalKeyboardKey.keyV, meta: true): _paste,
          const SingleActivator(LogicalKeyboardKey.keyV, control: true): _paste,
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: SearchField(
            hint: l10n.quickBarHint,
            autofocus: true,
            compact: true,
            enabled: !_busy,
            controller: _controller,
            focusNode: _focus,
            onSubmitted: _submit,
            leading: [
              Padding(
                padding: const EdgeInsets.only(left: 6, right: 2),
                child: Image.asset('assets/branding/logo_128.png', width: 22, height: 22),
              ),
              IconButton(
                tooltip: l10n.pasteImage,
                icon: const Icon(Icons.content_paste_rounded, size: 18),
                color: p.muted,
                onPressed: _busy ? null : () => _pasteImage(),
              ),
              IconButton(
                tooltip: l10n.openFullWindow,
                icon: const Icon(Icons.open_in_full_rounded, size: 18),
                color: p.muted,
                onPressed: widget.onOpenWindow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
