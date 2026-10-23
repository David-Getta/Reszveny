import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/desktop/quick_panel.dart';
import 'package:reszveny/core/models/stock_candidate.dart';
import 'package:reszveny/features/home/quick_search_controller.dart';

import 'app_widget_test.dart' show services;

const _channel = MethodChannel('whatstock/quick_panel');
const _windowChannel = MethodChannel('window_manager');

/// A natív panelnek küldött hívások (macOS-en a Swift-oldal kapná meg).
final _calls = <MethodCall>[];

List<MethodCall> _sent(String method) => _calls.where((c) => c.method == method).toList();

List<Map<Object?, Object?>> _items(MethodCall c) =>
    ((c.arguments as Map)['items'] as List).cast<Map<Object?, Object?>>();

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
    NativeQuickPanel.debugSupportedOverride = true;
    _calls.clear();
    final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    messenger.setMockMethodCallHandler(_channel, (call) async {
      _calls.add(call);
      return null;
    });
    // A teljes ablak előhozása (window_manager) a tesztben nem csinál semmit.
    messenger.setMockMethodCallHandler(_windowChannel, (call) async => call.method.startsWith('is') ? false : null);
  });

  tearDown(() {
    NativeQuickPanel.debugSupportedOverride = null;
    final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    messenger.setMockMethodCallHandler(_channel, null);
    messenger.setMockMethodCallHandler(_windowChannel, null);
  });

  group('QuickSearchController', () {
    late List<StockCandidate> opened;
    late List<String> searched;
    late QuickSearchController controller;
    final panel = NativeQuickPanel();

    setUp(() {
      opened = [];
      searched = [];
      controller = QuickSearchController(
        panel: panel,
        search: (q) async {
          searched.add(q);
          return [
            const StockCandidate(symbol: 'AAPL', companyName: 'Apple Inc.', confidence: 0.9),
            const StockCandidate(symbol: 'APLE', companyName: 'Apple Hospitality REIT', confidence: 0.5),
          ];
        },
        favorites: () => const ['MSFT'],
        recent: () => const ['NVDA', 'MSFT', 'OTP'],
        recentTitle: () => 'Recent',
        open: (c) async => opened.add(c),
        pasteImage: () async {},
        openWindow: () async {},
        describe: (e) => 'error: $e',
        debounce: const Duration(milliseconds: 50),
      );
    });

    test('an empty field suggests favorites first (★), then recent ones without duplicates', () async {
      controller.onQuery('');
      await Future<void>.delayed(Duration.zero);
      final call = _sent('setSuggestions').single;
      expect((call.arguments as Map)['title'], 'Recent');
      expect(_items(call).map((e) => e['symbol']), ['MSFT', 'NVDA', 'OTP']);
      expect(_items(call).first['detail'], '★');
      expect(searched, isEmpty);
    });

    test('typing searches once after a short pause and only the latest text is answered', () async {
      controller.onQuery('a');
      controller.onQuery('ap');
      controller.onQuery('appl');
      await Future<void>.delayed(const Duration(milliseconds: 120));
      expect(searched, ['appl']);
      final call = _sent('setSuggestions').single;
      expect((call.arguments as Map)['query'], 'appl');
      expect(_items(call).map((e) => e['name']), ['Apple Inc.', 'Apple Hospitality REIT']);
    });

    test('enter opens the chosen suggestion with its company name', () async {
      controller.onQuery('appl');
      await Future<void>.delayed(const Duration(milliseconds: 120));
      await controller.onSubmit('appl', 'APLE');
      expect(opened.single.symbol, 'APLE');
      expect(opened.single.companyName, 'Apple Hospitality REIT');
    });

    test('enter without a suggestion searches and opens the first match, with a spinner meanwhile', () async {
      await controller.onSubmit('apple', null);
      expect(opened.single.symbol, 'AAPL');
      expect(_sent('setBusy').map((c) => (c.arguments as Map)['busy']), [true, false]);
    });

    test('a description the search cannot place is handed to the AI resolver', () async {
      final resolved = <String>[];
      final c = QuickSearchController(
        panel: panel,
        search: (q) async => const [],
        resolve: (q) async {
          resolved.add(q);
          return [const StockCandidate(symbol: 'QQQ', companyName: 'Invesco QQQ Trust', confidence: 0.95)];
        },
        favorites: () => const [],
        recent: () => const [],
        recentTitle: () => 'Recent',
        open: (cand) async => opened.add(cand),
        pasteImage: () async {},
        openWindow: () async {},
        describe: (e) => 'error: $e',
      );
      await c.onSubmit('tech 100 etf', null);
      expect(resolved, ['tech 100 etf']);
      expect(opened.last.symbol, 'QQQ');
      // Tickerre nem kérdezi az AI-t: azonnal megnyitja.
      await c.onSubmit('nvda', null);
      expect(resolved, hasLength(1));
      expect(opened.last.symbol, 'NVDA');
      await c.onSubmit(r'$brk-b', null);
      expect(opened.last.symbol, 'BRK-B');
    });

    test('a description nobody can place is not opened as a ticker; a failed search still asks the AI', () async {
      final resolved = <String>[];
      var fail = false;
      final c = QuickSearchController(
        panel: panel,
        search: (q) async => fail ? throw Exception('offline') : const <StockCandidate>[],
        resolve: (q) async {
          resolved.add(q);
          return const [];
        },
        favorites: () => const [],
        recent: () => const [],
        recentTitle: () => 'Recent',
        open: (cand) async => opened.add(cand),
        pasteImage: () async {},
        openWindow: () async {},
        describe: (e) => 'error: $e',
      );
      await c.onSubmit('the biggest hungarian bank', null);
      expect(opened, isEmpty);
      expect((_sent('setMessage').last.arguments as Map)['message'], contains('noResults'));
      fail = true;
      await c.onSubmit('gold etf', null);
      expect(resolved, ['the biggest hungarian bank', 'gold etf']);
      expect(opened, isEmpty);
    });

    test('a pending search is dropped once enter was pressed', () async {
      controller.onQuery('ap');
      await controller.onSubmit('ap', null);
      _calls.clear();
      await Future<void>.delayed(const Duration(milliseconds: 120));
      expect(_sent('setSuggestions'), isEmpty);
    });
  });

  testWidgets('macOS: the hotkey shows the native panel, a chosen stock opens in the full window', (tester) async {
    final s = services();
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();

    await s.desktop.toggleQuickBar();
    final toggle = _sent('toggle').single;
    expect((toggle.arguments as Map)['placeholder'], 'Type a ticker or company name…');
    expect((toggle.arguments as Map)['dark'], isA<bool>());
    // A főablak nem alakul át sávvá (az a Windows-os megoldás).
    expect(s.desktop.isQuickBar, isFalse);

    await s.desktop.quickPanel.handleCall(const MethodCall('submit', {'text': 'nv', 'symbol': 'NVDA'}));
    await tester.pumpAndSettle();
    expect(_sent('hide'), isNotEmpty);
    expect(find.text('NVIDIA Corporation'), findsWidgets);
    expect(s.preferences.recent.first, 'NVDA');
  });

  testWidgets('macOS: the panel lists recent stocks when it opens with an empty field', (tester) async {
    final s = services();
    await s.preferences.addRecent('OTP');
    await s.preferences.toggleFavorite('AAPL');
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();

    await s.desktop.quickPanel.handleCall(const MethodCall('query', ''));
    await tester.pump();
    final call = _sent('setSuggestions').single;
    expect((call.arguments as Map)['title'], 'Recent');
    expect(_items(call).map((e) => e['symbol']), ['AAPL', 'OTP']);
  });
}
