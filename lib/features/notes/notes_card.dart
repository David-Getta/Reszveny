import 'dart:async';

import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../stock_detail/widgets/section_card.dart';
import 'notes_store.dart';

/// „Jegyzeteim” a részvény oldalán: gépelés közben automatikusan ment.
class NotesCard extends StatefulWidget {
  const NotesCard({super.key, required this.symbol});

  final String symbol;

  @override
  State<NotesCard> createState() => _NotesCardState();
}

class _NotesCardState extends State<NotesCard> {
  TextEditingController? _text;
  Timer? _debounce;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _text ??= TextEditingController(text: AppServices.of(context).notes.of(widget.symbol)?.text ?? '');
  }

  @override
  void dispose() {
    // Kilépéskor a még nem mentett szöveg is mentődik.
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
      _notes?.set(widget.symbol, _text!.text);
    }
    _text?.dispose();
    super.dispose();
  }

  NotesStore? _notes;

  void _changed(String value) {
    _notes = AppServices.of(context).notes;
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 600), () => _notes!.set(widget.symbol, value));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final notes = AppServices.of(context).notes;
    return SectionCard(
      title: l10n.notesTitle,
      collapseKey: 'notes',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            key: const ValueKey('notes-field'),
            controller: _text,
            minLines: 2,
            maxLines: 8,
            maxLength: NotesStore.maxLength,
            onChanged: _changed,
            decoration: InputDecoration(
              hintText: l10n.notesHint,
              hintMaxLines: 3,
              border: const OutlineInputBorder(),
              counterText: '',
            ),
          ),
          const SizedBox(height: 8),
          ListenableBuilder(
            listenable: notes,
            builder: (context, _) {
              final n = notes.of(widget.symbol);
              return Text(
                n == null ? l10n.notesInfo : '${l10n.notesSaved(fmt.dateTime(n.updatedAt))} · ${l10n.notesInfo}',
                style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
              );
            },
          ),
        ],
      ),
    );
  }
}
