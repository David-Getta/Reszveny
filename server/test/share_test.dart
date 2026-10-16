import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/invites.dart';
import 'package:whatstock_server/src/plans.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';

void main() {
  late Store store;
  late Api api;

  Api make({InviteBook invites = const InviteBook()}) => Api(
    store: store,
    anthropicApiKey: 'sk-test',
    finnhubApiKey: 'fh-test',
    verifier: const DevVerifier(),
    publicUrl: 'https://ws.example',
    invites: invites,
  );

  setUp(() {
    store = Store.inMemory();
    api = make();
  });

  Future<Response> raw(String method, String path, {String? token, Object? body, Map<String, String>? headers}) async =>
      api.handler(
        Request(
          method,
          Uri.parse('http://localhost$path'),
          headers: {
            'content-type': 'application/json',
            if (token != null) 'authorization': 'Bearer $token',
            ...?headers,
          },
          body: body == null ? null : jsonEncode(body),
        ),
      );

  Future<String> newUser() async =>
      jsonDecode(await (await raw('POST', '/v1/auth/anonymous')).readAsString())['token'] as String;

  final png = Uint8List.fromList([0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, 1, 2, 3, 4]);

  Map<String, dynamic> share({String generatedAt = '2026-10-14T10:00:00Z', String headline = 'AI demand is strong.'}) =>
      {
        'symbol': 'nvda',
        'company': 'NVIDIA Corporation',
        'headline': headline,
        'lang': 'hu',
        'generated_at': generatedAt,
        'price': '187,60 USD',
        'mood': 1,
        'mood_label': 'Optimista',
        'scenarios': [
          {'kind': 'bull', 'label': 'Optimista forgatókönyv', 'probability': 30, 'range': '215–240 USD'},
          {'kind': 'base', 'label': 'Alapforgatókönyv', 'probability': 45, 'range': '175–205 USD', 'likely': true},
          {'kind': 'bear', 'label': 'Pesszimista <b>', 'probability': 25, 'range': '130–160 USD'},
          {'kind': 'evil', 'probability': 99},
        ],
        'labels': {
          'mood': 'Piaci hangulat',
          'likely': 'Legvalószínűbb',
          'generated': 'Készült: 2026. okt. 14.',
          'disclaimer': 'Nem befektetési tanács.',
          'cta': 'Kezdjük',
          'tagline': 'Fotózz le egy részvényt.',
        },
        'image': base64Encode(png),
      };

  test('a shared analysis gets a public page with a link preview and the picture', () async {
    final t = await newUser();
    final res = await raw('POST', '/v1/share', token: t, body: share());
    expect(res.statusCode, 200);
    final body = jsonDecode(await res.readAsString()) as Map;
    final id = body['id'] as String;
    expect(body['url'], 'https://ws.example/s/$id');

    final page = await raw('GET', '/s/$id');
    expect(page.statusCode, 200);
    final html = await page.readAsString();
    expect(html, contains('<html lang="hu">'));
    expect(html, contains('<meta property="og:title" content="NVIDIA Corporation (NVDA) · WhatStock">'));
    expect(html, contains('<meta property="og:image" content="https://ws.example/s/$id.png">'));
    expect(html, contains('summary_large_image'));
    expect(html, contains('AI demand is strong.'));
    expect(html, contains('Legvalószínűbb'));
    expect(html, contains('Pesszimista &lt;b&gt;'));
    expect(html, isNot(contains('evil')));
    expect(html, contains('href="/"'));

    final img = await raw('GET', '/s/$id.png');
    expect(img.headers['content-type'], 'image/png');
    expect(await img.read().expand((c) => c).toList(), png);
  });

  test('sharing the same analysis again gives the same link, a new analysis a new one', () async {
    final t = await newUser();
    Future<String> idOf(Map<String, dynamic> b) async =>
        jsonDecode(await (await raw('POST', '/v1/share', token: t, body: b)).readAsString())['id'] as String;
    final a = await idOf(share());
    expect(await idOf(share(headline: 'Updated')), a);
    expect(await idOf(share(generatedAt: '2026-10-15T10:00:00Z')), isNot(a));
    expect(await (await raw('GET', '/s/$a')).readAsString(), contains('Updated'));
  });

  test('bad input is refused, links of a deleted account disappear', () async {
    final t = await newUser();
    expect((await raw('POST', '/v1/share', body: share())).statusCode, 401);
    expect((await raw('POST', '/v1/share', token: t, body: {...share(), 'symbol': '<x>'})).statusCode, 400);
    expect(
      (await raw(
        'POST',
        '/v1/share',
        token: t,
        body: {
          ...share(),
          'image': base64Encode([1, 2, 3, 4, 5, 6, 7, 8, 9]),
        },
      )).statusCode,
      400,
    );
    final id =
        jsonDecode(await (await raw('POST', '/v1/share', token: t, body: share())).readAsString())['id'] as String;
    expect((await raw('GET', '/s/does-not-exist')).statusCode, 404);
    expect((await raw('DELETE', '/v1/account', token: t)).statusCode, 200);
    expect((await raw('GET', '/s/$id')).statusCode, 404);
  });

  test('the landing page: language from the browser, downloads, closed-preview note', () async {
    final hu = await (await raw('GET', '/', headers: {'accept-language': 'hu-HU,hu;q=0.9'})).readAsString();
    expect(hu, contains('Fotózz le egy részvényt'));
    expect(hu, contains('releases/latest/download/WhatStock-android-arm64.apk'));
    expect(hu, isNot(contains('Zárt előzetes')));
    final en = await (await raw('GET', '/')).readAsString();
    expect(en, contains('Photograph a stock'));

    api = make(invites: InviteBook.parse('CODE-1:Teszt'));
    final closed = await (await raw('GET', '/?lang=hu')).readAsString();
    expect(closed, contains('Zárt előzetes'));
    // A nyilvános oldalak meghívókód nélkül is elérhetők.
    expect((await raw('GET', '/s/abcdefgh')).statusCode, 404);
  });

  test('the pricing page, robots.txt and the sitemap', () async {
    final hu = await (await raw('GET', '/pricing?lang=hu')).readAsString();
    expect(hu, contains('<html lang="hu"'));
    expect(hu, contains('Normál'));
    expect(hu, contains(r'$18.99'));
    expect(hu, contains('40 AI-elemzés havonta'));
    // Havi Max: 41,99 / 40 ≈ 1,05 dollár elemzésenként.
    expect(hu, contains(r'kb. $1.05 elemzésenként'));
    expect(hu, contains(r'Évesen $189.99 (havonta $15.83)'));
    expect(hu, contains('50 elemzés'));
    final en = await (await raw('GET', '/pricing')).readAsString();
    expect(en, contains('Most popular'));
    expect(en, contains('3-day trial with 3 AI analyses'));
    final landing = await (await raw('GET', '/?lang=en')).readAsString();
    expect(landing, contains('href="/pricing?lang=en"'));

    expect(await (await raw('GET', '/robots.txt')).readAsString(), contains('Disallow: /admin'));
    final map = await (await raw('GET', '/sitemap.xml')).readAsString();
    expect(map, contains('/pricing?lang=hu</loc>'));
  });

  test('the USD prices match the app', () {
    final client = File('../lib/features/billing/pricing.dart').readAsStringSync();
    final found = {
      for (final m in RegExp(r"'(whatstock\.[a-z0-9.]+)': ([0-9.]+)").allMatches(client)) m[1]!: double.parse(m[2]!),
    };
    expect(found, PlanSpec.usd);
  });
}
