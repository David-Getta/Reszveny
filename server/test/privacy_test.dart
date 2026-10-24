import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/stripe.dart';

/// Adatvédelem: a törölt fiókból nem marad visszafejthető adat, a leiratkozás
/// azonnal hat, és a megőrzési idők új adat nélkül is érvényesülnek.
void main() {
  late Store store;
  late Api api;
  late List<String> stripeCalls;
  late DateTime now;

  setUp(() {
    now = DateTime.utc(2026, 10, 24, 12);
    store = Store.inMemory()..clock = () => now;
    stripeCalls = [];
    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: const DevVerifier(),
      stripe: StripeClient(
        secretKey: 'sk',
        webhookSecret: 'wh',
        prices: const {},
        client: MockClient((req) async {
          stripeCalls.add('${req.method} ${req.url.path}');
          return http.Response('{"deleted": true}', 200);
        }),
      ),
      client: MockClient((_) async => http.Response('{}', 404)),
    );
  });

  Future<int> call(String method, String path, {String? token, Object? body}) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token'},
        body: body == null ? null : jsonEncode(body),
      ),
    );
    await res.readAsString();
    return res.statusCode;
  }

  test('fingerprints kept after deletion are keyed with the server secret, not plain hashes', () {
    final (referee, _) = store.createAnonymousUser(null);
    final (referrer, _) = store.createAnonymousUser(null);
    store.addReferral(refereeId: referee, referrerId: referrer, mailbox: 'johndoe@gmail.com');
    final stored = store.database.select('SELECT mailbox_hash FROM referrals').single['mailbox_hash'] as String;
    expect(stored, startsWith('k:'));
    expect(stored, isNot(contains(Store.hashToken('johndoe@gmail.com'))));
    expect(store.mailboxRedeemedReferral('johndoe@gmail.com'), isTrue);
    // A régebbi (kulcs nélküli) sorok is felismerődnek.
    store.database.execute('UPDATE referrals SET mailbox_hash = ?', [Store.hashToken('old@gmail.com')]);
    expect(store.mailboxRedeemedReferral('old@gmail.com'), isTrue);
  });

  test('a deleted account keeps only fingerprints of its store receipts, and they can still be restored', () {
    final (uid, _) = store.createAnonymousUser(null);
    store.recordPurchase(
      userId: uid,
      productId: 'whatstock.sub.pro',
      platform: 'google',
      transactionId: 'GPA.1234-5678',
      linkKey: 'purchase-token-abc',
    );
    store.deleteUser(uid);
    final row = store.database.select('SELECT user_id, transaction_id, link_key FROM purchases').single;
    expect(row['user_id'], Store.deletedUser);
    expect('${row['transaction_id']}|${row['link_key']}', isNot(contains('GPA.1234')));
    expect('${row['link_key']}', startsWith('k:'));
    // Ugyanaz a bizonylat nem váltható be újra, a visszaállítás viszont megtalálja.
    final (next, _) = store.createAnonymousUser(null);
    expect(
      store.recordPurchase(
        userId: next,
        productId: 'whatstock.sub.pro',
        platform: 'google',
        transactionId: 'GPA.1234-5678',
      ),
      isFalse,
    );
    expect(store.userForPurchaseLink('google', 'purchase-token-abc'), Store.deletedUser);
    store.relinkPurchases(platform: 'google', linkKey: 'purchase-token-abc', from: Store.deletedUser, to: next);
    expect(store.userForPurchaseLink('google', 'purchase-token-abc'), next);
  });

  test('no device identifier is stored for a new account', () async {
    final res = await api.handler(
      Request('POST', Uri.parse('http://localhost/v1/auth/anonymous'), body: jsonEncode({'device_id': 'd_laptop_42'})),
    );
    expect(res.statusCode, 200);
    expect(store.database.select('SELECT device_id FROM users').map((r) => r['device_id']), everyElement(isNull));
  });

  test('deleting the account also deletes the customer at the payment provider', () async {
    final res = await api.handler(Request('POST', Uri.parse('http://localhost/v1/auth/anonymous')));
    final b = jsonDecode(await res.readAsString()) as Map;
    store.setStripe(b['user_id'] as String, customerId: 'cus_42');
    expect(await call('DELETE', '/v1/account', token: b['token'] as String), 200);
    expect(stripeCalls, contains('DELETE /v1/customers/cus_42'));
  });

  test('unsubscribing from alert e-mails drops the mails already waiting to be sent', () async {
    final (uid, _) = store.createAnonymousUser(null);
    store.setEmail(uid, 'dave@example.com');
    store.saveSyncData(uid, jsonEncode({'email_alerts': true}));
    store.enqueueAlertMail(uid, subject: 'WhatStock alert: AAPL', body: 'x');
    final token = store.unsubscribeToken(uid);
    expect(await call('POST', '/u/$token?kind=alerts'), 200);
    expect(store.pendingAlertMails(), isEmpty);
  });

  test('old error reports and usage rows go even when nothing new arrives', () {
    api.telemetry.clock = () => now;
    api.telemetry.record('u1', {
      'version': '0.2.292',
      'platform': 'web',
      'events': {'open': 1},
      'errors': [
        {'message': 'boom', 'stack': ''},
      ],
    });
    expect(store.database.select('SELECT * FROM error_reports'), isNotEmpty);
    now = now.add(const Duration(days: 120));
    api.housekeeping();
    expect(store.database.select('SELECT * FROM error_reports'), isEmpty);
    expect(store.database.select('SELECT * FROM daily_users'), isEmpty);
  });

  test('a failed send does not write the recipient address into the log', () async {
    final mailer = ResendMailer(
      apiKey: 'k',
      from: 'WhatStock <no-reply@whatstock.app>',
      client: MockClient(
        (_) async => http.Response(
          '{"name":"validation_error","message":"Invalid `to` field: jános.kovács@példa.hu is not valid"}',
          422,
        ),
      ),
    );
    await expectLater(
      mailer.send('jános.kovács@példa.hu', subject: 's', text: 't'),
      throwsA(predicate((e) => '$e'.contains('422') && !'$e'.contains('példa'))),
    );
  });

  test('a referral redeemed before fingerprints existed still blocks a second redemption after deletion', () {
    final (referee, _) = store.createAnonymousUser(null);
    final (referrer, _) = store.createAnonymousUser(null);
    store.setEmail(referee, 'Jo.Hn+x@gmail.com');
    // Ahogy egy 0.2.275 előtti szerver írta: postafiók-lenyomat nélkül.
    store.addReferral(refereeId: referee, referrerId: referrer);
    store.deleteUser(referee);
    expect(store.mailboxRedeemedReferral(normalizedMailbox('john@gmail.com')), isTrue);
  });
}
