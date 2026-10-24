import 'package:flutter/material.dart';

import '../../app_services.dart';
import '../../core/util/links.dart';
import '../../l10n/generated/app_localizations.dart';

/// Az AI-funkciók első használata előtt: mit küld az app, kinek (Anthropic), mire – és
/// a felhasználó kifejezett engedélye (App Store 5.1.2(i), Play adatbiztonság). Igaz, ha
/// engedélyezte (most vagy korábban); a döntés a Beállításokban megváltoztatható.
Future<bool> ensureAiConsent(BuildContext context) async {
  final services = AppServices.of(context);
  final prefs = services.preferences;
  if (prefs.aiConsent == true) return true;
  final l10n = AppLocalizations.of(context);
  final privacy = services.legalUri(services.config.privacyUrl, Localizations.localeOf(context));
  final ok = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      key: const ValueKey('ai-consent-dialog'),
      scrollable: true,
      title: Text(l10n.aiConsentTitle),
      content: SizedBox(
        width: 440,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.aiConsentBody),
            if (privacy != null)
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () => openWeb(privacy.toString()),
                  child: Text(l10n.privacyPolicy),
                ),
              ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(false), child: Text(l10n.aiConsentLater)),
        FilledButton(
          key: const ValueKey('ai-consent-allow'),
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(l10n.aiConsentAllow),
        ),
      ],
    ),
  );
  if (ok != true) return false;
  await prefs.setAiConsent(true);
  return true;
}
