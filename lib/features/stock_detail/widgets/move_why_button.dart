import 'package:flutter/material.dart';

import '../../analysis/ai_consent.dart';
import '../../../app_services.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../l10n/supported_locales.dart';
import '../../../widgets/research_sheet.dart';
import '../../news/move_explainer.dart';

/// „Miért mozog ma?” gomb a részvény fejlécében, ha a napi mozgás legalább
/// [MoveExplainer.minMovePercent]; koppintásra AI-magyarázat a mai hírekből.
class MoveWhyButton extends StatelessWidget {
  const MoveWhyButton({super.key, required this.symbol, required this.name, required this.changePercent});

  final String symbol;
  final String name;
  final double changePercent;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return TextButton.icon(
      key: const ValueKey('move-why'),
      style: TextButton.styleFrom(
        visualDensity: VisualDensity.compact,
        padding: const EdgeInsets.symmetric(horizontal: 8),
      ),
      icon: const Icon(Icons.auto_awesome_outlined, size: 16),
      label: Text(l10n.moveWhyButton),
      onPressed: () => showMoveExplanation(context, symbol: symbol, name: name, changePercent: changePercent),
    );
  }
}

/// A magyarázat alsó lapon: a szöveg, a források, a megjegyzés, és kérdezni is lehet róla.
Future<void> showMoveExplanation(
  BuildContext context, {
  required String symbol,
  required String name,
  required double changePercent,
}) async {
  if (!await ensureAiConsent(context) || !context.mounted) return;
  final services = AppServices.of(context);
  final l10n = AppLocalizations.of(context);
  final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
  final language = SupportedLocales.languageFor(Localizations.localeOf(context)).englishName;
  final answer = services.moveExplainer.explain(
    symbol: symbol,
    name: name,
    changePercent: changePercent,
    language: language,
  );
  services.telemetry.track('move_explained');
  return showResearchSheet(
    context,
    sheetKey: const ValueKey('move-why-sheet'),
    eyebrow: '$symbol · $name',
    title: l10n.moveWhyTitle(fmt.percent(changePercent, withSign: true)),
    answer: answer,
    note: l10n.moveWhyNote,
    sourceKeyPrefix: 'move-source',
    symbol: symbol,
  );
}
