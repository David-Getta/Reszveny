import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/features/alerts/price_alert.dart';
import 'package:reszveny/features/settings/backup.dart';

import 'app_widget_test.dart' show services;

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('save, then restore into another install: everything comes back, nothing is lost', () async {
    final a = services();
    await a.preferences.setFavorites(['AAPL', 'MSFT']);
    await a.preferences.addWatchList('Tech');
    await a.preferences.toggleInList('Tech', 'NVDA');
    await a.portfolio.add(symbol: 'AAPL', quantity: 3, price: 180, currency: 'USD');
    await a.alerts.add(symbol: 'AAPL', kind: AlertKind.above, value: 250, currency: 'USD');
    final file = jsonEncode(Backup.data(a, now: DateTime.utc(2026, 10, 16)));
    expect(Backup.fileName(DateTime(2026, 10, 16)), 'WhatStock-backup-2026-10-16.json');

    SharedPreferences.setMockInitialValues({});
    final b = services();
    await b.preferences.setFavorites(['OTP']);
    await b.portfolio.add(symbol: 'OTP', quantity: 10, price: 30000, currency: 'HUF');
    await Backup.restore(b, Backup.parse(file)!);
    expect(b.preferences.favorites.toSet(), {'OTP', 'NVDA', 'AAPL', 'MSFT'});
    expect(b.preferences.watchLists.single.symbols, ['NVDA']);
    expect(b.portfolio.lots.map((l) => l.symbol).toSet(), {'OTP', 'AAPL'});
    expect(b.alerts.alerts.single.value, 250);

    // Ugyanaz még egyszer: nem duplázódik.
    await Backup.restore(b, Backup.parse(file)!);
    expect(b.portfolio.lots, hasLength(2));
    expect(Backup.parse('{"favorites":[]}'), isNull);
    expect(Backup.parse('not json'), isNull);
  });

  testWidgets('settings: save a backup file and restore from one', (tester) async {
    tester.view.physicalSize = const Size(1200, 4000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final saved = <String, Uint8List>{};
    final saver = saveBackupFile, picker = pickBackupFile;
    addTearDown(() {
      saveBackupFile = saver;
      pickBackupFile = picker;
    });
    saveBackupFile = (bytes, name) async => saved[name] = bytes;
    final s = services();
    await s.preferences.setFavorites(['AAPL']);
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    final save = find.byKey(const ValueKey('backup-save'));
    await tester.scrollUntilVisible(save, 300, scrollable: find.byType(Scrollable).last);
    await tester.tap(save);
    await tester.pumpAndSettle();
    final data = jsonDecode(utf8.decode(saved.values.single)) as Map;
    expect(data['app'], 'WhatStock');
    expect(data['favorites'], ['AAPL']);

    pickBackupFile = () async => jsonEncode({
      'app': 'WhatStock',
      'favorites': ['NVDA'],
    });
    await tester.tap(find.byKey(const ValueKey('backup-restore')));
    await tester.pumpAndSettle();
    expect(s.preferences.favorites.toSet(), {'AAPL', 'NVDA'});
    expect(find.text('Backup restored.'), findsOneWidget);

    pickBackupFile = () async => '{"hello":1}';
    // Az előző értesítés eltűnése után (ne takarja a sort).
    await tester.pump(const Duration(seconds: 6));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('backup-restore')));
    await tester.pumpAndSettle();
    expect(find.text('This file is not a WhatStock backup.'), findsOneWidget);
  });
}
