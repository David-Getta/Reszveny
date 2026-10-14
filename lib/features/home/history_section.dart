import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_report.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../../widgets/centered_scroll.dart';
import '../analysis/stale_report.dart';

StockCandidate _candidate(String symbol) => StockCandidate(symbol: symbol, companyName: symbol, confidence: 1);

/// Legutóbb megnyitott részvények gyorsgombként (telefonon nincs oldalsáv,
/// ezért a kezdőképernyőn látszanak).
class RecentChips extends StatelessWidget {
  const RecentChips({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return ListenableBuilder(
      listenable: services.preferences,
      builder: (context, _) {
        final recent = services.preferences.recent;
        if (recent.isEmpty) return const SizedBox.shrink();
        return Column(
          key: const ValueKey('home-recent'),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 4),
                    child: Text(l10n.recentSearches, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
                  ),
                ),
                TextButton(
                  onPressed: services.preferences.clearRecent,
                  style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                  child: Text(l10n.clearRecent),
                ),
              ],
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final s in recent)
                  ActionChip(
                    avatar: Icon(Icons.show_chart_rounded, size: 16, color: p.accent),
                    label: Text(s, style: const TextStyle(fontWeight: FontWeight.w600)),
                    onPressed: () => onOpenSymbol(_candidate(s)),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}

/// „Elemzéseim”: a készüléken elmentett AI-elemzések (a legújabb elöl). A sorra
/// koppintva megnyílik a részvény az elmentett elemzéssel; ha 12 óránál
/// régebbi, előbb megkérdezi, kell-e új. A „Mind” gomb a teljes előzményekhez visz.
class MyAnalysesList extends StatefulWidget {
  const MyAnalysesList({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  /// Ennyi látszik a kezdőképernyőn; a többi az előzmények oldalán.
  static const collapsedCount = 5;

  @override
  State<MyAnalysesList> createState() => _MyAnalysesListState();
}

/// Az elmentett elemzések betöltése és frissítése (új elemzés, törlés,
/// nyelvváltás után). A kezdőképernyő listája és az előzmények oldala is ezt használja.
mixin _SavedReports<T extends StatefulWidget> on State<T> {
  AppServices? _services;
  String? _language;
  List<StockReport> reports = const [];
  bool loaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final services = AppServices.of(context);
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    if (!identical(services, _services)) {
      _services?.reports.removeListener(_reload);
      _services = services;
      services.reports.addListener(_reload);
    } else if (language == _language) {
      return;
    }
    _language = language;
    _reload();
  }

  @override
  void dispose() {
    _services?.reports.removeListener(_reload);
    super.dispose();
  }

  /// Csak az aktuális nyelven készült elemzések nyithatók meg, ezért csak azok látszanak.
  Future<void> _reload() async {
    final list = await _services!.reports.savedReports(language: _language);
    if (mounted) {
      setState(() {
        reports = list;
        loaded = true;
      });
    }
  }
}

class _MyAnalysesListState extends State<MyAnalysesList> with _SavedReports {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    if (reports.isEmpty) return const SizedBox.shrink();
    final shown = reports.take(MyAnalysesList.collapsedCount).toList();
    return Column(
      key: const ValueKey('home-analyses'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 4),
                child: Text(l10n.myAnalyses, style: theme.textTheme.labelLarge?.copyWith(color: p.muted)),
              ),
            ),
            if (reports.length > MyAnalysesList.collapsedCount)
              TextButton(
                key: const ValueKey('analyses-see-all'),
                onPressed: () => Navigator.of(
                  context,
                ).push(MaterialPageRoute<void>(builder: (_) => AnalysesHistoryPage(onOpenSymbol: widget.onOpenSymbol))),
                style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                child: Text(l10n.seeAll(reports.length)),
              ),
          ],
        ),
        const SizedBox(height: 4),
        Card(
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              for (final (i, r) in shown.indexed) ...[
                if (i > 0) const Divider(height: 1),
                SavedAnalysisTile(report: r, onOpenSymbol: widget.onOpenSymbol),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

/// Egy elmentett elemzés sora: ticker, mennyi ideje készült, a fő megállapítás.
/// A régi (12 óránál idősebb) elemzésnél egy óra-ikon jelzi, hogy frissíthető.
class SavedAnalysisTile extends StatelessWidget {
  const SavedAnalysisTile({super.key, required this.report, required this.onOpenSymbol, this.trailing});

  final StockReport report;
  final ValueChanged<StockCandidate> onOpenSymbol;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final stale = services.reports.isStale(report);
    final r = report;
    return ListTile(
      key: ValueKey('analysis-${r.symbol}'),
      leading: CircleAvatar(
        backgroundColor: p.accent.withValues(alpha: 0.15),
        child: Icon(stale ? Icons.history_rounded : Icons.auto_awesome_rounded, size: 18, color: p.accent),
      ),
      title: Row(
        children: [
          Text(r.symbol, style: const TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              analysisAgeText(l10n, r.generatedAt),
              textAlign: TextAlign.end,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
            ),
          ),
        ],
      ),
      subtitle: r.headline.isEmpty ? null : Text(r.headline, maxLines: 2, overflow: TextOverflow.ellipsis),
      trailing: trailing,
      onTap: () => openSavedAnalysis(context, r, () => onOpenSymbol(_candidate(r.symbol))),
    );
  }
}

/// Az összes elmentett elemzés: kereséssel (ticker vagy megállapítás), és
/// törléssel (elhúzva vagy a kuka gombbal).
class AnalysesHistoryPage extends StatefulWidget {
  const AnalysesHistoryPage({super.key, required this.onOpenSymbol});

  final ValueChanged<StockCandidate> onOpenSymbol;

  @override
  State<AnalysesHistoryPage> createState() => _AnalysesHistoryPageState();
}

class _AnalysesHistoryPageState extends State<AnalysesHistoryPage> with _SavedReports {
  final _query = TextEditingController();

  @override
  void dispose() {
    _query.dispose();
    super.dispose();
  }

  Future<void> _delete(StockReport r) async {
    final l10n = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    await AppServices.of(context).reports.delete(r.symbol);
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l10n.analysisDeleted(r.symbol))));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final q = _query.text.trim().toLowerCase();
    final shown = q.isEmpty
        ? reports
        : reports.where((r) => r.symbol.toLowerCase().contains(q) || r.headline.toLowerCase().contains(q)).toList();
    return Scaffold(
      appBar: AppBar(title: Text(l10n.myAnalyses)),
      body: CenteredScroll(
        maxWidth: 760,
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        builder: (context, padding) => ListView(
          padding: padding,
          children: [
            TextField(
              key: const ValueKey('analyses-search'),
              controller: _query,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                hintText: l10n.searchAnalyses,
                prefixIcon: const Icon(Icons.search_rounded),
                isDense: true,
              ),
            ),
            const SizedBox(height: 12),
            for (final r in shown)
              Dismissible(
                key: ValueKey('dismiss-${r.symbol}'),
                direction: DismissDirection.endToStart,
                background: Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding: const EdgeInsetsDirectional.only(end: 20),
                  color: p.negative.withValues(alpha: 0.85),
                  child: const Icon(Icons.delete_outline_rounded, color: Colors.white),
                ),
                onDismissed: (_) {
                  setState(() => reports = reports.where((x) => x.symbol != r.symbol).toList());
                  _delete(r);
                },
                child: Card(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: SavedAnalysisTile(
                    report: r,
                    onOpenSymbol: widget.onOpenSymbol,
                    trailing: IconButton(
                      key: ValueKey('delete-${r.symbol}'),
                      tooltip: l10n.deleteAnalysis,
                      icon: Icon(Icons.delete_outline_rounded, color: p.muted),
                      onPressed: () => _delete(r),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
