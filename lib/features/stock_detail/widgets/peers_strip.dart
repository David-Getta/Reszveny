import 'package:flutter/material.dart';

import '../../../app_services.dart';
import '../../../core/models/stock_candidate.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';
import '../../compare/compare_page.dart';

/// „Hasonló cégek”: a versenytársak tickerei; koppintásra megnyílnak, a gomb
/// a mostani részvénnyel együtt az összehasonlítást nyitja meg.
class PeersStrip extends StatefulWidget {
  const PeersStrip({super.key, required this.symbol, required this.onOpenSymbol});

  final String symbol;
  final ValueChanged<StockCandidate> onOpenSymbol;

  static const maxPeers = 8;

  @override
  State<PeersStrip> createState() => _PeersStripState();
}

class _PeersStripState extends State<PeersStrip> {
  Future<List<String>>? _peers;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _peers ??= AppServices.of(context).marketData
        .peers(widget.symbol)
        .then(
          (p) => p.where((s) => s != widget.symbol).take(PeersStrip.maxPeers).toList(),
          onError: (Object _) => <String>[],
        );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return FutureBuilder<List<String>>(
      future: _peers,
      builder: (context, snap) {
        final peers = snap.data ?? const <String>[];
        if (peers.isEmpty) return const SizedBox.shrink();
        return Padding(
          key: const ValueKey('peers-strip'),
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(l10n.peersTitle, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                  ),
                  TextButton.icon(
                    key: const ValueKey('peers-compare'),
                    style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                    onPressed: () => ComparePage.open(context, [
                      widget.symbol,
                      ...peers.take(ComparePage.maxStocks - 1),
                    ], onOpenSymbol: widget.onOpenSymbol),
                    icon: const Icon(Icons.compare_arrows_rounded, size: 18),
                    label: Text(l10n.compareTitle),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final s in peers)
                    ActionChip(
                      key: ValueKey('peer-$s'),
                      label: Text(s, style: const TextStyle(fontWeight: FontWeight.w700)),
                      onPressed: () => widget.onOpenSymbol(StockCandidate(symbol: s, companyName: s)),
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
