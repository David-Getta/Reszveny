# WhatStock backend

Kis Dart (shelf) szerver, amely a kliens helyett tartja az API-kulcsokat, ellenőrzi a
vásárlásokat és vezeti az elemzés-kvótát.

```bash
cd server
dart pub get
ANTHROPIC_API_KEY=sk-ant-… FINNHUB_API_KEY=… dart run bin/server.dart
# tesztek
dart test
```

Az app ezután `--dart-define=BACKEND_URL=http://localhost:8080` kapcsolóval a szerveren át
dolgozik: az Anthropic- és Finnhub-hívások a proxyn mennek, az elemzés a `/v1/analyze`
végponton kvóta-ellenőrzéssel, a vásárlásokat a `/v1/purchases/verify` igazolja, a jogosultság
a `/v1/me`-ből frissül.

| Végpont | Leírás |
|---|---|
| `POST /v1/auth/anonymous` | névtelen felhasználó + token; a próbaidő indul |
| `GET /v1/me` | jogosultság (csomag, időszak, felhasznált, extra) |
| `POST /v1/purchases/verify` | `{platform, product_id, verification_data}` → jogosultság |
| `POST /v1/analyze` | Anthropic Messages továbbítás; 402 `quota_exceeded` / `trial_expired` / `no_plan`. A próba-keret elemzései rövidek, és az olcsóbb modellen futnak (`ANTHROPIC_TRIAL_MODEL`) |
| `POST /v1/anthropic/v1/messages` | segéd-hívás (fotófelismerés, formátumjavítás): nem von le elemzést, de rögzített modell, legfeljebb 16 000 token, eszközök nélkül, legfeljebb 2 üzenet, 120 000 karakter és 1 kép, felhasználónként óránként 20 és naponta 60 hívás (429) |
| `GET /v1/market/<path>` | Finnhub továbbítás a szerver kulcsával |
| `POST /v1/auth/email/start` | `{email}` → 6 jegyű belépőkód e-mailben (10 perc, 5 próbálkozás, óránként 5 kód) |
| `POST /v1/auth/email/verify` | `{email, code}` → a fiók tokenje; az eszközön gyűlt keret átkerül |
| `POST /v1/auth/logout` | a token visszavonása |
| `POST /v1/billing/checkout` | `{product_id}` → Stripe Checkout URL (fiók kell: 403 `login_required`) |
| `POST /v1/billing/portal` | Stripe ügyfélportál URL |
| `POST /v1/stripe/webhook` | Stripe-események, `Stripe-Signature` ellenőrzéssel |
| `DELETE /v1/account` | a fiók törlése: előbb lemondja a Stripe-előfizetést (ha nem sikerül: 502 `stripe_cancel_failed`, nincs törlés), majd törli a munkameneteket, a jogosultságot, a használati naplót és a belépőkódokat; a vásárlási sorok névtelenítve maradnak (könyvelés, és hogy ugyanaz a bizonylat ne legyen újra beváltható) |
| `GET /legal/terms`, `GET /legal/privacy` | a felhasználási feltételek és az adatkezelési tájékoztató HTML-ben, `?lang=hu\|en` vagy `Accept-Language` szerint; forrás: `legal/<név>.<nyelv>.md` (lásd [`legal/README.md`](legal/README.md)) |

Környezeti változók: `ANTHROPIC_API_KEY`, `ANTHROPIC_MODEL` (alapból `claude-opus-5-5`; minden hívás ezen fut, a kliens nem választhat mást), `ANTHROPIC_TRIAL_MODEL` (alapból `claude-sonnet-5-5`; a próbaidő rövid elemzései), `FINNHUB_API_KEY`, `PORT` (8080), `DATABASE_PATH`
(`whatstock.db`, SQLite), `VERIFY_MODE` (`dev`: minden bizonylatot elfogad; `store`: App Store
Server API / Play Developer API – a bolti fiókok után készül el), `PUBLIC_URL` (a szerver nyilvános
címe, ide tér vissza a Stripe), `STRIPE_SECRET_KEY`, `STRIPE_WEBHOOK_SECRET`, `STRIPE_PRICES`
(`whatstock.sub.normal=price_…,whatstock.sub.pro=price_…,whatstock.sub.pro.year=price_…,…,whatstock.pack.5=price_…`; az éves termékekhez éves ismétlődésű Stripe-ár),
`RESEND_API_KEY` és `MAIL_FROM` (belépőkód e-mailben; nélkülük a kód a naplóba kerül), `LEGAL_DIR`
(a jogi szövegek mappája, alapból `legal`; a Docker-képben `/legal`).

Élesítés lépésről lépésre (Railway, Hetzner, Fly.io): [`docs/SZERVER.md`](../docs/SZERVER.md).

Docker: `docker build -t whatstock-server . && docker run -p 8080:8080 -v whatstock-data:/data -e ANTHROPIC_API_KEY=… -e FINNHUB_API_KEY=… whatstock-server`
