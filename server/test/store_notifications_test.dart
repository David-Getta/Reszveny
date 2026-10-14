import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/store_apis.dart';

String fakeJws(Map<String, dynamic> payload) {
  String b64(Object o) => base64Url.encode(utf8.encode(jsonEncode(o))).replaceAll('=', '');
  return '${b64({'alg': 'ES256'})}.${b64(payload)}.c2ln';
}

Future<String> generate(List<String> args) async {
  final dir = await Directory.systemTemp.createTemp('keys');
  try {
    final out = '${dir.path}/k.pem';
    final r = await Process.run('openssl', [...args, '-out', out]);
    expect(r.exitCode, 0, reason: '${r.stderr}');
    return File(out).readAsStringSync();
  } finally {
    dir.deleteSync(recursive: true);
  }
}

void main() {
  late String ecKey, rsaKey;
  setUpAll(() async {
    ecKey = await generate(['genpkey', '-algorithm', 'EC', '-pkeyopt', 'ec_paramgen_curve:P-256']);
    rsaKey = await generate(['genpkey', '-algorithm', 'RSA', '-pkeyopt', 'rsa_keygen_bits:2048']);
  });

  final future = DateTime.now().add(const Duration(days: 25));
  late Store store;
  late Api api;
  // Amit a „bolt” a lekérdezésekre válaszol.
  late Map<String, Map<String, dynamic>> appleTransactions;
  late Map<String, Map<String, dynamic>> googleTokens;

  setUp(() {
    store = Store.inMemory();
    appleTransactions = {};
    googleTokens = {};
    final apple = AppleStoreApi(
      issuerId: 'i',
      keyId: 'k',
      privateKeyPem: ecKey,
      bundleId: 'hu.reszveny.reszveny',
      client: MockClient((req) async {
        final info = appleTransactions[req.url.pathSegments.last];
        if (info == null || req.url.host != 'api.storekit.itunes.apple.com') return http.Response('{}', 404);
        return http.Response(jsonEncode({'signedTransactionInfo': fakeJws(info)}), 200);
      }),
    );
    final google = GooglePlayApi(
      serviceAccountJson: jsonEncode({'client_email': 'ws@x.iam.gserviceaccount.com', 'private_key': rsaKey}),
      packageName: 'hu.reszveny.reszveny',
      client: MockClient((req) async {
        if (req.url.host == 'oauth2.googleapis.com') {
          return http.Response(jsonEncode({'access_token': 'ya29', 'expires_in': 3600}), 200);
        }
        final p = googleTokens[Uri.decodeComponent(req.url.pathSegments.last)];
        return p == null ? http.Response('{}', 404) : http.Response(jsonEncode(p), 200);
      }),
    );
    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: StoreVerifier(apple: apple, google: google),
      googleNotificationToken: 'rtdn-secret',
    );
  });

  Future<(int, Map<String, dynamic>)> post(String path, Object body, {String? token}) async {
    final res = await api.handler(
      Request(
        'POST',
        Uri.parse('http://localhost$path'),
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token'},
        body: jsonEncode(body),
      ),
    );
    final text = await res.readAsString();
    return (
      res.statusCode,
      text.startsWith('{') ? (jsonDecode(text) as Map).cast<String, dynamic>() : <String, dynamic>{},
    );
  }

  Future<(String, String)> newUser() async {
    final (_, b) = await post('/v1/auth/anonymous', {});
    return (b['token'] as String, b['user_id'] as String);
  }

  Map<String, dynamic> appleTxn(String id, {String product = 'whatstock.sub.pro', Object? revoked}) => {
    'transactionId': id,
    'originalTransactionId': '100',
    'bundleId': 'hu.reszveny.reszveny',
    'productId': product,
    'expiresDate': future.millisecondsSinceEpoch,
    'revocationDate': ?revoked,
  };

  Future<int> appleNote(String type, String txn) async => (await post('/v1/stores/apple/notifications', {
    'signedPayload': fakeJws({
      'notificationType': type,
      'data': {
        'signedTransactionInfo': fakeJws({'transactionId': txn}),
      },
    }),
  })).$1;

  test('App Store: a renewal starts a new period once; a refund ends it', () async {
    final (token, uid) = await newUser();
    appleTransactions['100'] = appleTxn('100');
    final (status, _) = await post('/v1/purchases/verify', {
      'platform': 'app_store',
      'product_id': 'whatstock.sub.pro',
      'verification_data': fakeJws({'transactionId': '100'}),
    }, token: token);
    expect(status, 200);
    store.save(store.entitlement(uid)..used = 10);

    appleTransactions['101'] = appleTxn('101');
    expect(await appleNote('DID_RENEW', '101'), 200);
    expect(store.entitlement(uid).used, 0);
    expect(store.entitlement(uid).tier, 'pro');

    store.save(store.entitlement(uid)..used = 5);
    expect(await appleNote('DID_RENEW', '101'), 200);
    expect(store.entitlement(uid).used, 5, reason: 'the same renewal is credited only once');

    appleTransactions['101'] = appleTxn('101', revoked: DateTime.now().millisecondsSinceEpoch);
    expect(await appleNote('REFUND', '101'), 200);
    expect(store.entitlement(uid).tier, isNull);

    // Ismeretlen tranzakció vagy szemét: elnyeljük (különben az Apple újraküldené).
    expect(await appleNote('DID_RENEW', '999'), 200);
    expect((await post('/v1/stores/apple/notifications', {'signedPayload': 'junk'})).$1, 200);
  });

  Map<String, dynamic> pubsub(Map<String, dynamic> note) => {
    'message': {'data': base64Encode(utf8.encode(jsonEncode(note))), 'messageId': '1'},
    'subscription': 'projects/p/subscriptions/s',
  };

  test('Google Play: renewals and refunds via real-time notifications', () async {
    final (token, uid) = await newUser();
    googleTokens['tokS'] = {
      'subscriptionState': 'SUBSCRIPTION_STATE_ACTIVE',
      'latestOrderId': 'GPA.1..0',
      'lineItems': [
        {'productId': 'whatstock.sub.pro', 'expiryTime': future.toUtc().toIso8601String()},
      ],
    };
    googleTokens['tokP'] = {'purchaseState': 0, 'orderId': 'GPA.2'};
    for (final (product, t) in [('whatstock.sub.pro', 'tokS'), ('whatstock.pack.5', 'tokP')]) {
      final (status, _) = await post('/v1/purchases/verify', {
        'platform': 'google_play',
        'product_id': product,
        'verification_data': t,
      }, token: token);
      expect(status, 200);
    }
    expect(store.entitlement(uid).extra, 5);
    store.save(store.entitlement(uid)..used = 12);

    const path = '/v1/stores/google/notifications?token=rtdn-secret';
    googleTokens['tokS'] = {...googleTokens['tokS']!, 'latestOrderId': 'GPA.1..1'};
    final renew = pubsub({
      'subscriptionNotification': {
        'notificationType': 2,
        'purchaseToken': 'tokS',
        'subscriptionId': 'whatstock.sub.pro',
      },
    });
    expect((await post(path, renew)).$1, 200);
    expect(store.entitlement(uid).used, 0);

    final voided = pubsub({
      'voidedPurchaseNotification': {'purchaseToken': 'tokP', 'orderId': 'GPA.2', 'productType': 2},
    });
    expect((await post(path, voided)).$1, 200);
    expect(store.entitlement(uid).extra, 0);
    store.save(store.entitlement(uid)..extra = 7);
    expect((await post(path, voided)).$1, 200);
    expect(store.entitlement(uid).extra, 7, reason: 'a refund is taken back only once');

    expect((await post('/v1/stores/google/notifications?token=wrong', renew)).$1, 403);
    expect((await post('/v1/stores/google/notifications', renew)).$1, 403);
  });

  test('without store keys the notification endpoints do not exist', () async {
    api = Api(store: store, anthropicApiKey: 'k', finnhubApiKey: 'k', verifier: const DevVerifier());
    expect((await post('/v1/stores/apple/notifications', {})).$1, 404);
    expect((await post('/v1/stores/google/notifications?token=x', {})).$1, 404);
  });
}
