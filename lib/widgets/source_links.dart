import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../features/news/daily_brief.dart' show AskSource;
import '../l10n/generated/app_localizations.dart';
import '../theme/app_theme.dart';

/// Az AI-válasz webes forrásai „Források” címmel: cím és webhely, koppintásra
/// a böngészőben nyílnak meg.
class SourceLinks extends StatelessWidget {
  const SourceLinks({super.key, required this.sources, this.keyPrefix = 'source'});

  final List<AskSource> sources;

  /// A sorok kulcsának előtagja (`<előtag>-0`, `<előtag>-1`…), a tesztekhez.
  final String keyPrefix;

  @override
  Widget build(BuildContext context) {
    if (sources.isEmpty) return const SizedBox.shrink();
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(l10n.aiSources, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
        for (final (i, s) in sources.indexed)
          InkWell(
            key: ValueKey('$keyPrefix-$i'),
            onTap: () {
              final uri = Uri.tryParse(s.url);
              if (uri != null) launchUrl(uri, mode: LaunchMode.externalApplication);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.link_rounded, size: 16, color: p.accent),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      '${s.title} · ${Uri.tryParse(s.url)?.host ?? ''}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall?.copyWith(color: p.accent),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
