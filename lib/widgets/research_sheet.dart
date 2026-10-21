import 'package:flutter/material.dart';

import '../app_services.dart';
import '../core/share/share_text.dart';
import '../core/util/formatters.dart';
import '../features/news/daily_brief.dart' show AskSource;
import '../features/news/follow_up_store.dart';
import '../features/notes/notes_store.dart' show NotesStore;
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
  String? symbol,
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
                          const SizedBox(height: 8),
                          // Megosztás szövegként, és mentés a részvény jegyzetébe.
                          Wrap(
                            alignment: WrapAlignment.end,
                            spacing: 4,
                            children: [
                              if (symbol != null)
                                _SaveNoteButton(symbol: symbol, title: title, text: r.text, sources: r.sources),
                              TextButton.icon(
                                key: const ValueKey('research-share'),
                                style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                                icon: const Icon(Icons.ios_share_rounded, size: 18),
                                label: Text(l10n.shareAsText),
                                onPressed: () => shareText(
                                  [
                                    '$eyebrow · $title',
                                    '',
                                    r.text,
                                    if (r.sources.isNotEmpty) ...[
                                      '',
                                      for (final s in r.sources) '${s.title}: ${s.url}',
                                    ],
                                    '',
                                    note,
                                  ].join('\n'),
                                  subject: '$eyebrow · $title',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          ResearchFollowUpPanel(
                            note: r.text,
                            subject: eyebrow,
                            sourceKeyPrefix: '$sourceKeyPrefix-followup',
                          ),
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

/// Kérdés egy kész szövegről (kutatási jegyzet vagy összehasonlítás): mező,
/// küldés, alatta a válasz(ok) a forrásokkal. A napi kérdéskeretből.
class ResearchFollowUpPanel extends StatefulWidget {
  const ResearchFollowUpPanel({
    super.key,
    required this.note,
    required this.subject,
    this.sourceKeyPrefix = 'followup-source',
  });

  final String note;
  final String subject;
  final String sourceKeyPrefix;

  /// A kész kérdés–válasz párok tárolója a készüléken.
  static FollowUpStore store = FollowUpStore();

  /// Teszthez: mintha újraindult volna az app (a futás alatti memória ürül).
  @visibleForTesting
  static void debugForgetSession() => _ResearchFollowUpPanelState._memory.clear();

  @override
  State<ResearchFollowUpPanel> createState() => _ResearchFollowUpPanelState();
}

class _ResearchFollowUpPanelState extends State<ResearchFollowUpPanel> {
  final _controller = TextEditingController();

  /// A kérdések és válaszok a futás alatt megmaradnak (jegyzetenként), így a
  /// lap újranyitásakor is látszanak; legfeljebb ennyi jegyzethez. A kész
  /// párokat a [store] a készüléken is megőrzi, újraindítás után is látszanak.
  static final _memory = <String, List<({String question, Future<ResearchResult> answer})>>{};
  static const maxRemembered = 30;
  static FollowUpStore get store => ResearchFollowUpPanel.store;

  late final String _key = FollowUpStore.keyFor(widget.subject, widget.note);
  late final List<({String question, Future<ResearchResult> answer})> _turns;

  @override
  void initState() {
    super.initState();
    final remembered = _memory[_key];
    if (remembered != null) {
      _turns = remembered;
      return;
    }
    while (_memory.length >= maxRemembered) {
      _memory.remove(_memory.keys.first);
    }
    _turns = _memory[_key] = [];
    // Korábbi futásból mentett párok: betöltve kész válaszként.
    store.load(_key).then((saved) {
      if (!mounted || saved.isEmpty || _turns.isNotEmpty) return;
      setState(() {
        _turns.addAll([for (final t in saved) (question: t.question, answer: Future.value(t.answer))]);
      });
    });
  }

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
    // A kész válasz a készülékre is kerül; a hibát a lap mutatja, nem tároljuk.
    answer.then((r) => store.append(_key, q, r), onError: (_) {});
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

/// „Mentés a jegyzeteimbe”: a válasz a részvény saját jegyzetének végére kerül
/// (dátummal és címmel); mentés után pipa, és nem menthető kétszer.
class _SaveNoteButton extends StatefulWidget {
  const _SaveNoteButton({required this.symbol, required this.title, required this.text, required this.sources});

  final String symbol;
  final String title;
  final String text;
  final List<AskSource> sources;

  @override
  State<_SaveNoteButton> createState() => _SaveNoteButtonState();
}

class _SaveNoteButtonState extends State<_SaveNoteButton> {
  bool _saved = false;

  Future<void> _save() async {
    final services = AppServices.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: '');
    final existing = services.notes.of(widget.symbol)?.text.trim() ?? '';
    final entry = [
      '${fmt.date(DateTime.now())} · ${widget.title}',
      widget.text.trim(),
      for (final s in widget.sources) s.url,
    ].join('\n');
    // A saját sorok maradnak; ha nem fér el, a bejegyzés vége marad le.
    final room = NotesStore.maxLength - (existing.isEmpty ? 0 : existing.length + 2);
    final fitted = entry.length > room ? entry.substring(0, room.clamp(0, entry.length)) : entry;
    await services.notes.set(widget.symbol, existing.isEmpty ? fitted : '$existing\n\n$fitted');
    services.telemetry.track('research_saved_note');
    if (mounted) setState(() => _saved = true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return TextButton.icon(
      key: const ValueKey('research-save-note'),
      style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
      icon: Icon(_saved ? Icons.check_rounded : Icons.sticky_note_2_outlined, size: 18),
      label: Text(_saved ? l10n.savedToNotes : l10n.saveToNotes),
      onPressed: _saved ? null : _save,
    );
  }
}
