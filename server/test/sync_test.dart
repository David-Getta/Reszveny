import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

void main() {
  late Store store;
  late Api api;

  setUp(() {
    store = Store.inMemory();
    api = Api(store: store, anthropicApiKey: 'k', finnhubApiKey: 'k', verifier: const DevVerifier());
  });

  Future<(int, Map<String, dynamic>)> call(String method, String path, {String? token, String? body}) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token'},
        body: body,
      ),
    );
    return (res.statusCode, (jsonDecode(await res.readAsString()) as Map).cast<String, dynamic>());
  }

  Future<(String, String)> newUser() async {
    final (_, b) = await call('POST', '/v1/auth/anonymous');
    return (b['token'] as String, b['user_id'] as String);
  }

  test('an account with e-mail stores and returns its data; others cannot write', () async {
    final (token, uid) = await newUser();
    expect((await call('GET', '/v1/sync', token: token)).$2['data'], isNull);
    final payload = jsonEncode({
      'data': {
        'favorites': ['AAPL'],
        'lots': [],
      },
    });
    final (refused, err) = await call('PUT', '/v1/sync', token: token, body: payload);
    expect((refused, err['error']), (403, 'sign_in_required'));

    store.setEmail(uid, 'dave@example.com');
    final (ok, saved) = await call('PUT', '/v1/sync', token: token, body: payload);
    expect(ok, 200);
    final (_, got) = await call('GET', '/v1/sync', token: token);
    expect(got['data'], {
      'favorites': ['AAPL'],
      'lots': [],
    });
    expect(got['updated_at'], saved['updated_at']);

    expect((await call('PUT', '/v1/sync', token: token, body: '{"data": 3}')).$1, 400);
    expect((await call('PUT', '/v1/sync', token: token, body: 'x' * (Api.syncMaxBytes + 1))).$1, 413);
    expect((await call('GET', '/v1/sync')).$1, 401);

    expect((await call('DELETE', '/v1/account', token: token)).$1, 200);
    expect(store.syncData(uid), isNull);
  });

  test('an upload built on an older version is refused with 409; one built on the current version goes in', () async {
    final (token, uid) = await newUser();
    store.setEmail(uid, 'dave@example.com');
    String put(Object? base, String fav) => jsonEncode({
      'data': {
        'favorites': [fav],
      },
      'base': base,
    });
    // Még nincs adat: a „null” alap az érvényes.
    final (first, saved) = await call('PUT', '/v1/sync', token: token, body: put(null, 'AAPL'));
    expect(first, 200);
    final v1 = saved['updated_at'] as String;
    // Egy másik eszköz is „üresre” épített: ütközés, a mostani változat idejével.
    final (conflict, err) = await call('PUT', '/v1/sync', token: token, body: put(null, 'MSFT'));
    expect((conflict, err['error'], err['updated_at']), (409, 'conflict', v1));
    // A friss változatra építve mehet.
    expect((await call('PUT', '/v1/sync', token: token, body: put(v1, 'NVDA'))).$1, 200);
    expect((await call('PUT', '/v1/sync', token: token, body: put(v1, 'OTP'))).$1, 409);
    expect((await call('GET', '/v1/sync', token: token)).$2['data'], {
      'favorites': ['NVDA'],
    });
    // Alap nélkül (régebbi app) az utolsó írás nyer.
    final old = jsonEncode({
      'data': {
        'favorites': ['TSLA'],
      },
    });
    expect((await call('PUT', '/v1/sync', token: token, body: old)).$1, 200);
  });
}
