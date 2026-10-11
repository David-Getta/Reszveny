import 'dart:convert';
import 'dart:io';

import 'package:auto_updater/auto_updater.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:in_app_update/in_app_update.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../core/config/app_config.dart';
import 'app_version.dart';

/// A frissítés állapota a felületnek.
enum UpdateStatus { idle, checking, upToDate, available, downloading, downloaded, failed }

/// Hogyan jut el a frissítés a felhasználóhoz az adott platformon.
enum UpdateChannel {
  /// macOS / Windows: Sparkle / WinSparkle – háttérben letölt és telepít.
  sparkle,

  /// Android, Play Áruházból telepítve: Play in-app update (rugalmas mód,
  /// háttérben tölt, újraindításkor telepít).
  playFlexible,

  /// iOS / iPadOS és bolti macOS: az áruház frissít automatikusan.
  store,

  /// Csak a JSON-kiáltvány alapján tudunk szólni, hogy van újabb verzió.
  manifestOnly,
}

/// Automatikus frissítés minden platformon, a lehetőségekhez igazodva.
///
/// - macOS, Windows: `auto_updater` (Sparkle / WinSparkle) appcast alapján;
///   óránként ellenőriz, és ha a felhasználó engedi, a háttérben letölti és
///   a következő indításkor telepíti.
/// - Android (Play): `in_app_update` rugalmas mód: háttérben tölt, kész
///   állapotban „Újraindítás” gombbal telepít.
/// - iOS/iPadOS: az App Store frissít; itt csak a verziót mutatjuk, és ha
///   a kiáltvány szerint van újabb, az áruház oldalára viszünk.
/// - Tartalék mindenhol: egy kis JSON-kiáltvány (`UPDATE_MANIFEST_URL`), ami a
///   legújabb verziót és a letöltési / bolti linkeket adja.
class UpdateService extends ChangeNotifier with UpdaterListener {
  UpdateService({required this.config, http.Client? client}) : _client = client ?? http.Client();

  final AppConfig config;
  final http.Client _client;

  UpdateStatus _status = UpdateStatus.idle;
  UpdateStatus get status => _status;

  String? _currentVersion;
  String? get currentVersion => _currentVersion;

  String? _latestVersion;
  String? get latestVersion => _latestVersion;

  /// Letöltési vagy bolti link, ha a frissítést a felhasználónak kell indítania.
  String? _updateUrl;
  String? get updateUrl => _updateUrl;

  bool _autoInstall = true;
  bool _initialized = false;

  UpdateChannel get channel {
    if (kIsWeb) return UpdateChannel.manifestOnly;
    if (Platform.isMacOS || Platform.isWindows) {
      return config.updateAppcastUrl.isNotEmpty ? UpdateChannel.sparkle : UpdateChannel.manifestOnly;
    }
    if (Platform.isAndroid) return UpdateChannel.playFlexible;
    if (Platform.isIOS) return UpdateChannel.store;
    return UpdateChannel.manifestOnly;
  }

  /// Indításkor: verzió beolvasása, csatorna beállítása, első ellenőrzés.
  Future<void> initialize({required bool autoInstall}) async {
    if (_initialized) return;
    _initialized = true;
    _autoInstall = autoInstall;
    try {
      final info = await PackageInfo.fromPlatform();
      _currentVersion = info.buildNumber.isEmpty ? info.version : '${info.version}+${info.buildNumber}';
    } catch (_) {
      _currentVersion = null;
    }
    notifyListeners();

    if (channel == UpdateChannel.sparkle) {
      try {
        autoUpdater.addListener(this);
        await autoUpdater.setFeedURL(config.updateAppcastUrl);
        await autoUpdater.setScheduledCheckInterval(3600);
        if (_autoInstall) await autoUpdater.checkForUpdates(inBackground: true);
      } catch (e) {
        debugPrint('Sparkle beállítása nem sikerült: $e');
      }
      return;
    }
    // A többi csatornán csendben ellenőrzünk induláskor.
    await check(silent: true);
  }

  void setAutoInstall(bool enabled) => _autoInstall = enabled;

  /// Kézi vagy háttér-ellenőrzés. [silent] esetén nem jelez hibát.
  Future<void> check({bool silent = false}) async {
    if (_status == UpdateStatus.checking || _status == UpdateStatus.downloading) return;
    _set(UpdateStatus.checking);
    try {
      switch (channel) {
        case UpdateChannel.sparkle:
          await autoUpdater.checkForUpdates(inBackground: silent);
          // Az eredmény a listener-eken keresztül érkezik.
          return;
        case UpdateChannel.playFlexible:
          await _checkPlay();
          return;
        case UpdateChannel.store:
        case UpdateChannel.manifestOnly:
          await _checkManifest();
          return;
      }
    } catch (e) {
      debugPrint('Frissítés-ellenőrzés nem sikerült: $e');
      _set(silent ? UpdateStatus.idle : UpdateStatus.failed);
    }
  }

  Future<void> _checkPlay() async {
    final info = await InAppUpdate.checkForUpdate();
    if (info.updateAvailability != UpdateAvailability.updateAvailable) {
      if (info.installStatus == InstallStatus.downloaded) {
        _set(UpdateStatus.downloaded);
      } else {
        _set(UpdateStatus.upToDate);
      }
      return;
    }
    _latestVersion = info.availableVersionCode?.toString();
    if (_autoInstall && info.flexibleUpdateAllowed) {
      _set(UpdateStatus.downloading);
      final result = await InAppUpdate.startFlexibleUpdate();
      _set(result == AppUpdateResult.success ? UpdateStatus.downloaded : UpdateStatus.available);
    } else {
      _set(UpdateStatus.available);
    }
  }

  Future<void> _checkManifest() async {
    if (config.updateManifestUrl.isEmpty) {
      _set(UpdateStatus.upToDate);
      return;
    }
    final res = await _client.get(Uri.parse(config.updateManifestUrl)).timeout(const Duration(seconds: 15));
    if (res.statusCode != 200) throw HttpException('HTTP ${res.statusCode}');
    final m = parseManifest(jsonDecode(res.body) as Map<String, dynamic>, platformKey);
    final current = AppVersion.tryParse(_currentVersion);
    final latest = AppVersion.tryParse(m.version);
    if (latest != null && (current == null || latest > current)) {
      _latestVersion = m.version;
      _updateUrl = m.url ?? (config.storeUrl.isNotEmpty ? config.storeUrl : null);
      _set(UpdateStatus.available);
    } else {
      _set(UpdateStatus.upToDate);
    }
  }

  /// A rugalmas Play-frissítés befejezése (újraindítja az appot), vagy a
  /// Sparkle-nél a letöltött frissítés telepítése újraindítással.
  Future<void> installDownloaded() async {
    try {
      if (channel == UpdateChannel.playFlexible) {
        await InAppUpdate.completeFlexibleUpdate();
      } else if (channel == UpdateChannel.sparkle) {
        await autoUpdater.checkForUpdates(inBackground: false);
      }
    } catch (e) {
      debugPrint('Telepítés nem sikerült: $e');
      _set(UpdateStatus.failed);
    }
  }

  static String get platformKey {
    if (kIsWeb) return 'web';
    if (Platform.isMacOS) return 'macos';
    if (Platform.isWindows) return 'windows';
    if (Platform.isAndroid) return 'android';
    if (Platform.isIOS) return 'ios';
    return 'linux';
  }

  /// A kiáltvány: `{"version":"1.2.0+12","notes":"…","urls":{"macos":"…","android":"…"}}`.
  static UpdateManifest parseManifest(Map<String, dynamic> j, String platform) {
    final urls = (j['urls'] as Map?)?.cast<String, dynamic>() ?? const {};
    return UpdateManifest(
      version: (j['version'] as String? ?? '').trim(),
      notes: j['notes'] as String?,
      url: (urls[platform] as String?) ?? (j['url'] as String?),
    );
  }

  void _set(UpdateStatus s) {
    _status = s;
    notifyListeners();
  }

  // ---- Sparkle / WinSparkle események ----
  @override
  void onUpdaterCheckingForUpdate(Appcast? appcast) => _set(UpdateStatus.checking);

  @override
  void onUpdaterUpdateAvailable(AppcastItem? item) {
    _latestVersion = item?.displayVersionString ?? item?.versionString;
    _set(_autoInstall ? UpdateStatus.downloading : UpdateStatus.available);
  }

  @override
  void onUpdaterUpdateNotAvailable(UpdaterError? error) => _set(UpdateStatus.upToDate);

  @override
  void onUpdaterUpdateDownloaded(AppcastItem? item) => _set(UpdateStatus.downloaded);

  @override
  void onUpdaterBeforeQuitForUpdate(AppcastItem? item) {}

  @override
  void onUpdaterError(UpdaterError? error) {
    debugPrint('Frissítési hiba: $error');
    _set(UpdateStatus.failed);
  }
}

class UpdateManifest {
  const UpdateManifest({required this.version, this.notes, this.url});

  final String version;
  final String? notes;
  final String? url;
}
