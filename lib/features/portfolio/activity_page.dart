/// Az összes tranzakció egy listában, időrendben (az újabb elöl): vételek,
/// eladások, kapott osztalékok és felaprózások, tickerre, típusra és számlára
/// szűrve; koppintva javítható, törölhető visszavonással.
library;

import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/fit_row.dart';
import 'add_lot_dialog.dart' show showEditLotDialog;
import 'dividends_card.dart' show showEditDividendDialog;
import 'portfolio_store.dart';

enum ActivityKind { buy, sell, dividend, split }

/// Egy sor a listában: egy tárolt (nem igazított) tranzakció, osztalék vagy felaprózás.
class ActivityEntry {
  const ActivityEntry.lot(PortfolioLot this.lot) : dividend = null, split = null;
  const ActivityEntry.dividend(DividendRecord this.dividend) : lot = null, split = null;
  const ActivityEntry.split(SplitRecord this.split) : lot = null, dividend = null;

  final PortfolioLot? lot;
  final DividendRecord? dividend;
  final SplitRecord? split;

  ActivityKind get kind => switch (this) {
    ActivityEntry(lot: final l?) => l.sell ? ActivityKind.sell : ActivityKind.buy,
    ActivityEntry(dividend: _?) => ActivityKind.dividend,
    _ => ActivityKind.split,
  };

  String get id => lot?.id ?? dividend?.id ?? split!.id;
  String get symbol => lot?.symbol ?? dividend?.symbol ?? split!.symbol;
  DateTime? get date => lot?.date ?? dividend?.date ?? split?.date;
  String? get account => lot?.account ?? dividend?.account;
}

/// A szűrt sorok, az újabb elöl (dátum nélküliek a végén, a sorrendjük marad).
/// [query]: a ticker része; [kinds] üresen mind; [account]: csak annak a számlának
/// a tételei – a felaprózás akkor, ha a számlán volt abból a részvényből.
List<ActivityEntry> activityEntries(
  PortfolioStore store, {
  String query = '',
  Set<ActivityKind> kinds = const {},
  String? account,
}) {
  final q = query.trim().toUpperCase();
  final held = account == null
      ? null
      : {
          for (final l in store.lots)
            if (l.account == account) l.symbol,
        };
  // A tranzakciók felaprózással igazítva, ahogy a pozíciókban látszanak.
  final all = [
    for (final l in store.adjustedLots) ActivityEntry.lot(l),
    for (final d in store.dividends) ActivityEntry.dividend(d),
    for (final s in store.splits) ActivityEntry.split(s),
  ];
  final rows = [
    for (final e in all)
      if ((kinds.isEmpty || kinds.contains(e.kind)) &&
          (q.isEmpty || e.symbol.contains(q)) &&
          (account == null || (e.split == null ? e.account == account : held!.contains(e.symbol))))
        e,
  ];
  // Stabil rendezés: azonos napon az eredeti sorrend marad.
  final indexed = rows.indexed.toList()
    ..sort((a, b) {
      final (da, db) = (a.$2.date, b.$2.date);
      if (da == null || db == null) return da == db ? a.$1 - b.$1 : (da == null ? 1 : -1);
      final c = db.compareTo(da);
      return c != 0 ? c : a.$1 - b.$1;
    });
  return [for (final (_, e) in indexed) e];
}

String _kindLabel(AppLocalizations l10n, ActivityKind k) => switch (k) {
  ActivityKind.buy => l10n.lotNoteBought,
  ActivityKind.sell => l10n.portfolioSold,
  ActivityKind.dividend => l10n.sectionDividend,
  ActivityKind.split => l10n.portfolioSplit,
};

Future<void> showActivityPage(BuildContext context) =>
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => const ActivityPage()));

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final _query = TextEditingController();
  final _kinds = <ActivityKind>{};
  String? _account;

  @override
  void dispose() {
    _query.dispose();
    super.dispose();
  }

  Future<void> _delete(ActivityEntry e) async {
    final l10n = AppLocalizations.of(context);
    final portfolio = AppServices.of(context).portfolio;
    final messenger = ScaffoldMessenger.of(context);
    // A tranzakció a listában igazítva látszik: a visszavonáshoz a tárolt alakja kell.
    final (String text, VoidCallback? undo) = switch (e) {
      ActivityEntry(lot: _?) => switch (await portfolio.remove(e.id)) {
        final stored? => (l10n.lotRemoved, () => portfolio.restore(stored)),
        null => (l10n.lotRemoved, null),
      },
      ActivityEntry(dividend: final d?) => (
        l10n.portfolioDividendDeleted,
        () {
          portfolio.restoreDividend(d);
        },
      ),
      ActivityEntry(split: final s?) => (
        l10n.portfolioSplitRemoved,
        () {
          portfolio.restoreSplit(s);
        },
      ),
      _ => throw StateError('üres sor'),
    };
    if (e.dividend != null) await portfolio.removeDividend(e.id);
    if (e.split != null) await portfolio.removeSplit(e.id);
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(text),
          action: undo == null
              ? null
              : SnackBarAction(key: const ValueKey('activity-undo'), label: l10n.undo, onPressed: undo),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.activityTitle)),
      body: ListenableBuilder(
        listenable: Listenable.merge([services.portfolio, _query]),
        builder: (context, _) {
          final store = services.portfolio;
          final accounts = store.accounts;
          // A közben megszűnt számla szűrője nem marad bent.
          final account = accounts.contains(_account) ? _account : null;
          final rows = activityEntries(store, query: _query.text, kinds: _kinds, account: account);
          final empty = store.lots.isEmpty && store.dividends.isEmpty && store.splits.isEmpty;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: TextField(
                  key: const ValueKey('activity-search'),
                  controller: _query,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_rounded),
                    hintText: l10n.activitySearchHint,
                    isDense: true,
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  children: [
                    for (final k in ActivityKind.values)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 8),
                        child: FilterChip(
                          key: ValueKey('activity-kind-${k.name}'),
                          label: Text(_kindLabel(l10n, k)),
                          selected: _kinds.contains(k),
                          onSelected: (on) => setState(() => on ? _kinds.add(k) : _kinds.remove(k)),
                        ),
                      ),
                    // Számla szerint (ha van számla): koppintva be, újra koppintva ki.
                    for (final a in accounts)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 8),
                        child: ChoiceChip(
                          key: ValueKey('activity-account-$a'),
                          avatar: const Icon(Icons.account_balance_wallet_outlined, size: 16),
                          label: Text(a),
                          selected: account == a,
                          onSelected: (on) => setState(() => _account = on ? a : null),
                        ),
                      ),
                  ],
                ),
              ),
              Expanded(
                child: rows.isEmpty
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Text(
                            empty ? l10n.portfolioEmpty : l10n.activityNoMatch,
                            key: const ValueKey('activity-empty'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : _ActivityList(
                        rows: rows,
                        realized: store.realizedBySale,
                        showAccount: account == null,
                        onDelete: _delete,
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}

/// A sorok havonta fejléccel; lustán épül, hogy több száz importált tétel se lassítson.
class _ActivityList extends StatelessWidget {
  const _ActivityList({required this.rows, required this.realized, required this.showAccount, required this.onDelete});

  final List<ActivityEntry> rows;

  /// Eladásonként a realizált nyereség (FIFO, díjjal).
  final Map<String, ({double gain, String currency})> realized;
  final bool showAccount;
  final Future<void> Function(ActivityEntry) onDelete;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    // Fejléc ott, ahol a hónap (vagy a dátum hiánya) változik.
    final items = <Object>[];
    String? last;
    for (final e in rows) {
      final month = e.date == null ? '—' : fmt.monthYear(e.date);
      if (month != last) items.add(month);
      last = month;
      items.add(e);
    }
    return ListView.builder(
      key: const ValueKey('activity-list'),
      padding: const EdgeInsets.only(bottom: 24),
      itemCount: items.length,
      itemBuilder: (context, i) => switch (items[i]) {
        final String month => Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
          child: Text(month, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
        ),
        final ActivityEntry e => _row(context, e, l10n, p, fmt),
        _ => const SizedBox.shrink(),
      },
    );
  }

  Widget _row(BuildContext context, ActivityEntry e, AppLocalizations l10n, AppPalette p, Fmt fmt) {
    final kind = e.kind;
    final details = [
      if (e.date != null) fmt.date(e.date),
      if (e.lot case final l?) '${fmt.quantity(l.quantity)} × ${fmt.money(l.price, l.currency)}',
      if (e.split case final s?) l10n.portfolioSplitRow(s.label),
      if (e.lot case final l? when l.fee > 0) l10n.portfolioFeeRow(fmt.money(l.fee, l.currency)),
      if (showAccount) ?e.account,
    ];
    final amount = switch (e) {
      ActivityEntry(lot: final l?) => fmt.money(l.quantity * l.price, l.currency),
      ActivityEntry(dividend: final d?) => fmt.money(d.amount, d.currency, withSign: true),
      _ => null,
    };
    return ListTile(
      key: ValueKey('activity-${e.id}'),
      dense: true,
      leading: Icon(switch (kind) {
        ActivityKind.buy => Icons.receipt_long_outlined,
        ActivityKind.sell => Icons.sell_outlined,
        ActivityKind.dividend => Icons.payments_outlined,
        ActivityKind.split => Icons.call_split_rounded,
      }, color: kind == ActivityKind.buy || kind == ActivityKind.split ? p.muted : p.accent),
      // Az összeg a cím sorában, a realizált nyereség a részletek sorában; ha nem fér el
      // (nagy betűméret), a sor alá kerül.
      title: FitRow(
        lead: Text.rich(
          TextSpan(
            text: e.symbol,
            style: const TextStyle(fontWeight: FontWeight.w600),
            children: [
              TextSpan(
                text: '  ${_kindLabel(l10n, kind)}',
                style: TextStyle(color: p.muted, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        trailing: amount == null
            ? const SizedBox.shrink()
            : Text(
                amount,
                style: TextStyle(fontWeight: FontWeight.w600, color: kind == ActivityKind.dividend ? p.positive : null),
              ),
      ),
      subtitle: FitRow(
        lead: Text(details.join(' · ')),
        // Eladásnál a realizált nyereség (FIFO szerint, díjjal).
        trailing: switch (realized[e.id]) {
          final r? when kind == ActivityKind.sell => Tooltip(
            message: l10n.portfolioRealized,
            child: Text(
              fmt.money(r.gain, r.currency, withSign: true),
              key: ValueKey('activity-realized-${e.id}'),
              style: TextStyle(fontSize: 12, color: gainColor(p, r.gain)),
            ),
          ),
          _ => const SizedBox.shrink(),
        },
      ),
      // Koppintva javítható (a felaprózás csak törölhető).
      onTap: switch (e) {
        ActivityEntry(lot: final l?) => () => showEditLotDialog(context, l),
        ActivityEntry(dividend: final d?) => () => showEditDividendDialog(context, d),
        _ => null,
      },
      trailing: IconButton(
        key: ValueKey('activity-delete-${e.id}'),
        tooltip: l10n.portfolioRemove,
        visualDensity: VisualDensity.compact,
        icon: Icon(Icons.close_rounded, size: 18, color: p.muted),
        onPressed: () => onDelete(e),
      ),
    );
  }
}
