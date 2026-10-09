import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final services = AppServices.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CallbackShortcuts(
        bindings: {const SingleActivator(LogicalKeyboardKey.escape): () => services.desktop.hideQuickBar()},
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
                child: Icon(Icons.auto_graph_rounded, color: p.accent, size: 22),
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
