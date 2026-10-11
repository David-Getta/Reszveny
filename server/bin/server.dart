import 'dart:io';

import 'package:shelf/shelf_io.dart' as io;
import 'package:stocklens_server/src/api.dart';
import 'package:stocklens_server/src/db.dart';
import 'package:stocklens_server/src/mailer.dart';
import 'package:stocklens_server/src/purchase_verifier.dart';
import 'package:stocklens_server/src/stripe.dart';

/// Indítás: `ANTHROPIC_API_KEY=… FINNHUB_API_KEY=… dart run bin/server.dart`
/// Opcionális: PORT (8080), DATABASE_PATH (stocklens.db), VERIFY_MODE (dev|store),
/// PUBLIC_URL (a szerver nyilvános címe), RESEND_API_KEY + MAIL_FROM (belépőkód e-mailben;
/// nélkülük a kód a naplóba kerül), STRIPE_SECRET_KEY + STRIPE_WEBHOOK_SECRET + STRIPE_PRICES
/// (böngészős fizetés; pl. `stocklens.sub.pro=price_123,stocklens.pack.5=price_456`).
Future<void> main() async {
  final env = Platform.environment;
  final anthropic = env['ANTHROPIC_API_KEY'] ?? '';
  final finnhub = env['FINNHUB_API_KEY'] ?? '';
  if (anthropic.isEmpty || finnhub.isEmpty) {
    stderr.writeln('Hiányzó ANTHROPIC_API_KEY vagy FINNHUB_API_KEY környezeti változó.');
    exit(2);
  }
  final store = Store.open(env['DATABASE_PATH'] ?? 'stocklens.db');
  final verifier = (env['VERIFY_MODE'] ?? 'dev') == 'store' ? const StoreVerifier() : const DevVerifier();
  final port0 = env['PORT'] ?? '8080';
  final resend = env['RESEND_API_KEY'] ?? '';
  final stripeKey = env['STRIPE_SECRET_KEY'] ?? '';
  final api = Api(
    store: store,
    anthropicApiKey: anthropic,
    finnhubApiKey: finnhub,
    verifier: verifier,
    publicUrl: env['PUBLIC_URL'] ?? 'http://localhost:$port0',
    // Minden Anthropic-hívás ezen a modellen fut (a kliens nem választhat drágábbat).
    anthropicModel: env['ANTHROPIC_MODEL'] ?? 'claude-opus-5-5',
    legalDir: env['LEGAL_DIR'] ?? 'legal',
    mailer: resend.isEmpty
        ? ConsoleMailer()
        : ResendMailer(apiKey: resend, from: env['MAIL_FROM'] ?? 'StockLens <login@stocklens.app>'),
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
    'StockLens backend fut: http://${server.address.host}:${server.port} (verify: ${verifier.runtimeType})',
  );
}
