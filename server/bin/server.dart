import 'dart:io';

import 'package:shelf/shelf_io.dart' as io;
import 'package:whatstock_server/src/api.dart';
import 'package:whatstock_server/src/db.dart';
import 'package:whatstock_server/src/invites.dart';
import 'package:whatstock_server/src/mailer.dart';
import 'package:whatstock_server/src/purchase_verifier.dart';
import 'package:whatstock_server/src/stripe.dart';

/// Indítás: `ANTHROPIC_API_KEY=… FINNHUB_API_KEY=… dart run bin/server.dart`
/// Opcionális: PORT (8080), DATABASE_PATH (whatstock.db), VERIFY_MODE (dev|store), ANTHROPIC_MODEL
/// (claude-opus-5-5), ANTHROPIC_TRIAL_MODEL (claude-sonnet-5-5, a próbaidő rövid elemzéseihez),
/// PUBLIC_URL (a szerver nyilvános címe), RESEND_API_KEY + MAIL_FROM (belépőkód e-mailben;
/// nélkülük a kód a naplóba kerül), STRIPE_SECRET_KEY + STRIPE_WEBHOOK_SECRET + STRIPE_PRICES
/// (böngészős fizetés; pl. `whatstock.sub.pro=price_123,whatstock.pack.5=price_456`), INVITE_CODES
/// (zárt előzetes: `KÓD:Név[:ÉÉÉÉ-HH-NN][:eszközök][:napi elemzés]`, vesszővel elválasztva),
/// REFERRAL_BONUS (5) és REFERRAL_MAX (10): az ajánlói program jutalma és felső határa,
/// ADMIN_TOKEN: a `/admin` statisztika-oldal kulcsa (nélküle az oldal nem érhető el).
Future<void> main() async {
  final env = Platform.environment;
  final anthropic = env['ANTHROPIC_API_KEY'] ?? '';
  final finnhub = env['FINNHUB_API_KEY'] ?? '';
  if (anthropic.isEmpty || finnhub.isEmpty) {
    stderr.writeln('Hiányzó ANTHROPIC_API_KEY vagy FINNHUB_API_KEY környezeti változó.');
    exit(2);
  }
  final store = Store.open(env['DATABASE_PATH'] ?? 'whatstock.db');
  final verifier = (env['VERIFY_MODE'] ?? 'dev') == 'store' ? const StoreVerifier() : const DevVerifier();
  final port0 = env['PORT'] ?? '8080';
  final resend = env['RESEND_API_KEY'] ?? '';
  final stripeKey = env['STRIPE_SECRET_KEY'] ?? '';
  final invites = InviteBook.parse(env['INVITE_CODES'], onWarning: stderr.writeln);
  final api = Api(
    invites: invites,
    // Ajánlói program: extra elemzés mindkét félnek, ajánlónként legfeljebb ennyi meghívott után.
    referralBonus: int.tryParse(env['REFERRAL_BONUS'] ?? '') ?? 5,
    referralMax: int.tryParse(env['REFERRAL_MAX'] ?? '') ?? 10,
    adminToken: env['ADMIN_TOKEN'] ?? '',
    store: store,
    anthropicApiKey: anthropic,
    finnhubApiKey: finnhub,
    verifier: verifier,
    publicUrl: env['PUBLIC_URL'] ?? 'http://localhost:$port0',
    // Minden Anthropic-hívás ezen a modellen fut (a kliens nem választhat drágábbat).
    anthropicModel: env['ANTHROPIC_MODEL'] ?? 'claude-opus-5-5',
    // A próbaidő rövid elemzései az olcsóbb modellen futnak.
    trialModel: env['ANTHROPIC_TRIAL_MODEL'] ?? 'claude-sonnet-5-5',
    twelveDataApiKey: env['TWELVEDATA_API_KEY'] ?? '',
    legalDir: env['LEGAL_DIR'] ?? 'legal',
    mailer: resend.isEmpty
        ? ConsoleMailer()
        : ResendMailer(apiKey: resend, from: env['MAIL_FROM'] ?? 'WhatStock <login@whatstock.app>'),
    stripe: stripeKey.isEmpty
        ? null
        : StripeClient(
            secretKey: stripeKey,
            webhookSecret: env['STRIPE_WEBHOOK_SECRET'] ?? '',
            prices: StripeClient.parsePrices(env['STRIPE_PRICES']),
          ),
  );
  final port = int.tryParse(env['PORT'] ?? '') ?? 8080;
  final server = await io.serve(api.handler, InternetAddress.anyIPv4, port);
  stdout.writeln(
    'WhatStock backend fut: http://${server.address.host}:${server.port} (verify: ${verifier.runtimeType}, '
    'meghívókódok: ${invites.enabled ? invites.length : 'nincs, nyitott'})',
  );
}
