import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/date_picker_row.dart';
import 'portfolio_store.dart' show SplitRecord;

/// Részvényfelaprózás rögzítése egy részvényhez: arány (új : régi, pl. 10:1,
/// összevonásnál 1:10) és a nap. A nap előtti tranzakciók igazítódnak.
Future<bool> showSplitDialog(BuildContext context, {required String symbol}) async {
  final added = await showDialog<bool>(
    context: context,
    builder: (_) => _SplitDialog(symbol: symbol),
  );
  return added ?? false;
}

/// „10:1”, „10/1”, „10 : 1” → (új, régi); hibás vagy egyenlő aránynál `null`.
(int to, int from)? parseSplitRatio(String text) {
  final m = RegExp(r'^\s*(\d{1,4})\s*[:/]\s*(\d{1,4})\s*$').firstMatch(text);
  if (m == null) return null;
  final to = int.parse(m[1]!), from = int.parse(m[2]!);
  return SplitRecord.validRatio(from, to) ? (to, from) : null;
}

class _SplitDialog extends StatefulWidget {
  const _SplitDialog({required this.symbol});

  final String symbol;

  @override
  State<_SplitDialog> createState() => _SplitDialogState();
}

class _SplitDialogState extends State<_SplitDialog> {
  final _ratio = TextEditingController();
  DateTime _date = DateTime.now();
  bool _ratioError = false;

  @override
  void dispose() {
    _ratio.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final ratio = parseSplitRatio(_ratio.text);
    setState(() => _ratioError = ratio == null);
    if (ratio == null) return;
    await AppServices.of(context).portfolio.addSplit(symbol: widget.symbol, from: ratio.$2, to: ratio.$1, date: _date);
    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return AlertDialog(
      scrollable: true,
      title: Text(l10n.portfolioSplitTitle(widget.symbol)),
      content: SizedBox(
        width: 360,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.portfolioSplitHint, style: TextStyle(color: p.muted, fontSize: 13)),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('split-ratio'),
              controller: _ratio,
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: l10n.portfolioSplitRatio,
                hintText: '10:1',
                errorText: _ratioError ? l10n.portfolioSplitRatioError : null,
              ),
              onSubmitted: (_) => _submit(),
            ),
            const SizedBox(height: 12),
            DatePickerRow(
              key: const ValueKey('split-date'),
              label: l10n.portfolioSplitDate,
              date: _date,
              onChanged: (d) => setState(() => _date = d),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(false), child: Text(l10n.cancel)),
        FilledButton(key: const ValueKey('split-submit'), onPressed: _submit, child: Text(l10n.portfolioAdd)),
      ],
    );
  }
}
