import 'dart:convert';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/share/save_file.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/centered_scroll.dart';
import '../stock_detail/widgets/earnings_card.dart' show showEarningsSummary;
import '../portfolio/dividend_forecast.dart' show approxMoney;
import '../portfolio/dividends_card.dart' show showAddDividendDialog;
import 'calendar_export.dart';
import 'events_service.dart';
import '../../core/util/dates.dart';

/// „Mikor?”: ma, holnap, N nap múlva.
String eventWhen(AppLocalizations l10n, DateTime day, DateTime today) {
  final days = calendarDaysBetween(today, day);
  return switch (days) {
    <= 0 => l10n.longTermToday,
    1 => l10n.eventTomorrow,
    _ => l10n.eventInDays(days),
  };
}

/// Az esemény címe (gyorsjelentésnél a napszakkal) és a részlete (EPS-várakozás,
/// várható osztaléknál a becsült összeg, illetve hogy elemzésből származik) –
/// a listában és a naptárban is ez látszik.
({String title, String? detail}) eventText(AppLocalizations l10n, Fmt fmt, UpcomingEvent e) {
  final when = switch (e.hour) {
    'bmo' => l10n.eventBeforeOpen,
    'amc' => l10n.eventAfterClose,
    _ => null,
  };
  return switch (e.kind) {
    UpcomingEventKind.earnings => (
      title: [l10n.eventEarnings, ?when].join(' · '),
      detail: e.epsEstimate == null ? null : l10n.eventEpsEstimate(fmt.number(e.epsEstimate!)),
    ),
    // A bejelentett (jövőre rögzített) kifizetés pontos, nem becslés.
    UpcomingEventKind.dividend when e.announced => (
      title: l10n.eventDividend,
      detail: e.amount != null && e.currency != null ? fmt.money(e.amount!, e.currency!) : null,
    ),
    UpcomingEventKind.dividend => (
      title: l10n.eventDividend,
      detail: [
        if (e.amount != null && e.currency != null) approxMoney(fmt, e.amount!, e.currency!),
        l10n.eventDividendEstimate,
      ].join(' · '),
    ),
    UpcomingEventKind.catalyst => (title: e.text, detail: l10n.eventFromAnalysis),
  };
}

/// Az események naptárbejegyzésként. Az azonosító a pontos naptól független, hogy
/// a később pontosított nap (becsült → bejelentett jelentésnap, a ritmusból becsült
/// osztaléknap) újraimportáláskor a régi bejegyzést frissítse, ne mellé kerüljön:
/// gyorsjelentésnél a negyedév, várható osztaléknál a hónap és a pénznem (két
/// brókernél két sorozat), elemzésből jövő eseménynél a nap és a szöveg.
List<CalendarEntry> calendarEntries(AppLocalizations l10n, Fmt fmt, List<UpcomingEvent> events) => [
  for (final e in events)
    if (eventText(l10n, fmt, e) case final t)
      (
        uid: [
          e.kind.name,
          e.symbol,
          ...switch (e.kind) {
            UpcomingEventKind.earnings => ['${e.date.year}', 'Q${(e.date.month - 1) ~/ 3 + 1}'],
            UpcomingEventKind.dividend => [?e.currency, e.date.toIso8601String().substring(0, 7)],
            UpcomingEventKind.catalyst => [e.date.toIso8601String().substring(0, 10), _stableHash(e.text)],
          },
        ].join('-'),
        day: e.date,
        summary: '${e.symbol} · ${t.title}',
        description: t.detail ?? '',
      ),
];

/// Futásonként is ugyanaz (a `String.hashCode` nem garantáltan az).
String _stableHash(String s) {
  var h = 0x811c9dc5;
  for (final b in utf8.encode(s)) {
    h = ((h ^ b) * 0x01000193) & 0xffffffff;
  }
  return h.toRadixString(16);
}

/// A naptárfájl mentése. Tesztben lecserélhető.
typedef CalendarSaver = Future<void> Function(Uint8List bytes, String fileName);

CalendarSaver saveCalendarFile = (bytes, fileName) => saveFile(
  bytes,
  fileName,
  mimeType: 'text/calendar',
  type: const XTypeGroup(label: 'iCalendar', extensions: ['ics'], uniformTypeIdentifiers: ['com.apple.ical.ics']),
);

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
            .where((e) => calendarDaysBetween(now, e.date) < UpcomingEventsSection.shownDays)
            .toList();
        if (soon.isEmpty) return const SizedBox.shrink();
        return Column(
          key: const ValueKey('home-events'),
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 4),
                    child: Text(l10n.upcomingEvents, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                  ),
                ),
                Flexible(
                  child: TextButton(
                    key: const ValueKey('events-see-all'),
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute<void>(builder: (_) => EventsPage(onOpenSymbol: widget.onOpenSymbol))),
                    style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      l10n.seeAll(services.events.events.length),
                    ),
                  ),
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
    final icon = switch (e.kind) {
      UpcomingEventKind.earnings => Icons.event_note_rounded,
      UpcomingEventKind.dividend => Icons.payments_outlined,
      UpcomingEventKind.catalyst => Icons.flag_outlined,
    };
    final (:title, :detail) = eventText(l10n, fmt, e);
    return ListTile(
      key: ValueKey('event-${e.symbol}-${e.kind.name}-${e.date.toIso8601String().substring(0, 10)}'),
      leading: CircleAvatar(
        backgroundColor: p.accent.withValues(alpha: 0.15),
        child: Icon(icon, size: 18, color: p.accent),
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
      // Várható osztaléknál: megérkezett → egy koppintással rögzíthető, előre kitöltve.
      trailing: e.kind == UpcomingEventKind.dividend && e.amount != null && e.currency != null
          ? IconButton(
              key: ValueKey('event-dividend-add-${e.symbol}'),
              tooltip: l10n.portfolioAddDividend,
              icon: Icon(Icons.add_circle_outline_rounded, color: p.muted),
              onPressed: () => showAddDividendDialog(
                context,
                symbol: e.symbol,
                currency: e.currency!,
                amount: e.amount,
                date: e.date,
              ),
            )
          : null,
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
      appBar: AppBar(
        title: Text(l10n.upcomingEvents),
        actions: [
          ListenableBuilder(
            listenable: services.events,
            builder: (context, _) => IconButton(
              key: const ValueKey('events-calendar'),
              tooltip: l10n.eventsAddToCalendar,
              icon: const Icon(Icons.edit_calendar_outlined),
              onPressed: services.events.events.isEmpty
                  ? null
                  : () {
                      final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
                      final ics = icsCalendar(calendarEntries(l10n, fmt, services.events.events), now: DateTime.now());
                      services.telemetry.track('calendar_exported');
                      saveCalendarFile(utf8.encode(ics), 'whatstock-events.ics');
                    },
            ),
          ),
        ],
      ),
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
                  // Friss eredmények: a már megjelent negyedéves számok, AI-összefoglalóval.
                  if (services.events.recent.isNotEmpty) ...[
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, bottom: 8),
                      child: Text(
                        l10n.eventsRecentResults,
                        style: theme.textTheme.labelLarge?.copyWith(color: p.muted),
                      ),
                    ),
                    Card(
                      key: const ValueKey('recent-results'),
                      margin: EdgeInsets.zero,
                      child: Column(
                        children: [
                          for (final (i, r) in services.events.recent.indexed) ...[
                            if (i > 0) const Divider(height: 1),
                            RecentResultTile(
                              item: r,
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

/// „Friss gyorsjelentések” a kezdőképernyőn: a figyelt cégek legutóbbi,
/// nemrég zárult negyedévének eredménye (legfeljebb három), a többi az
/// események oldalán. Kikapcsolható a beállításokban.
class RecentResultsSection extends StatelessWidget {
  const RecentResultsSection({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  static const shownCount = 3;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return ListenableBuilder(
      listenable: services.events,
      builder: (context, _) {
        final recent = services.events.recent;
        if (recent.isEmpty) return const SizedBox.shrink();
        return Column(
          key: const ValueKey('home-results'),
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 4),
                    child: Text(l10n.eventsRecentResults, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                  ),
                ),
                if (recent.length > shownCount)
                  Flexible(
                    child: TextButton(
                      key: const ValueKey('results-see-all'),
                      onPressed: () =>
                          Navigator.of(context)
                              .push(MaterialPageRoute<void>(builder: (_) => EventsPage(onOpenSymbol: onOpenSymbol))),
                      style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                      child: Text(maxLines: 1, overflow: TextOverflow.ellipsis, l10n.seeAll(recent.length)),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 4),
            Card(
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  for (final (i, r) in recent.take(shownCount).indexed) ...[
                    if (i > 0) const Divider(height: 1),
                    RecentResultTile(item: r, onOpenSymbol: onOpenSymbol),
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

/// Egy friss negyedéves eredmény: várt felett vagy alatt, a számokkal; a ✨
/// gombbal az AI-összefoglaló, a sorra koppintva a részvény nyílik.
class RecentResultTile extends StatelessWidget {
  const RecentResultTile({super.key, required this.item, required this.onOpenSymbol});

  final RecentResult item;
  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final r = item.result;
    final beat = r.beat == true;
    final surprise = r.surprise;
    return ListTile(
      key: ValueKey('recent-${item.symbol}'),
      leading: CircleAvatar(
        radius: 18,
        backgroundColor: (beat ? p.positive : p.negative).withValues(alpha: 0.15),
        child: Icon(
          beat ? Icons.trending_up_rounded : Icons.trending_down_rounded,
          size: 18,
          color: beat ? p.positive : p.negative,
        ),
      ),
      title: Text(
        beat ? l10n.earningsResultBeat(item.symbol) : l10n.earningsResultMiss(item.symbol),
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        [
          l10n.earningsResultBody(fmt.number(r.actual), fmt.number(r.estimate)),
          if (surprise != null) fmt.percent(surprise, decimals: 1, withSign: true),
          fmt.date(r.period),
        ].join(' · '),
        style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
      ),
      trailing: IconButton(
        key: ValueKey('recent-summary-${item.symbol}'),
        tooltip: l10n.earningsSummaryButton,
        icon: Icon(Icons.auto_awesome_outlined, size: 20, color: p.accent),
        onPressed: () =>
            showEarningsSummary(context, symbol: item.symbol, companyName: item.symbol, lastPeriod: r.period),
      ),
      onTap: () => onOpenSymbol(StockCandidate(symbol: item.symbol, companyName: item.symbol, confidence: 1)),
    );
  }
}
