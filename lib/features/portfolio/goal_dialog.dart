import 'package:flutter/material.dart';

import '../../core/util/formatters.dart';
import '../../theme/app_theme.dart';
import '../../l10n/generated/app_localizations.dart';
import 'add_lot_dialog.dart' show parseAmount, plainNumber;

typedef Goal = ({double amount, String currency});

/// Cél-sáv (a portfólió célértéke, a havi osztalékcél): ha nincs cél – vagy más
/// pénznemben van, mert a megjelenítési pénznem azóta változott –, egy „cél
/// beállítása” gomb; különben a [current] érték a célhoz mérve, haladásjelzővel
/// (a teljesült cél zölden). Koppintásra módosítható vagy törölhető.
/// Kulcsok: `[keyPrefix]-set`, `[keyPrefix]-bar`.
class GoalProgress extends StatelessWidget {
  const GoalProgress({
    super.key,
    required this.keyPrefix,
    required this.goal,
    required this.currency,
    required this.current,
    required this.setLabel,
    required this.dialogTitle,
    required this.dialogLabel,
    required this.text,
    required this.onChanged,
    required this.fmt,
    this.padding = const EdgeInsets.only(top: 14, bottom: 2),
  });

  final String keyPrefix;
  final Goal? goal;
  final String currency;
  final double current;
  final String setLabel;
  final String dialogTitle;
  final String dialogLabel;

  /// A sáv feletti szöveg a célhoz mért aránnyal (1 felett teljesült).
  final String Function(double ratio, Goal goal) text;

  /// Új cél, vagy `null` a törléskor.
  final Future<void> Function(Goal? goal) onChanged;
  final Fmt fmt;
  final EdgeInsetsGeometry padding;

  Future<void> _edit(BuildContext context) async {
    final g = goal;
    final result = await showGoalDialog(
      context,
      title: dialogTitle,
      label: dialogLabel,
      currency: currency,
      initial: g?.currency == currency ? g!.amount : null,
      fmt: fmt,
    );
    if (result == null) return;
    await onChanged(result <= 0 ? null : (amount: result, currency: currency));
  }

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final g = goal;
    if (g == null || g.currency != currency) {
      return Align(
        alignment: AlignmentDirectional.centerStart,
        child: TextButton.icon(
          key: ValueKey('$keyPrefix-set'),
          onPressed: () => _edit(context),
          style: TextButton.styleFrom(visualDensity: VisualDensity.compact, padding: EdgeInsets.zero),
          icon: const Icon(Icons.flag_outlined, size: 18),
          label: Text(setLabel),
        ),
      );
    }
    final ratio = current / g.amount;
    // Az akadálymentes érték 0 és 100% között kell legyen (a teljesült cél is 100%).
    final shown = ratio.clamp(0.0, 1.0);
    return InkWell(
      key: ValueKey('$keyPrefix-bar'),
      onTap: () => _edit(context),
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text(ratio, g), style: theme.textTheme.bodySmall?.copyWith(color: p.muted)),
            const SizedBox(height: 6),
            ClipRRect(
              borderRadius: BorderRadius.circular(99),
              child: LinearProgressIndicator(
                value: shown,
                semanticsLabel: dialogTitle,
                semanticsValue: fmt.percent(shown * 100, decimals: 0),
                minHeight: 8,
                color: ratio >= 1 ? p.positive : p.accent,
                backgroundColor: p.border,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Célösszeg megadása (a portfólió célértéke, a havi osztalékcél): a megadott
/// összeg, `0` a cél törlésekor, `null` mégsénél.
Future<double?> showGoalDialog(
  BuildContext context, {
  required String title,
  required String label,
  required String currency,
  required double? initial,
  required Fmt fmt,
}) => showDialog<double>(
  context: context,
  builder: (_) => _GoalDialog(title: title, label: label, currency: currency, initial: initial, fmt: fmt),
);

class _GoalDialog extends StatefulWidget {
  const _GoalDialog({
    required this.title,
    required this.label,
    required this.currency,
    required this.initial,
    required this.fmt,
  });

  final String title;
  final String label;
  final String currency;
  final double? initial;
  final Fmt fmt;

  @override
  State<_GoalDialog> createState() => _GoalDialogState();
}

class _GoalDialogState extends State<_GoalDialog> {
  // Pont tizedesjellel, ezres tagolás nélkül, hogy a [parseDecimal] változatlanul
  // visszaolvassa (a „1,500” különben 1,5 lenne), és a kis havi cél se kerekedjen.
  late final _controller = TextEditingController(text: widget.initial == null ? '' : plainNumber(widget.initial!));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _save() {
    final v = parseAmount(_controller.text, Localizations.localeOf(context).toString());
    if (v != null && v > 0) Navigator.of(context).pop(v);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(widget.title),
      content: TextField(
        key: const ValueKey('goal-amount'),
        controller: _controller,
        autofocus: true,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        decoration: InputDecoration(labelText: widget.label, suffixText: widget.currency),
        onSubmitted: (_) => _save(),
      ),
      actions: [
        if (widget.initial != null)
          TextButton(
            key: const ValueKey('goal-remove'),
            onPressed: () => Navigator.of(context).pop(0.0),
            child: Text(l10n.portfolioGoalRemove),
          ),
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancel)),
        FilledButton(key: const ValueKey('goal-save'), onPressed: _save, child: Text(l10n.alertSave)),
      ],
    );
  }
}
