import 'package:flutter/material.dart';

import '../../../app_services.dart';
import '../../../core/models/analysis_extras.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';
import 'section_card.dart';
import '../../../widgets/fit_row.dart';

/// „Bennfentes ügyletek”: a vezetők és igazgatók nyílt piaci vételei és
/// eladásai az elmúlt 90 napban (SEC Form 4). Ha nincs adat (pl. nem
/// USA-részvény), a kártya nem jelenik meg.
class InsidersCard extends StatefulWidget {
  const InsidersCard({super.key, required this.symbol, this.currency});

  final String symbol;
  final String? currency;

  @override
  State<InsidersCard> createState() => _InsidersCardState();
}

class _InsidersCardState extends State<InsidersCard> {
  Future<InsiderSummary?>? _data;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _data ??= AppServices.of(context).marketData.insiders(widget.symbol).then((s) => s, onError: (Object _) => null);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final muted = theme.textTheme.bodySmall?.copyWith(color: p.muted);
    return FutureBuilder<InsiderSummary?>(
      future: _data,
      builder: (context, snap) {
        final s = snap.data;
        if (s == null) return const SizedBox.shrink();
        final none = s.buys == 0 && s.sells == 0;
        Widget pill(String text, Color color) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(color: color.withValues(alpha: 0.14), borderRadius: BorderRadius.circular(99)),
          child: Text(
            text,
            style: TextStyle(color: color, fontWeight: FontWeight.w700, fontSize: 13),
          ),
        );
        return SectionCard(
          key: const ValueKey('insiders-card'),
          title: l10n.sectionInsiders,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (none)
                Text(l10n.insiderNone, style: muted)
              else ...[
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    pill(l10n.insiderBuys(s.buys), p.positive),
                    pill(l10n.insiderSells(s.sells), p.negative),
                    Text(
                      l10n.insiderNet('${s.netShares > 0 ? '+' : ''}${fmt.compact(s.netShares)}'),
                      key: const ValueKey('insiders-net'),
                      style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                for (final t in s.openMarket)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    // A vétel/eladás a név sorában; nagy betűméretnél a név alá kerül.
                    title: FitRow(
                      lead: Text(t.name.isEmpty ? '—' : t.name, maxLines: 1, overflow: TextOverflow.ellipsis),
                      trailing: Text(
                        '${t.code == 'P' ? l10n.insiderBuy : l10n.insiderSell} ${fmt.compact(t.change.abs())}',
                        style: TextStyle(color: t.code == 'P' ? p.positive : p.negative, fontWeight: FontWeight.w600),
                      ),
                    ),
                    subtitle: Text(
                      [fmt.date(t.date), if (t.price != null) fmt.price(t.price, widget.currency)].join(' · '),
                      style: muted,
                    ),
                  ),
              ],
              const SizedBox(height: 4),
              Text(l10n.insiderHint, style: muted),
            ],
          ),
        );
      },
    );
  }
}
