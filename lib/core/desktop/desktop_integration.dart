import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
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
  Size _lastFullSize = defaultWindowSize;

  /// Ember által olvasható gyorsbillentyű a beállításokhoz.
  static String get shortcutLabel {
    if (!isSupported) return '';
    return Platform.isMacOS ? '⌥ Space' : 'Ctrl + Alt + Space';
  }

  /// Az ablak előkészítése még az első képkocka előtt. [title] és a tálca-
  /// menü feliratai a felhasználó nyelvén érkeznek.
  Future<void> initialize({required String title}) async {
    if (!isSupported || _initialized) return;
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
    final hotKey = HotKey(
      key: PhysicalKeyboardKey.space,
      modifiers: Platform.isMacOS ? [HotKeyModifier.alt] : [HotKeyModifier.control, HotKeyModifier.alt],
      scope: HotKeyScope.system,
    );
    try {
      await hotKeyManager.register(hotKey, keyDownHandler: (_) => toggleQuickBar());
      _hotKey = hotKey;
    } catch (e) {
      debugPrint('Gyorsbillentyű regisztrálása nem sikerült: $e');
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
