import 'package:flutter/material.dart';

/// Egy mutató közérthető magyarázata párbeszédben (a ⓘ ikonra koppintva).
Future<void> explainMetric(BuildContext context, String label, String text) => showDialog<void>(
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

/// Címke ⓘ ikonnal: koppintásra a mutató magyarázata; a [hintTitle] a tooltip
/// („Mit jelent?”). Ugyanaz a részvény oldal táblázataiban és a kártyák
/// számain.
class HintedLabel extends StatelessWidget {
  const HintedLabel({super.key, required this.label, required this.hint, required this.hintTitle, this.style});

  final String label;
  final String hint;
  final String hintTitle;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      key: ValueKey('hint-$label'),
      borderRadius: BorderRadius.circular(6),
      onTap: () => explainMetric(context, label, hint),
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
        style: style,
      ),
    );
  }
}
