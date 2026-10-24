import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

/// A fiók törlése böngészőből (Google Play: az app nélkül is kérhető törlés).
void main() {
  late Store store;
  late Api api;
  late ConsoleMailer mailer;

  setUp(() {
    store = Store.inMemory();
    mailer = ConsoleMailer();
    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: const DevVerifier(),
      mailer: mailer,
      client: MockClient((_) async => http.Response('{}', 404)),
    );
  });

  Future<({int status, String body})> request(
    String method,
    String path, {
    String? token,
    Object? json,
    String? form,
  }) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {
          'content-type': form != null ? 'application/x-www-form-urlencoded' : 'application/json',
          if (token != null) 'authorization': 'Bearer $token',
        },
        body: form ?? (json == null ? null : jsonEncode(json)),
      ),
    );
    return (status: res.statusCode, body: await res.readAsString());
  }

  Future<String> account(String email) async {
    final anon = jsonDecode((await request('POST', '/v1/auth/anonymous')).body) as Map;
    await request('POST', '/v1/auth/email/start', json: {'email': email});
    await request(
      'POST',
      '/v1/auth/email/verify',
      token: anon['token'] as String,
      json: {'email': email, 'code': mailer.sent[email]},
    );
    return store.userIdForEmail(email)!;
  }

  test('the page asks for the email, a code goes there, and the code deletes the account', () async {
    final uid = await account('del@x.io');
    mailer.sent.clear();
    final page = await request('GET', '/account/delete?lang=en');
    expect(page.status, 200);
    expect(page.body, contains('name="email"'));

    // Ismeretlen címre nem megy kód, de a válasz ugyanaz (a cím létezése nem derül ki).
    final unknown = await request('POST', '/account/delete?lang=en', form: 'step=start&email=nobody%40x.io');
    expect((unknown.status, unknown.body.contains('name="code"')), (200, true));
    expect(mailer.sent, isEmpty);

    final sent = await request('POST', '/account/delete?lang=en', form: 'step=start&email=del%40x.io');
    expect(sent.body, contains('name="code"'));
    final code = mailer.sent['del@x.io']!;

    final wrong = await request('POST', '/account/delete?lang=en', form: 'step=confirm&email=del%40x.io&code=000000x');
    expect(wrong.status, 401);
    expect(store.userIdForEmail('del@x.io'), uid);

    final done = await request('POST', '/account/delete?lang=en', form: 'step=confirm&email=del%40x.io&code=$code');
    expect(done.status, 200);
    expect(done.body, contains('have been deleted'));
    expect(store.userIdForEmail('del@x.io'), isNull);
  });

  test('the landing page links to it, in Hungarian too', () async {
    expect((await request('GET', '/?lang=hu')).body, contains('/account/delete?lang=hu'));
    expect((await request('GET', '/account/delete', form: null)).body, contains('Delete your WhatStock account'));
    final hu = await api.handler(
      Request('GET', Uri.parse('http://localhost/account/delete'), headers: {'accept-language': 'hu-HU,hu;q=0.9'}),
    );
    expect(await hu.readAsString(), contains('WhatStock-fiók törlése'));
  });

  test('a bad email address is answered on the page, not with an error', () async {
    final r = await request('POST', '/account/delete?lang=hu', form: 'step=start&email=nope');
    expect(r.status, 400);
    expect(r.body, contains('Érvénytelen e-mail cím.'));
  });
}
