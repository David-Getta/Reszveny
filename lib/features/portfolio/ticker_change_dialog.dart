import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'ticker_change.dart';

/// Tickerváltás (pl. átnevezett cég, FB → META): a részvény tranzakciói,
/// osztalékai, felaprózásai, jegyzete, riasztásai és kedvenc-jelölése az új
/// tickerre kerülnek. Az új tickert adja vissza, ha megtörtént.
Future<String?> showTickerChangeDialog(BuildContext context, {required String symbol}) => showDialog<String>(
  context: context,
  builder: (_) => _TickerChangeDialog(symbol: symbol),
);

class _TickerChangeDialog extends StatefulWidget {
  const _TickerChangeDialog({required this.symbol});

  final String symbol;

  @override
  State<_TickerChangeDialog> createState() => _TickerChangeDialogState();
}

class _TickerChangeDialogState extends State<_TickerChangeDialog> {
  final _ticker = TextEditingController();
  bool _error = false;
  bool _saving = false;

  static final _pattern = RegExp(r'^[A-Z0-9][A-Z0-9.\-:^]{0,14}$');

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final to = _ticker.text.trim().toUpperCase();
    setState(() => _error = !_pattern.hasMatch(to) || to == widget.symbol.toUpperCase());
    if (_error || _saving) return;
    setState(() => _saving = true);
    await changeTicker(AppServices.of(context), widget.symbol, to);
    if (mounted) Navigator.of(context).pop(to);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    return AlertDialog(
      title: Text(l10n.tickerChangeTitle(widget.symbol)),
      content: SizedBox(
        width: 360,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.tickerChangeHint, style: TextStyle(color: p.muted, fontSize: 13)),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('ticker-change-new'),
              controller: _ticker,
              autofocus: true,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(labelText: l10n.tickerChangeNew, errorText: _error ? '' : null),
              onSubmitted: (_) => _submit(),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancel)),
        FilledButton(
          key: const ValueKey('ticker-change-save'),
          onPressed: _saving ? null : _submit,
          child: Text(l10n.lotSave),
        ),
      ],
    );
  }
}
