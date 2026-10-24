import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reszveny/core/backend/backend_client.dart';

import 'app_widget_test.dart' show services;

/// Egy adatvédelmi átnézés javításainak ellenőrzése (az app oldalán).
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('a new anonymous account is made without a device identifier, and an old one is forgotten', () async {
    SharedPreferences.setMockInitialValues({'backend_device_id': 'd_laptop_42'});
    Object? sent;
    final backend = BackendClient(
      baseUrl: 'https://api.test',
      inner: MockClient((req) async {
        if (req.url.path == '/v1/auth/anonymous') sent = jsonDecode(req.body);
        return http.Response(jsonEncode({'user_id': 'u1', 'token': 't1', 'entitlements': {}}), 200);
      }),
    );
    await backend.ensureToken();
    expect(sent, isA<Map>().having((m) => m.containsKey('device_id'), 'device_id', isFalse));
    await Future<void>.delayed(Duration.zero);
    expect((await SharedPreferences.getInstance()).containsKey('backend_device_id'), isFalse);
  });

  test("deleting the data on this device also removes the notification marks that name the user's stocks", () async {
    SharedPreferences.setMockInitialValues({
      'earnings_reminded': ['dividend-KO-USD-2026-10-30'],
      'earnings_known_period': ['AAPL|2026-10-30|2026-09-30'],
      'signals_notified': ['signals-2026-10-24-NVDA'],
      'backend_device_id': 'd_laptop_42',
    });
    final s = services();
    await s.deleteAccount(wipeLocalData: true);
    final prefs = await SharedPreferences.getInstance();
    for (final k in ['earnings_reminded', 'earnings_known_period', 'signals_notified', 'backend_device_id']) {
      expect(prefs.containsKey(k), isFalse, reason: k);
    }
  });
}
