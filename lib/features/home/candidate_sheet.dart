import 'package:flutter/material.dart';

import '../../core/models/stock_candidate.dart';
import '../../l10n/generated/app_localizations.dart';
import '../recognition/stock_recognizer.dart';

/// Alsó lap: több jelölt vagy bizonytalan találat esetén a felhasználó választ.
Future<StockCandidate?> showCandidateSheet(BuildContext context, RecognitionResult result) {
  return showModalBottomSheet<StockCandidate>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (context) {
      final l10n = AppLocalizations.of(context);
      final theme = Theme.of(context);
      return SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          children: [
            Text(l10n.chooseCandidateTitle, style: theme.textTheme.titleLarge),
            if (result.summary != null) ...[
              const SizedBox(height: 4),
              Text(result.summary!, style: theme.textTheme.bodyMedium),
            ],
            const SizedBox(height: 8),
            for (final c in result.candidates)
              Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: CircleAvatar(child: Text(c.symbol.substring(0, c.symbol.length.clamp(0, 2)))),
                  title: Text(c.exchange == null ? c.symbol : '${c.symbol} · ${c.exchange}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(c.companyName),
                      if (c.evidence != null) Text(c.evidence!, style: theme.textTheme.bodySmall),
                    ],
                  ),
                  trailing: Text(l10n.confidencePercent((c.confidence * 100).round())),
                  onTap: () => Navigator.of(context).pop(c),
                ),
              ),
          ],
        ),
      );
    },
  );
}
