import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../../widgets/centered_scroll.dart';
import '../../widgets/desktop_chrome.dart';
import '../analysis/stale_report.dart' show analysisAgeText;
import 'watch_news.dart';

/// „Hírek a részvényeidről” a kezdőképernyőn: a portfólió és a kedvencek
/// legfrissebb hírei (az első néhány), a többi a „Mind” oldalon.
class WatchNewsSection extends StatefulWidget {
  const WatchNewsSection({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  static const shownCount = 4;

  @override
  State<WatchNewsSection> createState() => _WatchNewsSectionState();
}

class _WatchNewsSectionState extends State<WatchNewsSection> {
  bool _started = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_started) return;
    _started = true;
    final news = AppServices.of(context).news;
    WidgetsBinding.instance.addPostFrameCallback((_) => news.refresh());
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return ListenableBuilder(
      listenable: services.news,
      builder: (context, _) {
        final list = services.news.news;
        if (list.isEmpty) return const SizedBox.shrink();
        return Column(
          key: const ValueKey('home-news'),
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 4),
                    child: Text(l10n.watchNewsTitle, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                  ),
                ),
                if (list.length > WatchNewsSection.shownCount)
                  Flexible(
                    child: TextButton(
                      key: const ValueKey('news-see-all'),
                      onPressed: () => Navigator.of(
                        context,
                      ).push(MaterialPageRoute<void>(builder: (_) => WatchNewsPage(onOpenSymbol: widget.onOpenSymbol))),
                      style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                      child: Text(maxLines: 1, overflow: TextOverflow.ellipsis, l10n.seeAll(list.length)),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 4),
            Card(
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  for (final (i, n) in list.take(WatchNewsSection.shownCount).indexed) ...[
                    if (i > 0) const Divider(height: 1),
                    WatchNewsTile(news: n, onOpenSymbol: widget.onOpenSymbol),
                  ],
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

/// Egy hír sora: a részvény (koppintásra megnyílik), a cím, a forrás és a kor;
/// a sorra koppintva a hír a böngészőben.
class WatchNewsTile extends StatelessWidget {
  const WatchNewsTile({super.key, required this.news, required this.onOpenSymbol});

  final WatchedNews news;
  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final n = news.item;
    return ListTile(
      key: ValueKey('news-${n.url}'),
      // Egyforma szélességű ticker-chip, hogy a címek egy vonalban kezdődjenek.
      leading: SizedBox(
        width: 68,
        child: Center(
          child: ActionChip(
            key: ValueKey('news-symbol-${news.symbol}'),
            label: Text(news.symbol, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            onPressed: () => onOpenSymbol(StockCandidate(symbol: news.symbol, companyName: news.symbol, confidence: 1)),
          ),
        ),
      ),
      title: Text(n.headline, maxLines: 2, overflow: TextOverflow.ellipsis),
      subtitle: Text(
        [?n.source, analysisAgeText(l10n, n.publishedAt)].join(' · '),
        style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
      ),
      trailing: IconButton(
        key: ValueKey('news-explain-${n.url}'),
        tooltip: l10n.newsExplain,
        icon: Icon(Icons.auto_awesome_outlined, size: 20, color: p.accent),
        onPressed: () => showNewsExplanation(context, news),
      ),
      onTap: n.url.isEmpty
          ? null
          : () async {
              final uri = Uri.tryParse(n.url);
              if (uri != null) await launchUrl(uri, mode: LaunchMode.externalApplication);
            },
    );
  }
}

/// A hír magyarázata alsó lapon: a cím, alatta az AI néhány mondata.
Future<void> showNewsExplanation(BuildContext context, WatchedNews news) {
  final services = AppServices.of(context);
  final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
  final answer = services.newsExplainer.explain(news, language: language);
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (context) {
      final l10n = AppLocalizations.of(context);
      final p = AppPalette.of(context);
      final theme = Theme.of(context);
      return SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            key: const ValueKey('news-explanation'),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${news.symbol} · ${l10n.newsExplain}', style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
              const SizedBox(height: 6),
              Text(news.item.headline, style: theme.textTheme.titleMedium),
              const SizedBox(height: 14),
              FutureBuilder<String>(
                future: answer,
                builder: (context, snap) {
                  if (snap.hasError) {
                    return Text(errorMessage(l10n, snap.error!), style: TextStyle(color: p.negative));
                  }
                  if (!snap.hasData) return const LinearProgressIndicator();
                  return Text(snap.data!, style: theme.textTheme.bodyLarge?.copyWith(height: 1.45));
                },
              ),
              const SizedBox(height: 14),
              Text(l10n.newsExplainNote, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
            ],
          ),
        ),
      );
    },
  );
}

/// Az összes friss hír a figyelt részvényekről, frissíthető listában.
class WatchNewsPage extends StatelessWidget {
  const WatchNewsPage({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: desktopAppBar(
        context,
        title: Text(l10n.watchNewsTitle),
        hasSidebar: MediaQuery.sizeOf(context).width >= 860,
      ),
      body: ListenableBuilder(
        listenable: services.news,
        builder: (context, _) => RefreshIndicator(
          onRefresh: () => services.news.refresh(force: true),
          child: CenteredScroll(
            maxWidth: 760,
            padding: const EdgeInsets.symmetric(vertical: 8),
            builder: (context, padding) => ListView.separated(
              padding: padding,
              itemCount: services.news.news.length,
              separatorBuilder: (_, _) => const Divider(height: 1),
              itemBuilder: (_, i) => WatchNewsTile(news: services.news.news[i], onOpenSymbol: onOpenSymbol),
            ),
          ),
        ),
      ),
    );
  }
}
