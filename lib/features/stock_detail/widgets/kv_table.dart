import 'package:flutter/material.dart';

/// Címke–érték párok táblázata. A `null` értékű sorok kimaradnak, ha
/// [hideMissing] igaz, különben a [missing] szöveg jelenik meg.
class KvTable extends StatelessWidget {
  const KvTable({
    super.key,
    required this.rows,
    this.hideMissing = false,
    this.missing = 'n/a',
    this.hints = const {},
    this.hintTitle = '',
  });

  final List<(String, String?)> rows;
  final bool hideMissing;
  final String missing;

  /// Címke → közérthető magyarázat: ezeknél a címke mellett ⓘ, koppintásra párbeszéd.
  final Map<String, String> hints;
  final String hintTitle;

  void _explain(BuildContext context, String label, String text) => showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(label),
      content: Text(text),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );

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
              if (hints[label] case final hint?)
                InkWell(
                  key: ValueKey('hint-$label'),
                  borderRadius: BorderRadius.circular(6),
                  onTap: () => _explain(context, label, hint),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text.rich(
                      TextSpan(
                        text: '$label ',
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Tooltip(
                              message: hintTitle,
                              child: Icon(
                                Icons.info_outline_rounded,
                                size: 14,
                                color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                              ),
                            ),
                          ),
                        ],
                      ),
                      style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                    ),
                  ),
                )
              else
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
