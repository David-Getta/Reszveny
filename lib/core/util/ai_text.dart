/// Az AI-szöveg Markdown-jelölései nélkül: a felület sima szöveget mutat, így a
/// „**kiemelés**”, a „[szöveg](cím)” és a „## cím” különben betű szerint látszana. A link
/// szövege marad, a címe nem (a szövegből nem lesz kattintható link).
String plainAiText(String s) {
  var t = s;
  // A cím egy szint zárójelet is tartalmazhat (pl. „…(1)”).
  t = t.replaceAllMapped(RegExp(r'!?\[([^\]\n]*)\]\((?:[^()\n]|\([^()\n]*\))*\)'), (m) => m[1]!);
  t = t.replaceAllMapped(RegExp(r'\*\*(.+?)\*\*'), (m) => m[1]!);
  t = t.replaceAllMapped(RegExp(r'(?<!\w)__(.+?)__(?!\w)'), (m) => m[1]!);
  // Egyes csillag dőlt betűnek: csak szó elején és végén (a „2 * 3” szorzás marad).
  t = t.replaceAllMapped(RegExp(r'(?<![\w*])\*(?![\s*])([^*\n]+?)(?<![\s*])\*(?![\w*])'), (m) => m[1]!);
  t = t.replaceAllMapped(RegExp(r'`([^`\n]+)`'), (m) => m[1]!);
  t = t.replaceAll(RegExp(r'^#{1,6}\s+', multiLine: true), '');
  return t;
}
