import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

/// A Claude-stílusú, lekerekített „pirula” keresősáv: bal oldalon ikon-
/// gombok (kép, kamera), középen a szöveg, jobb oldalon a küldés gomb.
class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    required this.hint,
    required this.onSubmitted,
    this.leading = const [],
    this.autofocus = false,
    this.enabled = true,
    this.compact = false,
    this.controller,
    this.focusNode,
  });

  final String hint;
  final ValueChanged<String> onSubmitted;
  final List<Widget> leading;
  final bool autofocus;
  final bool enabled;

  /// Alacsonyabb, egysoros változat a lebegő gyorssávhoz.
  final bool compact;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late final TextEditingController _controller = widget.controller ?? TextEditingController();
  late final FocusNode _focus = widget.focusNode ?? FocusNode();
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final has = _controller.text.trim().isNotEmpty;
      if (has != _hasText) setState(() => _hasText = has);
    });
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    if (widget.focusNode == null) _focus.dispose();
    super.dispose();
  }

  void _submit() {
    final text = _controller.text;
    if (text.trim().isEmpty) return;
    widget.onSubmitted(text);
  }

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: _focus,
      builder: (context, _) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: widget.compact ? 2 : 8),
          decoration: BoxDecoration(
            color: p.surface,
            borderRadius: BorderRadius.circular(widget.compact ? 18 : 22),
            border: Border.all(color: _focus.hasFocus ? p.accent.withValues(alpha: 0.7) : p.border, width: 1.2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: theme.brightness == Brightness.dark ? 0.35 : 0.08),
                blurRadius: 24,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            children: [
              ...widget.leading,
              const SizedBox(width: 4),
              Expanded(
                child: TextField(
                  controller: _controller,
                  focusNode: _focus,
                  autofocus: widget.autofocus,
                  enabled: widget.enabled,
                  textInputAction: TextInputAction.search,
                  textCapitalization: TextCapitalization.none,
                  style: theme.textTheme.bodyLarge?.copyWith(fontSize: widget.compact ? 17 : 18),
                  decoration: InputDecoration(
                    hintText: widget.hint,
                    filled: false,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: widget.compact ? 8 : 14),
                  ),
                  onSubmitted: (_) => _submit(),
                ),
              ),
              const SizedBox(width: 4),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 150),
                opacity: _hasText && widget.enabled ? 1 : 0.45,
                child: Material(
                  color: p.accent,
                  shape: const CircleBorder(),
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    onTap: widget.enabled ? _submit : null,
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.arrow_upward_rounded, color: Colors.white, size: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
