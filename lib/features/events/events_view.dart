import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/centered_scroll.dart';
import 'events_service.dart';

/// „Mikor?”: ma, holnap, N nap múlva.
String eventWhen(AppLocalizations l10n, DateTime day, DateTime today) {
  final days = DateTime(day.year, day.month, day.day).difference(DateTime(today.year, today.month, today.day)).inDays;
  return switch (days) {
    <= 0 => l10n.longTermToday,
    1 => l10n.eventTomorrow,
    _ => l10n.eventInDays(days),
  };
}

/// A kezdőképernyő része: a következő néhány esemény (30 napon belül) a
/// kedvencekhez és a portfólióhoz, „Mind” gombbal a teljes listához.
class UpcomingEventsSection extends StatefulWidget {
  const UpcomingEventsSection({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  static const shownCount = 3;
  static const shownDays = 30;

  @override
  State<UpcomingEventsSection> createState() => _UpcomingEventsSectionState();
}

class _UpcomingEventsSectionState extends State<UpcomingEventsSection> {
  bool _started = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_started) return;
    _started = true;
    final events = AppServices.of(context).events;
    // Az első képkocka után (a gyorsítótár miatt ez legtöbbször azonnali).
    WidgetsBinding.instance.addPostFrameCallback((_) => events.refresh());
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return ListenableBuilder(
      listenable: services.events,
      builder: (context, _) {
        final now = DateTime.now();
        final soon = services.events.events
            .where((e) => e.date.difference(now).inDays < UpcomingEventsSection.shownDays)
            .toList();
        if (soon.isEmpty) return const SizedBox.shrink();
        return Column(
          key: const ValueKey('home-events'),
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 4),
                    child: Text(l10n.upcomingEvents, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                  ),
                ),
                TextButton(
                  key: const ValueKey('events-see-all'),
                  onPressed: () =>
                      Navigator.of(context)
                          .push(MaterialPageRoute<void>(builder: (_) => EventsPage(onOpenSymbol: widget.onOpenSymbol))),
                  style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                  child: Text(l10n.seeAll(services.events.events.length)),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Card(
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  for (final (i, e) in soon.take(UpcomingEventsSection.shownCount).indexed) ...[
                    if (i > 0) const Divider(height: 1),
                    EventTile(event: e, onOpenSymbol: widget.onOpenSymbol),
                  ],
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

/// Egy esemény sora: ticker, mikor, mi (gyorsjelentés napszakkal és
/// EPS-várakozással, vagy az elemzés eseménye).
class EventTile extends StatelessWidget {
  const EventTile({super.key, required this.event, required this.onOpenSymbol});

  final UpcomingEvent event;
  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final e = event;
    final earnings = e.kind == UpcomingEventKind.earnings;
    final when = switch (e.hour) {
      'bmo' => l10n.eventBeforeOpen,
      'amc' => l10n.eventAfterClose,
      _ => null,
    };
    final title = earnings ? [l10n.eventEarnings, ?when].join(' · ') : e.text;
    final detail = earnings
        ? (e.epsEstimate == null ? null : l10n.eventEpsEstimate(fmt.number(e.epsEstimate!)))
        : l10n.eventFromAnalysis;
    return ListTile(
      key: ValueKey('event-${e.symbol}-${e.kind.name}-${e.date.toIso8601String().substring(0, 10)}'),
      leading: CircleAvatar(
        backgroundColor: p.accent.withValues(alpha: 0.15),
        child: Icon(earnings ? Icons.event_note_rounded : Icons.flag_outlined, size: 18, color: p.accent),
      ),
      title: Row(
        children: [
          Text(e.symbol, style: const TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              '${fmt.date(e.date)} · ${eventWhen(l10n, e.date, DateTime.now())}',
              textAlign: TextAlign.end,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
            ),
          ),
        ],
      ),
      subtitle: Text(detail == null ? title : '$title\n$detail', maxLines: 3, overflow: TextOverflow.ellipsis),
      onTap: () => onOpenSymbol(StockCandidate(symbol: e.symbol, companyName: e.symbol)),
    );
  }
}

/// Az összes közelgő esemény (90 napra), lehúzva frissíthető.
class EventsPage extends StatelessWidget {
  const EventsPage({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.upcomingEvents)),
      body: ListenableBuilder(
        listenable: services.events,
        builder: (context, _) {
          final events = services.events.events;
          return RefreshIndicator(
            onRefresh: () => services.events.refresh(force: true),
            child: CenteredScroll(
              maxWidth: 760,
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
              builder: (context, padding) => ListView(
                padding: padding,
                children: [
                  Text(l10n.eventsHint, style: theme.textTheme.bodyMedium?.copyWith(color: p.muted)),
                  const SizedBox(height: 12),
                  if (services.events.loading && events.isEmpty)
                    const Padding(
                      padding: EdgeInsets.all(24),
                      child: Center(child: CircularProgressIndicator()),
                    )
                  else if (events.isEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                        l10n.eventsEmpty,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: p.muted),
                      ),
                    )
                  else
                    Card(
                      margin: EdgeInsets.zero,
                      child: Column(
                        children: [
                          for (final (i, e) in events.indexed) ...[
                            if (i > 0) const Divider(height: 1),
                            EventTile(
                              event: e,
                              onOpenSymbol: (c) {
                                Navigator.of(context).pop();
                                onOpenSymbol(c);
                              },
                            ),
                          ],
                        ],
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
