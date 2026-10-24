/// Egy pozíció tranzakciós lapja: vételek, eladások, felaprózások és kapott osztalékok
/// javítással, törléssel és visszavonással; eladás és osztalék felvétele.
library;

import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'add_lot_dialog.dart';
import 'dividends_card.dart';
import 'split_dialog.dart';
import 'ticker_change_dialog.dart';
import 'portfolio_store.dart';

/// Egy pozíció tranzakciói (vételek és eladások) törlés-gombbal, fölöttük az
/// eladás gombja (ha még van birtokolt darab) és a realizált nyereség.
Future<void> showPurchasesSheet(BuildContext context, Position position, {double? currentPrice, String? account}) {
  // A legutóbb törölt tranzakció, illetve felaprózás (visszavonható, amíg a lap nyitva van).
  final removed = ValueNotifier<PortfolioLot?>(null);
  final removedSplit = ValueNotifier<SplitRecord?>(null);
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (context) {
      final l10n = AppLocalizations.of(context);
      final services = AppServices.of(context);
      final p = AppPalette.of(context);
      final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
      String qty(double q) => fmt.quantity(q);
      return ListenableBuilder(
        listenable: Listenable.merge([services.portfolio, removed, removedSplit]),
        builder: (context, _) {
          // A felaprózásokkal igazított tételek (a törlés az eredeti azonosítóval megy).
          // Számla-nézetben csak annak a számlának a tranzakciói (az eladás is oda kerül).
          final lots = services.portfolio.adjustedLotsIn(account).where((l) => l.symbol == position.symbol).toList()
            ..sort((a, b) => (b.date ?? DateTime(0)).compareTo(a.date ?? DateTime(0)));
          // A részvény kapott osztalékai (számla-nézetben csak a számláé).
          final dividends = services.portfolio.dividendsIn(account).where((d) => d.symbol == position.symbol).toList();
          // A pozíció a tárolóból (számla-nézetben a teljes FIFO számlára eső része), hogy a
          // lap ugyanazt a darabszámot mutassa, mint az oldal.
          final now =
              services.portfolio.positionIn(position.symbol, account) ??
              Position(symbol: position.symbol, currency: position.currency, lots: const []);
          // „Törölve · Visszavonás” sor a legutóbb törölt tételhez ([name]: a kulcsok előtagja).
          Widget undoRow(String name, String text, VoidCallback onUndo) => Padding(
            key: ValueKey('$name-removed'),
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 12, 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(text, style: TextStyle(color: p.muted)),
                ),
                TextButton(key: ValueKey('$name-undo'), onPressed: onUndo, child: Text(l10n.undo)),
              ],
            ),
          );
          return SafeArea(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * 0.8),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 12, 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            [position.symbol, l10n.portfolioTransactions, ?account].join(' · '),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        // Kapott osztalék felvétele ehhez a részvényhez (ticker és pénznem kitöltve).
                        IconButton(
                          key: const ValueKey('position-dividend'),
                          tooltip: l10n.portfolioAddDividend,
                          icon: const Icon(Icons.payments_outlined),
                          onPressed: () => showAddDividendDialog(
                            context,
                            symbol: position.symbol,
                            currency: position.currency,
                            account: account,
                          ),
                        ),
                        // Részvényfelaprózás rögzítése ehhez a részvényhez.
                        IconButton(
                          key: const ValueKey('position-split'),
                          tooltip: l10n.portfolioSplit,
                          icon: const Icon(Icons.call_split_rounded),
                          onPressed: () => showSplitDialog(context, symbol: position.symbol),
                        ),
                        // Tickerváltás (átnevezett cég): utána a lap bezárul, a pozíció az új tickeren.
                        IconButton(
                          key: const ValueKey('position-ticker-change'),
                          tooltip: l10n.tickerChange,
                          icon: const Icon(Icons.drive_file_rename_outline),
                          onPressed: () async {
                            final navigator = Navigator.of(context);
                            final messenger = ScaffoldMessenger.of(context);
                            final to = await showTickerChangeDialog(context, symbol: position.symbol);
                            if (to == null) return;
                            navigator.pop();
                            messenger.showSnackBar(SnackBar(content: Text(l10n.tickerChanged(to))));
                          },
                        ),
                        if (!now.isClosed)
                          FilledButton.tonalIcon(
                            key: const ValueKey('position-sell'),
                            onPressed: () => showAddLotDialog(
                              context,
                              symbol: position.symbol,
                              currency: position.currency,
                              currentPrice: currentPrice,
                              // Minden számla nézetében a számlák közül választható, honnan.
                              holdings: account == null
                                  ? services.portfolio.heldByAccount(position.symbol)
                                  : {account: now.quantity},
                              account: account,
                            ),
                            icon: const Icon(Icons.sell_outlined, size: 18),
                            label: Text(l10n.portfolioSell),
                          ),
                      ],
                    ),
                  ),
                  if (removed.value case final r?)
                    undoRow('lot', l10n.lotRemoved, () {
                      removed.value = null;
                      services.portfolio.restore(r);
                    }),
                  if (removedSplit.value case final r?)
                    undoRow('split', l10n.portfolioSplitRemoved, () {
                      removedSplit.value = null;
                      services.restoreSplit(r);
                    }),
                  if (now.hasSales)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                      child: Text(
                        '${l10n.portfolioRealized}: ${fmt.money(now.realizedGain, now.currency, withSign: true)}',
                        style: TextStyle(color: gainColor(p, now.realizedGain), fontWeight: FontWeight.w600),
                      ),
                    ),
                  if (dividends.where((d) => d.currency == position.currency) case final ds when ds.isNotEmpty)
                    Padding(
                      key: const ValueKey('position-dividends-sum'),
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                      child: Text(
                        '${l10n.portfolioDividendsReceived}: '
                        '${fmt.money(ds.fold<double>(0, (sum, d) => sum + d.amount), position.currency)}',
                        style: TextStyle(color: p.muted, fontWeight: FontWeight.w600),
                      ),
                    ),
                  // A részvény kapott osztalékai tételenként (az újabb elöl, legfeljebb hat), minden pénznemben.
                  for (final d in dividends.take(6))
                    ListTile(
                      key: ValueKey('sheet-dividend-${d.id}'),
                      dense: true,
                      leading: Icon(Icons.payments_outlined, color: p.muted, size: 20),
                      title: Text(fmt.money(d.amount, d.currency)),
                      subtitle: d.date == null ? null : Text(fmt.date(d.date)),
                      trailing: IconButton(
                        key: ValueKey('sheet-dividend-edit-${d.id}'),
                        tooltip: l10n.lotEdit,
                        icon: Icon(Icons.edit_outlined, size: 18, color: p.muted),
                        onPressed: () => showEditDividendDialog(context, d),
                      ),
                    ),
                  // A részvény felaprózásai (az újabb elöl), törölhetők.
                  for (final s in services.portfolio.splitsOf(position.symbol).reversed)
                    ListTile(
                      key: ValueKey('sheet-split-${s.id}'),
                      dense: true,
                      leading: Icon(Icons.call_split_rounded, color: p.muted, size: 20),
                      title: Text(l10n.portfolioSplitRow(s.label)),
                      subtitle: Text(fmt.date(s.date)),
                      trailing: IconButton(
                        key: ValueKey('sheet-split-delete-${s.id}'),
                        tooltip: l10n.portfolioRemove,
                        icon: Icon(Icons.delete_outline_rounded, size: 18, color: p.negative),
                        onPressed: () {
                          removedSplit.value = s;
                          services.removeSplit(s.id);
                        },
                      ),
                    ),
                  // A még birtokolt tételek egyenként (ha több vétel volt vagy eladás is):
                  // darab × vételi ár, dátum, és a mai árral számolt nyereség.
                  if (!now.isClosed && (now.hasSales || now.openLots.length > 1)) ...[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 4, 20, 2),
                      child: Text(
                        l10n.positionOpenLots,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: p.muted),
                      ),
                    ),
                    for (final (i, o) in now.openLots.indexed)
                      ListTile(
                        key: ValueKey('open-lot-$i'),
                        dense: true,
                        leading: Icon(Icons.inventory_2_outlined, color: p.muted, size: 20),
                        title: Text('${qty(o.quantity)} × ${fmt.unit(o.price, now.currency)}'),
                        subtitle: o.date == null ? null : Text(fmt.date(o.date)),
                        trailing: currentPrice == null
                            ? null
                            : Text(
                                '${fmt.money((currentPrice - o.price) * o.quantity, now.currency, withSign: true)}\n'
                                '${fmt.percent((currentPrice / o.price - 1) * 100, withSign: true)}',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: gainColor(p, currentPrice - o.price),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ),
                    const Divider(height: 16),
                  ],
                  for (final lot in lots)
                    ListTile(
                      key: ValueKey('lot-${lot.id}'),
                      leading: Icon(
                        lot.sell ? Icons.sell_outlined : Icons.receipt_long_outlined,
                        color: lot.sell ? p.accent : p.muted,
                      ),
                      title: Text(
                        lot.sell
                            ? l10n.portfolioSoldRow(qty(lot.quantity), fmt.unit(lot.price, lot.currency))
                            : '${qty(lot.quantity)} × ${fmt.unit(lot.price, lot.currency)}',
                      ),
                      // Minden számla nézetében a tétel számlája is (ha van).
                      subtitle: switch ([
                        if (lot.date != null) fmt.date(lot.date),
                        if (account == null) ?lot.account,
                        if (lot.fee > 0) l10n.portfolioFeeRow(fmt.money(lot.fee, lot.currency)),
                      ]) {
                        final parts when parts.isNotEmpty => Text(parts.join(' · ')),
                        _ => null,
                      },
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Javítás: a tárolt (nem igazított) tétellel, ugyanazzal az azonosítóval.
                          IconButton(
                            key: ValueKey('lot-edit-${lot.id}'),
                            tooltip: l10n.lotEdit,
                            icon: Icon(Icons.edit_outlined, size: 18, color: p.muted),
                            onPressed: () {
                              final stored = services.portfolio.lots.where((l) => l.id == lot.id).firstOrNull;
                              if (stored != null) showEditLotDialog(context, stored);
                            },
                          ),
                          TextButton.icon(
                            // A lapon az igazított másolat látszik; a visszavonáshoz a tárolt tétel kell.
                            onPressed: () async => removed.value = await services.portfolio.remove(lot.id),
                            icon: const Icon(Icons.delete_outline_rounded, size: 18),
                            label: Text(l10n.portfolioRemove),
                            style: TextButton.styleFrom(foregroundColor: p.negative),
                          ),
                        ],
                      ),
                    ),
                  if (lots.isEmpty) Padding(padding: const EdgeInsets.all(20), child: Text(l10n.portfolioEmpty)),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
