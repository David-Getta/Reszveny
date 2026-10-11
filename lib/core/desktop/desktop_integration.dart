import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:launch_at_startup/launch_at_startup.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

import 'double_tap_detector.dart';

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

  // ---- Dupla Option-nyomás (csak macOS) ----

  static const _optionChannel = MethodChannel('whatstock/option_key');

  /// A dupla Option-nyomás csak macOS-en érhető el (natív figyelő kell hozzá).
  static bool get supportsDoubleOption => !kIsWeb && Platform.isMacOS;

  final DoubleTapDetector _doubleTap = DoubleTapDetector();
  bool _doubleOptionEnabled = false;
  bool _doubleOptionGlobal = false;

  bool get doubleOptionEnabled => _doubleOptionEnabled;

  /// Igaz, ha más appok használata közben is figyel (megvan a „Bemenetfigyelés”
  /// engedély); hamis esetén csak a WhatStock előtérben lévő ablakában működik.
  bool get doubleOptionGlobal => _doubleOptionGlobal;

  /// Be- vagy kikapcsolás. [askPermission]: engedély híján kérje-e a rendszer
  /// „Bemenetfigyelés” párbeszédablakát.
  Future<void> setDoubleOption(bool enabled, {bool askPermission = false}) async {
    if (!supportsDoubleOption) return;
    _doubleOptionEnabled = enabled;
    try {
      if (!enabled) {
        await _optionChannel.invokeMethod<void>('stop');
        _doubleOptionGlobal = false;
      } else {
        _optionChannel.setMethodCallHandler(_onOptionEvent);
        var global = await _optionChannel.invokeMethod<bool>('start') ?? false;
        if (!global && askPermission) {
          await _optionChannel.invokeMethod<bool>('requestPermission');
          global = await _optionChannel.invokeMethod<bool>('start') ?? false;
        }
        _doubleOptionGlobal = global;
      }
    } catch (e) {
      debugPrint('Dupla Option-figyelés nem indítható: $e');
    }
    notifyListeners();
  }

  /// A Rendszerbeállítások „Bemenetfigyelés” paneljének megnyitása.
  Future<void> openInputMonitoringSettings() async {
    try {
      await _optionChannel.invokeMethod<void>('openSettings');
    } catch (e) {
      debugPrint('Rendszerbeállítások nem nyithatók meg: $e');
    }
  }

  Future<dynamic> _onOptionEvent(MethodCall call) async {
    if (call.method == 'option' && _doubleTap.add('${call.arguments}')) await toggleQuickBar();
  }

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

  /// Ember által olvasható gyorsbillentyű (angol szóköz-névvel). A felületen a
  /// [shortcutLabelFor]-t használjuk, hogy a szóköz neve le legyen fordítva.
  String get shortcutLabel => shortcutLabelFor();

  /// Gyorsbillentyű a felület nyelvén, pl. macOS-en „⌥ Option + Szóköz”,
  /// Windowson „Ctrl + Alt + Szóköz”. [space]: a szóköz billentyű neve.
  String shortcutLabelFor({String space = 'Space'}) {
    if (!isSupported) return '';
    return describeHotKey(_hotKey ?? defaultHotKey, space: space);
  }

  /// A módosítók macOS-en jellel és névvel („⌥ Option”), hogy egyértelmű
  /// legyen, melyik gombot kell lenyomni; a részek között mindig „+”.
  static String describeHotKey(HotKey hk, {String space = 'Space', bool? mac}) {
    final isMac = mac ?? Platform.isMacOS;
    final parts = <String>[];
    for (final m in hk.modifiers ?? const <HotKeyModifier>[]) {
      parts.add(switch (m) {
        HotKeyModifier.alt => isMac ? '⌥ Option' : 'Alt',
        HotKeyModifier.control => isMac ? '⌃ Control' : 'Ctrl',
        HotKeyModifier.shift => isMac ? '⇧ Shift' : 'Shift',
        HotKeyModifier.meta => isMac ? '⌘ Command' : 'Win',
        HotKeyModifier.capsLock => 'Caps Lock',
        HotKeyModifier.fn => 'Fn',
      });
    }
    final key = hk.key;
    parts.add(switch (key) {
      PhysicalKeyboardKey k => physicalKeyLabel(k, mac: isMac, space: space),
      LogicalKeyboardKey k when k.keyLabel.isNotEmpty => k.keyLabel.toUpperCase(),
      _ => '?',
    });
    return parts.join(' + ');
  }

  /// Fizikai billentyű neve a USB HID-kódból. Kiadási buildben a Flutter
  /// hibakereső nevei (`debugName`) nem érhetők el, ezért saját táblát használunk.
  static String physicalKeyLabel(PhysicalKeyboardKey k, {bool mac = false, String space = 'Space'}) {
    final u = k.usbHidUsage;
    if (u >= 0x00070004 && u <= 0x0007001d) return String.fromCharCode(0x41 + u - 0x00070004); // A–Z
    if (u >= 0x0007001e && u <= 0x00070026) return '${u - 0x0007001e + 1}'; // 1–9
    if (u == 0x00070027) return '0';
    if (u >= 0x0007003a && u <= 0x00070045) return 'F${u - 0x0007003a + 1}'; // F1–F12
    return switch (u) {
      0x0007002c => space,
      0x00070028 => mac ? '↩ Return' : 'Enter',
      0x00070029 => 'Esc',
      0x0007002b => mac ? '⇥' : 'Tab',
      0x0007002a => mac ? '⌫' : 'Backspace',
      0x0007002d => '-',
      0x0007002e => '=',
      0x0007002f => '[',
      0x00070030 => ']',
      0x00070031 => '\\',
      0x00070033 => ';',
      0x00070034 => "'",
      0x00070035 => '`',
      0x00070036 => ',',
      0x00070037 => '.',
      0x00070038 => '/',
      0x0007004f => '→',
      0x00070050 => '←',
      0x00070051 => '↓',
      0x00070052 => '↑',
      _ => k.debugName ?? '?',
    };
  }

  /// Az ablak előkészítése még az első képkocka előtt. [title] és a tálca-
  /// menü feliratai a felhasználó nyelvén érkeznek.
  Future<void> initialize({required String title, Map<String, dynamic>? hotkeyJson, bool keepInTray = true}) async {
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
    await setKeepInTray(keepInTray);
    await _registerHotKey();
  }

  /// Az ablak bezárásakor az app a menüsorban / tálcán fut tovább (a
  /// gyorsbillentyű és az árfolyam-riasztás így bezárt ablaknál is működik);
  /// kilépni a menüsor-ikon „Kilépés” pontjával lehet.
  Future<void> setKeepInTray(bool enabled) async {
    if (!isSupported) return;
    try {
      await windowManager.setPreventClose(enabled);
    } catch (e) {
      debugPrint('Bezárás kezelése nem állítható: $e');
    }
  }

  @override
  void onWindowClose() async {
    if (await windowManager.isPreventClose()) await windowManager.hide();
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

  /// Ha közben megadták az engedélyt, a figyelést rendszerszintűre váltjuk.
  @override
  void onWindowFocus() {
    if (_doubleOptionEnabled && !_doubleOptionGlobal) setDoubleOption(true);
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
