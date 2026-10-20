import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/formatters.dart';
import '../../l10n/error_messages.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';
import '../../widgets/research_sheet.dart' show ResearchFollowUpPanel;

/// „A nap a részvényeiddel” kártya a kezdőképernyőn: gombnyomásra rövid
/// AI-összefoglaló a figyelt részvények mai mozgásáról és híreiről; a mai
/// összefoglaló frissíthető. Csak ha van figyelt részvény.
class DailyBriefCard extends StatefulWidget {
  const DailyBriefCard({super.key});

  @override
  State<DailyBriefCard> createState() => _DailyBriefCardState();
}

class _DailyBriefCardState extends State<DailyBriefCard> {
  Object? _error;
  bool _started = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_started) return;
    _started = true;
    AppServices.of(context).brief.load();
  }

  Future<void> _run() async {
    final services = AppServices.of(context);
    final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
    setState(() => _error = null);
    try {
      await services.brief.generate(symbols: services.news.watched, language: language);
      services.telemetry.track('daily_brief');
    } catch (e) {
      if (mounted) setState(() => _error = e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final services = AppServices.of(context);
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return ListenableBuilder(
      listenable: Listenable.merge([services.brief, services.preferences, services.portfolio]),
      builder: (context, _) {
        if (services.news.watched.isEmpty) return const SizedBox.shrink();
        final brief = services.brief;
        final last = brief.isToday ? brief.last : null;
        return Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Card(
            key: const ValueKey('daily-brief'),
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.wb_sunny_outlined, size: 20, color: p.accent),
                      const SizedBox(width: 8),
                      Expanded(child: Text(l10n.briefTitle, style: theme.textTheme.titleMedium)),
                      if (last != null && !brief.busy)
                        TextButton(
                          key: const ValueKey('daily-brief-refresh'),
                          onPressed: _run,
                          style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                          child: Text(l10n.briefRefresh),
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  if (brief.busy)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: LinearProgressIndicator(minHeight: 3),
                    )
                  else if (last != null) ...[
                    SelectableText(last.text, style: theme.textTheme.bodyMedium?.copyWith(height: 1.45)),
                    const SizedBox(height: 6),
                    Text(fmt.dateTime(last.at), style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                    // Kérdés az összefoglalóról („miért esett az NVDA?”), a napi kérdéskeretből.
                    if (services.config.hasAnthropicKey) ...[
                      const SizedBox(height: 10),
                      ResearchFollowUpPanel(
                        key: const ValueKey('daily-brief-followup'),
                        note: last.text,
                        subject: l10n.briefTitle,
                        sourceKeyPrefix: 'daily-brief-source',
                      ),
                    ],
                  ] else ...[
                    Text(l10n.briefHint, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
                    const SizedBox(height: 10),
                    FilledButton.tonalIcon(
                      key: const ValueKey('daily-brief-run'),
                      onPressed: _run,
                      icon: const Icon(Icons.auto_awesome_rounded, size: 18),
                      label: Text(l10n.briefButton),
                    ),
                  ],
                  if (_error case final e?) ...[
                    const SizedBox(height: 8),
                    Text(errorMessage(l10n, e), style: TextStyle(color: p.negative)),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
