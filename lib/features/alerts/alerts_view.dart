import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import '../portfolio/add_lot_dialog.dart' show exactNumber, fieldNumber, parseAmount;
import '../stock_detail/widgets/section_card.dart';
import 'price_alert.dart';

/// A riasztás rövid leírása („240 USD fölött”, „napi ±5%”).
String describeAlert(AppLocalizations l10n, Fmt fmt, PriceAlert a) => switch (a.kind) {
  AlertKind.above => l10n.alertDescAbove(fmt.price(a.value, a.currency)),
  AlertKind.below => l10n.alertDescBelow(fmt.price(a.value, a.currency)),
  AlertKind.move => l10n.alertDescMove(fmt.percent(a.value, decimals: a.value == a.value.roundToDouble() ? 0 : 1)),
  AlertKind.trailing => [
    l10n.alertDescTrailing(fmt.percent(a.value, decimals: a.value == a.value.roundToDouble() ? 0 : 1)),
    if (a.peak != null && a.isActive) l10n.alertTrailingPeak(fmt.price(a.peak, a.currency)),
  ].join(' · '),
};

/// Új riasztás: feltétel (fölé / alá / napi mozgás) és érték, a jelenlegi
/// árból kiindulva (±5%), vagy a megadott [initialKind] / [initialValue]
/// szerint (pl. az AI-elemzés egy kulcsszintjéből). Már teljesült szintet nem enged.
Future<bool> showAlertDialog(
  BuildContext context, {
  required String symbol,
  String? currency,
  double? currentPrice,
  AlertKind? initialKind,
  double? initialValue,
  PriceAlert? editing,
  double? week52High,
  double? week52Low,
}) async {
  final created = await showDialog<bool>(
    context: context,
    builder: (_) => _AlertDialog(
      symbol: symbol,
      currency: currency,
      currentPrice: currentPrice,
      initialKind: editing?.kind ?? initialKind,
      initialValue: editing?.value ?? initialValue,
      editing: editing,
      week52High: week52High,
      week52Low: week52Low,
    ),
  );
  return created ?? false;
}

class _AlertDialog extends StatefulWidget {
  const _AlertDialog({
    required this.symbol,
    this.currency,
    this.currentPrice,
    this.initialKind,
    this.initialValue,
    this.editing,
    this.week52High,
    this.week52Low,
  });

  /// Az 52 hetes csúcs és mélypont (gyorsgombok: e fölé / alá).
  final double? week52High;
  final double? week52Low;

  /// Meglévő riasztás szerkesztése (ugyanazzal az azonosítóval).
  final PriceAlert? editing;

  final String symbol;
  final String? currency;
  final double? currentPrice;
  final AlertKind? initialKind;
  final double? initialValue;

  @override
  State<_AlertDialog> createState() => _AlertDialogState();
}

class _AlertDialogState extends State<_AlertDialog> {
  AlertKind _kind = AlertKind.above;
  final _value = TextEditingController();
  String? _error;

  @override
  void initState() {
    super.initState();
    _kind = widget.initialKind ?? _kind;
  }

  bool _filled = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Az első kitöltéshez már kell a nyelv (tizedesjel).
    if (_filled) return;
    _filled = true;
    _prefill(value: widget.initialValue);
  }

  @override
  void dispose() {
    _value.dispose();
    super.dispose();
  }

  void _prefill({double? value}) {
    final p = widget.currentPrice;
    final v =
        value ??
        switch (_kind) {
          AlertKind.above => p == null ? null : p * 1.05,
          AlertKind.below => p == null ? null : p * 0.95,
          AlertKind.move => 5.0,
          AlertKind.trailing => 10.0,
        };
    // Az alapértelmezett ±5% kerek szám; a megadott szint (pl. 52 hetes csúcs, a
    // szerkesztett riasztás) pontosan, kerekítés nélkül – mentéskor ne változzon.
    final text = v == null
        ? ''
        : value != null
        ? exactNumber(v)
        : (v >= 100 || v == v.roundToDouble() ? v.toStringAsFixed(0) : v.toStringAsFixed(v < 1 ? 4 : 2));
    // A nyelv tizedesjelével (vesszős nyelven vesszővel), ahogy a beolvasás visszaolvassa.
    _value.text = fieldNumber(text, Localizations.localeOf(context).toString());
    _error = null;
  }

  Future<void> _submit() async {
    final l10n = AppLocalizations.of(context);
    // Ezres tagolással is („1,150” angolul, „25.000” magyarul), mint a többi pénzmező.
    final v = parseAmount(_value.text, Localizations.localeOf(context).toString());
    String? error;
    // A 100%-os vagy nagyobb követő stop soha nem szólna (a szint nulla vagy negatív).
    if (v == null || v <= 0 || (_kind == AlertKind.trailing && v >= 100)) {
      error = l10n.portfolioInvalidNumber;
    } else if (PriceAlert.alreadyMet(_kind, v, widget.currentPrice)) {
      error = l10n.alertAlreadyMet;
    }
    setState(() => _error = error);
    if (error != null) return;
    final services = AppServices.of(context);
    final currency = _kind == AlertKind.move ? null : (widget.editing?.currency ?? widget.currency);
    if (widget.editing case final e?) {
      // Követő stopnál a csúcs megmarad (a mostani árnál alacsonyabbra nem esik): a
      // szigorítás (10% → 7%) így közelebb hozza a szintet, nem távolabb.
      final peak = e.kind == AlertKind.trailing && _kind == AlertKind.trailing
          ? [?e.peak, ?widget.currentPrice].fold<double?>(null, (m, x) => m == null || x > m ? x : m)
          : widget.currentPrice ?? e.peak;
      await services.alerts.edit(e.id, kind: _kind, value: v!, currency: currency, peak: peak);
    } else {
      await services.alerts.add(
        symbol: widget.symbol,
        kind: _kind,
        value: v!,
        currency: currency,
        peak: widget.currentPrice,
      );
      services.telemetry.track('alert_created');
    }
    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final cur = widget.currentPrice;
    return AlertDialog(
      title: Text(l10n.alertDialogTitle(widget.symbol)),
      content: SizedBox(
        width: 380,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (cur != null) ...[
                Text(l10n.outlookCurrentPrice(fmt.price(cur, widget.currency)), style: TextStyle(color: p.muted)),
                const SizedBox(height: 12),
              ],
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final k in AlertKind.values)
                    ChoiceChip(
                      key: ValueKey('alert-kind-${k.name}'),
                      label: Text(switch (k) {
                        AlertKind.above => l10n.alertKindAbove,
                        AlertKind.below => l10n.alertKindBelow,
                        AlertKind.move => l10n.alertKindMove,
                        AlertKind.trailing => l10n.alertKindTrailing,
                      }),
                      selected: _kind == k,
                      onSelected: (_) => setState(() {
                        _kind = k;
                        _prefill();
                      }),
                    ),
                ],
              ),
              const SizedBox(height: 14),
              TextField(
                key: const ValueKey('alert-value'),
                controller: _value,
                autofocus: true,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: _kind == AlertKind.move
                      ? l10n.alertMovePercent
                      : _kind == AlertKind.trailing
                      ? l10n.alertTrailingPercent
                      : l10n.alertTargetPrice(widget.currency ?? ''),
                  errorText: _error,
                ),
                onSubmitted: (_) => _submit(),
              ),
              if (_kind == AlertKind.trailing) ...[
                const SizedBox(height: 8),
                Text(
                  l10n.alertTrailingHint,
                  key: const ValueKey('alert-trailing-hint'),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted),
                ),
              ],
              // Gyorsgombok: új 52 hetes csúcs (fölé) vagy mélypont (alá).
              if (widget.week52High != null || widget.week52Low != null) ...[
                const SizedBox(height: 12),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    if (widget.week52High case final h?)
                      ActionChip(
                        key: const ValueKey('alert-52w-high'),
                        avatar: const Icon(Icons.north_east_rounded, size: 16),
                        label: Text('${l10n.labelWeek52High} · ${fmt.price(h, widget.currency)}'),
                        visualDensity: VisualDensity.compact,
                        onPressed: () => setState(() {
                          _kind = AlertKind.above;
                          _prefill(value: h);
                        }),
                      ),
                    if (widget.week52Low case final l?)
                      ActionChip(
                        key: const ValueKey('alert-52w-low'),
                        avatar: const Icon(Icons.south_east_rounded, size: 16),
                        label: Text('${l10n.labelWeek52Low} · ${fmt.price(l, widget.currency)}'),
                        visualDensity: VisualDensity.compact,
                        onPressed: () => setState(() {
                          _kind = AlertKind.below;
                          _prefill(value: l);
                        }),
                      ),
                  ],
                ),
              ],
              // Saját pozíciónál gyors célárak az átlagos vételárhoz képest.
              if (AppServices.of(context).portfolio.positionOf(widget.symbol) case final pos?
                  when pos.averageCost > 0 && (widget.currency == null || pos.currency == widget.currency)) ...[
                const SizedBox(height: 12),
                Text(
                  l10n.alertFromCost(fmt.price(pos.averageCost, pos.currency)),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted),
                ),
                const SizedBox(height: 6),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    for (final pct in const [-20, -10, 10, 20, 50])
                      ActionChip(
                        key: ValueKey('alert-cost-$pct'),
                        label: Text('${pct > 0 ? '+' : '−'}${pct.abs()}%'),
                        visualDensity: VisualDensity.compact,
                        onPressed: () => setState(() {
                          _kind = pct > 0 ? AlertKind.above : AlertKind.below;
                          _prefill(value: pos.averageCost * (1 + pct / 100));
                        }),
                      ),
                  ],
                ),
              ],
              const SizedBox(height: 12),
              Text(l10n.alertsNote, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted)),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(false), child: Text(l10n.cancel)),
        FilledButton(onPressed: _submit, child: Text(l10n.alertSave)),
      ],
    );
  }
}

/// Egy riasztás sora: leírás, állapot (aktív / teljesült mikor, milyen áron),
/// újraélesítés és törlés.
class AlertTile extends StatelessWidget {
  const AlertTile({super.key, required this.alert, this.showSymbol = false, this.onOpen, this.price});

  final PriceAlert alert;
  final bool showSymbol;
  final VoidCallback? onOpen;

  /// A mostani ár (ha ismert): aktív riasztásnál a kioldásig hátralévő változáshoz.
  final double? price;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final p = AppPalette.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final a = alert;
    final desc = describeAlert(l10n, fmt, a);
    return ListTile(
      onTap: onOpen,
      contentPadding: const EdgeInsetsDirectional.only(start: 16, end: 4),
      leading: Icon(
        a.isActive ? Icons.notifications_active_outlined : Icons.check_circle_outline_rounded,
        color: a.isActive ? p.accent : p.positive,
      ),
      title: Text(showSymbol ? '${a.symbol} · $desc' : desc, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: switch ((a.isActive, price)) {
        (false, _) => Text(l10n.alertTriggeredAt(fmt.dateTime(a.triggeredAt), fmt.price(a.triggeredPrice, a.currency))),
        (true, final now?) when a.distancePercent(now) != null => Text(
          l10n.alertDistance(
            fmt.price(now, a.currency),
            fmt.percent(a.distancePercent(now), decimals: 1, withSign: true),
          ),
          key: ValueKey('alert-distance-${a.id}'),
        ),
        _ => null,
      },
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (a.isActive)
            IconButton(
              key: ValueKey('alert-edit-${a.id}'),
              tooltip: l10n.alertEdit,
              icon: Icon(Icons.edit_outlined, color: p.muted),
              onPressed: () async {
                double? price;
                // A napi mozgás riasztásnak nincs pénzneme: árszintre váltáskor a cégé kell.
                var currency = a.currency;
                try {
                  price = (await services.marketData.quote(a.symbol)).price;
                  currency ??= (await services.marketData.profile(a.symbol)).currency;
                } catch (_) {}
                if (context.mounted) {
                  await showAlertDialog(context, symbol: a.symbol, currency: currency, currentPrice: price, editing: a);
                }
              },
            ),
          if (!a.isActive)
            IconButton(
              tooltip: l10n.alertRearm,
              icon: const Icon(Icons.replay_rounded),
              onPressed: () => services.alerts.rearm(a.id),
            ),
          IconButton(
            key: ValueKey('alert-delete-${a.id}'),
            tooltip: l10n.alertDelete,
            icon: Icon(Icons.delete_outline_rounded, color: p.negative),
            onPressed: () async {
              final messenger = ScaffoldMessenger.of(context);
              await services.alerts.remove(a.id);
              messenger
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(l10n.alertDeleted),
                    action: SnackBarAction(label: l10n.undo, onPressed: () => services.alerts.restore(a)),
                  ),
                );
            },
          ),
        ],
      ),
    );
  }
}

/// A részvény riasztásai a részletes nézetben (csak ha van).
class SymbolAlertsCard extends StatelessWidget {
  const SymbolAlertsCard({super.key, required this.symbol, this.price});

  final String symbol;

  /// A részvény mostani ára (ha ismert): a kioldásig hátralévő változáshoz.
  final double? price;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    return ListenableBuilder(
      listenable: services.alerts,
      builder: (context, _) {
        final alerts = services.alerts.forSymbol(symbol);
        if (alerts.isEmpty) return const SizedBox.shrink();
        return SectionCard(
          title: l10n.priceAlerts,
          child: Column(
            children: [
              for (final (i, a) in alerts.indexed) ...[
                if (i > 0) const Divider(height: 1),
                AlertTile(alert: a, price: price),
              ],
            ],
          ),
        );
      },
    );
  }
}

/// A fejléc csengő-gombja: riasztás beállítása (kitöltött, ha van aktív).
class AlertBellButton extends StatelessWidget {
  const AlertBellButton({super.key, required this.symbol, required this.onPressed});

  final String symbol;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return ListenableBuilder(
      listenable: services.alerts,
      builder: (context, _) {
        final active = services.alerts.hasActive(symbol);
        return IconButton(
          tooltip: l10n.setPriceAlert,
          icon: Icon(
            active ? Icons.notifications_active_rounded : Icons.notifications_none_rounded,
            color: active ? p.accent : null,
          ),
          onPressed: onPressed,
        );
      },
    );
  }
}

/// Az összes riasztás: aktívak, majd a teljesültek; koppintásra a részvény nyílik.
class AlertsPage extends StatelessWidget {
  const AlertsPage({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: desktopAppBar(
        context,
        title: Text(l10n.priceAlerts),
        hasSidebar: MediaQuery.sizeOf(context).width >= 860,
      ),
      body: ListenableBuilder(
        listenable: services.alerts,
        builder: (context, _) {
          final all = services.alerts.alerts;
          final active = all.where((a) => a.isActive).toList();
          final triggered = all.where((a) => !a.isActive).toList();
          Widget tile(PriceAlert a, [double? price]) => AlertTile(
            alert: a,
            showSymbol: true,
            price: price,
            onOpen: () => onOpenSymbol(StockCandidate(symbol: a.symbol, companyName: a.symbol, confidence: 1)),
          );
          return ListView(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
            children: [
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 760),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (all.isEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 48),
                          child: Column(
                            children: [
                              Icon(Icons.notifications_none_rounded, size: 44, color: p.muted),
                              const SizedBox(height: 12),
                              Text(
                                l10n.alertsEmpty,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: p.muted),
                              ),
                            ],
                          ),
                        ),
                      if (active.isNotEmpty) _ActiveAlerts(alerts: active, tile: tile),
                      if (triggered.isNotEmpty) ...[
                        const SizedBox(height: 12),
                        _alertCard([for (final a in triggered) tile(a)]),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: TextButton.icon(
                            key: const ValueKey('alerts-clear-triggered'),
                            onPressed: () async {
                              final messenger = ScaffoldMessenger.of(context);
                              final gone = await services.alerts.removeTriggered();
                              messenger
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                    content: Text(l10n.alertsCleared(gone.length)),
                                    action: SnackBarAction(
                                      label: l10n.undo,
                                      onPressed: () async {
                                        for (final a in gone) {
                                          await services.alerts.restore(a);
                                        }
                                      },
                                    ),
                                  ),
                                );
                            },
                            icon: const Icon(Icons.clear_all_rounded, size: 18),
                            label: Text(l10n.alertsClearTriggered),
                          ),
                        ),
                      ],
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(l10n.alertsNote, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                      ),
                      // E-mail értesítés a szerverről (belépett fióknál), csukott appnál is.
                      if ((services.account, services.sync) case (final account?, _?)) ...[
                        const SizedBox(height: 12),
                        ListenableBuilder(
                          listenable: Listenable.merge([account, services.preferences]),
                          builder: (context, _) => Card(
                            child: SwitchListTile(
                              key: const ValueKey('email-alerts'),
                              secondary: const Icon(Icons.mark_email_unread_outlined),
                              title: Text(l10n.alertEmailTitle),
                              subtitle: Text(account.isSignedIn ? l10n.alertEmailOn : l10n.alertEmailSignIn),
                              value: account.isSignedIn && services.preferences.emailAlerts,
                              onChanged: account.isSignedIn ? services.preferences.setEmailAlerts : null,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

Widget _alertCard(List<Widget> tiles) => Card(
  child: Column(
    children: [
      for (final (i, t) in tiles.indexed) ...[if (i > 0) const Divider(height: 1), t],
    ],
  ),
);

/// Az aktív riasztások kártyája a mostani árakkal (a kioldásig hátralévő változáshoz),
/// a kioldáshoz legközelebbi elöl; az árak a tickerek változásáig egyszer töltődnek.
class _ActiveAlerts extends StatefulWidget {
  const _ActiveAlerts({required this.alerts, required this.tile});

  final List<PriceAlert> alerts;
  final Widget Function(PriceAlert alert, [double? price]) tile;

  @override
  State<_ActiveAlerts> createState() => _ActiveAlertsState();
}

class _ActiveAlertsState extends State<_ActiveAlerts> {
  String? _key;
  Future<Map<String, double>>? _prices;

  Future<Map<String, double>> _load(List<String> symbols) async {
    final market = AppServices.of(context).marketData;
    final prices = <String, double>{};
    await Future.wait([
      for (final s in symbols) market.quote(s).then((q) => prices[s] = q.price).then((_) {}, onError: (Object _) {}),
    ]);
    return prices;
  }

  @override
  Widget build(BuildContext context) {
    final symbols = {for (final a in widget.alerts) a.symbol}.toList()..sort();
    if (symbols.join(',') != _key) {
      _key = symbols.join(',');
      _prices = _load(symbols);
    }
    return FutureBuilder<Map<String, double>>(
      future: _prices,
      builder: (context, snap) {
        final prices = snap.data ?? const <String, double>{};
        // A kioldáshoz legközelebbi elöl (ár nélkül és a napi mozgás riasztás a végén, a
        // mostani sorrendben – a rendezés stabil).
        // A már túllépett szint (a következő ellenőrzés jelez) a legközelebbi: 0.
        double distance(PriceAlert a) => switch (prices[a.symbol]) {
          final px? when a.kind != AlertKind.move => a.distancePercent(px)?.abs() ?? 0,
          _ => double.infinity,
        };
        final order = {for (final (i, a) in widget.alerts.indexed) a.id: i};
        final sorted = [...widget.alerts]
          ..sort(
            (a, b) => switch (distance(a).compareTo(distance(b))) {
              0 => order[a.id]!.compareTo(order[b.id]!),
              final c => c,
            },
          );
        return _alertCard([for (final a in sorted) widget.tile(a, prices[a.symbol])]);
      },
    );
  }
}
