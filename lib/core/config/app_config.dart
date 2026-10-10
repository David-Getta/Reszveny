/// Központi konfiguráció. A kulcsok fordítási időben, `--dart-define`-nal
/// érkeznek, így soha nem kerülnek a forráskódba:
///
/// ```
/// flutter run --dart-define=ANTHROPIC_API_KEY=... --dart-define=FINNHUB_API_KEY=...
/// ```
///
/// Éles kiadásban a kulcsokat a saját backend (`server/`) tartja; akkor csak a
/// `BACKEND_URL`-t kell megadni, a kliens minden hívást oda irányít (kvóta- és
/// vásárlás-ellenőrzéssel), és a kulcsokra nincs szükség:
///
/// ```
/// flutter run --dart-define=BACKEND_URL=https://api.stocklens.app
/// ```
class AppConfig {
  const AppConfig({
    this.backendUrl = const String.fromEnvironment('BACKEND_URL'),
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

  /// A StockLens backend címe (üres: a kliens közvetlenül, saját kulcsokkal hív).
  final String backendUrl;

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

  /// Backend-módban fut az app: a kulcsokat és a kvótát a szerver kezeli.
  bool get hasBackend => backendUrl.isNotEmpty;

  /// A backend címe záró perjel nélkül.
  String get backend => backendUrl.endsWith('/') ? backendUrl.substring(0, backendUrl.length - 1) : backendUrl;

  bool get hasAnthropicKey => hasBackend || anthropicApiKey.isNotEmpty;
  bool get hasFinnhubKey => hasBackend || finnhubApiKey.isNotEmpty;

  /// Az Anthropic-hívások alapcíme: a backend továbbítója vagy az API maga.
  String get effectiveAnthropicBaseUrl => hasBackend ? '$backend/v1/anthropic' : anthropicBaseUrl;

  /// A Finnhub-hívások alapcíme: a backend továbbítója vagy az API maga.
  String get effectiveFinnhubBaseUrl => hasBackend ? '$backend/v1/market' : finnhubBaseUrl;

  /// Az elemzés végpontja. A backend `/v1/analyze`-e kvótát ellenőriz és levon.
  String get analyzeEndpoint => hasBackend ? '$backend/v1/analyze' : '$anthropicBaseUrl/v1/messages';

  /// Kulcsok nélkül az app demó módban fut: beégetett mintaadatokkal.
  bool get isDemoMode => !hasFinnhubKey;
}
