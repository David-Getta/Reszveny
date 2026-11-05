/// Kívülről jött (hír, AI-forrás, frissítési jegyzék) cím, ha weboldal: csak `https`
/// vagy `http`, géppel. Egy `file:`, `ms-msdt:` vagy más saját séma a gépen programot
/// indíthatna (Windows alatt a megnyitás a rendszerhéjon át megy).
///
/// Tiszta függvény (nincs platform-függősége), így a modellek beolvasása is használhatja.
Uri? safeWebUri(String? url) {
  final u = Uri.tryParse(url?.trim() ?? '');
  if (u == null || (u.scheme != 'https' && u.scheme != 'http') || u.host.isEmpty) return null;
  return u;
}
