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
  });

  final String anthropicApiKey;
  final String anthropicBaseUrl;
  final String anthropicModel;
  final String finnhubApiKey;
  final String finnhubBaseUrl;

  bool get hasAnthropicKey => anthropicApiKey.isNotEmpty;
  bool get hasFinnhubKey => finnhubApiKey.isNotEmpty;

  /// Kulcsok nélkül az app demó módban fut: beégetett mintaadatokkal.
  bool get isDemoMode => !hasFinnhubKey;
}
