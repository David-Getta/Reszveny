# WhatStock – a szerver élesítése (lépésről lépésre)

A szerver (`server/`) kész: ő tartja az Anthropic- és a Finnhub-kulcsot, számolja a kereteket,
és ellenőrzi a vásárlásokat. Az MI-t nem ő futtatja (az az Anthropic gépein megy), ezért egy kicsi,
olcsó gép is elég neki.

## Hol fusson?

| Szolgáltató | Ár (tájékoztató, regisztrációkor ellenőrizd) | Kezelés | Ajánlás |
|---|---|---|---|
| **Railway** | 5 USD/hó (Hobby csomag, benne 5 USD használat – egy ilyen kis szervernek elég) | teljesen böngészőből, a GitHub-repóból épít | **ezt javasoljuk** |
| Hetzner Cloud | kb. 4–6 EUR/hó a legkisebb gép | parancssor (Linux, Docker, HTTPS-beállítás) | a legolcsóbb, de több kézi munka |
| Fly.io | használat szerint, kb. 2–5 USD/hó | parancssori eszköz (`fly`) | jó, de terminál kell |

A HTTPS (lakat) mindhárom esetben megoldható; a Railway automatikusan adja.

## Amire előtte szükség van

1. **Anthropic API-kulcs** – console.anthropic.com → API Keys → Create Key (név: `whatstock-server`).
   A kulcsot csak a szerver beállításaiba írd be, sehova máshova (chatbe se).
   A Limits oldalon érdemes havi költéskorlátot beállítani.
2. **Finnhub-kulcs** – finnhub.io → regisztráció → ingyenes kulcs. A zárt teszthez elég; nyilvános,
   fizetős indulás előtt kereskedelmi licenc kell (lásd `ELOFIZETES.md`).

## Railway – lépések

1. **Regisztráció**: railway.com → *Login with GitHub* → a Hobby csomag kiválasztása (bankkártya).
2. **Projekt**: *New Project* → *Deploy from GitHub repo* → `David-Getta/Reszveny`
   (ha kéri, engedélyezd a Railway-nek a repó elérését).
3. **Beállítások** (a szolgáltatásra kattintva → *Settings*):
   - *Source → Branch*: `claude/eager-bohr-pi0oy9` (vagy később `main`)
   - *Source → Root Directory*: `/server`
   - a build a `server/Dockerfile`-ból és a `server/railway.json`-ból automatikusan megy.
4. **Tartós tároló** (különben minden újraindításkor elvesznek a fiókok és a keretek):
   a szolgáltatáson jobb klikk → *Attach Volume* → *Mount path*: `/data`.
5. **Változók** (*Variables* fül → *New Variable*):

   | Név | Érték |
   |---|---|
   | `ANTHROPIC_API_KEY` | az Anthropic-kulcs |
   | `FINNHUB_API_KEY` | a Finnhub-kulcs |
   | `TWELVEDATA_API_KEY` | a Twelve Data-kulcs (twelvedata.com, ingyenes): az árfolyamgrafikonhoz kell, mert a Finnhub ingyenes csomagja nem adja |
   | `PUBLIC_URL` | a 6. lépésben kapott cím (pl. `https://whatstock-production.up.railway.app`) |

   A szerver a két kulcs nélkül el sem indul (a napló: „Hiányzó ANTHROPIC_API_KEY vagy
   FINNHUB_API_KEY”), ezért ezeket az első sikeres építés előtt vagy közvetlenül utána add meg.
   A többi (modell, próbamodell, port, adatbázis) alapértéke jó. A `VERIFY_MODE` most maradjon
   `dev` (lásd lent).
6. **Nyilvános cím**: *Settings → Networking → Generate Domain*. A kapott címet írd be a
   `PUBLIC_URL`-be. Ellenőrzés: a böngészőben a `https://<cím>/healthz` oldalon „ok” jelenik meg.
7. **Az app összekötése**: GitHub → a repó *Settings → Secrets and variables → Actions → Variables*
   → *New repository variable*: `BACKEND_URL` = a szerver címe (`https://…`, perjel nélkül a végén).
   A következő kiadástól a letölthető appok (Android, Mac, Windows, web) már ezt a szervert
   használják: valódi árfolyamok és valódi AI-elemzések a demó helyett.

## Biztonság a zárt teszt alatt

- A szerver most **fejlesztői módban** ellenőrzi a vásárlásokat (`VERIFY_MODE=dev`): minden
  vásárlást elfogad. Ezért az appot csak ismerősöknek add oda, ne tedd ki nyilvánosan, amíg a
  valódi bolti ellenőrzés (5b) el nem készül.
- Amíg az Anthropic-fiókon csak a promóciós kredit van, és az automatikus feltöltés ki van
  kapcsolva, a legrosszabb eset is ennyi: elfogy a kredit, és a hívások leállnak. Kártyaterhelés
  nincs.
- A szerver naplójában (Railway → *Deployments → Logs*) látszik minden hívás és hiba.

## Zárt előzetes: csak meghívókóddal

Ha az `INVITE_CODES` változó be van állítva, a szerver csak érvényes meghívókóddal enged be. Az
app első indításkor elkéri a kódot, és minden képernyő alján „Bizalmas előzetes” felirat látszik.
A név csak a te nyilvántartásodra szolgál (melyik kód kié), az appban nem jelenik meg.

Formátum (vesszővel elválasztva, több meghívott is lehet):

    KÓD:Név[:utolsó nap][:eszközök száma][:napi elemzés]

Példa: `DAVID-4Q8ZRT:Getta Dávid::5:30,GABOR-K7M2XQ:Schulz Gábor:2026-11-30:2:10`

- **utolsó nap** (ÉÉÉÉ-HH-NN): eddig a napig érvényes, utána „lejárt”; üresen hagyva nem jár le.
- **eszközök száma** (alapból 3): ennyi telefonon/gépen használható. Ha valaki továbbadja az appot
  a kóddal, a következő eszköz már nem jut be.
- **napi elemzés** (alapból 15): kódonként ennyi AI-elemzés naponta, így a költség felülről korlátos.
- **visszavonás**: töröld a kódot a változóból, és mentsd. A Railway újraindítja a szervert,
  onnantól az a kód semmire nem jó.
- A saját kódodat is vedd fel, mert a kódot minden példány kéri, a tiéd is.

## Statisztika és hibák: a `/admin` oldal

Az app – csak ha a felhasználó engedélyezi (a kezdőképernyőn egyszer megkérdezi, a beállításokban
bármikor kikapcsolható) – névtelen eseményszámokat (indítás, fotó, elemzés, csomagválasztó,
vásárlás, megosztás, riasztás) és hibajelentéseket küld a szervernek. Részvényt, elemzést, e-mailt
nem küld; a hibaszövegből az e-mail-címeket és a tokeneket kitakarja.

1. Railway → *Variables* → *New Variable*: `ADMIN_TOKEN` = egy hosszú, véletlen jelszó (pl. egy
   jelszókezelővel generált 32 karakteres). Ezt se írd chatbe.
2. Böngészőben: `https://<szerver címe>/admin` → írd be a kulcsot → napi bontás (aktív
   felhasználók, új fiókok, elemzések, vásárlások, események), platformok, verziók és a leggyakoribb
   hibák veremnyommal.
3. Szkriptből: `GET /admin/stats.json?days=90`, `Authorization: Bearer <ADMIN_TOKEN>` fejléccel.

Az `ADMIN_TOKEN` nélkül az oldal nem létezik (404). Az új fiókok, elemzések és vásárlások a szerver
saját számai (ezekhez nem kell hozzájárulás); a többi csak a statisztikát engedélyezőktől jön.
Megőrzés: napi összesítés 400 nap, napi aktív felhasználók (naponta más sóval képzett, össze nem
köthető hash) 90 nap, hibák 30 nap az utolsó előfordulás után. Az adatkezelési tájékoztatóba ezt
is bele kell írni (lásd a jogi dokumentumot).

## Nyitóoldal és megosztási linkek

- A szerver címe (`https://<cím>/`) egy egyszerű nyitóoldalt mutat (magyarul vagy angolul, a böngésző
  nyelve szerint): mire jó az app, letöltés Androidra, Macre és Windowsra (alapból a GitHub legutóbbi
  kiadásából; más hely: `DOWNLOAD_BASE_URL`). Amíg az `INVITE_CODES` be van állítva, „zárt előzetes”
  megjegyzés is látszik.
- Az árak oldal: `https://<cím>/pricing` (`?lang=hu` vagy `en`) – a csomagok havi és éves díja USD-ben,
  a keretek és az extra elemzések. Az árak a szerver `PlanSpec.usd`-jéből jönnek; egy teszt ellenőrzi,
  hogy egyeznek az app áraival (`lib/features/billing/pricing.dart`). A keresőknek `/robots.txt` és
  `/sitemap.xml` is van.
- Fogalomtár: `https://<cím>/glossary` (`?lang=hu` vagy `en`) – az app mutatóinak közérthető magyarázata,
  horgonyokkal (pl. `#dividend-yield`); a szövegek az appból generáltak (`python3 tool/glossary/gen_server_glossary.py`,
  a `server/lib/src/glossary_data.dart` generált fájl), egy app-teszt jelzi, ha újra kell generálni.
- Minta-elemzés: `https://<cím>/sample` (`?lang=hu` vagy `en`) – egy illusztratív elemzés kitalált cégen
  (lényeg, hangulat, forgatókönyvek, kulcsszintek, szekciók, kérdés-válasz), a nyitóoldalról és a láblécből
  linkelve, a sitemapben; piaci adatot nem kér.
- Népszerű részvények: `https://<cím>/stocks` és `/stocks/<ticker>` (pl. `/stocks/AAPL?lang=hu`) – 40
  ismert részvény árfolyama, piaci értéke, alapadatai és fő mutatói (P/E, osztalékhozam, béta, 52 hetes sáv) a
  Finnhubból (a szerver kulcsával, részvényenként óránként legfeljebb egy-egy lekérés), letöltés-gombokkal. Más tickerre 404, így nem nyílt Finnhub-proxy.
- Ha valaki megoszt egy elemzést, az app a szövegbe egy `https://<cím>/s/<azonosító>` linket tesz.
  A link oldala és az előnézete (WhatsApp, Messenger, X, iMessage) a megosztó nyelvén mutatja a
  céget, a lényeget, a hangulatot és a forgatókönyveket a kártya képével. A link 180 napig él,
  felhasználónként naponta legfeljebb 30 készül, és a fiók törlésekor törlődik.
- Saját domainnel (pl. `whatstock.app`) a linkek is azt használják: a `PUBLIC_URL`-t kell átírni.

## Próbaidő-visszaélés

Egy IP-címről naponta legfeljebb 10 új fiók kap próbaidőt (a többi próbaidő nélkül indul, de
vásárolni tud). Állítható: `TRIAL_PER_IP_DAY` (0 = nincs korlát). Túl alacsonyra ne állítsd: a
mobilszolgáltatók sok felhasználót egy közös címen engednek ki. A címet csak hash-elve, két napig
tároljuk.

## Szinkron

E-mailes belépés után az app a portfóliót, a kedvenceket, a riasztásokat és a jegyzeteket a
szerveren tárolt fiókcsomaggal szinkronizálja (`GET`/`PUT /v1/sync`, legfeljebb 512 KB). Csak
e-mailes fiók írhat; a fiók törlésekor ez is törlődik. Az adatkezelési tájékoztatóba ezt is bele
kell írni (portfólió és jegyzetek a szerveren, ha a felhasználó belép).

## Megosztott AI-válaszok (gyorsjelentés-összefoglaló, hírmagyarázat)

A „Mi volt a legutóbbi gyorsjelentésben?” és a „Mit jelent ez?” válaszai nem személyesek: ugyanaz
a cég, negyedév és nyelv (vagy ugyanaz a cikk és nyelv) mindenkinek ugyanazt jelenti. A kliens
ezért a `/v1/ask` kérésben egy `shared_cache` kulcsot küld (`earnings|AAPL|2026-09-30|Hungarian`,
illetve `news|<a cikk URL-jének lenyomata>|Hungarian`); a szerver a kutatással készült, teljes
választ a `shared_answers` táblában 30 napig őrzi, és a következő felhasználónak onnan adja
(Anthropic-hívás és napi kérdéskeret nélkül, `x-whatstock-cache: hit` fejléccel). Személyes
adat nincs benne: csak a cég/cikk és a nyelv. Próbaidős (eszközök nélküli) válasz nem kerül a tárba.

## Riasztás e-mailben (csukott appnál is)

A szerver `ALERT_CHECK_MINUTES` percenként (alapból 10; 0 = ki) végignézi az e-mailes fiókok
szinkronizált, aktív árfolyam-riasztásait (Finnhub ár). Ha egy teljesül, megjelöli (a készülékek a
következő szinkronnál átveszik), és e-mailt küld a felhasználó nyelvén (magyar vagy angol) – egy
riasztásról csak egyszer. Az appban a Riasztások oldalon kapcsolható ki. Az e-mailhez a
`RESEND_API_KEY` és a `MAIL_FROM` kell (nélkülük csak a naplóba kerül). A követő stop riasztásnál
(„Esés a csúcsról”) a szerver minden körben feljegyzi az új csúcsot a szinkron-adatban (e-mail nélkül),
és akkor szól, ha az ár a csúcs alá esik a megadott százalékkal.

## Nem USA-részvények ára (pl. OTP)

A Finnhub és a Twelve Data ingyenes csomagja csak USA-részvényeket áraz. Ha a Finnhub nem ad árat,
a szerver a Twelve Data-t is megkérdezi (a tőzsdei végződést átírva: `OTP.BD` → `OTP` + `BSE`). A
budapesti és más nem USA-tőzsdékhez a Twelve Data fizetős (Grow/Pro) csomagja kell; a kulcs
cseréje után kódmódosítás nélkül működik. Addig ezeknél „n/a” az ár, az AI-elemzés viszont
(webkereséssel) működik.

## Tesztelői kódok (fizetés nélküli csomag)

A `TESTER_CODES` változóval a tulajdonos és a tesztelők fizetés nélkül kapnak csomagot:
`KÓD:Név[:csomag][:napok][:fiókok]`, vesszővel elválasztva, pl. `DAVID-TESZT:Dávid:max:365:3`
(alapból `max`, 90 nap, 3 fiók). Az appban: Beállítások → Hívd meg a barátaidat → „Van kódod egy
barátodtól?” → a kód beírása. A csomag a megadott napig él; ha a kódot törlöd a változóból, a
következő kérésnél megszűnik (ha közben nem vásárolt a fiók). A kódot ne add ki nyilvánosan.

## Heti összefoglaló e-mailben

Aki a Beállításokban (belépve) bekapcsolja, annak hétfő reggelente (6:00 UTC után) e-mail megy: a
portfólió és a kedvencek részvényei (legfeljebb 15) a heti változással, csökkenő sorrendben, és
melyiküknek jön gyorsjelentése a következő két hétben. A hét öt legnagyobb mozgásához a Finnhub legfrissebb híre (cím és link) is bekerül. A heti változást a Twelve Data napi záróáraiból
számolja (`TWELVEDATA_API_KEY`; nélküle csak a legutóbbi Finnhub-ár kerül a levélbe); a
lekérdezések között 8 másodperc szünetet tart az ingyenes keret miatt. A szerver
`DIGEST_CHECK_MINUTES` percenként (alapból 60; 0 = ki) nézi, kinek esedékes; egy fióknak hat és fél
napon belül nem megy újra (`digest_log` tábla). Nyelve a felhasználóé (magyar vagy angol).

A levélben a 45 napon belül zárult negyedév eredménye is szerepel („Friss gyorsjelentések”: jelentett és várt
EPS, meglepetés %), a Finnhub `/stock/earnings` végpontjáról, részvényenként egy hívással. A héten kapott
osztalékok (az appban rögzített vagy bróker-exportból importált, a fiókkal szinkronizált tételek) külön
szakaszban („Kapott osztalékok a héten”), API-hívás nélkül; a rögzített kifizetések ritmusából a következő két hétben várható osztalékok is („Várható osztalék a következő két hétben”). Külön sorban az idei összesítés pénznemenként („Kapott osztalékok idén eddig”), akkor is, ha a héten nem jött osztalék. A Twelve Data idősorból (230 nap) technikai
jelzések is („Technikai jelzések”: RSI 30 alatt / 70 felett, a 200 napos átlag átlépése a héten) – ugyanazzal
az egy hívással, Finnhub-tartaléknál nincs.

## Később (éles indulás előtt)

- `VERIFY_MODE=store` a bolti fiókok és az 5b után; Stripe-kulcsok (`STRIPE_*`) az asztali és webes
  fizetéshez; `RESEND_API_KEY` és `MAIL_FROM` az e-mailes belépéshez (nélkülük a belépőkód csak a
  naplóba kerül).
- Saját domain (pl. `api.whatstock.app`) a Railway *Custom Domain* beállításával.
- Rendszeres mentés a `/data` kötetről.
