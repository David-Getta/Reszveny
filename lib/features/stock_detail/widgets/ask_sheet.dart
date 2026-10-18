import 'package:flutter/material.dart';

import '../../../app_services.dart';
import '../../../core/models/stock_report.dart';
import '../../analysis/analysis_chat.dart' show ChatMessage;
import '../../../l10n/error_messages.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../l10n/supported_locales.dart';
import '../../../theme/app_theme.dart';
import '../../../widgets/source_links.dart';
import 'section_card.dart';

/// „Kérdezz az elemzésről” gomb az elemzés alján.
class AskAnalysisButton extends StatelessWidget {
  const AskAnalysisButton({super.key, required this.report, required this.companyName, this.title});

  final StockReport report;
  final String companyName;

  /// A lap címe, ha nem a részvényé (pl. a portfólió-elemzésnél).
  final String? title;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return OutlinedButton.icon(
      key: const ValueKey('ask-open'),
      onPressed: () => showAskSheet(context, report: report, companyName: companyName, title: title),
      icon: const Icon(Icons.forum_outlined, size: 18),
      label: Text(l10n.askButton),
    );
  }
}

Future<void> showAskSheet(
  BuildContext context, {
  required StockReport report,
  required String companyName,
  String? title,
}) => showModalBottomSheet<void>(
  context: context,
  isScrollControlled: true,
  showDragHandle: true,
  builder: (_) => FractionallySizedBox(
    heightFactor: 0.88,
    child: _AskSheet(report: report, companyName: companyName, title: title),
  ),
);

class _AskSheet extends StatefulWidget {
  const _AskSheet({required this.report, required this.companyName, this.title});

  final StockReport report;
  final String companyName;
  final String? title;

  @override
  State<_AskSheet> createState() => _AskSheetState();
}

class _AskSheetState extends State<_AskSheet> {
  final _input = TextEditingController();
  final _scroll = ScrollController();
  Object? _error;

  @override
  void dispose() {
    _input.dispose();
    _scroll.dispose();
    super.dispose();
  }

  Future<void> _ask(String text) async {
    final services = AppServices.of(context);
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    if (text.trim().isEmpty) return;
    setState(() => _error = null);
    _input.clear();
    services.telemetry.track('ask_question');
    _scrollToEnd();
    try {
      await services.chat.ask(widget.report, text, companyName: widget.companyName, language: language);
    } catch (e) {
      if (mounted) {
        setState(() => _error = e);
        // A kérdés visszakerül a mezőbe, hogy újra elküldhető legyen.
        if (_input.text.isEmpty) _input.text = text;
      }
    }
    _scrollToEnd();
  }

  void _scrollToEnd() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scroll.hasClients) {
        _scroll.animateTo(
          _scroll.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final chat = services.chat;
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return ListenableBuilder(
      listenable: chat,
      builder: (context, _) {
        final thread = chat.thread(widget.report);
        final busy = chat.isBusy(widget.report);
        final left = chat.questionsLeft(widget.report);
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                child: Text(
                  widget.title ?? l10n.askTitle(widget.report.symbol),
                  style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              Expanded(
                child: ListView(
                  controller: _scroll,
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
                  children: [
                    if (thread.isEmpty) ...[
                      Text(l10n.askIntro, style: theme.textTheme.bodyMedium?.copyWith(color: p.muted)),
                      const SizedBox(height: 14),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          for (final (i, s) in [l10n.askSuggest1, l10n.askSuggest2, l10n.askSuggest3].indexed)
                            ActionChip(
                              key: ValueKey('ask-suggest-$i'),
                              label: Text(s),
                              onPressed: busy ? null : () => _ask(s),
                            ),
                        ],
                      ),
                    ],
                    for (final m in thread) _Bubble(message: m),
                    if (busy)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
                            const SizedBox(width: 10),
                            Text(l10n.askThinking, style: TextStyle(color: p.muted)),
                          ],
                        ),
                      ),
                    if (_error case final e?) ...[const SizedBox(height: 8), SectionError(errorMessage(l10n, e))],
                    if (left <= 0 && !busy) ...[
                      const SizedBox(height: 8),
                      Text(l10n.askMaxReached, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                    ],
                  ],
                ),
              ),
              const Divider(height: 1),
              SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          key: const ValueKey('ask-input'),
                          controller: _input,
                          enabled: left > 0,
                          minLines: 1,
                          maxLines: 4,
                          maxLength: 500,
                          textInputAction: TextInputAction.send,
                          onSubmitted: busy ? null : _ask,
                          decoration: InputDecoration(
                            hintText: l10n.askHint,
                            counterText: '',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            isDense: true,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      IconButton.filled(
                        key: const ValueKey('ask-send'),
                        tooltip: l10n.askSend,
                        onPressed: busy || left <= 0 ? null : () => _ask(_input.text),
                        icon: const Icon(Icons.arrow_upward_rounded),
                      ),
                    ],
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

class _Bubble extends StatelessWidget {
  const _Bubble({required this.message});

  final ChatMessage message;

  bool get fromUser => message.fromUser;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Align(
      alignment: fromUser ? AlignmentDirectional.centerEnd : AlignmentDirectional.centerStart,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        constraints: const BoxConstraints(maxWidth: 560),
        decoration: BoxDecoration(
          color: fromUser ? p.accent.withValues(alpha: 0.16) : theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SelectableText(message.text, style: theme.textTheme.bodyMedium?.copyWith(height: 1.45)),
            SourceLinks(sources: message.sources, keyPrefix: 'ask-source'),
          ],
        ),
      ),
    );
  }
}
