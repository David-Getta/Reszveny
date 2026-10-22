import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/site_pages.dart';

void main() {
  late Api api;
  late List<String> calls;

  setUp(() {
    calls = [];
    api = Api(
      store: Store.inMemory(),
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      publicUrl: 'https://ws.example',
      client: MockClient((req) async {
        calls.add('${req.url.path}?${req.url.query}');
        if (req.url.path.endsWith('/stock/profile2')) {
          return http.Response(
            jsonEncode({
              'name': 'Apple Inc',
              'exchange': 'NASDAQ NMS - GLOBAL MARKET',
              'finnhubIndustry': 'Technology',
              'marketCapitalization': 3450000.5,
              'currency': 'USD',
              'country': 'US',
              'ipo': '1980-12-12',
              'weburl': 'https://www.apple.com/',
            }),
            200,
          );
        }
        if (req.url.path.endsWith('/quote')) {
          return http.Response(jsonEncode({'c': 231.45, 'd': -2.15, 'dp': -0.92}), 200);
        }
        if (req.url.path.endsWith('/stock/metric')) {
          expect(req.url.queryParameters['metric'], 'all');
          return http.Response(
            jsonEncode({
              'metric': {
                'peTTM': 35.2,
                'dividendYieldIndicatedAnnual': 0.45,
                'beta': 1.21,
                '52WeekLow': 164.08,
                '52WeekHigh': 237.23,
              },
            }),
            200,
          );
        }
        return http.Response('{}', 404);
      }),
    );
  });

  Future<Response> get(String path) async => api.handler(Request('GET', Uri.parse('http://localhost$path')));

  test('a popular stock page in Hungarian and English, cached for an hour', () async {
    final hu = await (await get('/stocks/aapl?lang=hu')).readAsString();
    expect(hu, contains('<html lang="hu"'));
    expect(hu, contains('<title>Apple Inc (AAPL) részvény: árfolyam és AI-elemzés – WhatStock</title>'));
    expect(hu, contains('231,45 <small>USD</small>'));
    expect(hu, contains('−2,15 (−0,92%)'));
    expect(hu, contains('3,45 ezer mrd USD'));
    expect(hu, contains('Technology'));
    expect(hu, contains('www.apple.com'));
    expect(hu, contains('WhatStock-android-arm64.apk'));
    expect(hu, contains('href="/stocks/MSFT?lang=hu"'));
    expect(hu, isNot(contains('href="/stocks/AAPL?lang=hu"')), reason: 'no link to itself');
    // Fő mutatók a Finnhub-mutatókból.
    expect(hu, contains('Fő mutatók'));
    expect(hu, contains('<tr><td>P&#47;E (12 hónap)</td><td>35,2</td></tr>'));
    expect(hu, contains('<tr><td>Osztalékhozam</td><td>0,45%</td></tr>'));
    expect(hu, contains('<tr><td>52 hetes sáv</td><td>164,08 – 237,23 USD</td></tr>'));
    final en = await (await get('/stocks/AAPL?lang=en')).readAsString();
    expect(en, contains('3.45 T USD'));
    expect(en, contains('<tr><td>Beta</td><td>1.21</td></tr>'));
    expect(en, contains('AI analysis of AAPL'));
    expect(calls.where((c) => c.contains('profile2')), hasLength(1), reason: 'second request from the cache');
  });

  test('only popular stocks have a page; the list and the sitemap name them all', () async {
    final missing = await get('/stocks/ZZZZ');
    expect(missing.statusCode, 404);
    expect(calls, isEmpty);
    final index = await (await get('/stocks?lang=hu')).readAsString();
    expect(index, contains('Népszerű részvények'));
    for (final s in popularStocks) {
      expect(index, contains('href="/stocks/$s?lang=hu"'));
    }
    final map = await (await get('/sitemap.xml')).readAsString();
    expect(map, contains('https://ws.example/stocks/BRK.B?lang=en</loc>'));
    final landing = await (await get('/?lang=en')).readAsString();
    expect(landing, contains('href="/stocks?lang=en"'));
  });

  test('market cap wording', () {
    expect(marketCapText(3450000, 'en', 'USD'), '3.45 T USD');
    expect(marketCapText(85400, 'hu', 'USD'), '85,4 mrd USD');
    expect(marketCapText(512, 'en', 'EUR'), '512 M EUR');
  });

  test('a failing data source still gives a page, without caching it', () async {
    api = Api(
      store: Store.inMemory(),
      anthropicApiKey: 'sk-test',
      finnhubApiKey: 'fh-test',
      verifier: const DevVerifier(),
      client: MockClient((req) async => http.Response('limit', 429)),
    );
    final page = await (await get('/stocks/NVDA')).readAsString();
    expect(page, contains('The price is not available right now.'));
    expect(page, contains('<h1>NVDA</h1>'));
  });

  test('the sample analysis page: a fictional company, scenarios, sections, Q&A; linked and in the sitemap', () async {
    final hu = await (await get('/sample?lang=hu')).readAsString();
    expect(hu, contains('<html lang="hu"'));
    expect(hu, contains('<title>Minta AI-elemzés – így néz ki egy WhatStock-elemzés</title>'));
    expect(hu, contains('Minta · kitalált cég, nem valós adat'));
    expect(hu, contains('Northwind Robotics'));
    expect(hu, contains('<div class="sc base">'));
    expect(hu, contains('<span style="width:50%">'));
    expect(hu, contains('legvalószínűbb'));
    expect(hu, contains('<li>Verseny: két nagyobb szereplő is olcsóbb modellel jelent meg.</li>'));
    expect(hu, contains('Miért nyomja a marzsot'));
    expect(hu, contains('WhatStock-android-arm64.apk'));
    expect(hu, isNot(contains('noindex')));
    final res = await get('/sample');
    expect(res.headers['cache-control'], 'public, max-age=3600');
    final en = await res.readAsString();
    expect(en, contains('<html lang="en"'));
    expect(en, contains('Sample · fictional company, not real data'));
    expect(en, contains('Cautiously optimistic'));
    expect(calls, isEmpty, reason: 'a minta nem kér piaci adatot');
    // A nyitóoldal és a lábléc linkeli; a sitemapben mindkét nyelven.
    expect(await (await get('/?lang=hu')).readAsString(), contains('href="/sample?lang=hu">Milyen egy elemzés?</a>'));
    expect(
      await (await get('/pricing?lang=en')).readAsString(),
      contains('href="/sample?lang=en">See a sample analysis</a>'),
    );
    expect(await (await get('/sitemap.xml')).readAsString(), contains('<loc>https://ws.example/sample?lang=hu</loc>'));
  });
}
