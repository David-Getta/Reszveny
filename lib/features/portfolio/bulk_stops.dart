import 'package:flutter/material.dart';

import '../../core/util/formatters.dart';
import '../../app_services.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../alerts/price_alert.dart';

/// A választható esés-küszöbök (%).
const stopPercents = [5.0, 10.0, 15.0, 20.0, 25.0];

/// Követő stop (esés a csúcstól) egyszerre minden birtokolt pozícióra, amelyiken
/// még nincs aktív ilyen riasztás: a csúcs a riasztás első ellenőrzésekor az
/// akkori ár, onnan követi az árat felfelé. A létrehozott riasztások (a visszavonáshoz).
Future<List<PriceAlert>> addTrailingStops(AppServices services, double percent) async {
  final covered = {
    for (final a in services.alerts.active)
      if (a.kind == AlertKind.trailing) a.symbol,
  };
  final todo = [
    for (final p in services.portfolio.positions)
      if (!covered.contains(p.symbol)) p,
  ];
  return [
    for (final p in todo)
      await services.alerts.add(symbol: p.symbol, kind: AlertKind.trailing, value: percent, currency: p.currency),
  ];
}

/// A küszöb választása, majd a riasztások létrehozása; a végén egy sáv mondja meg, hány lett
/// (visszavonással).
Future<void> showBulkStops(BuildContext context) async {
  final services = AppServices.of(context);
  final l10n = AppLocalizations.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final percent = await showDialog<double>(context: context, builder: (_) => const _StopsDialog());
  if (percent == null) return;
  final added = await addTrailingStops(services, percent);
  services.telemetry.track('bulk_stops');
  messenger
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(l10n.portfolioStopsDone(added.length)),
        // Egy koppintással mind visszavonható.
        action: added.isEmpty
            ? null
            : SnackBarAction(
                key: const ValueKey('stops-undo'),
                label: l10n.undo,
                onPressed: () async {
                  for (final a in added) {
                    await services.alerts.remove(a.id);
                  }
                },
              ),
      ),
    );
}

class _StopsDialog extends StatefulWidget {
  const _StopsDialog();

  @override
  State<_StopsDialog> createState() => _StopsDialogState();
}

class _StopsDialogState extends State<_StopsDialog> {
  double _percent = 15;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return AlertDialog(
      scrollable: true,
      title: Text(l10n.portfolioStopsAll),
      content: SizedBox(
        width: 380,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.alertTrailingHint, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: [
                for (final v in stopPercents)
                  ChoiceChip(
                    key: ValueKey('stops-$v'),
                    // A nyelv számformájával, egy egységként (jobbról balra írva se „5%−”).
                    label: Text(Fmt(Localizations.localeOf(context).toString()).percent(-v, decimals: 0)),
                    selected: v == _percent,
                    onSelected: (_) => setState(() => _percent = v),
                  ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancel)),
        FilledButton(
          key: const ValueKey('stops-save'),
          onPressed: () => Navigator.of(context).pop(_percent),
          child: Text(l10n.ok),
        ),
      ],
    );
  }
}
