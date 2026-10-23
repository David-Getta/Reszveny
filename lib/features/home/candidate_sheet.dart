import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../l10n/generated/app_localizations.dart';
import '../recognition/stock_recognizer.dart';

/// Alsó lap: több jelölt vagy bizonytalan találat esetén a felhasználó választ.
/// Ha a képen több részvény is volt (pl. egy bróker figyelőlistája), soronként
/// csillaggal vagy egyszerre mind a kedvencek közé tehetők.
Future<StockCandidate?> showCandidateSheet(BuildContext context, RecognitionResult result) {
  return showModalBottomSheet<StockCandidate>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (context) => _CandidateList(result: result),
  );
}

class _CandidateList extends StatelessWidget {
  const _CandidateList({required this.result});

  final RecognitionResult result;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final prefs = AppServices.of(context).preferences;
    final candidates = result.candidates;
    return ListenableBuilder(
      listenable: prefs,
      builder: (context, _) {
        final missing = [
          for (final c in candidates)
            if (!prefs.isFavorite(c.symbol)) c.symbol.toUpperCase(),
        ];
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
              for (final c in candidates)
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
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(l10n.confidencePercent((c.confidence * 100).round())),
                        if (candidates.length > 1)
                          IconButton(
                            key: ValueKey('cand-fav-${c.symbol}'),
                            tooltip: prefs.isFavorite(c.symbol) ? l10n.removeFromFavorites : l10n.addToFavorites,
                            icon: Icon(
                              prefs.isFavorite(c.symbol) ? Icons.star_rounded : Icons.star_border_rounded,
                              color: prefs.isFavorite(c.symbol) ? theme.colorScheme.primary : null,
                            ),
                            onPressed: () => prefs.toggleFavorite(c.symbol),
                          ),
                      ],
                    ),
                    onTap: () => Navigator.of(context).pop(c),
                  ),
                ),
              if (candidates.length > 1 && missing.isNotEmpty) ...[
                const SizedBox(height: 8),
                OutlinedButton.icon(
                  key: const ValueKey('cand-fav-all'),
                  // A felvétel napja is megmarad („mióta figyeled”); az új kedvencek elöl.
                  onPressed: () => prefs.setFavorites([...missing, ...prefs.favorites], stampNew: true),
                  icon: const Icon(Icons.star_border_rounded),
                  label: Text(l10n.addAllToFavorites(missing.length)),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
