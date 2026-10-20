import 'dart:convert';

import 'plans.dart';
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
.bull .bar span{background:var(--bull)}.base .bar span{background:var(--base)}.bear .bar span{background:var(--bear)}
.likely{font-size:12px;font-weight:700;color:var(--accent);margin-left:6px}
.cta{text-align:center;margin-top:26px}.btn{display:inline-block;background:var(--accent);color:#fff;text-decoration:none;
padding:12px 22px;border-radius:12px;font-weight:700;margin:6px}.btn.alt{background:transparent;color:var(--accent);
border:1.5px solid var(--accent)}
.hero{text-align:center;padding:40px 0 10px}.hero h1{font-size:34px}.hero p{font-size:18px;color:var(--muted);margin:10px 0 0}
.features{display:grid;gap:12px;margin-top:22px}@media(min-width:620px){.features{grid-template-columns:1fr 1fr}}.feature h2{font-size:18px;margin:0 0 4px}
.note{margin-top:10px;font-size:14px;color:var(--muted)}footer{margin-top:36px;text-align:center;font-size:13px;color:var(--muted)}
footer a{color:var(--accent)}
.plans{display:grid;gap:12px;margin-top:18px}@media(min-width:620px){.plans{grid-template-columns:1fr 1fr}}
.plan{margin-top:0;position:relative}.plan h2{font-size:20px;margin:0}.price{font-size:28px;font-weight:700;margin:8px 0 2px}
.price small{font-size:15px;font-weight:500;color:var(--muted)}.plan ul{margin:10px 0 0;padding-left:18px}
.plan.pop{border:2px solid var(--accent)}.badge{position:absolute;top:16px;right:16px}
table.packs{width:100%;border-collapse:collapse;margin-top:8px}table.packs td{padding:8px 0;border-top:1px solid var(--line)}
table.packs td:last-child{text-align:right;font-weight:600}nav.top{display:flex;justify-content:space-between;align-items:center}
nav.top a.link{color:var(--accent);text-decoration:none;font-weight:600;font-size:15px}
.stocks{display:flex;flex-wrap:wrap;gap:8px}.stocks a{text-decoration:none}
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
    'f1': 'Elég egy brókerapp képernyője, egy újságcikk vagy egy céglogó – vagy csak egy leírás, mint „tech 100 ETF”: a WhatStock felismeri a részvényt, és megmutatja az árfolyamot, a grafikont és a fontos számokat.',
    'f2t': 'Percek alatt átlátod',
    'f2': 'Az AI-elemzés elmagyarázza, mi mozgatja a részvényt, mik a kockázatok, mennyit ér, és három forgatókönyvet ad arra, merre mehet az ár – forrásokkal, a te nyelveden.',
    'f3t': 'Kérdezz bármit',
    'f3': 'Az elemzés után kérdezhetsz is: mit jelent egy kockázat, mi változtatná meg a kilátásokat, hogyan jött ki egy szám. Egy hírről, a legutóbbi gyorsjelentésről vagy egy ETF-ről külön AI-magyarázatot kérhetsz, forrásokkal.',
    'f4t': 'A portfóliód egy helyen',
    'f4': 'Vedd fel a vételeidet kézzel, CSV-ből vagy egyszerűen a brókered képernyőképéből. Látod a nyereséget, az osztalékot, az összevetést az S&P 500-zal, és kérhetsz AI-elemzést az egész portfólióról.',
    'f5t': 'Mindig képben leszel',
    'f5': 'Napi AI-összefoglaló a részvényeid mozgásáról és híreiről, gyorsjelentés-naptár, árfolyam-riasztások (követő stoppal is) e-mailben és értesítésben.',
    'f6t': 'A te nyelveden',
    'f6': '120 nyelven, telefonon és számítógépen; a kedvenceid és a portfóliód minden eszközödön ugyanaz.',
    'download': 'Letöltés',
    'preview': 'Zárt előzetes: az app használatához meghívókód kell.',
    'disclaimer': 'A WhatStock tájékoztató jellegű, nem minősül befektetési tanácsadásnak.',
    'terms': 'Felhasználási feltételek',
    'privacy': 'Adatkezelési tájékoztató',
    'pricing': 'Árak',
  },
  'en': {
    'title': 'WhatStock – photograph a stock and understand it in minutes',
    'tagline': 'Photograph a stock and understand it in minutes.',
    'f1t': 'Photograph a stock',
    'f1': 'A brokerage screen, a newspaper or a company logo is enough – or just a description like “tech 100 ETF”: WhatStock recognises the stock and shows its price, chart and key figures.',
    'f2t': 'Understand it in minutes',
    'f2': 'The AI analysis explains what moves the stock, the risks, the valuation and three scenarios for where the price could go, with sources and in your language.',
    'f3t': 'Ask anything',
    'f3': 'After the analysis you can ask follow-up questions: what a risk means, what would change the outlook, how a number was worked out. A news item, the latest results or an ETF get their own AI explanation, with sources.',
    'f4t': 'Your portfolio in one place',
    'f4': 'Add your purchases by hand, from a CSV or simply from a screenshot of your broker. See gains, dividends and a comparison with the S&P 500, and ask for an AI review of the whole portfolio.',
    'f5t': 'Stay on top of it',
    'f5': 'A daily AI summary of how your stocks moved and why, an earnings calendar, and price alerts (trailing stops too) by e-mail and notification.',
    'f6t': 'In your language',
    'f6': 'In 120 languages, on phone and computer; your favorites and portfolio are the same on every device.',
    'download': 'Download',
    'preview': 'Closed preview: you need an invite code to use the app.',
    'disclaimer': 'WhatStock is for information only and is not investment advice.',
    'terms': 'Terms of use',
    'privacy': 'Privacy policy',
    'pricing': 'Pricing',
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
  for (final i in [1, 2, 3, 4, 5, 6]) {
    b.write('<div class="card feature"><h2>${_esc(t['f${i}t'])}</h2><div class="muted">${_esc(t['f$i'])}</div></div>');
  }
  b
    ..write('</div><div class="cta"><a class="btn alt" href="/pricing?lang=$lang">${_esc(t['pricing'])}</a></div>')
    ..write(_footer(lang));
  return b.toString();
}

String _footer(String lang) {
  final t = _site[lang] ?? _site['en']!;
  return '<footer><p>${_esc(t['disclaimer'])}</p>'
      '<a href="/pricing?lang=$lang">${_esc(t['pricing'])}</a> · '
      '<a href="/stocks?lang=$lang">${_esc(_stocks[lang]?['indexH1'] ?? 'Popular stocks')}</a> · '
      '<a href="/legal/terms?lang=$lang">${_esc(t['terms'])}</a> · '
      '<a href="/legal/privacy?lang=$lang">${_esc(t['privacy'])}</a></footer></main></body></html>';
}

/// Az árak oldal szövegei (magyar és angol).
const _pricing = {
  'hu': {
    'title': 'WhatStock árak – csomagok és extra elemzések',
    'intro': 'Kezdd ingyen: 3 napos próbaidő 3 AI-elemzéssel, bankkártya nélkül. Utána válassz csomagot, vagy vegyél extra elemzéseket.',
    'common': 'A fotófelismerés, az élő adatok, a grafikonok, a hírek, a kedvencek, a portfólió, a riasztások és mind a 120 nyelv minden csomagban benne van. A keret az AI-elemzésekre vonatkozik.',
    'month': '/ hó',
    'year': '/ év',
    'perMonth': 'havonta',
    'analyses': '{n} AI-elemzés havonta',
    'perAnalysis': 'kb. {p} elemzésenként',
    'searches': 'legfeljebb {n} webkeresés elemzésenként',
    'ask': 'napi {n} kérdés az elemzésekről',
    'yearly': 'Évesen {p} (havonta {m}) – 2 hónap ingyen',
    'popular': 'Legnépszerűbb',
    'value': 'Legjobb ár-érték',
    'packsTitle': 'Extra elemzések',
    'packsHint': 'Az extra elemzések nem járnak le, és a havi keret kimerülése után használódnak fel.',
    'pack': '{n} elemzés',
    'deep': 'A részletes elemzés 2 elemzést fogyaszt, a rövid és az alap 1-et.',
    'local': 'Az árak USD-ben értendők; az App Store és a Google Play a helyi pénznemben, helyi adókkal mutatja őket. Az előfizetés bármikor lemondható.',
  },
  'en': {
    'title': 'WhatStock pricing – plans and extra analyses',
    'intro': 'Start free: a 3-day trial with 3 AI analyses, no card needed. Then pick a plan or buy extra analyses.',
    'common': 'Photo recognition, live data, charts, news, favorites, portfolio, alerts and all 120 languages are included in every plan. The allowance is for AI analyses.',
    'month': '/ month',
    'year': '/ year',
    'perMonth': 'a month',
    'analyses': '{n} AI analyses a month',
    'perAnalysis': 'about {p} per analysis',
    'searches': 'up to {n} web searches per analysis',
    'ask': '{n} questions a day about your analyses',
    'yearly': 'Yearly {p} ({m} a month) – 2 months free',
    'popular': 'Most popular',
    'value': 'Best value',
    'packsTitle': 'Extra analyses',
    'packsHint': 'Extra analyses never expire and are used after your monthly allowance runs out.',
    'pack': '{n} analyses',
    'deep': 'A detailed analysis uses 2 analyses; brief and standard use 1.',
    'local': 'Prices are in USD; the App Store and Google Play show them in your currency, with local taxes. You can cancel any time.',
  },
};

String _usd(double v) => '\$${v.toStringAsFixed(2)}';

/// Az árak oldal: a csomagok havi és éves díja, kerete, az extra csomagok.
String pricingPage({required String lang, required int askPerDay, String? publicUrl}) {
  final t = _pricing[lang] ?? _pricing['en']!;
  String f(String key, Map<String, String> v) => v.entries.fold(t[key]!, (s, e) => s.replaceAll('{${e.key}}', e.value));
  const names = {'normal': 'Normal', 'pro': 'Pro', 'max': 'Max', 'ultra': 'Ultra'};
  const huNames = {'normal': 'Normál'};
  final b = StringBuffer(
    _head(
      lang: lang,
      title: t['title']!,
      description: t['intro']!,
      url: publicUrl == null ? null : '$publicUrl/pricing?lang=$lang',
    ),
  )..write('<div class="hero"><h1>${_esc(_site[lang]?['pricing'] ?? 'Pricing')}</h1><p>${_esc(t['intro'])}</p></div>');
  b.write('<div class="plans">');
  for (final p in PlanSpec.paid) {
    final monthly = PlanSpec.usd[p.productId]!;
    final yearly = p.yearlyProductId == null ? null : PlanSpec.usd[p.yearlyProductId];
    final badge = p.tier == 'pro' ? t['popular'] : (p.tier == 'max' ? t['value'] : null);
    final name = (lang == 'hu' ? huNames[p.tier] : null) ?? names[p.tier]!;
    b
      ..write('<div class="card plan${p.tier == 'pro' ? ' pop' : ''}" id="${_attr(p.tier)}">')
      ..write(badge == null ? '' : '<span class="chip badge">${_esc(badge)}</span>')
      ..write('<h2>${_esc(name)}</h2>')
      ..write('<div class="price">${_usd(monthly)} <small>${_esc(t['month'])}</small></div>')
      ..write('<ul><li>${_esc(f('analyses', {'n': '${p.analysesPerPeriod}'}))}</li>')
      ..write('<li>${_esc(f('perAnalysis', {'p': _usd(monthly / p.analysesPerPeriod)}))}</li>')
      ..write('<li>${_esc(f('searches', {'n': '${p.webSearches + 2}'}))}</li>')
      ..write('<li>${_esc(f('ask', {'n': '$askPerDay'}))}</li></ul>')
      ..write(
        yearly == null
            ? ''
            : '<p class="small muted">${_esc(f('yearly', {'p': _usd(yearly), 'm': _usd(yearly / 12)}))}</p>',
      )
      ..write('</div>');
  }
  b
    ..write('</div><div class="card"><h2 style="margin:0;font-size:20px">${_esc(t['packsTitle'])}</h2>')
    ..write('<p class="muted small">${_esc(t['packsHint'])}</p><table class="packs">');
  for (final e in PlanSpec.packs.entries) {
    b.write('<tr><td>${_esc(f('pack', {'n': '${e.value}'}))}</td><td>${_usd(PlanSpec.usd[e.key]!)}</td></tr>');
  }
  b
    ..write('</table></div>')
    ..write('<p class="note">${_esc(t['common'])}</p>')
    ..write('<p class="note">${_esc(t['deep'])}</p>')
    ..write('<p class="note">${_esc(t['local'])}</p>')
    ..write(
      '<div class="cta"><a class="btn" href="/?lang=$lang">${_esc(_site[lang]?['download'] ?? 'Download')}</a></div>',
    )
    ..write(_footer(lang));
  return b.toString();
}

/// A keresőknek: robots.txt és a nyilvános oldalak listája.
String robotsTxt(String publicUrl) =>
    'User-agent: *\nDisallow: /admin\nDisallow: /v1/\nSitemap: $publicUrl/sitemap.xml\n';

String sitemapXml(String publicUrl) {
  final b = StringBuffer(
    '<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n',
  );
  for (final path in [
    '/?lang=en',
    '/?lang=hu',
    '/pricing?lang=en',
    '/pricing?lang=hu',
    '/stocks?lang=en',
    '/stocks?lang=hu',
    for (final s in popularStocks) ...['/stocks/$s?lang=en', '/stocks/$s?lang=hu'],
  ]) {
    b.write('  <url><loc>${'$publicUrl$path'.replaceAll('&', '&amp;').replaceAll('<', '&lt;')}</loc></url>\n');
  }
  return (b..write('</urlset>\n')).toString();
}

// ---- Népszerű részvények (a keresőknek) ----

/// A népszerű részvények: mindegyiknek saját oldala van (`/stocks/<ticker>`).
/// Csak ezek kérhetők le, hogy az oldal ne legyen tetszőleges Finnhub-proxy.
const popularStocks = [
  'AAPL', 'MSFT', 'NVDA', 'AMZN', 'GOOGL', 'META', 'TSLA', 'AVGO', 'BRK.B', 'JPM', //
  'V', 'MA', 'LLY', 'UNH', 'XOM', 'JNJ', 'WMT', 'PG', 'COST', 'HD', //
  'KO', 'PEP', 'NFLX', 'AMD', 'INTC', 'ADBE', 'CRM', 'ORCL', 'DIS', 'NKE', //
  'MCD', 'BA', 'PFE', 'MRK', 'CVX', 'TSM', 'ASML', 'PLTR', 'UBER', 'SHOP', //
];

/// Egy részvény adatai az oldalhoz (Finnhub `profile2` és `quote`); ami nem
/// érhető el, az `null`.
typedef StockFacts = ({
  String symbol,
  String? name,
  String? exchange,
  String? industry,
  double? marketCapMillions,
  String? currency,
  String? country,
  String? ipo,
  String? weburl,
  double? price,
  double? change,
  double? changePercent,
});

const _stocks = {
  'hu': {
    'title': '{name} ({symbol}) részvény: árfolyam és AI-elemzés – WhatStock',
    'desc': 'A(z) {name} ({symbol}) árfolyama, piaci értéke és alapadatai. Fotózd le vagy keresd meg a WhatStockban, és az AI elmagyarázza, mi mozgatja, mik a kockázatok és merre mehet az ár.',
    'price': 'Árfolyam',
    'exchange': 'Tőzsde',
    'industry': 'Iparág',
    'marketCap': 'Piaci érték',
    'country': 'Ország',
    'ipo': 'Tőzsdére lépés',
    'website': 'Weboldal',
    'ctaTitle': 'AI-elemzés a(z) {symbol} részvényről',
    'cta': 'A WhatStock percek alatt elmagyarázza, mi mozgatja a részvényt, mik a kockázatok, mennyit ér, és három forgatókönyvet ad az árfolyamra – a te nyelveden. Kérdezhetsz is utána.',
    'unavailable': 'Az árfolyam most nem érhető el.',
    'delayed': 'Az adatok késleltetettek lehetnek, tájékoztató jellegűek.',
    'others': 'További népszerű részvények',
    'indexTitle': 'Népszerű részvények – árfolyam és AI-elemzés – WhatStock',
    'indexH1': 'Népszerű részvények',
    'indexIntro': 'A legtöbbet keresett amerikai és nemzetközi részvények árfolyama és alapadatai, és mindegyikről AI-elemzés a WhatStock appban.',
  },
  'en': {
    'title': '{name} ({symbol}) stock: price and AI analysis – WhatStock',
    'desc': '{name} ({symbol}) share price, market cap and key facts. Photograph or search it in WhatStock and the AI explains what moves it, the risks and where the price could go.',
    'price': 'Price',
    'exchange': 'Exchange',
    'industry': 'Industry',
    'marketCap': 'Market cap',
    'country': 'Country',
    'ipo': 'IPO',
    'website': 'Website',
    'ctaTitle': 'AI analysis of {symbol}',
    'cta': 'WhatStock explains in minutes what moves the stock, the risks, the valuation and three scenarios for the price, in your language. You can ask follow-up questions too.',
    'unavailable': 'The price is not available right now.',
    'delayed': 'Data may be delayed and is for information only.',
    'others': 'More popular stocks',
    'indexTitle': 'Popular stocks – price and AI analysis – WhatStock',
    'indexH1': 'Popular stocks',
    'indexIntro': 'Prices and key facts for the most searched US and international stocks, with an AI analysis of each in the WhatStock app.',
  },
};

/// Szám a nyelv tizedesjelével, ezres tagolás nélkül (pl. 231,45 vagy 231.45).
String _num(double v, String lang, {int decimals = 2}) {
  final s = v.toStringAsFixed(decimals);
  return lang == 'hu' ? s.replaceAll('.', ',') : s;
}

/// Piaci érték: millió dollárból „3,45 ezer mrd USD” / „$3.45T”.
String marketCapText(double millions, String lang, String currency) {
  if (millions >= 1e6) {
    final v = _num(millions / 1e6, lang);
    return lang == 'hu' ? '$v ezer mrd $currency' : '$v T $currency';
  }
  if (millions >= 1e3) {
    final v = _num(millions / 1e3, lang, decimals: 1);
    return lang == 'hu' ? '$v mrd $currency' : '$v B $currency';
  }
  final v = _num(millions, lang, decimals: 0);
  return lang == 'hu' ? '$v millió $currency' : '$v M $currency';
}

String _fill(String s, Map<String, String> v) => v.entries.fold(s, (a, e) => a.replaceAll('{${e.key}}', e.value));

/// A letöltés gombjai (Android, Mac, Windows).
String _downloadButtons(String lang, String downloadBase) {
  final label = _site[lang]?['download'] ?? 'Download';
  return [
    for (final (os, file) in const [
      ('Android', 'WhatStock-android-arm64.apk'),
      ('macOS', 'WhatStock-macos.zip'),
      ('Windows', 'WhatStock-windows-x64.zip'),
    ])
      '<a class="btn${os == 'Android' ? '' : ' alt'}" href="${_attr('$downloadBase$file')}">${_esc(label)} · $os</a>',
  ].join();
}

String _stockLinks(String lang, {String? except}) =>
    '<p class="stocks">${[for (final s in popularStocks)
      if (s != except) '<a class="chip" href="/stocks/${_attr(s)}?lang=$lang">${_esc(s)}</a>'].join(' ')}</p>';

/// Egy népszerű részvény oldala: név, árfolyam, alapadatok, AI-elemzés az appban.
String stockPage(StockFacts s, {required String lang, required String downloadBase, String? publicUrl}) {
  final t = _stocks[lang] ?? _stocks['en']!;
  final name = s.name ?? s.symbol;
  final vars = {'name': name, 'symbol': s.symbol};
  final ccy = s.currency ?? 'USD';
  final b = StringBuffer(
    _head(
      lang: lang,
      title: _fill(t['title']!, vars),
      description: _fill(t['desc']!, vars),
      url: publicUrl == null ? null : '$publicUrl/stocks/${s.symbol}?lang=$lang',
    ),
  )..write('<div class="card"><h1>${_esc(name)}</h1><div class="sym">${_esc(s.symbol)}');
  if (s.exchange != null) b.write(' · ${_esc(s.exchange)}');
  b.write('</div>');
  if (s.price case final price?) {
    final up = (s.change ?? 0) >= 0;
    b.write('<div class="price">${_esc(_num(price, lang))} <small>${_esc(ccy)}</small></div>');
    if (s.change != null && s.changePercent != null) {
      final sign = up ? '+' : '−';
      b.write(
        '<div style="color:var(${up ? '--bull' : '--bear'});font-weight:600">'
        '$sign${_esc(_num(s.change!.abs(), lang))} ($sign${_esc(_num(s.changePercent!.abs(), lang))}%)</div>',
      );
    }
  } else {
    b.write('<p class="muted">${_esc(t['unavailable'])}</p>');
  }
  final rows = [
    if (s.exchange != null) (t['exchange']!, _esc(s.exchange)),
    if (s.industry != null) (t['industry']!, _esc(s.industry)),
    if (s.marketCapMillions case final m? when m > 0) (t['marketCap']!, _esc(marketCapText(m, lang, ccy))),
    if (s.country != null) (t['country']!, _esc(s.country)),
    if (s.ipo != null) (t['ipo']!, _esc(s.ipo)),
    if (s.weburl case final w? when w.startsWith('http'))
      (t['website']!, '<a href="${_attr(w)}" rel="nofollow noopener">${_esc(Uri.tryParse(w)?.host ?? w)}</a>'),
  ];
  if (rows.isNotEmpty) {
    b.write('<table class="packs">');
    for (final (k, v) in rows) {
      b.write('<tr><td>${_esc(k)}</td><td>$v</td></tr>');
    }
    b.write('</table>');
  }
  b
    ..write('<p class="note">${_esc(t['delayed'])}</p></div>')
    ..write('<div class="card"><h2 style="margin:0;font-size:20px">${_esc(_fill(t['ctaTitle']!, vars))}</h2>')
    ..write(
      '<p class="muted">${_esc(t['cta'])}</p><div class="cta">${_downloadButtons(lang, downloadBase)}</div></div>',
    )
    ..write('<h2 style="font-size:18px;margin:28px 0 8px">${_esc(t['others'])}</h2>')
    ..write(_stockLinks(lang, except: s.symbol))
    ..write(_footer(lang));
  return b.toString();
}

/// A népszerű részvények listája.
String stocksIndexPage({required String lang, required String downloadBase, String? publicUrl}) {
  final t = _stocks[lang] ?? _stocks['en']!;
  return (StringBuffer(
          _head(
            lang: lang,
            title: t['indexTitle']!,
            description: t['indexIntro']!,
            url: publicUrl == null ? null : '$publicUrl/stocks?lang=$lang',
          ),
        )
        ..write('<div class="hero"><h1>${_esc(t['indexH1'])}</h1><p>${_esc(t['indexIntro'])}</p></div>')
        ..write(_stockLinks(lang))
        ..write('<div class="cta">${_downloadButtons(lang, downloadBase)}</div>')
        ..write(_footer(lang)))
      .toString();
}
