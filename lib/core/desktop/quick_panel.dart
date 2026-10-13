import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Egy sor a gyorskereső találatlistájában.
@immutable
class QuickSuggestion {
  const QuickSuggestion({required this.symbol, this.name = '', this.detail = ''});

  final String symbol;

  /// Cégnév (üres, ha nem ismert vagy ugyanaz, mint a ticker).
  final String name;

  /// Rövid jelölés a sor jobb szélén (pl. ★ a kedvenceknél).
  final String detail;

  Map<String, String> toMap() => {'symbol': symbol, 'name': name, 'detail': detail};
}

/// A natív gyorskereső panel eseményei (a felhasználó gépel, Entert nyom,
/// képet illeszt be, vagy a teljes ablakot kéri).
abstract interface class QuickPanelHandler {
  void onQuery(String text);

  /// [symbol]: a kiválasztott találat, ha volt; különben a beírt szöveg számít.
  void onSubmit(String text, String? symbol);

  void onPasteImage();

  void onOpenWindow();
}

/// A macOS-es natív gyorskereső panel (`MainFlutterWindow.swift`,
/// `QuickEntryController`) Dart-oldali vezérlője – mint a Claude „Quick Entry”
/// ablaka: áttetsző, lekerekített sáv a többi app felett, a főablak nélkül.
///
/// Más platformon nincs natív panel ([isSupported] hamis): ott a Flutter-alapú
/// `QuickBar` fut a főablakban.
class NativeQuickPanel {
  NativeQuickPanel({MethodChannel? channel}) : _channel = channel ?? const MethodChannel('whatstock/quick_panel');

  final MethodChannel _channel;

  @visibleForTesting
  static bool? debugSupportedOverride;

  static bool get isSupported => debugSupportedOverride ?? (!kIsWeb && Platform.isMacOS);

  QuickPanelHandler? _handler;
  Map<String, Object> _config = const {};

  /// A panel eseményeit [handler] kapja meg (az app keretének betöltésekor).
  void attach(QuickPanelHandler handler) {
    _handler = handler;
    _channel.setMethodCallHandler(handleCall);
  }

  /// Feliratok a felhasználó nyelvén, és a téma (sötét / világos).
  void configure({
    required String placeholder,
    required String pasteImage,
    required String openWindow,
    required bool dark,
  }) {
    _config = {'placeholder': placeholder, 'pasteImage': pasteImage, 'openWindow': openWindow, 'dark': dark};
  }

  Future<void> show() => _invoke('show', _config);

  /// Megjeleníti, vagy ha már előtérben van, elrejti (gyorsbillentyű).
  Future<void> toggle() => _invoke('toggle', _config);

  Future<void> hide() => _invoke('hide');

  /// Találatok a [query] szöveghez; ha közben tovább gépeltek, a panel eldobja.
  Future<void> setSuggestions(String query, List<QuickSuggestion> items, {String? title}) =>
      _invoke('setSuggestions', {'query': query, 'title': title, 'items': items.map((e) => e.toMap()).toList()});

  /// Forgó jelző a sáv jobb oldalán (keresés, képfelismerés közben).
  Future<void> setBusy(bool busy) => _invoke('setBusy', {'busy': busy});

  /// Egysoros üzenet a sáv alatt (pl. „Nem találtunk részvényt”); null: eltünteti.
  Future<void> setMessage(String? message) => _invoke('setMessage', {'message': message});

  @visibleForTesting
  Future<dynamic> handleCall(MethodCall call) async {
    final h = _handler;
    if (h == null) return null;
    switch (call.method) {
      case 'query':
        h.onQuery(call.arguments as String? ?? '');
      case 'submit':
        final args = (call.arguments as Map?)?.cast<String, Object?>() ?? const {};
        final symbol = args['symbol'] as String?;
        h.onSubmit(args['text'] as String? ?? '', symbol == null || symbol.isEmpty ? null : symbol);
      case 'pasteImage':
        h.onPasteImage();
      case 'openWindow':
        h.onOpenWindow();
    }
    return null;
  }

  Future<void> _invoke(String method, [Object? args]) async {
    if (!isSupported) return;
    try {
      await _channel.invokeMethod<void>(method, args);
    } on MissingPluginException {
      // Régebbi natív réteg: nincs panel.
    } catch (e) {
      debugPrint('Gyorskereső panel ($method): $e');
    }
  }
}
