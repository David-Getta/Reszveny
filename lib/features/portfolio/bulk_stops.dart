import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../alerts/price_alert.dart';

/// A választható esés-küszöbök (%).
const stopPercents = [5.0, 10.0, 15.0, 20.0, 25.0];

/// Követő stop (esés a csúcstól) egyszerre minden birtokolt pozícióra, amelyiken
/// még nincs aktív ilyen riasztás: a csúcs a riasztás első ellenőrzésekor az
/// akkori ár, onnan követi az árat felfelé. A létrehozott riasztások száma.
Future<int> addTrailingStops(AppServices services, double percent) async {
  var added = 0;
  for (final p in services.portfolio.positions) {
    final has = services.alerts.forSymbol(p.symbol).any((a) => a.isActive && a.kind == AlertKind.trailing);
    if (has) continue;
    await services.alerts.add(symbol: p.symbol, kind: AlertKind.trailing, value: percent, currency: p.currency);
    added++;
  }
  return added;
}

/// A küszöb választása, majd a riasztások létrehozása; a végén egy sáv mondja meg, hány lett.
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
    ..showSnackBar(SnackBar(content: Text(l10n.portfolioStopsDone(added))));
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
                    label: Text('−${v.toStringAsFixed(0)}%'),
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
