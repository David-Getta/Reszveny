import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:local_notifier/local_notifier.dart';

/// Rendszerértesítés küldése (árfolyam-riasztás). Ahol nincs ilyen, `false`.
abstract class AlertNotifier {
  Future<bool> show({required String id, required String title, required String body});
}

/// Asztali rendszerértesítések: macOS-en saját natív csatorna
/// (UNUserNotificationCenter, `MainFlutterWindow.swift`), Windowson és Linuxon
/// a `local_notifier`. Telefonon és weben nem küld semmit: ott az app előtérben
/// mutatja a riasztást, a háttér-értesítés a szerverrel jön majd.
class SystemNotifier implements AlertNotifier {
  SystemNotifier({this.onClick});

  /// Koppintás az értesítésre: a riasztás azonosítójával.
  void Function(String id)? onClick;

  static const _channel = MethodChannel('stocklens/notifications');
  bool _ready = false;

  static bool get isSupported => !kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux);

  Future<void> _setUp() async {
    if (_ready) return;
    _ready = true;
    if (Platform.isMacOS) {
      _channel.setMethodCallHandler((call) async {
        if (call.method == 'clicked') onClick?.call(call.arguments as String? ?? '');
      });
    } else {
      await localNotifier.setup(appName: 'StockLens', shortcutPolicy: ShortcutPolicy.requireCreate);
    }
  }

  @override
  Future<bool> show({required String id, required String title, required String body}) async {
    if (!isSupported) return false;
    try {
      await _setUp();
      if (Platform.isMacOS) {
        return await _channel.invokeMethod<bool>('show', {'id': id, 'title': title, 'body': body}) ?? false;
      }
      final n = LocalNotification(identifier: id, title: title, body: body)..onClick = () => onClick?.call(id);
      await n.show();
      return true;
    } catch (e) {
      debugPrint('Értesítés küldése nem sikerült: $e');
      return false;
    }
  }
}
