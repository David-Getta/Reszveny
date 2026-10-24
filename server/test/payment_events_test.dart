import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/quota.dart';
import 'package:whatstock_server/src/stripe.dart';

/// Bolti ellenőrző: a bizonylat szövegéből a termék lejárata (`<tranzakció>|<link>|<napok>`).
class _Verifier implements PurchaseVerifier {
  _Verifier(this.now);

  final DateTime Function() now;

  @override
  Future<VerifiedPurchase?> verify({
    required String platform,
    required String productId,
    required String verificationData,
  }) async {
    final [txn, link, days] = verificationData.split('|');
    return VerifiedPurchase(
      txn,
      linkKey: link,
      expiresAt: now().add(Duration(days: int.parse(days))),
    );
  }
}

/// A fizetési események állapotgépe: több forrás, sorrend, visszatérítés, időszakok.
void main() {
  late Store store;
  late Api api;
  late DateTime now;
  late ConsoleMailer mailer;
  late StripeClient stripe;

  setUp(() {
    now = DateTime.utc(2026, 10, 11, 12);
    store = Store.inMemory()..clock = () => now;
    mailer = ConsoleMailer();
    stripe = StripeClient(
      secretKey: 'sk_test',
      webhookSecret: 'whsec_test',
      prices: StripeClient.parsePrices(
        'whatstock.sub.pro=price_pro,whatstock.sub.max=price_max,whatstock.sub.pro.year=price_pro_year,'
        'whatstock.pack.20=price_p20',
      ),
      client: MockClient((req) async => http.Response('{"id":"cs","url":"https://x"}', 200)),
    );
    api = Api(
      store: store,
      anthropicApiKey: 'k',
      finnhubApiKey: 'k',
      verifier: _Verifier(() => now),
      mailer: mailer,
      stripe: stripe,
      client: MockClient((_) async => http.Response('{}', 404)),
    );
  });

  Future<({int status, dynamic body})> call(
    String method,
    String path, {
    String? token,
    Object? body,
    String? raw,
    Map<String, String>? headers,
  }) async {
    final res = await api.handler(
      Request(
        method,
        Uri.parse('http://localhost$path'),
        headers: {'content-type': 'application/json', if (token != null) 'authorization': 'Bearer $token', ...?headers},
        body: raw ?? (body == null ? null : jsonEncode(body)),
      ),
    );
    final text = await res.readAsString();
    return (status: res.statusCode, body: text.isEmpty ? null : jsonDecode(text));
  }

  Future<(String, String)> account(String email) async {
    final anon = (await call('POST', '/v1/auth/anonymous')).body as Map;
    await call('POST', '/v1/auth/email/start', body: {'email': email});
    final r =
        (await call(
              'POST',
              '/v1/auth/email/verify',
              token: anon['token'] as String,
              body: {'email': email, 'code': mailer.sent[email]},
            )).body
            as Map;
    return (r['token'] as String, r['user_id'] as String);
  }

  Future<int> webhook(String id, String type, Map<String, dynamic> object, {int? created}) async {
    final payload = jsonEncode({
      'id': id,
      'type': type,
      'created': ?created,
      'data': {'object': object},
    });
    return (await call(
      'POST',
      '/v1/stripe/webhook',
      raw: payload,
      headers: {'stripe-signature': stripe.signForTest(payload, now)},
    )).status;
  }

  int epoch(DateTime d) => d.millisecondsSinceEpoch ~/ 1000;

  Future<void> stripeSubscribe(String uid, {String price = 'price_pro', String product = 'whatstock.sub.pro'}) async {
    await webhook('cs_$uid', 'checkout.session.completed', {
      'id': 'cs_$uid',
      'client_reference_id': uid,
      'customer': 'cus_$uid',
      'subscription': 'sub_$uid',
      'payment_status': 'paid',
      'metadata': {'product_id': product},
    });
    await webhook('in1_$uid', 'invoice.paid', {
      'id': 'in1_$uid',
      'customer': 'cus_$uid',
      'subscription': 'sub_$uid',
      'billing_reason': 'subscription_create',
      'payment_intent': 'pi1_$uid',
      'lines': {
        'data': [
          {
            'price': {'id': price},
            'period': {'end': epoch(now.add(const Duration(days: 31)))},
          },
        ],
      },
    });
  }

  test('a web subscription ending does not take away a plan bought in the App Store', () async {
    final (t, uid) = await account('two@x.io');
    await stripeSubscribe(uid);
    expect(store.entitlement(uid).tier, 'pro');
    await call(
      'POST',
      '/v1/purchases/verify',
      token: t,
      body: {'platform': 'app_store', 'product_id': 'whatstock.sub.max', 'verification_data': 'a1|orig-1|30'},
    );
    expect(store.entitlement(uid).tier, 'max');
    // A webes Pro megújul: a bolti Max marad.
    await webhook('in2', 'invoice.paid', {
      'id': 'in2',
      'customer': 'cus_$uid',
      'subscription': 'sub_$uid',
      'billing_reason': 'subscription_cycle',
      'payment_intent': 'pi2',
      'lines': {
        'data': [
          {
            'price': {'id': 'price_pro'},
            'period': {'end': epoch(now.add(const Duration(days: 30)))},
          },
        ],
      },
    });
    expect(store.entitlement(uid).tier, 'max');
    await webhook('del', 'customer.subscription.deleted', {'id': 'sub_$uid', 'customer': 'cus_$uid'});
    expect(store.entitlement(uid).tier, 'max');
    // Élő bolti előfizetés mellé nem indul webes.
    final checkout = await call('POST', '/v1/billing/checkout', token: t, body: {'product_id': 'whatstock.sub.pro'});
    expect((checkout.status, (checkout.body as Map)['error']), (409, 'store_subscription'));
  });

  test('switching from monthly to yearly on the web keeps access for the year', () async {
    final (_, uid) = await account('year@x.io');
    await stripeSubscribe(uid);
    final yearEnd = now.add(const Duration(days: 365));
    // A váltás számlája: elöl az arányosítás (a havi fel nem használt része), utána az éves sor.
    await webhook('in_up', 'invoice.paid', {
      'id': 'in_up',
      'customer': 'cus_$uid',
      'subscription': 'sub_$uid',
      'billing_reason': 'subscription_update',
      'payment_intent': 'pi_up',
      'lines': {
        'data': [
          {
            'proration': true,
            'price': {'id': 'price_pro'},
            'period': {'end': epoch(now.add(const Duration(days: 31)))},
          },
          {
            'price': {'id': 'price_pro_year'},
            'period': {'end': epoch(yearEnd)},
          },
        ],
      },
    });
    expect(store.entitlement(uid).paidThrough, yearEnd);
    now = now.add(const Duration(days: 40));
    expect(store.entitlement(uid).tier, 'pro');
  });

  test('a refunded, already used pack is paid off from the next period, not forever', () async {
    final (_, uid) = await account('debt@x.io');
    store.save(store.entitlement(uid)..extra = -20);
    await stripeSubscribe(uid);
    final e = store.entitlement(uid);
    // Pro: 18 elemzés – a 20-as tartozásból 18 most megy le, 2 a következő időszakból.
    expect((e.extra, Quota(store).available(e)), (-2, 0));
    await webhook('in2', 'invoice.paid', {
      'id': 'in2',
      'customer': 'cus_$uid',
      'subscription': 'sub_$uid',
      'billing_reason': 'subscription_cycle',
      'payment_intent': 'pi2',
      'lines': {
        'data': [
          {
            'price': {'id': 'price_pro'},
            'period': {'end': epoch(now.add(const Duration(days: 60)))},
          },
        ],
      },
    });
    expect(Quota(store).available(store.entitlement(uid)), 16);
  });

  test('a yearly plan does not reset its quota twice just before the renewal', () async {
    final (_, uid) = await account('reset@x.io');
    final year = now.add(const Duration(days: 365));
    store.save(
      store.entitlement(uid)
        ..tier = 'pro'
        ..periodStart = now
        ..periodEnd = now.add(const Duration(days: 30))
        ..paidThrough = year,
    );
    var resets = 0;
    var last = store.entitlement(uid).periodStart;
    for (var d = 1; d < 365; d++) {
      now = now.add(const Duration(days: 1));
      final e = store.entitlement(uid);
      if (e.periodStart != last) {
        resets++;
        last = e.periodStart;
      }
    }
    expect(resets, 11, reason: '12 havi keret egy évben: a 13. a megújítással jön');
  });

  test('refunding an older period does not end the one paid since; a partial refund takes nothing', () async {
    final (_, uid) = await account('refund@x.io');
    await stripeSubscribe(uid);
    await webhook('in2', 'invoice.paid', {
      'id': 'in2',
      'customer': 'cus_$uid',
      'subscription': 'sub_$uid',
      'billing_reason': 'subscription_cycle',
      'payments': {
        'data': [
          {
            'payment': {'payment_intent': 'pi2'},
          },
        ],
      },
      'lines': {
        'data': [
          {
            'price': {'id': 'price_pro'},
            'period': {'end': epoch(now.add(const Duration(days: 60)))},
          },
        ],
      },
    });
    await webhook('r1', 'charge.refunded', {'id': 'ch1', 'payment_intent': 'pi1_$uid', 'refunded': true});
    expect(store.entitlement(uid).tier, 'pro');
    await webhook('r2', 'charge.refunded', {'id': 'ch2', 'payment_intent': 'pi2', 'refunded': false});
    expect(store.entitlement(uid).tier, 'pro', reason: 'részleges visszatérítés');
    // A mostani időszak teljes visszatérítése (az új API `payments` mezőjéből kötve).
    await webhook('r3', 'charge.refunded', {'id': 'ch2', 'payment_intent': 'pi2', 'refunded': true});
    expect(store.entitlement(uid).tier, isNull);
  });

  test('an older plan change delivered late does not override a newer one', () async {
    final (_, uid) = await account('order@x.io');
    await stripeSubscribe(uid);
    Map<String, dynamic> sub(String price) => {
      'id': 'sub_$uid',
      'customer': 'cus_$uid',
      'status': 'active',
      'items': {
        'data': [
          {
            'price': {'id': price},
          },
        ],
      },
    };
    await webhook('u2', 'customer.subscription.updated', sub('price_pro'), created: 200);
    await webhook('u1', 'customer.subscription.updated', sub('price_max'), created: 100);
    expect(store.entitlement(uid).tier, 'pro');
  });
}
