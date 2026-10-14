import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import '../portfolio/add_lot_dialog.dart' show parseDecimal;
import '../stock_detail/widgets/section_card.dart';
import 'price_alert.dart';

/// A riasztás rövid leírása („240 USD fölött”, „napi ±5%”).
String describeAlert(AppLocalizations l10n, Fmt fmt, PriceAlert a) => switch (a.kind) {
  AlertKind.above => l10n.alertDescAbove(fmt.price(a.value, a.currency)),
  AlertKind.below => l10n.alertDescBelow(fmt.price(a.value, a.currency)),
  AlertKind.move => l10n.alertDescMove(fmt.percent(a.value, decimals: a.value == a.value.roundToDouble() ? 0 : 1)),
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
}) async {
  final created = await showDialog<bool>(
    context: context,
    builder: (_) => _AlertDialog(
      symbol: symbol,
      currency: currency,
      currentPrice: currentPrice,
      initialKind: initialKind,
      initialValue: initialValue,
    ),
  );
  return created ?? false;
}

class _AlertDialog extends StatefulWidget {
  const _AlertDialog({required this.symbol, this.currency, this.currentPrice, this.initialKind, this.initialValue});

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
        };
    _value.text = v == null ? '' : (v >= 100 ? v.toStringAsFixed(0) : v.toStringAsFixed(v < 1 ? 4 : 2));
    _error = null;
  }

  Future<void> _submit() async {
    final l10n = AppLocalizations.of(context);
    final v = parseDecimal(_value.text);
    String? error;
    if (v == null || v <= 0) {
      error = l10n.portfolioInvalidNumber;
    } else if (PriceAlert.alreadyMet(_kind, v, widget.currentPrice)) {
      error = l10n.alertAlreadyMet;
    }
    setState(() => _error = error);
    if (error != null) return;
    final services = AppServices.of(context);
    await services.alerts.add(
      symbol: widget.symbol,
      kind: _kind,
      value: v!,
      currency: _kind == AlertKind.move ? null : widget.currency,
    );
    services.telemetry.track('alert_created');
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
                    label: Text(switch (k) {
                      AlertKind.above => l10n.alertKindAbove,
                      AlertKind.below => l10n.alertKindBelow,
                      AlertKind.move => l10n.alertKindMove,
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
                    : l10n.alertTargetPrice(widget.currency ?? ''),
                errorText: _error,
              ),
              onSubmitted: (_) => _submit(),
            ),
            const SizedBox(height: 12),
            Text(l10n.alertsNote, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: p.muted)),
          ],
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
  const AlertTile({super.key, required this.alert, this.showSymbol = false, this.onOpen});

  final PriceAlert alert;
  final bool showSymbol;
  final VoidCallback? onOpen;

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
      subtitle: a.isActive
          ? null
          : Text(l10n.alertTriggeredAt(fmt.dateTime(a.triggeredAt), fmt.price(a.triggeredPrice, a.currency))),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!a.isActive)
            IconButton(
              tooltip: l10n.alertRearm,
              icon: const Icon(Icons.replay_rounded),
              onPressed: () => services.alerts.rearm(a.id),
            ),
          IconButton(
            tooltip: l10n.alertDelete,
            icon: Icon(Icons.delete_outline_rounded, color: p.negative),
            onPressed: () => services.alerts.remove(a.id),
          ),
        ],
      ),
    );
  }
}

/// A részvény riasztásai a részletes nézetben (csak ha van).
class SymbolAlertsCard extends StatelessWidget {
  const SymbolAlertsCard({super.key, required this.symbol});

  final String symbol;

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
              for (final (i, a) in alerts.indexed) ...[if (i > 0) const Divider(height: 1), AlertTile(alert: a)],
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
          Widget group(List<PriceAlert> items) => Card(
            child: Column(
              children: [
                for (final (i, a) in items.indexed) ...[
                  if (i > 0) const Divider(height: 1),
                  AlertTile(
                    alert: a,
                    showSymbol: true,
                    onOpen: () => onOpenSymbol(StockCandidate(symbol: a.symbol, companyName: a.symbol, confidence: 1)),
                  ),
                ],
              ],
            ),
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
                      if (active.isNotEmpty) group(active),
                      if (triggered.isNotEmpty) ...[const SizedBox(height: 12), group(triggered)],
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(l10n.alertsNote, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                      ),
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
