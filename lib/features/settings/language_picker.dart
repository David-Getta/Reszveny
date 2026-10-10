import 'package:flutter/material.dart';

import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';
import '../../theme/app_theme.dart';

/// Nyelvválasztó: egy sor mutatja az aktuális nyelvet; rákattintva nyílik a
/// lista keresőmezővel (a nyelv saját nevére és angol nevére is keres).
/// Visszatérés: a választott nyelv tag-je, `''` a rendszer nyelvéhez, `null`
/// ha a felhasználó mégsem választott.
Future<String?> showLanguagePicker(BuildContext context, {required String? currentTag}) {
  final wide = MediaQuery.sizeOf(context).width >= 700;
  if (wide) {
    return showDialog<String>(
      context: context,
      builder: (context) => Dialog(
        clipBehavior: Clip.antiAlias,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480, maxHeight: 640),
          child: _LanguagePickerBody(currentTag: currentTag),
        ),
      ),
    );
  }
  return showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (context) => SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.85,
      child: _LanguagePickerBody(currentTag: currentTag),
    ),
  );
}

class _LanguagePickerBody extends StatefulWidget {
  const _LanguagePickerBody({required this.currentTag});

  final String? currentTag;

  @override
  State<_LanguagePickerBody> createState() => _LanguagePickerBodyState();
}

class _LanguagePickerBodyState extends State<_LanguagePickerBody> {
  final _controller = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final q = _query.trim().toLowerCase();
    final matches = SupportedLocales.all
        .where((l) => q.isEmpty || l.nativeName.toLowerCase().contains(q) || l.englishName.toLowerCase().contains(q))
        .toList();
    final showSystem = q.isEmpty || l10n.systemLanguage.toLowerCase().contains(q);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: TextField(
            controller: _controller,
            autofocus: true,
            decoration: InputDecoration(
              hintText: l10n.searchLanguages,
              prefixIcon: const Icon(Icons.search_rounded),
              suffixIcon: _query.isEmpty
                  ? null
                  : IconButton(
                      icon: const Icon(Icons.close_rounded),
                      onPressed: () {
                        _controller.clear();
                        setState(() => _query = '');
                      },
                    ),
              isDense: true,
            ),
            onChanged: (v) => setState(() => _query = v),
          ),
        ),
        Expanded(
          child: matches.isEmpty && !showSystem
              ? Center(
                  child: Text(l10n.noLanguageMatch, style: TextStyle(color: p.muted)),
                )
              : ListView(
                  padding: const EdgeInsets.only(bottom: 16),
                  children: [
                    if (showSystem)
                      _LanguageTile(
                        title: l10n.systemLanguage,
                        selected: widget.currentTag == null,
                        onTap: () => Navigator.of(context).pop(''),
                      ),
                    for (final lang in matches)
                      _LanguageTile(
                        title: lang.nativeName,
                        subtitle: lang.englishName == lang.nativeName ? null : lang.englishName,
                        selected: widget.currentTag == lang.tag,
                        onTap: () => Navigator.of(context).pop(lang.tag),
                      ),
                  ],
                ),
        ),
        if (matches.isNotEmpty)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
            child: Text(
              '${matches.length} / ${SupportedLocales.all.length}',
              style: theme.textTheme.bodySmall?.copyWith(color: p.muted),
            ),
          ),
      ],
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({required this.title, required this.selected, required this.onTap, this.subtitle});

  final String title;
  final String? subtitle;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final p = AppPalette.of(context);
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: selected ? FontWeight.w700 : FontWeight.w500)),
      subtitle: subtitle == null ? null : Text(subtitle!),
      trailing: selected ? Icon(Icons.check_rounded, color: p.accent) : null,
      onTap: onTap,
    );
  }
}
