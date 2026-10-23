import 'package:flutter/material.dart';

import '../core/util/formatters.dart';
import '../l10n/generated/app_localizations.dart';
import '../theme/app_theme.dart';
import 'fit_row.dart';

/// Dátumválasztó sor a dialógusokban: ikon, halvány címke és a kiválasztott
/// nap; koppintásra naptár 1980-tól ma-ig (jövőbeli nap nem választható).
/// A [date] `null` lehet (dátum nélkül rögzített tétel javítása): ilyenkor
/// „n.a.” látszik, és a naptár a mai napon nyílik.
class DatePickerRow extends StatelessWidget {
  const DatePickerRow({super.key, required this.label, required this.date, required this.onChanged});

  final String label;
  final DateTime? date;
  final ValueChanged<DateTime> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final fmt = Fmt(Localizations.localeOf(context).toString(), na: l10n.notAvailable);
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () async {
        final first = DateTime(1980), last = DateTime.now();
        // A tartományon kívüli tárolt nap (pl. importált jövőbeli) se akassza meg a naptárt.
        final initial = switch (date ?? last) {
          final d when d.isBefore(first) => first,
          final d when d.isAfter(last) => last,
          final d => d,
        };
        final picked = await showDatePicker(context: context, initialDate: initial, firstDate: first, lastDate: last);
        if (picked != null) onChanged(picked);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: FitRow(
          lead: Row(
            children: [
              Icon(Icons.event_outlined, size: 18, color: p.muted),
              const SizedBox(width: 8),
              Expanded(
                child: Text(label, style: TextStyle(color: p.muted)),
              ),
            ],
          ),
          trailing: Text(fmt.date(date), style: const TextStyle(fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
