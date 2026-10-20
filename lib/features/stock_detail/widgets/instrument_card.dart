import 'package:flutter/material.dart';

import '../../../app_services.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../l10n/supported_locales.dart';
import '../../../theme/app_theme.dart';
import '../../../widgets/research_sheet.dart';
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
  final l10n = AppLocalizations.of(context);
  final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
  final answer = services.instrumentExplainer.explain(
    symbol: symbol,
    name: name,
    language: language,
    exchange: exchange,
  );
  services.telemetry.track('instrument_explained');
  return showResearchSheet(
    context,
    sheetKey: const ValueKey('instrument-sheet'),
    eyebrow: name.isEmpty || name == symbol ? symbol : '$symbol · $name',
    title: l10n.instrumentAsk,
    answer: answer,
    note: l10n.instrumentNote,
    sourceKeyPrefix: 'instrument-source',
    symbol: symbol,
  );
}
