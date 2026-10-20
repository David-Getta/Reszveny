import 'package:flutter/material.dart';

import '../../../app_services.dart';
import '../../../l10n/error_messages.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../l10n/supported_locales.dart';
import '../../../theme/app_theme.dart';
import '../../../widgets/source_links.dart';
import '../../news/research_store.dart' show ResearchResult;
import 'section_card.dart';

/// „Mi ez a papír?” kártya olyan tickernél, amelyhez nincs cégprofil (ETF, alap,
/// ADR): egy gombbal AI-magyarázat kérhető, ami utánanéz a weben.
class InstrumentCard extends StatelessWidget {
  const InstrumentCard({super.key, required this.symbol, required this.name, this.exchange});

  final String symbol;
  final String name;
  final String? exchange;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return SectionCard(
      key: const ValueKey('instrument-card'),
      title: l10n.instrumentTitle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.instrumentHint, style: theme.textTheme.bodyMedium?.copyWith(color: p.muted)),
          const SizedBox(height: 10),
          FilledButton.tonalIcon(
            key: const ValueKey('instrument-ask'),
            icon: const Icon(Icons.auto_awesome_outlined, size: 18),
            label: Text(l10n.instrumentAsk),
            onPressed: () => showInstrumentExplanation(context, symbol: symbol, name: name, exchange: exchange),
          ),
        ],
      ),
    );
  }
}

/// A magyarázat alsó lapon: a szöveg, a források és a megjegyzés.
Future<void> showInstrumentExplanation(
  BuildContext context, {
  required String symbol,
  required String name,
  String? exchange,
}) {
  final services = AppServices.of(context);
  final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
  final answer = services.instrumentExplainer.explain(
    symbol: symbol,
    name: name,
    language: language,
    exchange: exchange,
  );
  // A hibát a lap FutureBuildere mutatja; addig ne számítson kezeletlennek.
  answer.ignore();
  services.telemetry.track('instrument_explained');
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
            key: const ValueKey('instrument-sheet'),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name.isEmpty || name == symbol ? symbol : '$symbol · $name',
                style: theme.textTheme.labelLarge?.copyWith(color: p.muted),
              ),
              const SizedBox(height: 6),
              Text(l10n.instrumentAsk, style: theme.textTheme.titleMedium),
              const SizedBox(height: 14),
              FutureBuilder<ResearchResult>(
                future: answer,
                builder: (context, snap) {
                  if (snap.hasError) {
                    return Text(errorMessage(l10n, snap.error!), style: TextStyle(color: p.negative));
                  }
                  final r = snap.data;
                  if (r == null) return const LinearProgressIndicator();
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(r.text, style: theme.textTheme.bodyLarge?.copyWith(height: 1.45)),
                      SourceLinks(sources: r.sources, keyPrefix: 'instrument-source'),
                    ],
                  );
                },
              ),
              const SizedBox(height: 14),
              Text(l10n.instrumentNote, style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
            ],
          ),
        ),
      );
    },
  );
}
