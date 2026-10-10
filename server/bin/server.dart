import 'dart:io';

import 'package:shelf/shelf_io.dart' as io;
import 'package:stocklens_server/src/api.dart';
import 'package:stocklens_server/src/db.dart';
import 'package:stocklens_server/src/purchase_verifier.dart';

/// Indítás: `ANTHROPIC_API_KEY=… FINNHUB_API_KEY=… dart run bin/server.dart`
/// Opcionális: PORT (8080), DATABASE_PATH (stocklens.db), VERIFY_MODE (dev|store).
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
  final api = Api(store: store, anthropicApiKey: anthropic, finnhubApiKey: finnhub, verifier: verifier);
  final port = int.tryParse(env['PORT'] ?? '') ?? 8080;
  final server = await io.serve(api.handler, InternetAddress.anyIPv4, port);
  stdout.writeln(
    'StockLens backend fut: http://${server.address.host}:${server.port} (verify: ${verifier.runtimeType})',
  );
}
