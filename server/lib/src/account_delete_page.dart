import 'dart:convert';

/// A fiók törlése böngészőből (`/account/delete`): a Google Play adatbiztonsági része
/// webes címet kér, ahol az app újratelepítése nélkül kérhető a törlés. Két lépés: az
/// e-mail címre kód megy (mint a belépésnél), a kóddal a fiók és minden adata törlődik.
enum AccountDeleteStep { start, code, done, failed }

String _esc(Object? v) => const HtmlEscape().convert('${v ?? ''}');

const _texts = {
  'hu': {
    'title': 'WhatStock-fiók törlése',
    'intro':
        'Itt az app nélkül is törölheted a fiókodat és minden adatát, amit a szerveren tárolunk '
        '(e-mail cím, keret és használat, szinkronizált listák, riasztások, megosztott linkek). '
        'Az appban: Beállítások → Fiók → Fiók törlése.',
    'store':
        'Az App Store-ban vagy a Google Playen vett előfizetést a bolt beállításaiban kell lemondani; '
        'a böngészőben (Stripe) indított előfizetést a törlés lemondja.',
    'anon':
        'Ha sosem léptél be e-mail címmel, a fiókodat az appban törölheted; ehhez a fiókhoz nincs '
        'e-mail cím, amivel itt azonosítani tudnánk.',
    'email': 'E-mail cím',
    'send': 'Kód küldése',
    'sent': 'Ha ehhez a címhez tartozik fiók, elküldtük a 6 jegyű kódot. Írd be, és a fiók véglegesen törlődik.',
    'code': 'Kód',
    'confirm': 'Fiók végleges törlése',
    'done': 'A fiókot és minden szerveren tárolt adatát töröltük.',
    'wrongCode': 'A kód hibás vagy lejárt. Kérj újat.',
    'invalidEmail': 'Érvénytelen e-mail cím.',
    'tooMany': 'Túl sok kérés. Próbáld újra később.',
    'mailFailed': 'Az e-mailt most nem sikerült elküldeni. Próbáld újra később.',
    'stripeFailed': 'A böngészős előfizetés lemondása nem sikerült, ezért most nem töröltünk. Próbáld újra később.',
  },
  'en': {
    'title': 'Delete your WhatStock account',
    'intro':
        'Here you can delete your account and everything we store on the server (email address, '
        'allowance and usage, synced lists, alerts, shared links) without the app. In the app: '
        'Settings → Account → Delete account.',
    'store':
        'A subscription bought in the App Store or Google Play must be cancelled in that store; '
        'a subscription started in the browser (Stripe) is cancelled by the deletion.',
    'anon':
        'If you never signed in with an email address, delete the account in the app: it has no '
        'email address we could identify it with here.',
    'email': 'Email address',
    'send': 'Send code',
    'sent':
        'If there is an account for this address, we sent it a 6-digit code. Enter it to delete the account for good.',
    'code': 'Code',
    'confirm': 'Delete my account for good',
    'done': 'Your account and everything stored about it on our server have been deleted.',
    'wrongCode': 'The code is wrong or has expired. Request a new one.',
    'invalidEmail': 'This is not a valid email address.',
    'tooMany': 'Too many requests. Try again later.',
    'mailFailed': 'The email could not be sent right now. Try again later.',
    'stripeFailed': 'Cancelling the browser subscription failed, so nothing was deleted. Try again later.',
  },
};

/// A [lang] nyelvű (`hu` vagy `en`) oldal; [error] egy szövegkulcs a hibához.
String accountDeletePage({required String lang, required AccountDeleteStep step, String email = '', String? error}) {
  final t = _texts[lang] ?? _texts['en']!;
  final b = StringBuffer('<h1>${_esc(t['title'])}</h1>');
  if (error != null) b.write('<p class="error">${_esc(t[error] ?? error)}</p>');
  switch (step) {
    case AccountDeleteStep.start || AccountDeleteStep.failed:
      b
        ..write('<p>${_esc(t['intro'])}</p><p>${_esc(t['store'])}</p>')
        ..write(
          '<form method="post" action="/account/delete?lang=$lang"><input type="hidden" name="step" value="start">',
        )
        ..write('<label>${_esc(t['email'])}<br><input type="email" name="email" required autocomplete="email" ')
        ..write('value="${_esc(email)}"></label><button>${_esc(t['send'])}</button></form>')
        ..write('<p class="muted">${_esc(t['anon'])}</p>');
    case AccountDeleteStep.code:
      b
        ..write('<p>${_esc(t['sent'])}</p>')
        ..write(
          '<form method="post" action="/account/delete?lang=$lang"><input type="hidden" name="step" value="confirm">',
        )
        ..write('<input type="hidden" name="email" value="${_esc(email)}">')
        ..write('<label>${_esc(t['code'])}<br><input name="code" required inputmode="numeric" ')
        ..write('autocomplete="one-time-code" maxlength="12"></label>')
        ..write('<button class="danger">${_esc(t['confirm'])}</button></form>');
    case AccountDeleteStep.done:
      b.write('<p>${_esc(t['done'])}</p>');
  }
  return '<!doctype html><html lang="$lang"><meta charset="utf-8"><meta name="viewport" content="width=device-width">'
      '<title>${_esc(t['title'])}</title><style>body{max-width:640px;margin:0 auto;padding:24px 16px;line-height:1.55;'
      'font-family:-apple-system,system-ui,sans-serif;color:#1F1E1D;background:#FAF9F5}'
      'input{font:inherit;padding:8px 10px;width:100%;max-width:360px;box-sizing:border-box;margin:4px 0 12px;'
      'border:1px solid #CFCAB9;border-radius:8px;background:inherit;color:inherit}'
      'button{font:inherit;padding:9px 16px;border:0;border-radius:8px;background:#C96442;color:#fff;cursor:pointer}'
      'button.danger{background:#B3261E}.muted{color:#77736A;font-size:14px}.error{color:#B3261E}'
      '@media(prefers-color-scheme:dark){body{background:#1F1E1D;color:#F0EEE6}input{border-color:#4A4743}'
      '.muted{color:#A8A49B}.error{color:#F2B8B5}}</style><body>$b</body></html>';
}
