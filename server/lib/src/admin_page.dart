import 'dart:convert';

/// A tulajdonos statisztika-oldala (`/admin`): belépés az `ADMIN_TOKEN`-nel
/// (űrlapon, hogy a kulcs ne kerüljön az URL-be és a naplóba), majd a napi
/// számok, platformok, verziók és a leggyakoribb hibák.
const _style = '''
:root{--bg:#FAF9F5;--fg:#1F1E1D;--muted:#6F6B63;--line:#E4E0D6;--card:#FFFFFF;--accent:#C96442;--bad:#C63F31}
@media(prefers-color-scheme:dark){:root{--bg:#1F1E1D;--fg:#F0EEE6;--muted:#A8A49B;--line:#3A3835;--card:#2A2826;--accent:#D97757;--bad:#E5614F}}
*{box-sizing:border-box}body{margin:0;background:var(--bg);color:var(--fg);font:15px/1.5 -apple-system,system-ui,sans-serif}
main{max-width:1100px;margin:0 auto;padding:24px 16px 48px}h1{font-size:22px;margin:0 0 4px}h2{font-size:17px;margin:28px 0 10px}
.muted{color:var(--muted)}.tiles{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:10px;margin-top:16px}
.tile{background:var(--card);border:1px solid var(--line);border-radius:12px;padding:12px 14px}.tile b{display:block;font-size:24px}
.scroll{overflow-x:auto;border:1px solid var(--line);border-radius:12px;background:var(--card)}
table{border-collapse:collapse;width:100%;font-size:13.5px;font-variant-numeric:tabular-nums}
th,td{padding:7px 10px;border-bottom:1px solid var(--line);text-align:right;white-space:nowrap}th:first-child,td:first-child{text-align:left}
th{color:var(--muted);font-weight:600}tr:last-child td{border-bottom:0}
details{background:var(--card);border:1px solid var(--line);border-radius:12px;padding:10px 14px;margin-bottom:8px}
summary{cursor:pointer}pre{white-space:pre-wrap;word-break:break-word;font-size:12px;color:var(--muted)}
form{max-width:360px;margin:15vh auto;background:var(--card);border:1px solid var(--line);border-radius:14px;padding:22px}
input{width:100%;padding:10px;border:1px solid var(--line);border-radius:8px;background:var(--bg);color:var(--fg);font:inherit;margin:12px 0}
button{width:100%;padding:10px;border:0;border-radius:8px;background:var(--accent);color:#fff;font:inherit;font-weight:600;cursor:pointer}
.bad{color:var(--bad)}
''';

String _esc(Object? v) => const HtmlEscape().convert('${v ?? ''}');

String _page(String title, String body) =>
    '<!doctype html><html lang="hu"><meta charset="utf-8"><meta name="viewport" content="width=device-width">'
    '<meta name="robots" content="noindex"><title>$title</title><style>$_style</style><body>$body</body></html>';

String adminLoginPage({bool wrong = false}) => _page(
  'WhatStock – statisztika',
  '<form method="post" action="/admin"><h1>WhatStock statisztika</h1>'
      '<div class="muted">Add meg az ADMIN_TOKEN értékét.</div>'
      '<input type="password" name="key" autocomplete="current-password" autofocus required>'
      '${wrong ? '<div class="bad">Hibás kulcs.</div>' : ''}'
      '<button type="submit">Belépés</button></form>',
);

/// Az események oszlopai a napi táblában (név → fejléc).
const _eventColumns = {
  'app_open': 'Indítás',
  'stock_opened': 'Részvény megnyitva',
  'photo_recognized': 'Fotó',
  'analysis_done': 'Elemzés (app)',
  'paywall_view': 'Csomagválasztó',
  'purchase_done': 'Vásárlás (app)',
  'share_image': 'Megosztás képként',
  'share_text': 'Megosztás szövegként',
  'alert_created': 'Riasztás',
};

String adminStatsPage(Map<String, dynamic> stats) {
  final days = (stats['days'] as List).cast<Map<String, dynamic>>();
  int sum(String key, [int n = 30]) => days.take(n).fold(0, (s, d) => s + ((d[key] as int?) ?? 0));
  int sumEvent(String name, [int n = 30]) =>
      days.take(n).fold(0, (s, d) => s + (((d['events'] as Map)[name] as int?) ?? 0));
  String avgActive(int n) {
    final list = days.take(n).toList();
    return list.isEmpty ? '0' : (sum('active_users', n) / list.length).toStringAsFixed(1);
  }

  final tiles = [
    ('Ma aktív', '${days.isEmpty ? 0 : days.first['active_users'] ?? 0}'),
    ('Napi aktív (7 nap átlag)', avgActive(7)),
    ('Új fiókok (30 nap)', '${sum('new_accounts')}'),
    ('Elemzések (30 nap)', '${sum('analyses')}'),
    ('Vásárlások (30 nap)', '${sum('purchases')}'),
    ('Csomagválasztó (30 nap)', '${sumEvent('paywall_view')}'),
    if (stats['accounts'] case final Map a) ...[
      ('E-mailes fiókok', '${a['email']}'),
      ('Szinkronizált fiókok', '${a['synced']}'),
      ('Heti összefoglaló', '${a['weekly_digest']}'),
    ],
  ];
  final b = StringBuffer()
    ..write('<main><h1>WhatStock statisztika</h1>')
    ..write(
      '<div class="muted">Az utolsó 30 nap (UTC). Az app eseményei csak a statisztikát engedélyező '
      'felhasználóktól jönnek; az új fiókok, elemzések és vásárlások a szerver saját számai.</div>',
    )
    ..write('<div class="tiles">');
  for (final (label, value) in tiles) {
    b.write('<div class="tile"><span class="muted">${_esc(label)}</span><b>${_esc(value)}</b></div>');
  }
  b
    ..write('</div><h2>Napi bontás</h2><div class="scroll"><table><tr><th>Nap</th><th>Aktív</th>')
    ..write('<th>Új fiók</th><th>Elemzés (szerver)</th><th>Vásárlás (szerver)</th>');
  for (final h in _eventColumns.values) {
    b.write('<th>${_esc(h)}</th>');
  }
  b.write('</tr>');
  for (final d in days) {
    final events = d['events'] as Map;
    b.write(
      '<tr><td>${_esc(d['day'])}</td><td>${d['active_users'] ?? 0}</td><td>${d['new_accounts'] ?? 0}</td>'
      '<td>${d['analyses'] ?? 0}</td><td>${d['purchases'] ?? 0}</td>',
    );
    for (final k in _eventColumns.keys) {
      b.write('<td>${events[k] ?? 0}</td>');
    }
    b.write('</tr>');
  }
  b.write('</table></div>');
  for (final (title, key, unit) in [('Platformok', 'platforms', 'aktív nap'), ('Verziók', 'versions', 'indítás')]) {
    final m = (stats[key] as Map).cast<String, int>();
    final sorted = m.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
    b.write('<h2>$title</h2><div class="scroll"><table><tr><th>Név</th><th>${_esc(unit)}</th></tr>');
    for (final e in sorted) {
      b.write('<tr><td>${_esc(e.key)}</td><td>${e.value}</td></tr>');
    }
    if (sorted.isEmpty) b.write('<tr><td class="muted">Még nincs adat.</td><td></td></tr>');
    b.write('</table></div>');
  }
  final errors = (stats['errors'] as List).cast<Map<String, dynamic>>();
  b.write('<h2>Leggyakoribb hibák (30 nap)</h2>');
  if (errors.isEmpty) b.write('<div class="muted">Nincs bejelentett hiba.</div>');
  for (final e in errors) {
    b.write(
      '<details><summary><b>${e['count']}×</b> ${_esc(e['message'])} '
      '<span class="muted">· ${_esc(e['platform'])} ${_esc(e['version'])} · utoljára ${_esc(e['last_seen'])}</span>'
      '</summary><pre>${_esc(e['stack'])}</pre></details>',
    );
  }
  b.write('</main>');
  return _page('WhatStock – statisztika', b.toString());
}
