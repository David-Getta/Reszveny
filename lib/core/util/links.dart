import 'package:url_launcher/url_launcher.dart';

import 'web_uri.dart';

export 'web_uri.dart';

/// A cím megnyitása a böngészőben; hamis, ha nem weboldal-cím, vagy nem nyílt meg.
Future<bool> openWeb(String? url) async {
  final u = safeWebUri(url);
  if (u == null) return false;
  try {
    return await launchUrl(u, mode: LaunchMode.externalApplication);
  } catch (_) {
    return false;
  }
}
