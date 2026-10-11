import '../app_services.dart';
import '../core/desktop/desktop_integration.dart';
import '../l10n/generated/app_localizations.dart';

/// „Nyomd le bárhol a … billentyűkombinációt” – macOS-en, ha be van kapcsolva,
/// a dupla Option-nyomást is megemlíti.
String hotkeyHintText(AppLocalizations l10n, AppServices services) {
  final shortcut = services.desktop.shortcutLabelFor(space: l10n.keySpace);
  final doubleOption = DesktopIntegration.supportsDoubleOption && services.preferences.doubleOption;
  return doubleOption ? l10n.hotkeyHintDoubleOption(shortcut) : l10n.hotkeyHint(shortcut);
}
