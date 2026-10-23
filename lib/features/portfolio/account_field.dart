import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../l10n/generated/app_localizations.dart';
import 'portfolio_store.dart' show PortfolioLot;

/// Számla mező (pl. TBSZ) a tranzakció és az osztalék felvételéhez: a meglévő
/// számlák közül kiegészít; a beírt vagy választott szöveget az [onChanged] kapja.
/// Az Enter a dialógust menti (nem a kiegészítés első javaslatát választja).
class AccountField extends StatelessWidget {
  const AccountField({
    super.key,
    required this.fieldKey,
    required this.initial,
    required this.onChanged,
    required this.onSubmitted,
  });

  final Key fieldKey;
  final String? initial;
  final ValueChanged<String> onChanged;
  final VoidCallback onSubmitted;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final accounts = AppServices.of(context).portfolio.accounts;
    return Autocomplete<String>(
      initialValue: TextEditingValue(text: initial ?? ''),
      optionsBuilder: (v) {
        final q = v.text.trim().toLowerCase();
        return accounts.where((a) => a.toLowerCase().contains(q));
      },
      onSelected: onChanged,
      fieldViewBuilder: (context, controller, focusNode, _) => TextField(
        key: fieldKey,
        controller: controller,
        focusNode: focusNode,
        maxLength: PortfolioLot.maxAccountName,
        decoration: InputDecoration(
          labelText: l10n.portfolioAccount,
          hintText: l10n.portfolioAccountHint,
          counterText: '',
        ),
        onChanged: onChanged,
        onSubmitted: (_) => onSubmitted(),
      ),
    );
  }
}
