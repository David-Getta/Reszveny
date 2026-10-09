import 'package:flutter/material.dart';

/// Címke–érték párok táblázata. A `null` értékű sorok kimaradnak, ha
/// [hideMissing] igaz, különben a [missing] szöveg jelenik meg.
class KvTable extends StatelessWidget {
  const KvTable({super.key, required this.rows, this.hideMissing = false, this.missing = 'n/a'});

  final List<(String, String?)> rows;
  final bool hideMissing;
  final String missing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final visible = hideMissing ? rows.where((r) => r.$2 != null).toList() : rows;
    return Table(
      columnWidths: const {0: FlexColumnWidth(1.2), 1: FlexColumnWidth(1)},
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        for (final (label, value) in visible)
          TableRow(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: theme.dividerColor.withValues(alpha: 0.4))),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  label,
                  style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  value ?? missing,
                  textAlign: TextAlign.end,
                  style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
