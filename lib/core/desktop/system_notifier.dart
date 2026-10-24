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

  static const _channel = MethodChannel('whatstock/notifications');
  bool _ready = false;

  static bool get isSupported => !kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux);

  /// macOS: a kattintások fogadása már az első értesítés előtt (az előző futás
  /// értesítésére kattintva, vagy ha a kattintás indította az appot); a natív
  /// oldal addig gyűjti őket. Akkor hívandó, amikor a megnyitást már figyelik.
  Future<void> listen() async {
    if (!isSupported || !Platform.isMacOS) return;
    _listenForClicks();
    try {
      await _channel.invokeMethod<void>('ready');
    } catch (e) {
      debugPrint('Értesítés-kattintások fogadása nem indult el: $e');
    }
  }

  void _listenForClicks() => _channel.setMethodCallHandler((call) async {
    if (call.method == 'clicked') onClick?.call(call.arguments as String? ?? '');
  });

  Future<void> _setUp() async {
    if (_ready) return;
    _ready = true;
    if (Platform.isMacOS) {
      _listenForClicks();
    } else {
      await localNotifier.setup(appName: 'WhatStock', shortcutPolicy: ShortcutPolicy.requireCreate);
    }
  }

  final Map<String, LocalNotification> _shown = {};
  static const _maxShown = 30;

  @override
  Future<bool> show({required String id, required String title, required String body}) async {
    if (!isSupported) return false;
    try {
      await _setUp();
      if (Platform.isMacOS) {
        return await _channel.invokeMethod<bool>('show', {'id': id, 'title': title, 'body': body}) ?? false;
      }
      // Azonosítónként egy élő példány: a bővítmény minden példányt figyelőként megtart, így
      // a régiek nem szabadulnának fel, és egy újra használt azonosítóra (pl. a portfólió-
      // cél) egy kattintás többször jelezne. A régi értesítés látszik tovább, csak nem figyeljük.
      if (_shown.remove(id) case final old?) localNotifier.removeListener(old);
      if (_shown.length >= _maxShown) localNotifier.removeListener(_shown.remove(_shown.keys.first)!);
      final n = LocalNotification(identifier: id, title: title, body: body)..onClick = () => onClick?.call(id);
      _shown[id] = n;
      await n.show();
      return true;
    } catch (e) {
      debugPrint('Értesítés küldése nem sikerült: $e');
      return false;
    }
  }
}
