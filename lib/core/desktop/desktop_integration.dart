import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:launch_at_startup/launch_at_startup.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

/// Asztali (macOS, Windows) integráció:
/// - ablak: rejtett címsor, minimális méret, középre igazítás;
/// - globális gyorsbillentyű (⌥ Space / Ctrl+Alt+Space), ami bárhonnan
///   előhívja a lebegő gyorskereső sávot – ahogy a Claude macOS-en;
/// - menüsor- / tálcaikon menüvel.
///
/// Mobilon minden hívás csendben kimarad ([isSupported] hamis).
class DesktopIntegration extends ChangeNotifier with WindowListener, TrayListener {
  DesktopIntegration();

  static bool get isSupported => !kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux);

  /// A normál (teljes) ablak mérete, hogy a gyorssávból vissza tudjunk váltani.
  static const Size defaultWindowSize = Size(1100, 760);
  static const Size minimumWindowSize = Size(720, 520);

  /// A teljes ablak háttérszíne (a sötét téma háttere; a Flutter-réteg
  /// úgyis lefesti, ez csak a villanást kerüli el méretváltáskor).
  static const Color windowBackground = Color(0xFF1F1E1D);

  /// A lebegő gyorskereső sáv mérete.
  static const Size quickBarSize = Size(680, 84);

  bool _quickBar = false;

  /// Igaz, amíg az ablak a kompakt, lebegő gyorssáv módban van.
  bool get isQuickBar => _quickBar;

  bool _initialized = false;
  HotKey? _hotKey;
  bool _trayReady = false;
  HotKey? _preferredHotKey;
  Size _lastFullSize = defaultWindowSize;

  /// Az alapértelmezett gyorsbillentyű: ⌥ Space macOS-en, Ctrl+Alt+Space máshol.
  static HotKey get defaultHotKey => HotKey(
    key: PhysicalKeyboardKey.space,
    modifiers: Platform.isMacOS ? [HotKeyModifier.alt] : [HotKeyModifier.control, HotKeyModifier.alt],
    scope: HotKeyScope.system,
  );

  /// Az éppen érvényes gyorsbillentyű.
  HotKey? get hotKey => _hotKey;

  /// Ember által olvasható gyorsbillentyű a beállításokhoz.
  String get shortcutLabel {
    if (!isSupported) return '';
    final hk = _hotKey ?? defaultHotKey;
    return describeHotKey(hk);
  }

  static String describeHotKey(HotKey hk) {
    final mac = Platform.isMacOS;
    final parts = <String>[];
    for (final m in hk.modifiers ?? const <HotKeyModifier>[]) {
      parts.add(switch (m) {
        HotKeyModifier.alt => mac ? '⌥' : 'Alt',
        HotKeyModifier.control => mac ? '⌃' : 'Ctrl',
        HotKeyModifier.shift => mac ? '⇧' : 'Shift',
        HotKeyModifier.meta => mac ? '⌘' : 'Win',
        HotKeyModifier.capsLock => 'Caps',
        HotKeyModifier.fn => 'Fn',
      });
    }
    final key = hk.key;
    var name = key is PhysicalKeyboardKey
        ? key.debugName ?? ''
        : key is LogicalKeyboardKey
        ? key.keyLabel
        : '';
    if (name.isEmpty) name = key.toString();
    parts.add(name);
    return parts.join(mac ? ' ' : ' + ');
  }

  /// Az ablak előkészítése még az első képkocka előtt. [title] és a tálca-
  /// menü feliratai a felhasználó nyelvén érkeznek.
  Future<void> initialize({required String title, Map<String, dynamic>? hotkeyJson}) async {
    if (!isSupported || _initialized) return;
    if (hotkeyJson != null) {
      try {
        _preferredHotKey = HotKey.fromJson(hotkeyJson);
      } catch (_) {
        _preferredHotKey = null;
      }
    }
    launchAtStartup.setup(appName: title, appPath: Platform.resolvedExecutable, packageName: 'hu.reszveny.reszveny');
    _initialized = true;
    await windowManager.ensureInitialized();
    await hotKeyManager.unregisterAll();

    const options = WindowOptions(
      size: defaultWindowSize,
      minimumSize: minimumWindowSize,
      center: true,
      titleBarStyle: TitleBarStyle.hidden,
      skipTaskbar: false,
    );
    await windowManager.waitUntilReadyToShow(options, () async {
      await windowManager.setTitle(title);
      await windowManager.show();
      await windowManager.focus();
    });
    windowManager.addListener(this);
    await _registerHotKey();
  }

  Future<void> _registerHotKey() async {
    final base = _preferredHotKey ?? defaultHotKey;
    final hotKey = HotKey(key: base.key, modifiers: base.modifiers, scope: HotKeyScope.system);
    try {
      await hotKeyManager.register(hotKey, keyDownHandler: (_) => toggleQuickBar());
      _hotKey = hotKey;
      notifyListeners();
    } catch (e) {
      debugPrint('Gyorsbillentyű regisztrálása nem sikerült: $e');
    }
  }

  /// Új gyorsbillentyű (vagy `null` = alapértelmezett) azonnali alkalmazása.
  Future<void> setHotKey(HotKey? hotKey) async {
    if (!isSupported) return;
    _preferredHotKey = hotKey;
    final old = _hotKey;
    if (old != null) {
      try {
        await hotKeyManager.unregister(old);
      } catch (_) {}
      _hotKey = null;
    }
    await _registerHotKey();
  }

  Future<bool> isLaunchAtLoginEnabled() async {
    if (!isSupported) return false;
    try {
      return await launchAtStartup.isEnabled();
    } catch (_) {
      return false;
    }
  }

  Future<bool> setLaunchAtLogin(bool enabled) async {
    if (!isSupported) return false;
    try {
      return enabled ? await launchAtStartup.enable() : await launchAtStartup.disable();
    } catch (e) {
      debugPrint('Bejelentkezéskori indítás beállítása nem sikerült: $e');
      return false;
    }
  }

  static const _trayOpen = 'open';
  static const _trayQuick = 'quick';
  static const _trayQuit = 'quit';

  /// Menüsor- / tálcaikon létrehozása (vagy a feliratok frissítése nyelvváltáskor).
  Future<void> setupTray({
    required String open,
    required String quickSearch,
    required String quit,
    required String tooltip,
  }) async {
    if (!isSupported) return;
    try {
      if (!_trayReady) {
        _trayReady = true;
        trayManager.addListener(this);
        if (Platform.isMacOS) {
          await trayManager.setIcon('assets/icons/tray_icon_template.png', isTemplate: true);
        } else {
          await trayManager.setIcon('assets/icons/tray_icon_windows.png');
        }
      }
      if (!Platform.isLinux) await trayManager.setToolTip(tooltip);
      await trayManager.setContextMenu(
        Menu(
          items: [
            MenuItem(key: _trayOpen, label: open),
            MenuItem(key: _trayQuick, label: quickSearch),
            MenuItem.separator(),
            MenuItem(key: _trayQuit, label: quit),
          ],
        ),
      );
    } catch (e) {
      debugPrint('Tálcaikon létrehozása nem sikerült: $e');
    }
  }

  @override
  void onTrayIconMouseDown() => trayManager.popUpContextMenu();

  @override
  void onTrayIconRightMouseDown() => trayManager.popUpContextMenu();

  @override
  void onTrayMenuItemClick(MenuItem menuItem) {
    switch (menuItem.key) {
      case _trayOpen:
        showFullWindow();
      case _trayQuick:
        showQuickBar();
      case _trayQuit:
        exit(0);
    }
  }

  Future<void> toggleQuickBar() async {
    if (_quickBar && await windowManager.isVisible() && await windowManager.isFocused()) {
      await hideQuickBar();
    } else {
      await showQuickBar();
    }
  }

  /// Kompakt, lebegő sáv a képernyő felső harmadában, minden ablak felett.
  Future<void> showQuickBar() async {
    if (!isSupported) return;
    if (!_quickBar) {
      _lastFullSize = await windowManager.getSize();
      _quickBar = true;
      notifyListeners();
      await windowManager.setResizable(false);
      await windowManager.setAlwaysOnTop(true);
      // Átlátszó ablak: csak a lekerekített sáv látszik, saját árnyékkal.
      await windowManager.setBackgroundColor(const Color(0x00000000));
      await windowManager.setHasShadow(false);
      await windowManager.setSize(quickBarSize);
      await windowManager.setAlignment(const Alignment(0, -0.6));
    }
    await windowManager.show();
    await windowManager.focus();
  }

  Future<void> hideQuickBar() async {
    if (!isSupported) return;
    await windowManager.hide();
  }

  /// Vissza a teljes ablakhoz (pl. egy találat megnyitásakor).
  Future<void> showFullWindow() async {
    if (!isSupported) return;
    if (_quickBar) {
      _quickBar = false;
      notifyListeners();
      await windowManager.setAlwaysOnTop(false);
      await windowManager.setResizable(true);
      await windowManager.setHasShadow(true);
      await windowManager.setBackgroundColor(windowBackground);
      await windowManager.setSize(_lastFullSize);
      await windowManager.center();
    }
    await windowManager.show();
    await windowManager.focus();
  }

  @override
  void onWindowBlur() {
    // A lebegő sáv eltűnik, ha máshova kattintunk – mint a Spotlight.
    if (_quickBar) hideQuickBar();
  }

  @override
  void dispose() {
    if (isSupported) {
      windowManager.removeListener(this);
      final hk = _hotKey;
      if (hk != null) hotKeyManager.unregister(hk);
      if (_trayReady) {
        trayManager.removeListener(this);
        trayManager.destroy();
      }
    }
    super.dispose();
  }
}
