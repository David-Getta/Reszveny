import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../l10n/supported_locales.dart';

/// Beállítások: nyelvválasztás (a nyelv saját nevén) és információk.
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final services = AppServices.of(context);
    final controller = services.locale;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settings)),
      body: ListenableBuilder(
        listenable: controller,
        builder: (context, _) {
          final current = controller.override;
          return ListView(
            children: [
              ListTile(title: Text(l10n.language, style: Theme.of(context).textTheme.titleMedium)),
              RadioGroup<String?>(
                groupValue: current?.toLanguageTag(),
                onChanged: (tag) => controller.setLocale(tag == null ? null : SupportedLocales.byTag(tag)?.locale),
                child: Column(
                  children: [
                    RadioListTile<String?>(value: null, title: Text(l10n.systemLanguage)),
                    for (final lang in SupportedLocales.all)
                      RadioListTile<String?>(
                        value: lang.tag,
                        title: Text(lang.nativeName),
                        subtitle: lang.englishName == lang.nativeName ? null : Text(lang.englishName),
                      ),
                  ],
                ),
              ),
              const Divider(),
              ListTile(title: Text(l10n.about, style: Theme.of(context).textTheme.titleMedium)),
              ListTile(
                leading: const Icon(Icons.storage_outlined),
                title: Text(l10n.dataSource(services.marketData.name)),
              ),
              ListTile(
                leading: const Icon(Icons.visibility_outlined),
                title: Text(l10n.recognizerSource(services.recognizer.name)),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(l10n.disclaimer, style: Theme.of(context).textTheme.bodySmall),
              ),
            ],
          );
        },
      ),
    );
  }
}
