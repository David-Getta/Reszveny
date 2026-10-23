import 'package:flutter/material.dart';

import '../l10n/generated/app_localizations.dart';
import '../theme/app_theme.dart';

/// Egy mutató közérthető magyarázata párbeszédben (a ⓘ ikonra koppintva).
Future<void> explainMetric(BuildContext context, String label, String text) => showDialog<void>(
  context: context,
  builder: (context) => AlertDialog(
    scrollable: true,
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

/// Címke, [hint]-tel ⓘ ikonnal: koppintásra a mutató magyarázata; a tooltip
/// a „Mit jelent?”. Ugyanaz a részvény oldal táblázataiban és a kártyák számain;
/// magyarázat nélkül sima szöveg.
class HintedLabel extends StatelessWidget {
  const HintedLabel({super.key, required this.label, this.hint, this.style, this.padding = EdgeInsets.zero});

  final String label;
  final String? hint;
  final TextStyle? style;

  /// A tapintható terület (az ikonos címke körül), pl. a táblázat soraiban.
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final hint = this.hint;
    if (hint == null) {
      return Padding(
        padding: padding,
        child: Text(label, style: style),
      );
    }
    final theme = Theme.of(context);
    return InkWell(
      key: ValueKey('hint-$label'),
      borderRadius: BorderRadius.circular(6),
      onTap: () => explainMetric(context, label, hint),
      child: Padding(
        padding: padding,
        child: Text.rich(
          TextSpan(
            text: '$label ',
            children: [
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Tooltip(
                  message: AppLocalizations.of(context).glossTitle,
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
      ),
    );
  }
}

/// Egy mutató a kártyákon: halvány címke (magyarázattal ⓘ), alatta a vastag
/// érték és opcionális kiegészítő sor.
class MetricFigure extends StatelessWidget {
  const MetricFigure({
    super.key,
    required this.label,
    required this.value,
    this.sub,
    this.color,
    this.subColor,
    this.hint,
  });

  final String label;
  final String value;
  final String? sub;
  final Color? color;

  /// Az alsor színe (alapból mint az értéké, annak híján halvány).
  final Color? subColor;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        HintedLabel(
          label: label,
          hint: hint,
          style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: theme.textTheme.titleSmall?.copyWith(color: color, fontWeight: FontWeight.w700),
        ),
        if (sub != null) Text(sub!, style: theme.textTheme.bodySmall?.copyWith(color: subColor ?? color ?? p.muted)),
      ],
    );
  }
}
