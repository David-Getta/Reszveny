import 'package:flutter/material.dart';

import '../../core/util/formatters.dart';
import '../../l10n/generated/app_localizations.dart';
import 'add_lot_dialog.dart' show parseDecimal;

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
  late final _controller = TextEditingController(
    text: widget.initial == null ? '' : widget.fmt.number(widget.initial!, decimals: 0).replaceAll(RegExp(r'\s'), ' '),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _save() {
    final v = parseDecimal(_controller.text);
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
