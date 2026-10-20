import 'package:flutter/material.dart';

import '../features/news/research_store.dart' show ResearchResult;
import '../l10n/error_messages.dart';
import '../l10n/generated/app_localizations.dart';
import '../theme/app_theme.dart';
import 'source_links.dart';

/// Közös alsó lap az AI-kutatásokhoz (hírmagyarázat, gyorsjelentés-összefoglaló,
/// „mi ez a papír?”): felirat, cím, a válasz a forrásokkal, alul a megjegyzés.
/// Amíg a válasz készül, folyamatjelző; hibánál a hibaüzenet.
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
                    ],
                  );
                },
              ),
              const SizedBox(height: 14),
              Text(note, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
            ],
          ),
        ),
      );
    },
  );
}
