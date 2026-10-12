import 'package:flutter/material.dart';

/// Melyik kártya vagy elemzés-rész van összecsukva. Az app futása alatt
/// megmarad, így egy összecsukott rész (pl. „Hírek”) a többi részvénynél is
/// összecsukva látszik.
class CollapseStore extends ChangeNotifier {
  CollapseStore._();

  static final instance = CollapseStore._();

  final Set<String> _collapsed = {};

  bool isCollapsed(String key) => _collapsed.contains(key);

  void toggle(String key) {
    if (!_collapsed.remove(key)) _collapsed.add(key);
    notifyListeners();
  }

  @visibleForTesting
  void reset() {
    _collapsed.clear();
    notifyListeners();
  }
}

/// Kattintható fejléc lefelé / jobbra mutató nyíllal. A nyíl felolvasott
/// címkéje a Material beépített (minden nyelvre lefordított) szövege.
class CollapsibleHeader extends StatelessWidget {
  const CollapsibleHeader({
    super.key,
    required this.collapsed,
    required this.onTap,
    required this.child,
    this.trailing,
  });

  final bool collapsed;
  final VoidCallback onTap;
  final Widget child;

  /// A cím és a nyíl közé kerülő kiegészítő (pl. frissítés ideje, gomb); a nyíl
  /// így minden kártyán a sor jobb szélén van.
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final m = MaterialLocalizations.of(context);
    final color = Theme.of(context).colorScheme.onSurfaceVariant;
    return Semantics(
      button: true,
      expanded: !collapsed,
      onTapHint: collapsed ? m.expandedIconTapHint : m.collapsedIconTapHint,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Row(
            children: [
              Expanded(child: child),
              if (trailing case final t?) ...[const SizedBox(width: 8), t, const SizedBox(width: 4)],
              AnimatedRotation(
                turns: collapsed ? -0.25 : 0,
                duration: const Duration(milliseconds: 180),
                child: Icon(Icons.expand_more_rounded, size: 22, color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A tartalom animált összecsukása (a magasság simán változik).
class CollapsibleBody extends StatelessWidget {
  const CollapsibleBody({super.key, required this.collapsed, required this.child});

  final bool collapsed;
  final Widget child;

  @override
  Widget build(BuildContext context) => ClipRect(
    child: AnimatedSize(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOutCubic,
      alignment: Alignment.topCenter,
      child: collapsed ? const SizedBox(width: double.infinity) : child,
    ),
  );
}
