import 'dart:convert';
import 'dart:io';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/store_apis.dart';

/// Aláíratlan „JWS” a tesztekhez (a bolttól jövőt nem ellenőrizzük, csak olvassuk).
String fakeJws(Map<String, dynamic> payload) {
  String b64(Object o) => base64Url.encode(utf8.encode(jsonEncode(o))).replaceAll('=', '');
  return '${b64({'alg': 'ES256'})}.${b64(payload)}.c2ln';
}

/// Tesztkulcsok futás közben, openssl-lel (privát kulcs nem kerül a repóba).
Future<(String priv, String pub)> keyPair(List<String> genArgs) async {
  final dir = await Directory.systemTemp.createTemp('keys');
  try {
    final priv = '${dir.path}/priv.pem', pub = '${dir.path}/pub.pem';
    final gen = await Process.run('openssl', [...genArgs, '-out', priv]);
    expect(gen.exitCode, 0, reason: '${gen.stderr}');
    final p = await Process.run('openssl', ['pkey', '-in', priv, '-pubout', '-out', pub]);
    expect(p.exitCode, 0, reason: '${p.stderr}');
    return (File(priv).readAsStringSync(), File(pub).readAsStringSync());
  } finally {
    dir.deleteSync(recursive: true);
  }
}

void main() {
  late String ecPriv, ecPub, rsaPriv, rsaPub;
  final now = DateTime.utc(2026, 10, 14, 12);
  final future = now.add(const Duration(days: 20)).millisecondsSinceEpoch;

  setUpAll(() async {
    (ecPriv, ecPub) = await keyPair(['genpkey', '-algorithm', 'EC', '-pkeyopt', 'ec_paramgen_curve:P-256']);
    (rsaPriv, rsaPub) = await keyPair(['genpkey', '-algorithm', 'RSA', '-pkeyopt', 'rsa_keygen_bits:2048']);
  });

  group('App Store', () {
    late List<http.Request> calls;

    AppleStoreApi apple(Map<String, dynamic>? transaction, {int prodStatus = 404, int sandboxStatus = 200}) {
      calls = [];
      return AppleStoreApi(
        issuerId: 'issuer-1',
        keyId: 'KEY123',
        privateKeyPem: ecPriv,
        bundleId: 'hu.reszveny.reszveny',
        clock: () => now,
        client: MockClient((req) async {
          calls.add(req);
          final isProd = req.url.host == 'api.storekit.itunes.apple.com';
          final status = isProd ? prodStatus : sandboxStatus;
          if (status != 200 || transaction == null) return http.Response('{}', status);
          return http.Response(jsonEncode({'signedTransactionInfo': fakeJws(transaction)}), 200);
        }),
      );
    }

    final sub = {
      'transactionId': '2000000123',
      'bundleId': 'hu.reszveny.reszveny',
      'productId': 'whatstock.sub.pro',
      'expiresDate': future,
    };

    test('asks Apple about the transaction (production, then sandbox) with a signed token', () async {
      final api = apple(sub);
      final id = await api.verify(
        productId: 'whatstock.sub.pro',
        signedTransaction: fakeJws({'transactionId': '2000000123'}),
      );
      expect(id, '2000000123');
      expect(calls.map((c) => c.url.toString()), [
        'https://api.storekit.itunes.apple.com/inApps/v1/transactions/2000000123',
        'https://api.storekit-sandbox.itunes.apple.com/inApps/v1/transactions/2000000123',
      ]);
      final bearer = calls.first.headers['authorization']!.substring(7);
      final jwt = JWT.verify(bearer, ECPublicKey(ecPub));
      expect(jwt.header?['kid'], 'KEY123');
      expect(jwt.header?['alg'], 'ES256');
      expect((jwt.payload as Map)['iss'], 'issuer-1');
      expect((jwt.payload as Map)['aud'], 'appstoreconnect-v1');
      expect((jwt.payload as Map)['bid'], 'hu.reszveny.reszveny');
    });

    test('refuses other apps, other products, refunds and expired subscriptions', () async {
      final jws = fakeJws({'transactionId': '2000000123'});
      expect(
        await apple({...sub, 'bundleId': 'com.other'}).verify(productId: 'whatstock.sub.pro', signedTransaction: jws),
        isNull,
      );
      expect(await apple(sub).verify(productId: 'whatstock.sub.max', signedTransaction: jws), isNull);
      expect(
        await apple({...sub, 'revocationDate': future}).verify(productId: 'whatstock.sub.pro', signedTransaction: jws),
        isNull,
      );
      expect(
        await apple({...sub, 'expiresDate': now.subtract(const Duration(days: 1)).millisecondsSinceEpoch})
            .verify(productId: 'whatstock.sub.pro', signedTransaction: jws),
        isNull,
      );
      // Csomag (nem előfizetés): nincs lejárat.
      final pack = {'transactionId': '2000000124', 'bundleId': 'hu.reszveny.reszveny', 'productId': 'whatstock.pack.5'};
      expect(
        await apple(pack)
            .verify(productId: 'whatstock.pack.5', signedTransaction: fakeJws({'transactionId': '2000000124'})),
        '2000000124',
      );
      // Ismeretlen tranzakció, hibás bizonylat.
      expect(
        await apple(null, sandboxStatus: 404).verify(productId: 'whatstock.sub.pro', signedTransaction: jws),
        isNull,
      );
      expect(await apple(sub).verify(productId: 'whatstock.sub.pro', signedTransaction: 'nonsense'), isNull);
      expect(
        await apple(sub).verify(productId: 'whatstock.sub.pro', signedTransaction: fakeJws({'transactionId': '../x'})),
        isNull,
      );
    });

    test('an Apple outage is an error, not a refusal', () async {
      expect(
        () => apple(sub, prodStatus: 500).verify(productId: 'whatstock.sub.pro', signedTransaction: fakeJws(sub)),
        throwsA(isA<StoreApiException>()),
      );
    });
  });

  group('Google Play', () {
    late List<http.Request> calls;

    GooglePlayApi google(Object purchase, {int status = 200}) {
      calls = [];
      return GooglePlayApi(
        serviceAccountJson: jsonEncode({
          'client_email': 'ws@proj.iam.gserviceaccount.com',
          'private_key': rsaPriv,
          'private_key_id': 'kid-1',
          'token_uri': 'https://oauth2.googleapis.com/token',
        }),
        packageName: 'hu.reszveny.reszveny',
        clock: () => now,
        client: MockClient((req) async {
          calls.add(req);
          if (req.url.host == 'oauth2.googleapis.com') {
            return http.Response(jsonEncode({'access_token': 'ya29.test', 'expires_in': 3600}), 200);
          }
          return http.Response(jsonEncode(purchase), status);
        }),
      );
    }

    final active = {
      'subscriptionState': 'SUBSCRIPTION_STATE_ACTIVE',
      'latestOrderId': 'GPA.1234-5678-9012-34567..1',
      'lineItems': [
        {'productId': 'whatstock.sub.pro', 'expiryTime': now.add(const Duration(days: 20)).toIso8601String()},
      ],
    };

    test('a service-account token, then the subscription by its purchase token', () async {
      final api = google(active);
      expect(await api.verify(productId: 'whatstock.sub.pro', purchaseToken: 'tok/en'), 'GPA.1234-5678-9012-34567..1');
      expect(calls, hasLength(2));
      final form = Uri.splitQueryString(calls.first.body);
      expect(form['grant_type'], 'urn:ietf:params:oauth:grant-type:jwt-bearer');
      final jwt = JWT.verify(form['assertion']!, RSAPublicKey(rsaPub));
      expect(jwt.header?['alg'], 'RS256');
      expect((jwt.payload as Map)['iss'], 'ws@proj.iam.gserviceaccount.com');
      expect((jwt.payload as Map)['scope'], 'https://www.googleapis.com/auth/androidpublisher');
      expect(
        calls.last.url.toString(),
        'https://androidpublisher.googleapis.com/androidpublisher/v3/applications/hu.reszveny.reszveny/purchases/subscriptionsv2/tokens/tok%2Fen',
      );
      expect(calls.last.headers['authorization'], 'Bearer ya29.test');
      // A hozzáférési token újrahasznosul.
      await api.verify(productId: 'whatstock.sub.pro', purchaseToken: 'x');
      expect(calls.where((c) => c.url.host == 'oauth2.googleapis.com'), hasLength(1));
    });

    test('refuses ended, expired or other subscriptions', () async {
      for (final p in [
        {...active, 'subscriptionState': 'SUBSCRIPTION_STATE_EXPIRED'},
        {
          ...active,
          'lineItems': [
            {'productId': 'whatstock.sub.pro', 'expiryTime': now.subtract(const Duration(hours: 1)).toIso8601String()},
          ],
        },
      ]) {
        expect(await google(p).verify(productId: 'whatstock.sub.pro', purchaseToken: 't'), isNull);
      }
      expect(await google(active).verify(productId: 'whatstock.sub.max', purchaseToken: 't'), isNull);
      expect(await google(active, status: 404).verify(productId: 'whatstock.sub.pro', purchaseToken: 't'), isNull);
    });

    test('analysis packs: purchased state and order id', () async {
      final api = google({'purchaseState': 0, 'orderId': 'GPA.9'});
      expect(await api.verify(productId: 'whatstock.pack.5', purchaseToken: 't'), 'GPA.9');
      expect(calls.last.url.path, endsWith('/purchases/products/whatstock.pack.5/tokens/t'));
      expect(await google({'purchaseState': 1}).verify(productId: 'whatstock.pack.5', purchaseToken: 't'), isNull);
    });
  });

  test('a purchase is not refused while the store is unreachable (502, the app retries later)', () async {
    final failing = AppleStoreApi(
      issuerId: 'i',
      keyId: 'k',
      privateKeyPem: ecPriv,
      bundleId: 'hu.reszveny.reszveny',
      client: MockClient((_) async => http.Response('down', 503)),
    );
    final api = Api(
      store: Store.inMemory(),
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: StoreVerifier(apple: failing),
    );
    Future<Response> call(String path, {String? token, Object? body}) async => api.handler(
      Request(
        'POST',
        Uri.parse('http://localhost$path'),
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token'},
        body: body == null ? null : jsonEncode(body),
      ),
    );
    final token = jsonDecode(await (await call('/v1/auth/anonymous')).readAsString())['token'] as String;
    final res = await call(
      '/v1/purchases/verify',
      token: token,
      body: {
        'platform': 'app_store',
        'product_id': 'whatstock.pack.5',
        'verification_data': fakeJws({'transactionId': '1'}),
      },
    );
    expect(res.statusCode, 502);
    expect(jsonDecode(await res.readAsString())['error'], 'store_unavailable');
  });

  test('the store verifier picks the store by platform and refuses unknown or unconfigured ones', () async {
    const none = StoreVerifier();
    expect(await none.verify(platform: 'app_store', productId: 'whatstock.pack.5', verificationData: 'x'), isNull);
    expect(await none.verify(platform: 'google_play', productId: 'whatstock.pack.5', verificationData: 'x'), isNull);
    expect(await none.verify(platform: 'web', productId: 'whatstock.pack.5', verificationData: 'x'), isNull);
  });
}
