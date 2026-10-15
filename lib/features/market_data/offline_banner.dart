import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'caching_market_data_provider.dart';

/// Sáv, ha a piaci adat a készüléken mentett változatból jön (nincs hálózat):
/// mikori adatot lát a felhasználó. Különben semmi.
class OfflineBanner extends StatelessWidget {
  const OfflineBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final market = AppServices.of(context).marketData;
    if (market is! CachingMarketDataProvider) return const SizedBox.shrink();
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return ValueListenableBuilder<DateTime?>(
      valueListenable: market.offlineSince,
      builder: (context, since, _) => since == null
          ? const SizedBox.shrink()
          : Container(
              key: const ValueKey('offline-banner'),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: p.surfaceRaised,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: p.border),
              ),
              child: Row(
                children: [
                  Icon(Icons.cloud_off_rounded, size: 18, color: p.muted),
                  const SizedBox(width: 8),
                  Expanded(child: Text(l10n.offlineBanner(fmt.dateTime(since)), style: theme.textTheme.bodySmall)),
                ],
              ),
            ),
    );
  }
}
