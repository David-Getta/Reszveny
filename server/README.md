# StockLens backend

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
| `POST /v1/analyze` | Anthropic Messages továbbítás; 402 `quota_exceeded` / `trial_expired` / `no_plan` |
| `POST /v1/anthropic/v1/messages` | továbbítás kvóta nélkül (fotófelismerés) |
| `GET /v1/market/<path>` | Finnhub továbbítás a szerver kulcsával |
| `POST /v1/auth/email/start` | `{email}` → 6 jegyű belépőkód e-mailben (10 perc, 5 próbálkozás, óránként 5 kód) |
| `POST /v1/auth/email/verify` | `{email, code}` → a fiók tokenje; az eszközön gyűlt keret átkerül |
| `POST /v1/auth/logout` | a token visszavonása |
| `POST /v1/billing/checkout` | `{product_id}` → Stripe Checkout URL (fiók kell: 403 `login_required`) |
| `POST /v1/billing/portal` | Stripe ügyfélportál URL |
| `POST /v1/stripe/webhook` | Stripe-események, `Stripe-Signature` ellenőrzéssel |

Környezeti változók: `ANTHROPIC_API_KEY`, `FINNHUB_API_KEY`, `PORT` (8080), `DATABASE_PATH`
(`stocklens.db`, SQLite), `VERIFY_MODE` (`dev`: minden bizonylatot elfogad; `store`: App Store
Server API / Play Developer API – a bolti fiókok után készül el), `PUBLIC_URL` (a szerver nyilvános
címe, ide tér vissza a Stripe), `STRIPE_SECRET_KEY`, `STRIPE_WEBHOOK_SECRET`, `STRIPE_PRICES`
(`stocklens.sub.normal=price_…,stocklens.sub.pro=price_…,…,stocklens.pack.5=price_…`),
`RESEND_API_KEY` és `MAIL_FROM` (belépőkód e-mailben; nélkülük a kód a naplóba kerül).

Docker: `docker build -t stocklens-server . && docker run -p 8080:8080 -v stocklens-data:/data -e ANTHROPIC_API_KEY=… -e FINNHUB_API_KEY=… stocklens-server`
