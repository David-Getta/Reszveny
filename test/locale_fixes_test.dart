import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:reszveny/app.dart';
import 'package:reszveny/core/desktop/desktop_integration.dart';
import 'package:reszveny/core/util/formatters.dart';
import 'package:reszveny/features/settings/settings_page.dart';
import 'package:reszveny/l10n/generated/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget_test.dart' show services;

/// A nyelvi (formázási, fordítási) kódátnézés javításai.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('Settings opens in a language without number data (Yoruba)', (tester) async {
    tester.view.physicalSize = const Size(1200, 2400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final s = services(locale: const Locale('yo'));
    await tester.pumpWidget(WhatStockApp(services: s));
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.tune_rounded).first);
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    expect(find.byType(SettingsPage), findsOneWidget);
    // Az AI-beállítások kártyája (a hosszúság leírása szószámokkal) is felépült.
    final l10n = AppLocalizations.of(tester.element(find.byType(SettingsPage)));
    expect(find.textContaining(l10n.aiDepthStandardDesc), findsWidgets);
  });

  test('one extra analysis is singular', () async {
    final en = await lookupAppLocalizations(const Locale('en'));
    expect(en.extraCredits(1), '1 extra analysis');
    expect(en.extraCredits(3), '3 extra analyses');
    final de = await lookupAppLocalizations(const Locale('de'));
    expect(de.extraCredits(1), isNot(de.extraCredits(2).replaceFirst('2', '1')));
  });

  test('times follow the language: 2:05 PM in English, 14:05 in Hungarian', () {
    final t = DateTime(2026, 10, 24, 14, 5);
    expect(Fmt('en').dateTime(t), contains('2:05'));
    expect(Fmt('en').dateTime(t), contains('PM'));
    expect(Fmt('hu').dateTime(t), contains('14:05'));
  });

  test('large numbers use the language\'s own abbreviation where "B" would mean trillion', () {
    expect(Fmt('en').compact(2.95e9, currency: 'USD'), '2.95B USD');
    expect(Fmt('de').compact(2.95e9), contains('Mrd'));
    expect(Fmt('hu').compact(2.95e9), contains('Mrd'));
    expect(Fmt('en').compact(1500, withSign: true), '+1.50K');
  });

  test('Turkish puts the percent sign first', () {
    expect(Fmt('tr').percent(5, decimals: 0), '%5');
    expect(Fmt('en').percent(5, decimals: 0, prefix: '±'), '±5%');
  });

  test('a language without number data borrows the one used around it, not English', () {
    expect(Fmt('ht').numberLocale, 'fr');
    expect(Fmt('qu').numberLocale, 'es');
    expect(Fmt('tg').numberLocale, 'ru');
  });

  test('modifier keys are named in the interface language', () {
    final hk = HotKey(key: PhysicalKeyboardKey.space, modifiers: [HotKeyModifier.control, HotKeyModifier.shift]);
    expect(
      DesktopIntegration.describeHotKey(
        hk,
        space: 'Leertaste',
        mac: false,
        names: (ctrl: 'Strg', shift: 'Umschalttaste', alt: 'Alt', capsLock: 'Feststelltaste', backspace: 'Rücktaste'),
      ),
      'Strg + Umschalttaste + Leertaste',
    );
  });
}
