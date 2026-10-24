import 'package:flutter/material.dart';

import '../core/util/links.dart';
import '../core/util/source_kind.dart';
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
            onTap: () => openWeb(s.url),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.link_rounded, size: 16, color: p.accent),
                  const SizedBox(width: 6),
                  // A gép elöl, saját sorban: egy hosszú (az AI-tól vagy az oldaltól kapott) cím
                  // ne tolhassa ki, hová visz a link.
                  Expanded(
                    child: SourceTitle(title: s.title, url: s.url, style: theme.textTheme.bodySmall, color: p.accent),
                  ),
                  SourceTag(url: s.url),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

/// Kis címke a forrás jellegéről (hivatalos, sajtóközlemény, vezető hírforrás,
/// vélemény); ismeretlen webhelynél semmi.
/// Egy forrás neve a gépével: a gép elöl, saját, nem rövidülő sorban (oda visz a link
/// valójában), alatta a cím – egy félrevezető (pl. hivatalosnak mondott) cím így nem
/// takarhatja el, hová vezet.
class SourceTitle extends StatelessWidget {
  const SourceTitle({
    super.key,
    required this.title,
    required this.url,
    required this.color,
    this.style,
    this.titleLines = 2,
  });

  final String title;
  final String url;
  final Color color;
  final TextStyle? style;
  final int titleLines;

  @override
  Widget build(BuildContext context) {
    final host = (safeWebUri(url)?.host ?? '').replaceFirst(RegExp(r'^www\.'), '');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (host.isNotEmpty)
          Text(
            host,
            style: style?.copyWith(color: color, fontWeight: FontWeight.w600),
          ),
        if (title.trim().isNotEmpty)
          Text(
            title,
            maxLines: titleLines,
            overflow: TextOverflow.ellipsis,
            style: style?.copyWith(color: color),
          ),
      ],
    );
  }
}

class SourceTag extends StatelessWidget {
  const SourceTag({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    final kind = sourceKindOf(url);
    if (kind == null) return const SizedBox.shrink();
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final (label, color) = switch (kind) {
      SourceKind.official => (l10n.sourceOfficial, p.positive),
      SourceKind.pressRelease => (l10n.sourcePressRelease, p.muted),
      SourceKind.majorNews => (l10n.sourceMajorNews, p.positive),
      SourceKind.opinion => (l10n.sourceOpinion, p.muted),
    };
    return Container(
      key: ValueKey('source-tag-${kind.name}'),
      margin: const EdgeInsetsDirectional.only(start: 6),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      decoration: BoxDecoration(
        border: Border.all(color: color.withValues(alpha: 0.6)),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(label, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: color)),
    );
  }
}
