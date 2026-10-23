import 'package:flutter/material.dart';

import '../../../core/models/price_history.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';
import '../../analysis/price_stats.dart';
import '../../portfolio/add_lot_dialog.dart';
import 'section_card.dart';

/// „Mi lett volna, ha…”: mennyit érne ma egy 1, 3 vagy 5 éve befektetett összeg
/// (csak az árfolyam alapján, osztalék és költségek nélkül); alatta külön a mai
/// osztalékhozammal számolt évi osztalék a mai értékre. Csak a meglévő
/// árfolyam-történet időtávjai választhatók.
class WhatIfCard extends StatefulWidget {
  const WhatIfCard({super.key, required this.history, required this.currency, required this.fmt, this.dividendYield});

  final PriceHistory history;
  final String? currency;
  final Fmt fmt;

  /// A mai osztalékhozam százalékban (ha van): a mai értékre vetítve mutatjuk az évi osztalékot.
  final double? dividendYield;

  static const years = [1, 3, 5];

  /// Az összeg értéke ma, ha [years] éve fektették be (`null`, ha nincs ilyen régi adat).
  static double? valueToday(List<PricePoint> pts, double amount, int years) {
    // A záróárak arányából (nem egy kerekített hozamból: nagy összegnél pontos).
    final base = pts.isEmpty ? null : PriceStats.baseAt(pts, yearsBefore(pts.last.time, years));
    return base == null ? null : amount * pts.last.close / base.close;
  }

  @override
  State<WhatIfCard> createState() => _WhatIfCardState();
}

class _WhatIfCardState extends State<WhatIfCard> {
  final _amount = TextEditingController(text: '1000');
  int? _years;

  @override
  void dispose() {
    _amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = widget.fmt;
    final pts = widget.history.points;
    final options = [
      for (final y in WhatIfCard.years)
        if (WhatIfCard.valueToday(pts, 1, y) != null) y,
    ];
    if (options.isEmpty) return const SizedBox.shrink();
    final years = options.contains(_years) ? _years! : options.last;
    final amount = parseAmount(_amount.text, Localizations.localeOf(context).toString());
    final value = amount == null || amount <= 0 ? null : WhatIfCard.valueToday(pts, amount, years);
    final gain = value == null ? null : value - amount!;
    return SectionCard(
      key: const ValueKey('what-if'),
      title: l10n.whatIfTitle,
      collapseKey: 'what-if',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: TextField(
                  key: const ValueKey('what-if-amount'),
                  controller: _amount,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(labelText: l10n.whatIfAmount, suffixText: widget.currency, isDense: true),
                ),
              ),
              for (final y in options)
                ChoiceChip(
                  key: ValueKey('what-if-$y'),
                  label: Text(l10n.longTermYears(y)),
                  selected: y == years,
                  onSelected: (_) => setState(() => _years = y),
                ),
            ],
          ),
          const SizedBox(height: 14),
          if (value != null) ...[
            Text(
              l10n.whatIfResult(fmt.money(amount, widget.currency), l10n.longTermYears(years)),
              style: theme.textTheme.bodyMedium?.copyWith(color: p.muted),
            ),
            const SizedBox(height: 4),
            Text(
              fmt.money(value, widget.currency),
              key: const ValueKey('what-if-value'),
              style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              '${fmt.money(gain, widget.currency, withSign: true)} · '
              '${fmt.percent(gain! / amount! * 100, withSign: true)}',
              style: theme.textTheme.bodyMedium?.copyWith(color: gainColor(p, gain)),
            ),
            const SizedBox(height: 8),
          ],
          Text(l10n.whatIfNote, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
          // Külön, a megjegyzés után: a mai osztalékhozammal ennyi évi osztalékot fizetne a mai érték
          // (becslés, nem része a fenti értéknek).
          if (value case final v?)
            if (widget.dividendYield case final y? when y > 0)
              Text(
                l10n.positionDividend(fmt.money(v * y / 100, widget.currency)),
                key: const ValueKey('what-if-dividend'),
                style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
              ),
        ],
      ),
    );
  }
}
