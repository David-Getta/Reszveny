# WhatStock – előfizetés és elemzés-keretek

## Csomagok

| Csomag | Termékazonosító | Elemzés / hó | Megjegyzés |
|---|---|---|---|
| Próbaidő | – | 3 rövid elemzés 3 napig | első indításkor automatikusan indul; gyorsabb modellel (Sonnet 5.5) készül, az app megmutatja, mit ad az előfizetés |
| Normál | `whatstock.sub.normal` | 8 | |
| Pro | `whatstock.sub.pro` | 18 | „Legnépszerűbb” jelölés |
| Max | `whatstock.sub.max` | 40 | |
| Ultra | `whatstock.sub.ultra` | 70 | havi nézetben „Legjobb ár/érték” (elemzésenként a legolcsóbb havi csomag) |
| Pro, éves | `whatstock.sub.pro.year` | 18 / hó | 10 havi díj egy évre („2 hónap ingyen”) |
| Max, éves | `whatstock.sub.max.year` | 40 / hó | 10 havi díj egy évre; éves nézetben „Legjobb ár/érték”, és az összes csomag közül ez a legolcsóbb elemzésenként |

Az éves előfizetés keretét a szerver ugyanúgy havonta újítja. A csomagválasztó tetején Havi / Éves
kapcsoló van; az éves nézetben a Pro és a Max látszik, az ár alatt a havi megfelelővel. A „Legjobb
ár/érték” jelölést az app a bolt valódi, helyi áraiból számolja: az a csomag kapja, amelyik az adott
nézetben elemzésenként a legolcsóbb (havi nézetben most az Ultra, éves nézetben a Max).

Extra elemzés-csomagok (fogyó termékek, nem járnak le, a havi keret után fogynak):
`whatstock.pack.5` (+5), `whatstock.pack.20` (+20), `whatstock.pack.50` (+50).

## Árazás

Az alapár USD-ben van megadva (`features/billing/pricing.dart`); a boltokban ezeket az
árszinteket kell beállítani, és a bolt minden régióban a helyi pénznemben mutatja (az App Store
és a Play ezt automatikusan teszi). A demó bolt és a böngészős előnézet az USD-alapárból számol
helyi árat az ECB-árfolyammal, a pénznem szokása szerint kerekítve (HUF: „…90”, EUR/GBP: „x,99”).

| Termék | USD | kb. HUF (360 Ft/USD) | EUR | Költség teljes kihasználásnál (Opus 5.5, ≈ 0,60 USD/elemzés) |
|---|---|---|---|---|
| Normál (8) | 7,99 | 2 890 | 7,99 | ≈ 4,80 USD |
| Pro (18) | 18,99 | 6 890 | 17,99 | ≈ 10,80 USD |
| Max (40) | 41,99 | 15 190 | 38,99 | ≈ 24 USD |
| Pro éves (18/hó) | 189,99 | 68 390 | 175,99 | ≈ 130 USD/év |
| Max éves (40/hó) | 419,99 | 151 190 | 388,99 | ≈ 288 USD/év |
| Ultra (70) | 64,99 | 23 390 | 59,99 | ≈ 42 USD |
| +5 | 4,99 | 1 790 | 4,99 | ≈ 3 USD |
| +20 | 17,99 | 6 490 | 16,99 | ≈ 12 USD |
| +50 | 39,99 | 14 390 | 36,99 | ≈ 30 USD |

**Ár/érték (2026-10-11, második kör):** az éves díj havi része a korábbi havi ár (Pro 15,83, Max
35,00 USD), a havi díj ennél kb. 20 %-kal több (Pro 15,99 → 18,99, Max 34,99 → 41,99 USD), így az
éves pontosan 10 havi díj, „2 hónap ingyen”. Elemzésenként (USD): Normál 0,999, Pro 1,055, Max 1,050,
Ultra 0,928; éves Pro 0,880, éves **Max 0,875 – ez a legolcsóbb az összes csomag közül**. Az éves
csomagok így teljes kihasználásnál sem veszteségesek (Pro +0,32, Max +0,59 USD/hó; az előző,
159,99 / 349,99 USD-s éves áraknál −1,43 / −3,51 volt). Az éves előfizetők jóval tovább maradnak
(egy év után 20–40 %, a havi előfizetéseknél 6–14 %), és az egész évet előre fizetik. A drágább
havi díj kicsit ronthatja a havi konverziót; ezt az első hónapok adatai mutatják meg.

**A-terv (2026-10-11):** minden csomag Opus 5.5-tel fut (a szerver rögzíti a modellt), az árak
maradnak, a Max 80 helyett 40, az Ultra 150 helyett 70 elemzést ad. Így a Normál, a Max és az
Ultra a keret teljes kihasználásánál is nyereséges. A Pro 20 elemzéssel ott veszteséges volt
(−0,77 USD), ezért 18 elemzést ad, változatlan áron (+0,43 USD); átlagos használatnál mind nyereséges. A Max és az Ultra elemzésenként nem olcsóbb a Pro-nál, ezért a
„Legjobb ár/érték” jelölés lekerült (félrevezető lett volna).

A havi keret az AI-elemzésekre vonatkozik. A fotófelismerés, az élő adatok, a grafikon, a
kedvencek és a 120 nyelv minden csomagban korlátlan.

## Kliens (kész)

- `features/billing/plan.dart` – csomagok, keretek, termékazonosítók.
- `features/billing/entitlement_service.dart` – jogosultság: csomag, időszak, felhasznált és
  extra elemzések; próbaidő indítása; időszak-görgetés; `check()` → ok / nincs csomag /
  lejárt próba / kimerült keret; `consume()` elemzés után.
- `features/billing/billing_service.dart` + `store_billing_service.dart` (App Store, Play,
  macOS: `in_app_purchase`) + `demo_billing_service.dart` (szimulált bolt).
- `features/billing/billing_controller.dart` – vásárlási esemény → jogosultság.
- `features/billing/paywall_page.dart` – csomagválasztó; `usage_chip.dart` – használat-kijelző
  az oldalsávban, a kezdőképernyőn és a beállításokban.
- `ReportStore.generate` elemzés előtt ellenőrzi a keretet, siker után elhasznál egyet;
  kimerült keretnél a kártya a csomagválasztóra visz.

## Fizetés, mint a Claude-nál

Az előfizetés a **fiókhoz** tartozik, nem az eszközhöz: belépés e-mail címmel és egy 6 jegyű,
10 percig érvényes kóddal (Beállítások → Fiók). Belépés után a csomag és a hátralévő elemzések
minden eszközön ugyanazok; az eszközön korábban gyűlt extra elemzések és fizetős csomag a fiókba
kerülnek.

| Platform | Fizetés | Kezelés (csomagváltás, lemondás) |
|---|---|---|
| macOS, Windows, web | Böngészőben, Stripe Checkouton (a Stripe a helyi pénznemet kínálja) | Stripe ügyfélportál („Előfizetés kezelése”) |
| iOS, iPadOS | App Store (a bolt szabálya szerint) | App Store előfizetések |
| Android | Google Play | Play előfizetések |

Böngészős fizetésnél az app megnyitja a Checkout oldalt, a szerver a Stripe webhookjából írja
jóvá a csomagot, az app pedig figyeli a fiókot (és visszatéréskor azonnal frissít). Ha a platform
boltjában még nincs felvett termék, vagy nincs backend, a demó bolt fut.

Szerver-beállítás: `STRIPE_SECRET_KEY`, `STRIPE_WEBHOOK_SECRET`, `STRIPE_PRICES`
(`whatstock.sub.pro=price_…,…`), `PUBLIC_URL`; a belépőkódhoz `RESEND_API_KEY` és `MAIL_FROM`
(nélkülük a kód a szerver naplójába kerül). A Stripe-ban a webhook eseményei:
`checkout.session.completed`, `invoice.paid`, `customer.subscription.updated`,
`customer.subscription.deleted`.

## Elemzés hossza és webkeresések

A beállításokban választható hossz határozza meg, mennyi keretet fogyaszt egy elemzés:

| Hossz | Terjedelem | Fogyasztás | Webkeresés (alap hossz ± 2) |
|---|---|---|---|
| Rövid | 700–1 000 szó | 1 elemzés | csomag − 2 |
| Alap | 1 250–1 800 szó | 1 elemzés | csomag |
| Részletes | 2 400–3 300 szó, versenytárs-összevetés | 2 elemzés | csomag + 2 |

Webkeresés alap hossznál: Próba 6, Normál 4, Pro 6, Max 8, Ultra 10. Ha csak 1 elemzés maradt,
a részletes nem indítható (`notEnoughCredits`, szerveren 402 `insufficient_quota`), a rövid és az
alap igen. A levonás előbb az időszaki keretből, a maradék az extrából történik. A szerver a
`x-whatstock-depth` fejlécből számolja a költséget, és a kérésben a `max_tokens`-t és a
webkeresés `max_uses` értékét a csomag és a hossz szerinti korlátra vágja, így a kliens nem
kérhet drágább elemzést, mint amiért fizet.

## Szerveroldal (`server/`)

A kliens önmagában nem bízható meg sem a kulccsal, sem a kvótával, ezért a kiadás a backenddel
történik. A `server/` mappában egy kis Dart (shelf + SQLite) szerver van, Dockerfile-lal:

| Végpont | Mit csinál |
|---|---|
| `POST /v1/auth/anonymous` | Névtelen fiók, token; a próbaidő a szerveren indul |
| `GET /v1/me` | A jogosultság a kliens `EntitlementState` formátumában |
| `POST /v1/purchases/verify` | Bolti bizonylat ellenőrzése, csomag/extra jóváírása (tranzakciónként egyszer) |
| `POST /v1/analyze` | Anthropic-továbbítás kvóta-ellenőrzéssel; 402 ha nincs keret; befejezett válasz után levonás és napló |
| `POST /v1/anthropic/v1/messages` | Segéd-hívás (fotófelismerés, formátumjavítás): nem von le elemzést; rögzített modell, legfeljebb 16 000 token, eszközök nélkül, 120 000 karakter és 1 kép, felhasználónként óránként 20 / naponta 60 hívás |
| `GET /v1/market/*` | Finnhub-továbbítás a szerver kulcsával |
| `DELETE /v1/account` | Fiók törlése: a böngészős (Stripe) előfizetés lemondása, majd a szerveren tárolt adatok törlése; a vásárlási sorok névtelenítve maradnak |
| `GET /legal/terms`, `/legal/privacy` | Felhasználási feltételek és adatkezelési tájékoztató (magyar / angol) |

Kliens oldalon elég a `--dart-define=BACKEND_URL=https://…`: az `AppConfig` ekkor a szerver
továbbítóira irányít, a `BackendClient` kezeli a tokent (401-re új fiókot nyit), a
`BillingController` a bolt bizonylatát a szerverrel ellenőrzi (ha a szerver nem érhető el, helyben
írja jóvá és a visszaállítás később újrapróbálja), a `ReportStore` pedig minden elemzés és
kvóta-hiba után a `/v1/me`-ből frissíti a keretet.

A csomagválasztó alján ott áll, hogy az előfizetés havonta automatikusan megújul, amíg le nem
mondják, és hogy a vásárlással a felhasználó elfogadja a feltételeket – a két dokumentum linkjével
(App Store 3.1.2 és fogyasztóvédelmi követelmény). A fiók a beállításokban törölhető (App Store
5.1.1(v)); az App Store-os és Play-es előfizetést a bolt beállításaiban kell lemondani, ezt a
megerősítő ablak is elmondja.

A bolti bizonylat ellenőrzése jelenleg fejlesztői módban (`VERIFY_MODE=dev`) minden vásárlást
elfogad; az App Store Server API / Play Developer API hívás (`VERIFY_MODE=store`) a bolti fiókok
megléte után készül el. Az eredeti terv, viszonyításként:

1. **Proxy**: az app nem közvetlenül az Anthropic és a Finnhub API-t hívja, hanem a saját
   backendet (`ANTHROPIC_BASE_URL` / `FINNHUB_BASE_URL` a proxyra mutat). A kulcsok csak a
   szerveren vannak.
2. **Azonosítás**: eszköz- vagy fiókazonosító (Sign in with Apple / Google), hogy a csomag
   minden eszközön ugyanaz legyen.
3. **Vásárlás-ellenőrzés**: az `in_app_purchase` által adott `verificationData` (App Store
   Server API / Play Developer API) ellenőrzése a szerveren, vagy RevenueCat használata, ami ezt
   és az előfizetés-események (megújulás, lemondás, visszatérítés) kezelését is elvégzi.
4. **Kvóta-nyilvántartás**: a szerver vezeti az időszakot, a felhasznált és az extra
   elemzéseket; az `/v1/analyze` végpont csak akkor fut, ha van keret, és levon egyet.
   A kliens a `/v1/me` válaszából tölti az `EntitlementState`-et (`EntitlementService.replace`).
5. **Költségkorlát**: az elemzés költsége (Opus 5.5 + webkeresés) kb. 0,5–1 USD; a csomagárak
   ezt és a bolti jutalékot (15–30 %) fedezzék. A szerver effort/webkeresés beállítással
   csomagonként is differenciálhat (pl. Normál: `medium`, Max: `high`).

## Boltok beállítása

Éves termékek: `whatstock.sub.pro.year` (189,99 USD) és `whatstock.sub.max.year` (419,99 USD),
ugyanabban az előfizetési csoportban, mint a havi Pro és Max (így a felhasználó válthat közöttük).
A Stripe-on éves ismétlődésű árat kell felvenni, és a `STRIPE_PRICES`-ba betenni.


- App Store Connect: automatikusan megújuló előfizetési csoport a négy csomaggal (havi),
  3 napos bevezető ajánlat (ingyenes próba) a Normál csomagon, fogyó termékek a csomagokhoz.
  A próbaidőt az app helyben is kezeli, hogy fizetés nélkül is kipróbálható legyen.
- Play Console: ugyanezek az azonosítók; az `in_app_purchase` Androidon a Play Billinget
  használja. A visszaállítás a `restorePurchases` hívással történik.
- Windows (bolton kívül) és web: még nincs fizetés; a demó bolt fut. Megoldás: Stripe Checkout
  böngészőben + a fiókhoz kötött jogosultság a szerveren.

## Pénzügyi modell (becslés, 2026-10-11)

**Hogyan folyik a pénz.** A felhasználó a WhatStocknek fizet, nem az Anthropicnak:
telefonon az App Store / Google Play szedi be (ők a kereskedők, ők kezelik az ÁFÁ-t, levonják a
jutalékot, és havonta utalnak a bankszámládra: az Apple kb. 33–45 nappal a hónap vége után, a Google a
következő hónap 15-e körül), asztali gépen és weben a Stripe (2–7 napon belül utal; itt te
vagy a kereskedő, az EU-s ÁFÁ-t neked kell bevallani, pl. OSS-en; Stripe Tax vagy egy Merchant of
Record szolgáltató, pl. Paddle, ezt átveheti). Az Anthropic API-t a saját Claude Console-fiókod
fizeti: bankkártya vagy előre feltöltött kredit (automatikus feltöltéssel), havi költéskorláttal. Az
API-kulcs csak a szerveren van, minden elemzés erre a fiókra terhelődik. Az API előre fizetős, a
boltok utólag utalnak, ezért az első 1–2 hónapra kell forgóeszköz.

**Egy elemzés költsége** (Opus 5.5: 4 USD / 20 USD per millió bemeneti / kimeneti token, gyorsítótár-olvasás
0,20 USD, webkeresés 10 USD / 1000 keresés; Sonnet 5.5 ennek a fele):

| | Opus 5.5 | Sonnet 5.5 |
|---|---|---|
| Rövid (4 keresés) | ≈ 0,40 USD | ≈ 0,20 USD |
| Alap (6 keresés, v2.3) | ≈ 0,45–0,75, tervezéshez 0,60 USD | ≈ 0,30 USD |
| Részletes (8 keresés, 2 elemzés) | ≈ 1,00–1,30 USD | ≈ 0,55 USD |
| Fotófelismerés | ≈ 0,02 USD | ≈ 0,01 USD |

Becslés: a pontos számot a szerver naplója (`usage`) és az éles eval adja meg, ezt az első
élesítés előtt 10–20 valódi elemzéssel érdemes lemérni.

**Nettó bevétel csomagonként** (EU-s átlag 21 % ÁFA levonva; bolti jutalék 15 % a Small Business
Programmal, 1 millió USD éves bevétel alatt; Stripe ≈ 3,5 % + 0,30 USD):

| Csomag (A-terv) | Ár | Nettó (bolt) | Nettó (Stripe) | Költség teljes kihasználásnál (Opus) |
|---|---|---|---|---|
| Normál (8) | 7,99 | 5,61 | 6,07 | 4,80 |
| Pro (18) | 18,99 | 13,34 | 14,84 | 10,80 |
| Max (40) | 41,99 | 29,50 | 33,19 | 24,00 |
| Ultra (70) | 64,99 | 45,65 | 51,53 | 42,00 |
| Pro éves (havi része) | 15,83 | 11,12 | 12,60 | 10,80 |
| Max éves (havi része) | 35,00 | 24,59 | 27,89 | 24,00 |

**Haszon havonta és előfizetőnként, bolti eladásnál, Opus 5.5** (USD):

| Csomag | Teljes keret | 40 % kihasználás |
|---|---|---|
| Normál (8) | +0,81 | +3,69 |
| Pro (18) | +2,54 | +9,02 |
| Max (40) | +5,50 | +19,90 |
| Ultra (70) | +3,65 | +28,85 |
| Pro éves | +0,32 | +6,80 |
| Max éves | +0,59 | +14,99 |

Az előfizetők jellemzően a keret 30–50 %-át használják el. Az eredeti keretekkel (Max 80, Ultra 150)
teljes kihasználásnál a Max −19,91, az Ultra −44,35 USD lett volna; ezért váltottunk az A-tervre. Extra csomagok (ezeket mindig elhasználják), Opus: +5 → +0,51, +20 → +0,64, +50 → −1,91
USD; Sonnet: +2,01 / +6,64 / +13,09 USD.

**Próbaidő.** A próbaidő 3 elemzése rövid, és Sonnet 5.5-tel készül (a szerver dönti el a
próba-keretre: `ANTHROPIC_TRIAL_MODEL`; a megvett extra elemzések már teljes értékűek). Így egy
telepítés ≈ 0,66 USD (3 × 0,20 + fotófelismerés), Opusszal és alap hosszal ≈ 1,80 USD volt; 5 %-os
konverziónál egy fizető előfizetőre ≈ 13 USD jut (korábban ≈ 36). Az app a próbaidő alatt a
beállításokban és a részvény oldalán is kiírja, hogy előfizetéssel a legerősebb modell, több webes
kutatás és hosszabb elemzés jár.

**Haszon a próbák után** (vegyes mix: 40 % Normál, 40 % Pro, 15 % Max, 5 % Ultra; 70 % bolt,
30 % Stripe; 40 %-os kihasználás), csak havi előfizetéssel: nettó bevétel 14,78 USD/hó, API-költség
4,78, haszon 10,00 (68 %); a próbaköltség 6 hónapos átlagos előfizetésnél −2,20/hó → **7,80 USD/hó
(53 %)**; a jellemzőbb ≈ 4,3 hónapos élettartammal 6,98 USD/hó. Ha a Pro és a Max előfizetők harmada
évest választ: 7,25 USD/hó (cserébe az éves előfizetők az egész évet előre fizetik, és tovább
maradnak). (Az előző árakkal – Max 34,99, éves 159,99 / 349,99 – 6,16 volt; a korábbi
Opus-próbával és Pro 20-szal 2,90.)

Fix költségek: szerver (5–20 USD/hó), Apple Developer Program (99 USD/év), Google Play (25 USD
egyszer), domain, e-mail (Resend: havi 3000 levélig ingyenes), és a piaci adat: a Finnhub ingyenes
csomagja nem kereskedelmi célra szól, üzleti használathoz fizetős licenc kell (ezt a Finnhubbal kell
egyeztetni). Az adózás (társasági adó, KIVA vagy egyéni vállalkozás) könyvelővel egyeztetendő.

**Döntés (2026-10-11): A-terv.** Opus mindenhol, Max 40 és Ultra 70 elemzés; a szerver minden
hívásnál a saját modelljét (`ANTHROPIC_MODEL`) használja, a segéd-végpont korlátozott (lásd fent).
Hátravan: a valódi elemzésköltség lemérése 10–20 éles elemzéssel, és a névtelen fiókok tömeges
létrehozása elleni védelem (most minden új névtelen fiók 3 próba-elemzést kap; megoldás lehet az
eszköz-ellenőrzés – App Attest / Play Integrity – vagy a próbaidő e-mailes belépéshez kötése).
