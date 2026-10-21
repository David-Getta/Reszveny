import 'package:flutter/material.dart';

import '../../l10n/generated/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../widgets/desktop_chrome.dart';
import '../stock_detail/metric_glossary.dart';

/// Fogalomtár: az app összes mutatójának közérthető magyarázata egy kereshető
/// listában (ugyanazok, mint a ⓘ-ek a részvény oldalán), a Beállításokból.
class GlossaryPage extends StatefulWidget {
  const GlossaryPage({super.key});

  @override
  State<GlossaryPage> createState() => _GlossaryPageState();
}

class _GlossaryPageState extends State<GlossaryPage> {
  final _query = TextEditingController();

  @override
  void dispose() {
    _query.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final q = _query.text.trim().toLowerCase();
    final entries = metricGlossary(l10n).entries.toList()
      ..sort((a, b) => a.key.toLowerCase().compareTo(b.key.toLowerCase()));
    final shown = [
      for (final e in entries)
        if (q.isEmpty || e.key.toLowerCase().contains(q) || e.value.toLowerCase().contains(q)) e,
    ];
    return Scaffold(
      appBar: desktopAppBar(
        context,
        title: Text(l10n.glossaryPageTitle),
        hasSidebar: MediaQuery.sizeOf(context).width >= 860,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 760),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                child: TextField(
                  key: const ValueKey('glossary-search'),
                  controller: _query,
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    hintText: l10n.glossarySearchHint,
                    prefixIcon: const Icon(Icons.search_rounded),
                    isDense: true,
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
                  itemCount: shown.length,
                  separatorBuilder: (_, _) => Divider(height: 1, color: p.border),
                  itemBuilder: (context, i) {
                    final e = shown[i];
                    return Padding(
                      key: ValueKey('glossary-${e.key}'),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e.key, style: theme.textTheme.titleSmall),
                          const SizedBox(height: 4),
                          Text(e.value, style: theme.textTheme.bodyMedium?.copyWith(color: p.muted, height: 1.4)),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
