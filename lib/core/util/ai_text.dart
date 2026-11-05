/// Az AI-szöveg Markdown-jelölései nélkül: a felület sima szöveget mutat, így a
/// „**kiemelés**”, a „[szöveg](cím)” és a „## cím” különben betű szerint látszana. A link
/// szövege marad, a címe nem (a szövegből nem lesz kattintható link). A beolvasáskor fut
/// (`StockReport` / `ReportSection` / `ReportOutlook.fromJson`, a kérdés-válasz), így a régebben
/// mentett elemzésekre is.
String plainAiText(String s) {
  if (!_marks.hasMatch(s)) return s;
  var t = s;
  t = t.replaceAllMapped(_link, (m) => m[1]!);
  t = t.replaceAllMapped(_bold, (m) => m[1]!);
  t = t.replaceAllMapped(_underline, (m) => m[1]!);
  t = t.replaceAllMapped(_italic, (m) => m[1]!);
  t = t.replaceAllMapped(_code, (m) => m[1]!);
  return t.replaceAll(_heading, '');
}

/// Gyors előszűrő: jelölés nélküli szövegen a cserék nem futnak.
final _marks = RegExp(r'[*_`\[#]');

// A cím egy szint zárójelet is tartalmazhat (pl. „…(1)”).
final _link = RegExp(r'!?\[([^\]\n]*)\]\((?:[^()\n]|\([^()\n]*\))*\)');
final _bold = RegExp(r'\*\*(.+?)\*\*');
final _underline = RegExp(r'(?<!\w)__(.+?)__(?!\w)');
// Egyes csillag dőlt betűnek: csak szó elején és végén (a „2 * 3” szorzás marad).
final _italic = RegExp(r'(?<![\w*])\*(?![\s*])([^*\n]+?)(?<![\s*])\*(?![\w*])');
final _code = RegExp(r'`([^`\n]+)`');
final _heading = RegExp(r'^#{1,6}\s+', multiLine: true);
