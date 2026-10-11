import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app_services.dart';
import '../../core/models/analyst_consensus.dart';
import '../../core/models/stock_candidate.dart';
import '../../core/models/stock_details.dart';
import '../../core/util/formatters.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import '../recognition/stock_recognizer.dart';
import 'widgets/analysis_card.dart';
import 'widgets/converted_price.dart';
import 'widgets/kv_table.dart';
import 'widgets/price_chart.dart';
import 'widgets/section_card.dart';
import 'widgets/statements_table.dart';

/// A részletes nézet: minden tudnivaló egy részvényről, szekciókra bontva.
class StockDetailPage extends StatefulWidget {
  const StockDetailPage({super.key, required this.candidate, this.recognition});

  final StockCandidate candidate;
  final RecognitionResult? recognition;

  @override
  State<StockDetailPage> createState() => _StockDetailPageState();
}

class _StockDetailPageState extends State<StockDetailPage> {
  Future<StockDetails>? _future;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Az InheritedWidget csak itt érhető el először; egyszer indítjuk.
    _future ??= _fetch();
  }

  Future<StockDetails> _fetch() => AppServices.of(context).marketData.details(widget.candidate.symbol);

  Future<void> _refresh() {
    final f = _fetch();
    setState(() => _future = f);
    return f.then((_) {}, onError: (_) {});
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: desktopAppBar(
        context,
        title: Text(widget.candidate.symbol),
        hasSidebar: MediaQuery.sizeOf(context).width >= 860,
        actions: [
          _FavoriteButton(symbol: widget.candidate.symbol),
          const SizedBox(width: 4),
        ],
      ),
      body: FutureBuilder<StockDetails>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [const CircularProgressIndicator(), const SizedBox(height: 12), Text(l10n.loadingData)],
              ),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(errorMessage(l10n, snapshot.error!), textAlign: TextAlign.center),
                    const SizedBox(height: 12),
                    FilledButton(onPressed: _refresh, child: Text(l10n.retry)),
                  ],
                ),
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: _refresh,
            child: _DetailsBody(details: snapshot.data!, candidate: widget.candidate, recognition: widget.recognition),
          );
        },
      ),
    );
  }
}

class _DetailsBody extends StatelessWidget {
  const _DetailsBody({required this.details, required this.candidate, this.recognition});

  final StockDetails details;
  final StockCandidate candidate;
  final RecognitionResult? recognition;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final theme = Theme.of(context);
    final palette = AppPalette.of(context);
    final d = details;
    final q = d.quote;
    final p = d.profile;
    final m = d.metrics;
    final cur = d.currency;

    String? err(DetailSection s) => d.errors[s] == null ? null : errorMessage(l10n, d.errors[s]!);

    final sections = <Widget>[
      // Fejléc: név, ár, változás.
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (p?.logoUrl != null)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    p!.logoUrl!,
                    width: 48,
                    height: 48,
                    errorBuilder: (_, _, _) => const SizedBox(width: 48, height: 48),
                  ),
                ),
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(p?.name ?? candidate.companyName, style: theme.textTheme.headlineSmall),
                  Text(
                    [d.symbol, if (p?.exchange != null) p!.exchange!].join(' · '),
                    style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                  ),
                ],
              ),
            ),
            if (q != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(fmt.price(q.price, cur), style: theme.textTheme.headlineSmall),
                  Text(
                    '${fmt.signed(q.change)} (${fmt.percent(q.changePercent, withSign: true)})',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: q.isUp ? palette.positive : palette.negative,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ConvertedPrice(amount: q.price, fromCurrency: cur, withRate: true),
                ],
              ),
          ],
        ),
      ),

      // AI-elemzés
      AnalysisCard(details: d),

      // Grafikon
      SectionCard(
        title: l10n.sectionChart,
        child: err(DetailSection.chart) != null
            ? SectionError(err(DetailSection.chart)!)
            : d.history == null
            ? Text(l10n.notAvailable)
            : PriceChart(history: d.history!, fmt: fmt, currency: cur),
      ),

      // Árfolyam
      SectionCard(
        title: l10n.sectionPrice,
        trailing: q?.timestamp == null
            ? null
            : Text(l10n.updatedAt(fmt.dateTime(q!.timestamp)), style: theme.textTheme.bodySmall),
        child: err(DetailSection.quote) != null
            ? SectionError(err(DetailSection.quote)!)
            : KvTable(
                missing: l10n.notAvailable,
                rows: [
                  (l10n.labelLastPrice, fmt.price(q?.price, cur)),
                  (
                    l10n.labelChange,
                    q == null ? null : '${fmt.signed(q.change)} (${fmt.percent(q.changePercent, withSign: true)})',
                  ),
                  (l10n.labelOpen, fmt.price(q?.open, cur)),
                  (l10n.labelDayHigh, fmt.price(q?.high, cur)),
                  (l10n.labelDayLow, fmt.price(q?.low, cur)),
                  (l10n.labelPreviousClose, fmt.price(q?.previousClose, cur)),
                  (
                    l10n.labelWeek52High,
                    m?.week52High == null
                        ? null
                        : '${fmt.price(m!.week52High, cur)}${m.week52HighDate == null ? '' : ' (${fmt.date(m.week52HighDate)})'}',
                  ),
                  (
                    l10n.labelWeek52Low,
                    m?.week52Low == null
                        ? null
                        : '${fmt.price(m!.week52Low, cur)}${m.week52LowDate == null ? '' : ' (${fmt.date(m.week52LowDate)})'}',
                  ),
                  (l10n.labelAverageVolume10d, m?.averageVolume10d == null ? null : fmt.compact(m!.averageVolume10d)),
                ],
              ),
      ),

      // Azonosítás
      SectionCard(
        title: l10n.sectionIdentity,
        child: err(DetailSection.profile) != null && p == null
            ? SectionError(err(DetailSection.profile)!)
            : KvTable(
                hideMissing: true,
                rows: [
                  (l10n.labelSymbol, d.symbol),
                  (l10n.labelExchange, p?.exchange ?? candidate.exchange),
                  (l10n.labelIsin, p?.isin),
                  (l10n.labelCurrency, p?.currency),
                  (l10n.labelCountry, p?.country),
                  (l10n.labelSector, p?.sector),
                  (l10n.labelIndustry, p?.industry),
                  (l10n.labelIpoDate, p?.ipoDate == null ? null : fmt.date(p!.ipoDate)),
                  (l10n.labelWebsite, p?.website),
                ],
              ),
      ),

      // Értékelés
      SectionCard(
        title: l10n.sectionValuation,
        child: err(DetailSection.metrics) != null
            ? SectionError(err(DetailSection.metrics)!)
            : KvTable(
                missing: l10n.notAvailable,
                rows: [
                  (l10n.labelMarketCap, p?.marketCap == null ? null : fmt.compact(p!.marketCap, currency: cur)),
                  (
                    l10n.labelSharesOutstanding,
                    p?.sharesOutstanding == null ? null : fmt.compact(p!.sharesOutstanding),
                  ),
                  (l10n.labelPeTrailing, m?.peTrailing == null ? null : fmt.number(m!.peTrailing)),
                  (l10n.labelPeForward, m?.peForward == null ? null : fmt.number(m!.peForward)),
                  (l10n.labelPb, m?.pb == null ? null : fmt.number(m!.pb)),
                  (l10n.labelPs, m?.ps == null ? null : fmt.number(m!.ps)),
                  (l10n.labelEvToFcf, m?.evToEbitda == null ? null : fmt.number(m!.evToEbitda)),
                  (l10n.labelPeg, m?.peg == null ? null : fmt.number(m!.peg)),
                  (l10n.labelEps, m?.eps == null ? null : fmt.price(m!.eps, cur)),
                  (l10n.labelBeta, m?.beta == null ? null : fmt.number(m!.beta)),
                ],
              ),
      ),

      // Pénzügyek
      SectionCard(
        title: l10n.sectionFinancials,
        child: err(DetailSection.metrics) != null
            ? SectionError(err(DetailSection.metrics)!)
            : KvTable(
                missing: l10n.notAvailable,
                rows: [
                  (l10n.labelRevenueTtm, m?.revenueTtm == null ? null : fmt.compact(m!.revenueTtm, currency: cur)),
                  (
                    l10n.labelNetIncomeTtm,
                    m?.netIncomeTtm == null ? null : fmt.compact(m!.netIncomeTtm, currency: cur),
                  ),
                  (l10n.labelGrossMargin, m?.grossMargin == null ? null : fmt.percent(m!.grossMargin)),
                  (l10n.labelOperatingMargin, m?.operatingMargin == null ? null : fmt.percent(m!.operatingMargin)),
                  (l10n.labelNetMargin, m?.netMargin == null ? null : fmt.percent(m!.netMargin)),
                  (l10n.labelRoe, m?.roe == null ? null : fmt.percent(m!.roe)),
                  (l10n.labelRoa, m?.roa == null ? null : fmt.percent(m!.roa)),
                  (l10n.labelDebtToEquity, m?.debtToEquity == null ? null : fmt.number(m!.debtToEquity)),
                  (l10n.labelCurrentRatio, m?.currentRatio == null ? null : fmt.number(m!.currentRatio)),
                  (
                    l10n.labelRevenueGrowth,
                    m?.revenueGrowth == null ? null : fmt.percent(m!.revenueGrowth, withSign: true),
                  ),
                  (l10n.labelEpsGrowth, m?.epsGrowth == null ? null : fmt.percent(m!.epsGrowth, withSign: true)),
                ],
              ),
      ),

      // Éves kimutatások
      SectionCard(
        title: l10n.sectionStatements,
        child: err(DetailSection.statements) != null
            ? SectionError(err(DetailSection.statements)!)
            : d.statements == null || d.statements!.isEmpty
            ? Text(l10n.notAvailable)
            : StatementsTable(statements: d.statements!, fmt: fmt, currency: cur),
      ),

      // Osztalék
      SectionCard(
        title: l10n.sectionDividend,
        child: err(DetailSection.metrics) != null
            ? SectionError(err(DetailSection.metrics)!)
            : KvTable(
                missing: l10n.notAvailable,
                rows: [
                  (l10n.labelDividendYield, m?.dividendYield == null ? null : fmt.percent(m!.dividendYield)),
                  (
                    l10n.labelDividendPerShare,
                    m?.dividendPerShare == null ? null : fmt.price(m!.dividendPerShare, cur),
                  ),
                  (l10n.labelPayoutRatio, m?.payoutRatio == null ? null : fmt.percent(m!.payoutRatio)),
                ],
              ),
      ),

      // Cégprofil
      SectionCard(
        title: l10n.sectionProfile,
        child: err(DetailSection.profile) != null
            ? SectionError(err(DetailSection.profile)!)
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (p?.description != null) ...[Text(p!.description!), const SizedBox(height: 12)],
                  KvTable(
                    hideMissing: true,
                    rows: [
                      (l10n.labelCeo, p?.ceo),
                      (l10n.labelHeadquarters, p?.headquarters),
                      (l10n.labelEmployees, p?.employees == null ? null : fmt.integer(p!.employees)),
                    ],
                  ),
                ],
              ),
      ),

      // Elemzők
      SectionCard(
        title: l10n.sectionAnalysts,
        child: err(DetailSection.consensus) != null
            ? SectionError(err(DetailSection.consensus)!)
            : d.consensus == null
            ? Text(l10n.notAvailable)
            : _ConsensusView(consensus: d.consensus!, fmt: fmt),
      ),

      // Hírek
      SectionCard(
        title: l10n.sectionNews,
        child: err(DetailSection.news) != null
            ? SectionError(err(DetailSection.news)!)
            : d.news.isEmpty
            ? Text(l10n.noNews)
            : Column(
                children: [
                  for (final n in d.news.take(10))
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(n.headline),
                      subtitle: Text([if (n.source != null) n.source!, fmt.dateTime(n.publishedAt)].join(' · ')),
                      trailing: const Icon(Icons.open_in_new, size: 18),
                      onTap: () => _open(context, n.url),
                    ),
                ],
              ),
      ),

      // Felismerés részletei
      if (recognition != null)
        SectionCard(
          title: l10n.sectionRecognition,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (recognition!.summary != null) ...[
                Text(l10n.recognitionSummary, style: theme.textTheme.labelLarge),
                Text(recognition!.summary!),
                const SizedBox(height: 8),
              ],
              if (candidate.evidence != null) ...[
                Text(l10n.recognitionEvidence, style: theme.textTheme.labelLarge),
                Text('${candidate.evidence!} (${l10n.confidencePercent((candidate.confidence * 100).round())})'),
                const SizedBox(height: 8),
              ],
              if (recognition!.rawText != null) ...[
                Text(l10n.recognitionRawText, style: theme.textTheme.labelLarge),
                SelectableText(recognition!.rawText!, style: theme.textTheme.bodySmall),
              ],
            ],
          ),
        ),

      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(l10n.disclaimer, textAlign: TextAlign.center, style: theme.textTheme.bodySmall),
      ),
    ];

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 720),
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: sections.length,
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemBuilder: (_, i) => sections[i],
        ),
      ),
    );
  }

  Future<void> _open(BuildContext context, String url) async {
    final l10n = AppLocalizations.of(context);
    final uri = Uri.tryParse(url);
    final ok = uri != null && await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!ok && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l10n.openLinkFailed)));
    }
  }
}

class _ConsensusView extends StatelessWidget {
  const _ConsensusView({required this.consensus, required this.fmt});

  final AnalystConsensus consensus;
  final Fmt fmt;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final c = consensus;
    String ratingLabel(Rating? r) => switch (r) {
      Rating.strongBuy => l10n.ratingStrongBuy,
      Rating.buy => l10n.ratingBuy,
      Rating.hold => l10n.ratingHold,
      Rating.sell => l10n.ratingSell,
      Rating.strongSell => l10n.ratingStrongSell,
      null => l10n.notAvailable,
    };
    final palette = AppPalette.of(context);
    final bars = [
      (l10n.ratingStrongBuy, c.strongBuy, palette.positive),
      (l10n.ratingBuy, c.buy, palette.positive.withValues(alpha: 0.65)),
      (l10n.ratingHold, c.hold, palette.accent),
      (l10n.ratingSell, c.sell, palette.negative.withValues(alpha: 0.65)),
      (l10n.ratingStrongSell, c.strongSell, palette.negative),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: Text(l10n.labelConsensus, style: theme.textTheme.bodyMedium)),
            Text(ratingLabel(c.rating), style: theme.textTheme.titleMedium),
          ],
        ),
        Text(
          '${l10n.analystCount(c.total)} · ${l10n.analystPeriod(fmt.date(c.period))}',
          style: theme.textTheme.bodySmall,
        ),
        const SizedBox(height: 12),
        for (final (label, count, color) in bars)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Row(
              children: [
                SizedBox(width: 110, child: Text(label, style: theme.textTheme.bodySmall)),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: c.total == 0 ? 0 : count / c.total,
                      minHeight: 10,
                      color: color,
                      backgroundColor: theme.colorScheme.surfaceContainerHighest,
                    ),
                  ),
                ),
                SizedBox(
                  width: 32,
                  child: Text('$count', textAlign: TextAlign.end, style: theme.textTheme.bodySmall),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

/// Csillag az AppBarban: kedvencekhez ad / onnan elvesz.
class _FavoriteButton extends StatelessWidget {
  const _FavoriteButton({required this.symbol});

  final String symbol;

  @override
  Widget build(BuildContext context) {
    final prefs = AppServices.of(context).preferences;
    final l10n = AppLocalizations.of(context);
    final palette = AppPalette.of(context);
    return ListenableBuilder(
      listenable: prefs,
      builder: (context, _) {
        final fav = prefs.isFavorite(symbol);
        return IconButton(
          tooltip: fav ? l10n.removeFromFavorites : l10n.addToFavorites,
          icon: Icon(fav ? Icons.star_rounded : Icons.star_outline_rounded, color: fav ? palette.accent : null),
          onPressed: () => prefs.toggleFavorite(symbol),
        );
      },
    );
  }
}
