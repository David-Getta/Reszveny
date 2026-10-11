import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../app_services.dart';
import '../../core/errors.dart';
import '../../core/models/stock_candidate.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/supported_locales.dart';
import 'candidate_sheet.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'search_field.dart';

/// A gyorsbillentyűvel előhívott lebegő sáv – mint a Claude macOS-es
/// gyorsbeviteli ablaka. Enter: megnyitja a találatot a teljes ablakban;
/// Esc: elrejti a sávot.
class QuickBar extends StatefulWidget {
  const QuickBar({super.key, required this.onOpenSymbol, required this.onOpenWindow});

  final ValueChanged<StockCandidate> onOpenSymbol;
  final VoidCallback onOpenWindow;

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

  Future<void> _pasteImage() async {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    if (_busy) return;
    final language = SupportedLocales.languageFor(Localizations.localeOf(context));
    setState(() => _busy = true);
    try {
      final image = await services.capture.fromClipboard();
      final result = await services.recognizer.recognize(image, outputLanguage: language.englishName);
      if (!mounted) return;
      final best = result.best;
      if (best == null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l10n.noCandidatesTitle)));
        return;
      }
      StockCandidate? chosen = best;
      if (result.candidates.length > 1 && !best.isConfident) {
        chosen = await showCandidateSheet(context, result);
      }
      if (chosen != null) widget.onOpenSymbol(chosen);
    } on AppException catch (e) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMessage(l10n, e))));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _submit(String query) async {
    final services = AppServices.of(context);
    final q = query.trim();
    if (q.isEmpty || _busy) return;
    setState(() => _busy = true);
    List<StockCandidate> results = const [];
    try {
      results = await services.marketData.search(q);
    } catch (_) {
      results = const [];
    }
    if (!mounted) return;
    setState(() => _busy = false);
    final chosen = results.isNotEmpty
        ? results.first
        : StockCandidate(symbol: q.toUpperCase(), companyName: q.toUpperCase(), confidence: 1);
    _controller.clear();
    widget.onOpenSymbol(chosen);
  }

  Future<void> _pasteIfImage() async {
    try {
      await AppServices.of(context).capture.fromClipboard();
    } on AppException {
      return; // nincs kép: a mező szöveges beillesztése fut
    }
    await _pasteImage();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final services = AppServices.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CallbackShortcuts(
        bindings: {
          const SingleActivator(LogicalKeyboardKey.escape): () => services.desktop.hideQuickBar(),
          const SingleActivator(LogicalKeyboardKey.keyV, meta: true): _pasteIfImage,
          const SingleActivator(LogicalKeyboardKey.keyV, control: true): _pasteIfImage,
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
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
                onPressed: _busy ? null : _pasteImage,
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
