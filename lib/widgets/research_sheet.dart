import 'package:flutter/material.dart';

import '../app_services.dart';
import '../features/news/research_store.dart' show ResearchResult;
import '../l10n/error_messages.dart';
import '../l10n/generated/app_localizations.dart';
import '../l10n/supported_locales.dart';
import '../theme/app_theme.dart';
import 'source_links.dart';

/// Közös alsó lap az AI-kutatásokhoz (hírmagyarázat, gyorsjelentés-összefoglaló,
/// „mi ez a papír?”): felirat, cím, a válasz a forrásokkal, alul a megjegyzés.
/// Amíg a válasz készül, folyamatjelző; hibánál a hibaüzenet. A kész válasz
/// alatt kérdezni is lehet róla (a napi kérdéskeretből).
Future<void> showResearchSheet(
  BuildContext context, {
  required Key sheetKey,
  required String eyebrow,
  required String title,
  required Future<ResearchResult> answer,
  required String note,
  required String sourceKeyPrefix,
}) {
  // A hibát a lap FutureBuildere mutatja; addig ne számítson kezeletlennek.
  answer.ignore();
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (context) {
      final l10n = AppLocalizations.of(context);
      final p = AppPalette.of(context);
      final theme = Theme.of(context);
      return SafeArea(
        child: Padding(
          // A billentyűzet fölé emeli a lapot, hogy a kérdés mezője látszódjon.
          padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              key: sheetKey,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(eyebrow, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                const SizedBox(height: 6),
                Text(title, style: theme.textTheme.titleMedium),
                const SizedBox(height: 14),
                FutureBuilder<ResearchResult>(
                  future: answer,
                  builder: (context, snap) {
                    if (snap.hasError) {
                      return Text(errorMessage(l10n, snap.error!), style: TextStyle(color: p.negative));
                    }
                    final r = snap.data;
                    if (r == null) return const LinearProgressIndicator();
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(r.text, style: theme.textTheme.bodyLarge?.copyWith(height: 1.45)),
                        // A webkeresés forrásai: koppintásra megnyílnak a böngészőben.
                        SourceLinks(sources: r.sources, keyPrefix: sourceKeyPrefix),
                        if (r.text.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          _FollowUp(note: r.text, subject: eyebrow, sourceKeyPrefix: '$sourceKeyPrefix-followup'),
                        ],
                      ],
                    );
                  },
                ),
                const SizedBox(height: 14),
                Text(note, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
              ],
            ),
          ),
        ),
      );
    },
  );
}

/// Kérdés a kész szövegről: mező, küldés, alatta a válasz(ok) a forrásokkal.
class _FollowUp extends StatefulWidget {
  const _FollowUp({required this.note, required this.subject, required this.sourceKeyPrefix});

  final String note;
  final String subject;
  final String sourceKeyPrefix;

  @override
  State<_FollowUp> createState() => _FollowUpState();
}

class _FollowUpState extends State<_FollowUp> {
  final _controller = TextEditingController();
  final _turns = <({String question, Future<ResearchResult> answer})>[];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _send() {
    final q = _controller.text.trim();
    if (q.isEmpty) return;
    final services = AppServices.of(context);
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    final answer = services.researchFollowUp.ask(
      note: widget.note,
      question: q,
      language: language,
      subject: widget.subject,
    )..ignore();
    services.telemetry.track('research_followup');
    setState(() {
      _turns.add((question: q, answer: answer));
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final (i, t) in _turns.indexed) ...[
          Text(
            t.question,
            key: ValueKey('followup-q-$i'),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          FutureBuilder<ResearchResult>(
            future: t.answer,
            builder: (context, snap) {
              if (snap.hasError) {
                return Text(errorMessage(l10n, snap.error!), style: TextStyle(color: p.negative));
              }
              final r = snap.data;
              if (r == null) return const LinearProgressIndicator();
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(r.text, key: ValueKey('followup-a-$i'), style: theme.textTheme.bodyMedium),
                  SourceLinks(sources: r.sources, keyPrefix: '${widget.sourceKeyPrefix}-$i'),
                ],
              );
            },
          ),
          const SizedBox(height: 10),
        ],
        Row(
          children: [
            Expanded(
              child: TextField(
                key: const ValueKey('followup-field'),
                controller: _controller,
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => _send(),
                decoration: InputDecoration(hintText: l10n.askHint, isDense: true),
              ),
            ),
            const SizedBox(width: 8),
            IconButton.filledTonal(
              key: const ValueKey('followup-send'),
              tooltip: l10n.askSend,
              icon: const Icon(Icons.send_rounded, size: 18),
              onPressed: _send,
            ),
          ],
        ),
      ],
    );
  }
}
