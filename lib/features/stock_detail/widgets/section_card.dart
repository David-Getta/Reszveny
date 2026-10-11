import 'package:flutter/material.dart';

/// Egy szekció a részletes nézetben: cím + tartalom, egységes kártyában.
class SectionCard extends StatelessWidget {
  const SectionCard({super.key, required this.title, required this.child, this.trailing});

  final String title;
  final Widget child;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // A jobb oldali kiegészítő (pl. frissítés ideje, gomb) legfeljebb a sor
            // 60 %-át foglalhatja; keskeny képernyőn tördelődik, nem lóg ki.
            LayoutBuilder(
              builder: (context, c) => Row(
                children: [
                  Expanded(child: Text(title, style: theme.textTheme.titleMedium)),
                  if (trailing != null)
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: c.maxWidth * 0.6),
                      child: trailing,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }
}

/// Hibás szekció tartalma.
class SectionError extends StatelessWidget {
  const SectionError(this.message, {super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(Icons.error_outline, color: theme.colorScheme.error, size: 20),
        const SizedBox(width: 8),
        Expanded(
          child: Text(message, style: TextStyle(color: theme.colorScheme.error)),
        ),
      ],
    );
  }
}
