import 'package:url_launcher/url_launcher.dart';

/// Kívülről jött (hír, AI-forrás, frissítési jegyzék) cím, ha weboldal: csak `https`
/// vagy `http`, géppel. Egy `file:`, `ms-msdt:` vagy más saját séma a gépen programot
/// indíthatna (Windows alatt a megnyitás a rendszerhéjon át megy).
Uri? safeWebUri(String? url) {
  final u = Uri.tryParse(url?.trim() ?? '');
  if (u == null || (u.scheme != 'https' && u.scheme != 'http') || u.host.isEmpty) return null;
  return u;
}

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
