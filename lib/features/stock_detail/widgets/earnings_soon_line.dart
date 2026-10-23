import 'package:flutter/material.dart';

import '../../../app_services.dart';
import '../../../core/models/analysis_extras.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';
import '../../events/events_view.dart' show eventWhen;
import '../../../core/util/dates.dart';

/// A részvény fejlécében és a vétel/eladás dialógusban: ha 7 napon belül gyorsjelentés
/// jön („Negyedéves gyorsjelentés · holnap · zárás után”). A gyorsjelentés-kártyával közös (gyorsítótárazott) adatból.
class EarningsSoonLine extends StatefulWidget {
  const EarningsSoonLine({super.key, required this.symbol});

  final String symbol;

  @override
  State<EarningsSoonLine> createState() => _EarningsSoonLineState();
}

class _EarningsSoonLineState extends State<EarningsSoonLine> {
  Future<EarningsOverview>? _future;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _future ??= AppServices.of(context).marketData.earnings(widget.symbol);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return FutureBuilder<EarningsOverview>(
      future: _future,
      builder: (context, snap) {
        final next = snap.data?.next;
        if (next == null) return const SizedBox.shrink();
        final now = DateTime.now();
        final days = calendarDaysBetween(now, next.date);
        if (days < 0 || days > 7) return const SizedBox.shrink();
        final text = [
          l10n.eventEarnings,
          eventWhen(l10n, next.date, now),
          ?switch (next.hour) {
            'bmo' => l10n.eventBeforeOpen,
            'amc' => l10n.eventAfterClose,
            _ => null,
          },
        ].join(' · ');
        return Padding(
          key: const ValueKey('earnings-soon'),
          padding: const EdgeInsets.only(top: 4),
          child: Row(
            children: [
              Icon(Icons.event_note_rounded, size: 15, color: p.accent),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  text,
                  style: theme.textTheme.bodySmall?.copyWith(color: p.accent, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
