import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/errors.dart';
import '../../core/models/stock_report.dart';
import '../../core/util/formatters.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../billing/paywall_page.dart';
import '../stock_detail/widgets/ask_sheet.dart';
import '../stock_detail/widgets/section_card.dart';
import 'portfolio_history.dart' show PortfolioHistoryData, benchmarkOf, loadPortfolioHistory;
import 'portfolio_review.dart';
import 'dividend_forecast.dart' show convertedDividends, dividendsInLast12Months, expectedDividends;
import 'portfolio_valuation.dart';

/// „AI-portfólióelemzés” kártya: indítás, folyamatjelző, az eredmény szekciói
/// és az újraelemzés (egy elemzésnyi keretért).
class PortfolioReviewCard extends StatefulWidget {
  const PortfolioReviewCard({super.key, required this.snapshot});

  final PortfolioSnapshot snapshot;

  @override
  State<PortfolioReviewCard> createState() => _PortfolioReviewCardState();
}

class _PortfolioReviewCardState extends State<PortfolioReviewCard> {
  StockReport? _report;
  bool _loading = false;
  Object? _error;

  /// A mentett elemzés csak az app nyelvén látszik (nyelvváltáskor újra betöltve).
  String? _language;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    if (language == _language) return;
    _language = language;
    PortfolioReviewer.loadLast().then((r) {
      if (!mounted || _language != language) return;
      final shown = r != null && (r.language == null || r.language == language) ? r : null;
      if (shown != _report) setState(() => _report = shown);
    });
  }

  Future<void> _run() async {
    final services = AppServices.of(context);
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    setState(() {
      _loading = true;
      _error = null;
    });
    services.telemetry.track('portfolio_review');
    try {
      // Az értékalakulás adatai (a gyorsítótárazott idősorokból); hiba esetén nélkülük.
      final history = await loadPortfolioHistory(
        services,
        widget.snapshot,
      ).then<PortfolioHistoryData?>((h) => h, onError: (Object _) => null);
      final r = await services.portfolioReviewer.review(
        widget.snapshot,
        language: language,
        thisYear: history?.ytd,
        benchmark: history == null ? null : benchmarkOf(history.symbol).name,
        maxDrawdown: history?.drawdown?.percent,
        dividendsReceived: await _dividendsReceived(services),
        // Csak a még nem esedékes kifizetések (a türelmi időben lévő, lejárt nem „várható”).
        expectedDividends: expectedDividends(
          services.portfolio.dividends,
          services.portfolio.heldSymbols,
          now: DateTime.now(),
          grace: Duration.zero,
        ),
      );
      if (mounted) setState(() => _report = r);
      // A keret a szerveren fogyott: a kliens átveszi.
      await services.syncEntitlements();
    } catch (e) {
      if (mounted) setState(() => _error = e);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  static bool _isQuota(Object? e) =>
      e is AppException &&
      const {
        AppErrorCode.quotaExceeded,
        AppErrorCode.trialExpired,
        AppErrorCode.noPlan,
        AppErrorCode.notEnoughCredits,
      }.contains(e.code);

  /// Az elmúlt 12 hónapban kapott osztalék a portfólió pénznemében (a mai
  /// árfolyamon); amelyikhez nincs árfolyam, kimarad. `null`, ha nincs tétel.
  /// Árfolyamot csak az ablakba eső tételek pénznemeihez kér.
  Future<double?> _dividendsReceived(AppServices services) => convertedDividends(
    services.fx,
    dividendsInLast12Months(services.portfolio.dividends, now: DateTime.now()),
    widget.snapshot.currency,
  );

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    final r = _report;
    return SectionCard(
      key: const ValueKey('portfolio-review'),
      title: l10n.portfolioReviewTitle,
      collapseKey: 'portfolio-review',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (r == null && !_loading)
            Text(l10n.portfolioReviewIntro, style: theme.textTheme.bodyMedium?.copyWith(color: p.muted)),
          if (_loading)
            Row(
              children: [
                const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2.2)),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(l10n.portfolioReviewWorking, style: TextStyle(color: p.muted)),
                ),
              ],
            ),
          if (r != null && !_loading) ...[
            if (r.headline.isNotEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: p.accent.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: p.accent.withValues(alpha: 0.35)),
                ),
                child: Text(r.headline, style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600)),
              ),
            for (final s in r.sections) ...[
              const SizedBox(height: 14),
              Text(s.title, style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(height: 6),
              for (final para in s.paragraphs)
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(para, style: theme.textTheme.bodyMedium?.copyWith(height: 1.45)),
                ),
              for (final b in s.bullets)
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 7, right: 8),
                        child: Icon(Icons.circle, size: 6, color: p.accent),
                      ),
                      Expanded(child: Text(b, style: theme.textTheme.bodyMedium?.copyWith(height: 1.45))),
                    ],
                  ),
                ),
            ],
            const SizedBox(height: 10),
            Text(
              '${l10n.aiGeneratedAt(fmt.dateTime(r.generatedAt))} · ${l10n.aiDisclaimer}',
              style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
            ),
            // Kérdések a portfólió-elemzésről (a napi kérdéskeretből).
            if (!_loading) ...[
              const SizedBox(height: 10),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: AskAnalysisButton(report: r, companyName: '', title: l10n.portfolioAskTitle),
              ),
            ],
          ],
          if (_error case final e?) ...[const SizedBox(height: 10), SectionError(errorMessage(l10n, e))],
          if (!_loading) ...[
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                FilledButton.icon(
                  key: const ValueKey('portfolio-review-run'),
                  onPressed: _run,
                  icon: const Icon(Icons.auto_awesome_rounded, size: 18),
                  label: Text(r == null ? l10n.portfolioReviewButton : l10n.portfolioReviewAgain),
                ),
                if (_isQuota(_error))
                  OutlinedButton.icon(
                    onPressed: () => PaywallPage.open(context),
                    icon: const Icon(Icons.workspace_premium_outlined, size: 18),
                    label: Text(l10n.viewPlans),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
