import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

void main() {
  late Store store;
  late Api api;
  var now = DateTime.utc(2026, 10, 14, 12);

  setUp(() {
    now = DateTime.utc(2026, 10, 14, 12);
    store = Store.inMemory()..clock = () => now;
    api = Api(
      store: store,
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      adminToken: 'admin-secret',
    );
    api.telemetry.clock = () => now;
  });

  Future<Response> raw(String method, String path, {String? token, Object? body, String? form}) async => api.handler(
    Request(
      method,
      Uri.parse('http://localhost$path'),
      headers: {
        'content-type': form != null ? 'application/x-www-form-urlencoded' : 'application/json',
        if (token != null) 'authorization': 'Bearer $token',
      },
      body: form ?? (body == null ? null : jsonEncode(body)),
    ),
  );

  Future<String> newUser() async =>
      jsonDecode(await (await raw('POST', '/v1/auth/anonymous')).readAsString())['token'] as String;

  Future<int> send(String token, Map<String, dynamic> batch) async =>
      (await raw('POST', '/v1/telemetry', token: token, body: batch)).statusCode;

  Future<Map<String, dynamic>> stats() async {
    final res = await raw('GET', '/admin/stats.json', token: 'admin-secret');
    expect(res.statusCode, 200);
    return (jsonDecode(await res.readAsString()) as Map).cast<String, dynamic>();
  }

  test('events are counted per day; unknown names and silly counts are ignored', () async {
    final a = await newUser(), b = await newUser();
    expect(
      await send(a, {
        'platform': 'android',
        'version': '0.2.34+37',
        'events': {'app_open': 1, 'analysis_done': 2, 'hack_me': 5, 'paywall_view': -3},
      }),
      200,
    );
    await send(a, {
      'platform': 'android',
      'version': '0.2.34+37',
      'events': {'analysis_done': 1, 'share_image': 100000},
    });
    await send(b, {
      'platform': 'iOS',
      'version': '0.2.34+37',
      'events': {'app_open': 1},
    });
    final s = await stats();
    final today = (s['days'] as List).first as Map;
    expect(today['day'], '2026-10-14');
    expect(today['active_users'], 2);
    expect(today['events'], {'app_open': 2, 'analysis_done': 3, 'share_image': 500});
    expect(s['platforms'], {'android': 1, 'iOS': 1});
    expect(s['versions'], {'0.2.34+37': 2});
    expect((s['days'] as List).length, 30);
  });

  test('the same error is stored once and counted; old ones are purged', () async {
    final a = await newUser();
    final err = {'message': 'StateError: Bad state', 'stack': '#0 main (file.dart:1)\n#1 run'};
    await send(a, {
      'platform': 'macOS',
      'version': '1',
      'errors': [err, err],
    });
    await send(a, {
      'platform': 'macOS',
      'version': '1',
      'errors': [
        {'message': 'Other', 'stack': ''},
      ],
    });
    var errors = (await stats())['errors'] as List;
    expect(errors.map((e) => (e['message'], e['count'])), [('StateError: Bad state', 2), ('Other', 1)]);

    now = now.add(const Duration(days: 31));
    await send(a, {
      'platform': 'macOS',
      'version': '1',
      'events': {'app_open': 1},
    });
    errors = (await stats())['errors'] as List;
    expect(errors, isEmpty);
  });

  test('active users are not linkable across days', () async {
    final a = await newUser();
    await send(a, {
      'platform': 'web',
      'events': {'app_open': 1},
    });
    now = now.add(const Duration(days: 1));
    await send(a, {
      'platform': 'web',
      'events': {'app_open': 1},
    });
    final hashes = store.database.select('SELECT user_hash FROM daily_users').map((r) => r['user_hash']).toSet();
    expect(hashes.length, 2);
    final days = (await stats())['days'] as List;
    expect(days.take(2).map((d) => d['active_users']), [1, 1]);
  });

  test('the server counts accounts and analyses without the app', () async {
    final a = await newUser();
    store.logUsage(a, 'AAPL', 10, 10);
    final today = ((await stats())['days'] as List).first as Map;
    expect(today['new_accounts'], 1);
    expect(today['analyses'], 1);
  });

  test('account and feature counts: e-mail accounts, synced data, weekly summary subscribers', () async {
    final (a, _) = store.createAnonymousUser(null);
    final (b, _) = store.createAnonymousUser(null);
    store
      ..setEmail(a, 'a@example.com')
      ..setEmail(b, 'b@example.com')
      ..saveSyncData(a, jsonEncode({'weekly_digest': true, 'email_alerts': false}))
      ..saveSyncData(b, jsonEncode({'weekly_digest': false}));
    expect((await stats())['accounts'], {'email': 2, 'synced': 2, 'weekly_digest': 1, 'email_alerts_off': 1});
  });

  test('telemetry needs a signed-in app', () async {
    expect((await raw('POST', '/v1/telemetry', body: {'events': {}})).statusCode, 401);
  });

  test('the admin page: login form, wrong key, dashboard', () async {
    final login = await raw('GET', '/admin');
    expect(login.statusCode, 200);
    expect(await login.readAsString(), contains('ADMIN_TOKEN'));
    final wrong = await raw('POST', '/admin', form: 'key=nope');
    expect(wrong.statusCode, 403);
    expect(await wrong.readAsString(), contains('Hibás kulcs'));
    final a = await newUser();
    await send(a, {
      'platform': 'android',
      'version': '1',
      'events': {'app_open': 1},
      'errors': [
        {'message': '<script>alert(1)</script>', 'stack': ''},
      ],
    });
    final ok = await raw('POST', '/admin', form: 'key=admin-secret');
    expect(ok.statusCode, 200);
    final html = await ok.readAsString();
    expect(html, contains('WhatStock statisztika'));
    expect(html, contains('2026-10-14'));
    expect(html, isNot(contains('<script>alert')));
    expect(html, contains('&lt;script&gt;'));
    expect((await raw('GET', '/admin/stats.json', token: 'nope')).statusCode, 403);
  });

  test('without ADMIN_TOKEN the admin page does not exist', () async {
    final open = Api(store: store, anthropicApiKey: 'k', finnhubApiKey: 'k', verifier: const DevVerifier());
    final res = await open.handler(Request('GET', Uri.parse('http://localhost/admin')));
    expect(res.statusCode, 404);
  });
}
