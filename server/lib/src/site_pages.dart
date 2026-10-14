import 'dart:convert';

import 'shares.dart';

/// A nyilvános oldalak: a megosztott elemzés (`/s/<id>`, link-előnézettel) és
/// a nyitóoldal (`/`, letöltés). Statikus HTML, külső erőforrás nélkül.
const _style = '''
:root{--bg:#FAF9F5;--fg:#1F1E1D;--muted:#6F6B63;--line:#E4E0D6;--card:#FFFFFF;--accent:#C96442;--soft:#F4E7E0;
--bull:#2E8B57;--base:#C96442;--bear:#C63F31}
@media(prefers-color-scheme:dark){:root{--bg:#1F1E1D;--fg:#F0EEE6;--muted:#A8A49B;--line:#3A3835;--card:#2A2826;
--accent:#D97757;--soft:#3A2C26;--bull:#5BB381;--base:#D97757;--bear:#E5614F}}
*{box-sizing:border-box}body{margin:0;background:var(--bg);color:var(--fg);
font:16px/1.55 -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,system-ui,sans-serif}
main{max-width:640px;margin:0 auto;padding:20px 16px 48px}
.brand{display:flex;align-items:center;gap:8px;font-weight:700;color:var(--fg);text-decoration:none;font-size:18px}
.brand i{display:inline-block;width:26px;height:26px;border-radius:8px;background:var(--accent)}
.card{background:var(--card);border:1px solid var(--line);border-radius:18px;padding:20px;margin-top:18px}
h1{font-size:24px;line-height:1.25;margin:0}.sym{color:var(--muted);font-size:15px}
.headline{background:var(--soft);border:1px solid color-mix(in srgb,var(--accent) 40%,transparent);border-radius:12px;
padding:14px;margin:16px 0;font-weight:600}
.row{display:flex;justify-content:space-between;gap:10px;align-items:baseline;flex-wrap:wrap}
.muted{color:var(--muted)}.small{font-size:13px}
.chip{display:inline-block;padding:3px 10px;border-radius:99px;background:var(--soft);color:var(--accent);font-weight:600;font-size:14px}
.sc{margin-top:14px}.bar{height:8px;border-radius:99px;background:var(--line);overflow:hidden;margin-top:6px}
.bar span{display:block;height:100%;border-radius:99px}
.bull span{background:var(--bull)}.base span{background:var(--base)}.bear span{background:var(--bear)}
.likely{font-size:12px;font-weight:700;color:var(--accent);margin-left:6px}
.cta{text-align:center;margin-top:26px}.btn{display:inline-block;background:var(--accent);color:#fff;text-decoration:none;
padding:12px 22px;border-radius:12px;font-weight:700;margin:6px}.btn.alt{background:transparent;color:var(--accent);
border:1.5px solid var(--accent)}
.hero{text-align:center;padding:40px 0 10px}.hero h1{font-size:34px}.hero p{font-size:18px;color:var(--muted);margin:10px 0 0}
.features{display:grid;gap:12px;margin-top:22px}.feature h2{font-size:18px;margin:0 0 4px}
.note{margin-top:10px;font-size:14px;color:var(--muted)}footer{margin-top:36px;text-align:center;font-size:13px;color:var(--muted)}
footer a{color:var(--accent)}
''';

String _esc(Object? v) => const HtmlEscape().convert('${v ?? ''}');
String _attr(Object? v) => const HtmlEscape(HtmlEscapeMode.attribute).convert('${v ?? ''}');

String _str(Object? v, int max) {
  final s = (v is String ? v : '').trim();
  return s.length <= max ? s : '${s.substring(0, max - 1)}…';
}

/// Az app által küldött megosztás ellenőrzése és megtisztítása: csak az
/// ismert mezők, hosszkorlátokkal. `null`, ha nem használható.
Map<String, dynamic>? cleanShare(Map<String, dynamic> j) {
  final symbol = _str(j['symbol'], 16).toUpperCase();
  if (symbol.isEmpty || !RegExp(r'^[A-Z0-9.\-:^=]+$').hasMatch(symbol)) return null;
  final labels = j['labels'] is Map ? (j['labels'] as Map).cast<String, dynamic>() : const <String, dynamic>{};
  final mood = j['mood'];
  return {
    'symbol': symbol,
    'company': _str(j['company'], 120),
    'headline': _str(j['headline'], 600),
    'lang': RegExp(r'^[A-Za-z]{2,3}([_-][A-Za-z0-9]{2,8})*$').hasMatch('${j['lang']}') ? j['lang'] : 'en',
    'generated_at': _str(j['generated_at'], 40),
    'price': _str(j['price'], 40),
    'mood': mood is int && mood >= -2 && mood <= 2 ? mood : null,
    'mood_label': _str(j['mood_label'], 40),
    'scenarios': [
      for (final s in (j['scenarios'] is List ? j['scenarios'] as List : const []).take(3))
        if (s is Map && const {'bull', 'base', 'bear'}.contains(s['kind']) && s['probability'] is num)
          {
            'kind': s['kind'],
            'label': _str(s['label'], 40),
            'probability': (s['probability'] as num).clamp(0, 100).round(),
            'range': _str(s['range'], 60),
            'likely': s['likely'] == true,
          },
    ],
    'labels': {
      for (final k in const ['mood', 'likely', 'generated', 'disclaimer', 'cta', 'tagline'])
        k: _str(labels[k], k == 'disclaimer' ? 400 : 200),
    },
  };
}

String _head({
  required String lang,
  required String title,
  required String description,
  String? image,
  String? url,
  bool index = true,
}) =>
    '<!doctype html><html lang="${_attr(lang)}"><meta charset="utf-8">'
    '<meta name="viewport" content="width=device-width,initial-scale=1">'
    '<title>${_esc(title)}</title><meta name="description" content="${_attr(description)}">'
    '${index ? '' : '<meta name="robots" content="noindex">'}'
    '<meta property="og:site_name" content="WhatStock"><meta property="og:type" content="website">'
    '<meta property="og:title" content="${_attr(title)}"><meta property="og:description" content="${_attr(description)}">'
    '${url == null ? '' : '<meta property="og:url" content="${_attr(url)}">'}'
    '${image == null ? '<meta name="twitter:card" content="summary">' : '<meta property="og:image" content="${_attr(image)}">'
              '<meta property="og:image:type" content="image/png"><meta name="twitter:card" content="summary_large_image">'
              '<meta name="twitter:image" content="${_attr(image)}">'}'
    '<meta name="theme-color" content="#C96442"><style>$_style</style><body><main>'
    '<a class="brand" href="/"><i></i>WhatStock</a>';

/// A megosztott elemzés oldala.
String sharePage(SharedReport s, {required String publicUrl}) {
  final d = s.data;
  final labels = (d['labels'] as Map).cast<String, dynamic>();
  final company = '${d['company']}';
  final name = company.isEmpty || company == d['symbol'] ? '${d['symbol']}' : '$company (${d['symbol']})';
  final title = '$name · WhatStock';
  final b = StringBuffer(
    _head(
      lang: '${d['lang']}',
      title: title,
      description: '${d['headline']}',
      image: s.hasImage ? '$publicUrl/s/${s.id}.png' : null,
      url: '$publicUrl/s/${s.id}',
    ),
  );
  b
    ..write('<div class="card"><h1>${_esc(company.isEmpty ? d['symbol'] : company)}</h1>')
    ..write('<div class="row"><span class="sym">${_esc(d['symbol'])}</span>')
    ..write(d['price'] == '' ? '' : '<span class="sym">${_esc(d['price'])}</span>')
    ..write('</div>');
  if (d['headline'] != '') b.write('<div class="headline">${_esc(d['headline'])}</div>');
  if (d['mood_label'] != '') {
    b.write(
      '<div class="row"><span class="muted">${_esc(labels['mood'])}</span>'
      '<span class="chip">${_esc(d['mood_label'])}</span></div>',
    );
  }
  for (final sc in (d['scenarios'] as List).cast<Map<String, dynamic>>()) {
    b
      ..write('<div class="sc ${_attr(sc['kind'])}"><div class="row"><span><b>${_esc(sc['label'])}</b>')
      ..write(
        sc['likely'] == true && labels['likely'] != '' ? '<span class="likely">${_esc(labels['likely'])}</span>' : '',
      )
      ..write('</span><span>${sc['probability']}%</span></div>')
      ..write('<div class="bar"><span style="width:${sc['probability']}%"></span></div>')
      ..write(sc['range'] == '' ? '' : '<div class="small muted">${_esc(sc['range'])}</div>')
      ..write('</div>');
  }
  b
    ..write('<p class="small muted" style="margin-top:18px">${_esc(labels['generated'])}</p>')
    ..write('<p class="small muted">${_esc(labels['disclaimer'])}</p></div>')
    ..write('<div class="cta"><p>${_esc(labels['tagline'])}</p>')
    ..write('<a class="btn" href="/">${_esc(labels['cta'] == '' ? 'WhatStock' : labels['cta'])}</a></div>')
    ..write('</main></body></html>');
  return b.toString();
}

/// Az oldal, ha a link nem létezik vagy lejárt.
String shareMissingPage() =>
    '${_head(lang: 'en', title: 'WhatStock', description: 'WhatStock', index: false)}'
    '<div class="card"><h1>×</h1><p>Ez a megosztás már nem érhető el. · This shared analysis is no longer available.</p>'
    '<a class="btn" href="/">WhatStock</a></div></main></body></html>';

/// A nyitóoldal szövegei (magyar és angol).
const _site = {
  'hu': {
    'title': 'WhatStock – fotózz le egy részvényt, és értsd meg percek alatt',
    'tagline': 'Fotózz le egy részvényt, és értsd meg percek alatt.',
    'f1t': 'Fotózz le egy részvényt',
    'f1': 'Elég egy brókerapp képernyője, egy újságcikk vagy egy céglogó: a WhatStock felismeri a részvényt, és megmutatja az árfolyamot, a grafikont és a fontos számokat.',
    'f2t': 'Percek alatt átlátod',
    'f2': 'Az AI-elemzés elmagyarázza, mi mozgatja a részvényt, mik a kockázatok, mennyit ér, és három forgatókönyvet ad arra, merre mehet az ár – forrásokkal, a te nyelveden.',
    'f3t': 'Mindig képben leszel',
    'f3': 'Kedvencek, portfólió és árfolyam-riasztások; az elemzéseid a készülékeden maradnak. 120 nyelven.',
    'download': 'Letöltés',
    'preview': 'Zárt előzetes: az app használatához meghívókód kell.',
    'disclaimer': 'A WhatStock tájékoztató jellegű, nem minősül befektetési tanácsadásnak.',
    'terms': 'Felhasználási feltételek',
    'privacy': 'Adatkezelési tájékoztató',
  },
  'en': {
    'title': 'WhatStock – photograph a stock and understand it in minutes',
    'tagline': 'Photograph a stock and understand it in minutes.',
    'f1t': 'Photograph a stock',
    'f1': 'A brokerage screen, a newspaper or a company logo is enough: WhatStock recognises the stock and shows its price, chart and key figures.',
    'f2t': 'Understand it in minutes',
    'f2': 'The AI analysis explains what moves the stock, the risks, the valuation and three scenarios for where the price could go, with sources and in your language.',
    'f3t': 'Stay on top of it',
    'f3': 'Favorites, portfolio and price alerts; your analyses stay on your device. In 120 languages.',
    'download': 'Download',
    'preview': 'Closed preview: you need an invite code to use the app.',
    'disclaimer': 'WhatStock is for information only and is not investment advice.',
    'terms': 'Terms of use',
    'privacy': 'Privacy policy',
  },
};

/// A nyitóoldal: mire jó, letöltés (Android, Mac, Windows), jogi linkek.
String landingPage({
  required String lang,
  required String downloadBase,
  required bool closedPreview,
  String? publicUrl,
}) {
  final t = _site[lang] ?? _site['en']!;
  final b =
      StringBuffer(
          _head(
            lang: lang,
            title: t['title']!,
            description: t['tagline']!,
            url: publicUrl == null ? null : '$publicUrl/',
          ),
        )
        ..write('<div class="hero"><h1>WhatStock</h1><p>${_esc(t['tagline'])}</p></div>')
        ..write('<div class="cta">');
  for (final (label, file) in const [
    ('Android', 'WhatStock-android-arm64.apk'),
    ('macOS', 'WhatStock-macos.zip'),
    ('Windows', 'WhatStock-windows-x64.zip'),
  ]) {
    b.write(
      '<a class="btn${label == 'Android' ? '' : ' alt'}" href="${_attr('$downloadBase$file')}">'
      '${_esc(t['download'])} · $label</a>',
    );
  }
  if (closedPreview) b.write('<div class="note">${_esc(t['preview'])}</div>');
  b.write('</div><div class="features">');
  for (final i in [1, 2, 3]) {
    b.write('<div class="card feature"><h2>${_esc(t['f${i}t'])}</h2><div class="muted">${_esc(t['f$i'])}</div></div>');
  }
  b
    ..write('</div><footer><p>${_esc(t['disclaimer'])}</p>')
    ..write('<a href="/legal/terms?lang=$lang">${_esc(t['terms'])}</a> · ')
    ..write('<a href="/legal/privacy?lang=$lang">${_esc(t['privacy'])}</a></footer></main></body></html>');
  return b.toString();
}
