/// Központi konfiguráció. A kulcsok fordítási időben, `--dart-define`-nal
/// érkeznek, így soha nem kerülnek a forráskódba:
///
/// ```
/// flutter run --dart-define=ANTHROPIC_API_KEY=... --dart-define=FINNHUB_API_KEY=...
/// ```
///
/// Éles kiadásban a kulcsokat egy saját backend-proxy tartja; akkor elég az
/// [anthropicBaseUrl] / [finnhubBaseUrl] értékét a proxyra irányítani.
class AppConfig {
  const AppConfig({
    this.anthropicApiKey = const String.fromEnvironment('ANTHROPIC_API_KEY'),
    this.anthropicBaseUrl = const String.fromEnvironment(
      'ANTHROPIC_BASE_URL',
      defaultValue: 'https://api.anthropic.com',
    ),
    this.anthropicModel = const String.fromEnvironment('ANTHROPIC_MODEL', defaultValue: 'claude-opus-5-5'),
    this.finnhubApiKey = const String.fromEnvironment('FINNHUB_API_KEY'),
    this.finnhubBaseUrl = const String.fromEnvironment('FINNHUB_BASE_URL', defaultValue: 'https://finnhub.io/api/v1'),
    this.aiEffort = const String.fromEnvironment('ANTHROPIC_REPORT_EFFORT', defaultValue: 'high'),
    this.aiWebSearch = const bool.fromEnvironment('ANTHROPIC_WEB_SEARCH', defaultValue: true),
    this.updateAppcastUrl = const String.fromEnvironment('UPDATE_APPCAST_URL'),
    this.updateManifestUrl = const String.fromEnvironment('UPDATE_MANIFEST_URL'),
    this.storeUrl = const String.fromEnvironment('STORE_URL'),
  });

  final String anthropicApiKey;
  final String anthropicBaseUrl;
  final String anthropicModel;
  final String finnhubApiKey;
  final String finnhubBaseUrl;

  /// Az AI-elemzés alapossága (`low`…`max`).
  final String aiEffort;

  /// Kereshet-e a modell a weben friss hírek után az elemzéshez.
  final bool aiWebSearch;

  /// Sparkle / WinSparkle appcast (macOS, Windows automatikus frissítés).
  final String updateAppcastUrl;

  /// Egyszerű JSON-kiáltvány a legújabb verzióról (minden platform, tartalék).
  final String updateManifestUrl;

  /// Bolti oldal (App Store / Play) – ide visz az „Update” gomb, ha nincs más.
  final String storeUrl;

  bool get hasAnthropicKey => anthropicApiKey.isNotEmpty;
  bool get hasFinnhubKey => finnhubApiKey.isNotEmpty;

  /// Kulcsok nélkül az app demó módban fut: beégetett mintaadatokkal.
  bool get isDemoMode => !hasFinnhubKey;
}
