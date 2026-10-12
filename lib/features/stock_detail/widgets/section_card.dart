import 'package:flutter/material.dart';

import '../../../widgets/collapsible.dart';

/// Egy szekció a részletes nézetben: cím + tartalom, egységes kártyában. A
/// fejlécre kattintva összecsukható (az állapot a [collapseKey], ennek híján a
/// cím szerint marad meg, így más részvénynél is ugyanúgy látszik).
class SectionCard extends StatelessWidget {
  const SectionCard({super.key, required this.title, required this.child, this.trailing, this.collapseKey});

  final String title;
  final Widget child;
  final Widget? trailing;
  final String? collapseKey;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final store = CollapseStore.instance;
    final key = 'card:${collapseKey ?? title}';
    return ListenableBuilder(
      listenable: store,
      builder: (context, _) {
        final collapsed = store.isCollapsed(key);
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // A jobb oldali kiegészítő (pl. frissítés ideje, gomb) legfeljebb a sor
                // 60 %-át foglalhatja; keskeny képernyőn tördelődik, nem lóg ki.
                // Összecsukva csak a cím és a nyíl látszik.
                LayoutBuilder(
                  builder: (context, c) => CollapsibleHeader(
                    key: ValueKey('collapse-$key'),
                    collapsed: collapsed,
                    onTap: () => store.toggle(key),
                    trailing: trailing == null || collapsed
                        ? null
                        : ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: c.maxWidth * 0.6),
                            child: trailing,
                          ),
                    child: Text(title, style: theme.textTheme.titleMedium),
                  ),
                ),
                CollapsibleBody(
                  collapsed: collapsed,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [const SizedBox(height: 12), child],
                  ),
                ),
              ],
            ),
          ),
        );
      },
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
