# WhatStock – koncepció és architektúra

> Alapötlet: **lefotózunk egy részvényt, és az app kiírja róla az összes tudnivalót, a legrészletesebben.**
> Ez a dokumentum az első, vázlatos leírást bontja ki; a részletes specifikáció később érkezik, és ezt a fájlt kell majd bővíteni.

## 1. Mit jelent „lefotózni egy részvényt”?

A felhasználó a kamerával (vagy a galériából választva) képet készít bármiről, amin egy részvény azonosítható:

| Forrás | Példa | Mit olvasunk ki belőle |
|---|---|---|
| Papír részvény / részvénykönyv | régi vagy mai részvényokirat | cégnév, kibocsátó, névérték, sorozat |
| Bróker-app vagy weboldal képernyője | Revolut, Interactive Brokers, Erste, portfolio.hu | ticker, cégnév, ár |
| Újság, magazin, hírportál | tőzsdei rovat, árfolyamtábla | ticker, cégnév |
| Céglogó, termék, bolt felirata | Apple logó, OTP fiók, Coca-Cola doboz | cégnév → kibocsátó |
| TV-képernyő, kijelző | tőzsdei futószalag | ticker |

A felismerés kimenete mindig ugyanaz: **egy vagy több jelölt** (ticker + tőzsde + cégnév + megbízhatóság). Ha több jelölt van, vagy a megbízhatóság alacsony, a felhasználó választ.

## 2. Mit írunk ki? („minden tudnivaló”)

A részletes nézet szekciókra bomlik; minden szekció külön-külön tölthető és hibatűrő (ha egy adat nem érhető el, a szekció ezt jelzi, nem omlik össze az egész képernyő).

1. **Azonosítás** – név, ticker, tőzsde, ISIN, devizanem, ország, szektor, iparág, weboldal, logó.
2. **Árfolyam** – aktuális ár, napi változás (abszolút és %), nyitó, előző záró, napi min/max, 52 hetes min/max, forgalom, átlagforgalom, piaci státusz (nyitva/zárva), pre-/after-market.
3. **Grafikon** – 1N / 1H / 1Hó / 3Hó / 1É / 5É / Max intervallumok.
4. **Értékelés** – piaci kapitalizáció, P/E (trailing és forward), P/B, P/S, EV/EBITDA, PEG, EPS, osztalékhozam, kifizetési arány, béta.
5. **Pénzügyi kimutatások** – bevétel, bruttó/működési/nettó eredmény, EBITDA, marzsok, cash flow, adósság, saját tőke; éves és negyedéves bontásban, több évre visszamenőleg.
6. **Osztalék** – hozam, utolsó és következő osztalék, ex-dátum, kifizetési dátum, osztaléktörténet.
7. **Vállalati események** – közgyűlés, gyorsjelentés dátuma, részvényfelaprózás (split), tőkeemelés.
8. **Cégprofil** – leírás, alapítás éve, székhely, vezérigazgató, alkalmazottak száma, fő termékek.
9. **Tulajdonosi szerkezet** – intézményi / bennfentes tulajdon, legnagyobb tulajdonosok.
10. **Elemzői vélemények** – konszenzus (vétel / tartás / eladás), célárfolyam (min / átlag / max), legfrissebb módosítások.
11. **Hírek** – legfrissebb hírek, forrás, dátum, link.
12. **Kockázat és technikai mutatók** – volatilitás, RSI, mozgóátlagok, short interest.
13. **Hasonló részvények / versenytársak**.
14. **Megjegyzés** – a felismerés nyers eredménye (mit látott a képen), hogy a felhasználó ellenőrizni tudja.
15. **AI-elemzés** – a részletes nézet tetején, gombnyomásra: a friss hírek dátumozott összefoglalása, üzleti modell, erősségek, kockázatok és rejtett tényezők, pénzügyi helyzet, értékeltség, tulajdonosi kör, „mire figyelj”, forráslinkek. A modell (Claude) a letöltött adatokat kapja kontextusként, és webkereséssel maga is utánanéz a legfrissebb eseményeknek; a felhasználó nyelvén ír, és a kész elemzést 12 órára a készülék tárolja.

Az adatokat a felhasználó devizájában is mutatjuk (pl. HUF átváltás), és **jogi felelősségkizárással**: az app nem ad befektetési tanácsot.

## 3. Nyelvek

Az app felülete **120 nyelven** érhető el; az **alapértelmezett az angol**. Induláskor a rendszer
nyelvét választja (ha támogatott), a beállításokban bárki átválthat – a nyelvválasztó minden
nyelvet a saját nevén mutat, és kereshető. A jobbról balra író nyelveknél (arab, perzsa, urdu,
héber, pastu, szindhi, ujgur, szoráni kurd) a teljes elrendezés tükröződik.

A lista a **legtöbbet beszélt nyelvek** (anyanyelvi + második nyelvi beszélők) közül azokat
tartalmazza, amelyeknek saját írott változata van. A nyelvjárások és a más írott nyelvet használó
változatok a sztenderd nyelvhez tartoznak (pl. az arab dialektusok → modern standard arab, a kínai
változatok → kínai, a hindi övezet nyelvei → hindi, kivéve a maithilit és a bhodzspurit). A lista
vége (2–5 millió beszélő) körül a források számai bizonytalanok; ott az írott használat döntött.

| Csoport | Nyelvek |
|---|---|
| Alap | angol |
| Világnyelvek (44-ből) | mandarin kínai (egyszerűsített), kantoni (hagyományos, Hongkong), hindi, spanyol, francia, arab (modern standard), bengáli, orosz, portugál, urdu, indonéz, német, japán, maráthi, telugu, török, tamil, vietnámi, filippínó (tagalog), koreai, perzsa (fárszi), jávai, hausza, szuahéli |
| Új világnyelvek (0.2.15) | pandzsábi (gurmukhi), maláj, nigériai pidzsin, gudzsaráti, thai, kannada, amhara, bhodzspuri, joruba, pastu, üzbég, burmai, malajálam, orija, szundanéz, oromo, maithili, nepáli, szindhi, igbo, azerbajdzsáni, zulu, szebuano, malgas, asszámi, lingala, szomáli, fulfulde, xhosza, khmer, szingaléz, afrikaans, kazah, kinyarvanda, csicseva, sona, bambara, csvana, szotó, haiti kreol, kirundi, volof, akan (twi), luganda, ilokano, tigrinya, ujgur, kurd (kurmandzsi), északi szotó, héber, hiligaynon, tádzsik, kecsua, kikuju, lao, türkmén, eve, guarani, conga, mooré, kurd (szoráni), mongol, kirgiz, tatár, tibeti, kongó, csiluba, kabil |
| Európa | magyar, olasz, lengyel, ukrán, román, holland, görög, cseh, svéd, katalán, szerb, bolgár, albán, horvát, dán, finn, norvég, szlovák, litván; új: belarusz, grúz, örmény, szlovén, bosnyák, macedón, galíciai, lett |

Megjegyzések:
- A **wu kínainak** nincs általánosan használt írott formája; a wu nyelvű eszközbeállítás az
  egyszerűsített kínai felületet kapja. A **kantoni** a hongkongi hagyományos írást használja.
- A Flutter beépített rendszer-szövegei (pl. dátumválasztó) kb. 80 nyelvet ismernek; a többinél
  (pl. jávai, hausza, joruba, igbo) ezek angolul jelennek meg, az app saját szövegei a kívánt
  nyelven. A szövegirányt a `SupportedLocales.rtlLanguages` dönti el (a Flutter az ujgurt
  balról jobbra írná, a szindhit és a szoráni kurdot nem ismeri).
- Az arab írású pandzsábi és szaraiki beszélők az urdu, az iráni azerbajdzsáni beszélők a
  perzsa felületet kapják; a héber régi kódja (`iw`) a hébert.
- A felismerő (Claude) a leírást és a bizonyítékot is a felhasználó nyelvén írja.
- Számok, pénznemek és dátumok a nyelv szokásai szerint formázódnak (pl. `1 234,50` vs `1,234.50`).

A fordítások forrása az `lib/l10n/arb/app_en.arb` (angol sablon) és az `app_<nyelv>.arb` fájlok.
Egy automatikus teszt ellenőrzi, hogy minden nyelvben minden kulcs megvan, ugyanazokkal a
helyőrzőkkel.

## 4. Kinézet és asztali viselkedés

**Claude-app stílus, Apple-érzet.** Meleg, sötét alap (#1F1E1D), narancs akcentus (#D97757),
világos változat is. Széles képernyőn oldalsáv: „Új keresés”, „Beállítások”, „Előzmények”;
a tartalom közepén egy nagy üdvözlő sor („Melyik részvényt nézzük meg?”) és egy lekerekített
keresősáv, amely tickert és cégnevet is ért, bal oldalán kép csatolása és kamera gombbal.
Keskeny képernyőn (telefon) ugyanez oldalsáv nélkül. Apple-részletek: rendszerbetű, finom
1 px-es szegélyek, nagy lekerekítés, rejtett natív címsor, húzható fejléc, macOS-en a
lámpáknak hagyott hely.

**Előhívás bárhonnan.** macOS-en és Windowson egy globális gyorsbillentyű (`⌥ ⇧ Space`, illetve
`Ctrl + Alt + Space`) egy kompakt, lebegő keresősávot hoz elő a képernyő felső harmadában,
minden más ablak felett – ugyanúgy, ahogy a Claude macOS-es alkalmazása. Enter a teljes
ablakban nyitja meg a találatot, Esc vagy fókuszvesztés elrejti a sávot. A menüsorban /
tálcán ikon áll rendelkezésre „Megnyitás / Gyorskeresés / Kilépés” menüvel. macOS-en azért nem a
`⌥ Space` az alapértelmezés, mert azt (és a dupla Option-nyomást) a Claude asztali appja is használja,
és a kettő egyszerre nyílt meg; a dupla Option a beállításokban kapcsolható be, a gyorsbillentyű
ott átállítható.

**Technika.** `window_manager` (ablak: rejtett címsor, méret, mindig felül, átlátszó háttér a
gyorssávhoz), `hotkey_manager` (rendszerszintű gyorsbillentyű), `tray_manager` (ikon és menü).
Mobilon ezek a részek automatikusan kimaradnak.

## 5. Platformok

| Platform | Megoldás |
|---|---|
| iOS, iPadOS | Flutter – egy iOS-target, iPad-adaptív elrendezéssel |
| macOS | Flutter macOS desktop |
| Android | Flutter Android |
| Windows | Flutter Windows desktop |

**Miért Flutter?** Egy kódbázisból natív módon fordul mind az öt célplatformra, van kamera- és képválasztó támogatása, és a felület minden platformon azonosan nézhet ki. (A web később opcionálisan hozzáadható.)

## 6. Architektúra

```
┌──────────────┐    ┌──────────────────┐    ┌─────────────────┐    ┌──────────────────┐
│  Képfelvétel │ →  │   Felismerés     │ →  │ Részvény-adatok │ →  │ Részletes nézet  │
│ kamera/galéria│    │ kép → jelöltek   │    │ ticker → adatok │    │ szekciók         │
└──────────────┘    └──────────────────┘    └─────────────────┘    └──────────────────┘
```

Rétegek a kódban (`lib/`):

- `features/capture` – kép készítése / kiválasztása (`image_picker`, minden platformon működik).
- `l10n/` – 120 nyelv ARB-fájljai, nyelvfeloldás, tartalék-delegate a Flutter által nem ismert nyelvekre.
- `features/recognition` – `StockRecognizer` interfész. Megvalósítások:
  - `ClaudeVisionRecognizer` – a képet a Claude API látás-képességével értelmezi, és **strukturált JSON**-t kér vissza (ticker, tőzsde, cégnév, megbízhatóság, mit látott). Minden platformon ugyanúgy működik, papír részvényt, logót és képernyőfotót is felismer.
  - `OcrRecognizer` (tervezett) – on-device szövegfelismerés (ML Kit) mobilon, offline fallbackként; a kiolvasott szövegből a `TickerExtractor` heurisztikával keres tickert/cégnevet.
- `features/analysis` – `StockAnalyst` interfész; `ClaudeStockAnalyst` a Messages API-val, webkereséssel, strukturált JSON-nal; `ReportStore` gyorsítótár.
- `features/market_data` – `MarketDataProvider` interfész. Megvalósítások:
  - `FinnhubMarketDataProvider` – élő adatok (árfolyam, profil, mutatók, hírek) a Finnhub API-ból.
  - `DemoMarketDataProvider` – beégetett mintaadatok, hogy az app kulcs nélkül is kipróbálható legyen.
- `features/stock_detail` – a részletes nézet szekciói.
- `core/` – modellek, konfiguráció, formázás, hibakezelés.

### Kulcsok és biztonság

Az API-kulcsokat **nem** tesszük a kódba. Fejlesztéskor `--dart-define`-nal adjuk át:

```
flutter run --dart-define=ANTHROPIC_API_KEY=... --dart-define=FINNHUB_API_KEY=...
```

Éles kiadásnál a kulcsokat a saját backend (`server/`, Dart + shelf + SQLite) tartja, az app azzal beszél:

```
flutter run --dart-define=BACKEND_URL=https://api.whatstock.app
```

Ilyenkor a kliensnek nincs kulcsa: a felismerés és a piaci adat a szerver továbbítóján megy
(`/v1/anthropic`, `/v1/market`), az elemzés pedig a `/v1/analyze` végponton, ami a szerver
nyilvántartása szerint ellenőrzi és vonja le a keretet (402 → `quota_exceeded`,
`trial_expired`, `no_plan`). A kliens első indításkor névtelen fiókot nyit (token a készüléken),
a `/v1/me`-ből frissíti a csomagot, és vásárlás után a `/v1/purchases/verify`-ra küldi a bolti
bizonylatot. Részletek: `docs/ELOFIZETES.md`, `server/README.md`.

## 7. Ütemterv

| Fázis | Tartalom | Állapot |
|---|---|---|
| 0 | Repó, Flutter váz, mind az 5 platform target, CI, 44 nyelv | ✅ kész |
| 0b | Claude-stílusú felület, oldalsáv, előzmények, téma, cégnév-keresés, macOS/Windows gyorsbillentyű + tálcaikon, app-ikonok | ✅ kész |
| 0c | 120 nyelv: a legtöbbet beszélt, saját írott változattal rendelkező nyelvek, kereshető nyelvválasztó, jobbról balra író nyelvek (ujgur, szindhi, szoráni kurd is), lefordított iparág- és országnevek | ✅ kész |
| 1 | Kép → felismerés → árfolyam + profil + mutatók + hírek megjelenítése | 🟡 váz kész, finomítás jön |
| 2 | AI-elemzés (hírösszefoglaló + átfogó kép, webkereséssel), árfolyamgrafikon, éves kimutatások, vágólap-beillesztés, átállítható gyorsbillentyű, bejelentkezéskori indítás | ✅ kész |
| 3a | Kedvencek (csillag, oldalsáv, kezdőképernyő élő árral), böngészős előnézet (web-build Artifactként) | ✅ kész |
| 3b | Deviza-átváltás (ECB-árfolyam, választható megjelenítési pénznem), név és logó | ✅ kész |
| 3b2 | Átnevezés: StockLens → **WhatStock** (a stocklens.com egy másik részvényelemző szolgáltatás, Kanadában bejegyzett védjeggyel); toldalékok igazítva a toldalékoló nyelvekben (magyar, török, azerbajdzsáni, kazah, türkmén, üzbég, koreai); termékazonosítók `whatstock.*` | ✅ kész (domain és védjegy: tulajdonosi teendő; a whatstock.com 2026-10-12-én parkoltatott, nem használt domainnek látszik – „/lander” üres oldal) |
| 3c | AI-kilátások szekció (pszichológia, szociológia, fundamentum, technika, makró; bull/base/bear), automatikus frissítés minden platformon | ✅ kész |
| 3d | Előfizetés: próbaidő, Normál/Pro/Max/Ultra, extra csomagok, paywall, kvóta-ellenőrzés (kliens) | ✅ kész |
| 4a | Backend (`server/`): Anthropic/Finnhub-proxy, névtelen fiók, szerveroldali kvóta, vásárlás-ellenőrzés váza; a kliens `BACKEND_URL`-lel átáll rá | ✅ kész (bolti bizonylat-ellenőrzés: fejlesztői mód, az éles App Store / Play ellenőrzés a bolti fiókok után) |
| 3e | AI-elemzés v2: kutatási terv, adatfegyelem, „na és?”, bővített rejtett tényezők, konkrét ársávok; árfolyam-statisztika és többéves kimutatások a modellnek; beállítások: hossz (részletes = 2 elemzés), olvasói szint, ellenérv; webkeresés csomagonként | ✅ kész |
| 3f | AI-elemzés v2.1: gyorsítótárazható prompt, többletadatok (versenytársak, bennfentes ügyletek, EPS-meglepetések, következő gyorsjelentés), számszerű kilátás (hangulat-sáv, forgatókönyv-diagram, kulcsszintek, eseménynaptár), minőség-ellenőrző és éles eval | ✅ kész |
| 3g | AI-elemzés v2.2: Opus 5.5-höz igazított prompt, ágazati mutatók és értékpapír-típusok, volatilitáshoz méretezett ársávok, számolt értékelés, helyi webkeresés, injekció elleni védelem, JSON-javító lépés | ✅ kész |
| 3h | AI-elemzés v2.3: a legvalószínűbb forgatókönyv kiemelve, indoklással; hosszú távú kilátás 3, 5 és 10 évre (ársáv, legvalószínűbb ár, számítás, bizonyosság, legyező-diagram) | ✅ kész |
| 4b1 | Portfólió: vételek (darab, ár, dátum), összérték a megjelenítési pénznemben, napi változás, nyereség/veszteség, megoszlás, „A pozícióm” a részvény oldalán; az AI-elemzés a saját átlagárhoz is viszonyít | ✅ kész (csak a készüléken; fiókos szinkron később) |
| 4b2 | Árfolyam-riasztás: fölé / alá / napi mozgás, 5 percenkénti ellenőrzés, asztali rendszerértesítés (macOS: UNUserNotificationCenter, Windows/Linux: local_notifier), az appon belüli jelzés „Megnyitás” gombbal; asztali gépen az app bezárt ablaknál a menüsorban / tálcán fut tovább (kapcsolható) | ✅ kész (telefonos háttér-értesítés: 5j) |
| 4b3 | OCR fallback offline (ML Kit, mobil) | ⬜ |
| 4c | Fiók és fizetés, mint a Claude-nál: belépés e-mail kóddal, fiókhoz kötött előfizetés; asztali gépen és weben Stripe Checkout + ügyfélportál, telefonon App Store / Play; lefordított iparág- és országnevek | ✅ kész (Apple / Google belépés később) |
| 4c2 | Haszon: a próbaidő rövid elemzései gyorsabb modellel (Sonnet 5.5) futnak, az app kiírja, mit ad az előfizetés; a Pro 18 elemzést ad (20 helyett), így teljes kihasználásnál sem veszteséges | ✅ kész |
| 4c3 | Éves előfizetés a Pro és a Max csomaghoz (10 havi díj, „2 hónap ingyen”), Havi/Éves kapcsoló; a Max elemzésenként a legolcsóbb (havi ára 34,99 USD), „Legjobb ár/érték” jelöléssel | ✅ kész |
| 4c4 | Árak, második kör: az éves díj havi része a korábbi havi ár, a havi Pro 18,99 és Max 41,99 USD (az éves így 10 havi díj); az éves Max a legolcsóbb elemzésenként; a „Legjobb ár/érték” jelölés a bolti árakból számolva | ✅ kész |
| 4 | Bolti kiadás (App Store, Play, Microsoft Store, Mac App Store), backend üzembe helyezése | ⬜ (lásd 5. szakasz) |
| 5a | Fiók törlése az appból és a szerveren (App Store-követelmény): a böngészős előfizetés lemondása, a szerveren tárolt adatok törlése, választhatóan a készüléken tároltaké is; ÁSZF és adatkezelési tájékoztató a beállításokban és a csomagválasztó alján (automatikus megújulás, elfogadás vásárláskor), a szerver `/legal` oldalain magyarul és angolul | ✅ kész (a szöveg véglegesítése jogásszal: tulajdonosi teendő) |
| 5b | Valódi bolti vásárlás-ellenőrzés (App Store Server API, Google Play Developer API) – most fejlesztői módban minden vásárlást elfogad | ✅ kész a szerveren (`VERIFY_MODE=store`): StoreKit 2 tranzakció az Apple-től visszakérdezve, Play Developer API szolgáltatásfiókkal, bolti értesítések (megújítás, visszatérítés) mindkét boltból; beállítás: `docs/ELOFIZETES.md`; a kulcsok és a bolti beállítás tulajdonosi teendő |
| 5c | Próbaidő-visszaélés elleni védelem (e-mailes belépés vagy eszköz-ellenőrzés – döntés kell) | 🟡 első lépés kész: IP-címenként naponta legfeljebb 10 új próbaidő (`TRIAL_PER_IP_DAY`, a cím csak hash-elve, 2 napig); erősebb védelem (Play Integrity / App Attest vagy e-mail) döntés után |
| 5d | Szerver élesítése: telepítési konfiguráció, HTTPS, mentés, figyelés, naplók automatikus törlése | 🟡 Railway-konfiguráció és útmutató kész (`docs/SZERVER.md`); a fiók és a kulcsok tulajdonosi teendő |
| 5e | Hibakövetés és adatvédelem-barát analitika hozzájárulással (telepítés → próba → elemzés → előfizetés tölcsér) | ✅ kész: saját szerveren, külső szolgáltató nélkül; hozzájárulás a kezdőképernyőn (egyszer) és a beállításokban; napi összesített eseményszámok, össze nem köthető napi aktív felhasználók, kitakart hibajelentések; `/admin` statisztika-oldal `ADMIN_TOKEN`-nel (`docs/SZERVER.md`); az adatkezelési tájékoztató kiegészítése tulajdonosi teendő |
| 5f | Elemzés megosztása: kép-kártya (fejléc, hangulat, forgatókönyvek, link) és nyilvános link előnézettel – a virális hurok alapja | ✅ kész: kép-kártya (4:5, 1080×1350) és szöveg; backend-módban mindkettőhöz nyilvános link (`/s/<id>`) Open Graph-előnézettel (kép, cím, lényeg) a megosztó nyelvén, 180 napig, fiók törlésekor törlődik |
| 5g | Ajánlói program: meghívó kód, mindkét fél +5 elemzést kap | ✅ kész: saját kód a beállításokban (másolás, megosztás, statisztika), barát kódjának beváltása; a meghívott azonnal, az ajánló a meghívott első elemzése után kapja meg, ajánlónként legfeljebb 10-szer (`REFERRAL_BONUS`, `REFERRAL_MAX`) |
| 5h | Weboldal: letöltés, árak, minta-elemzések, népszerű részvények oldalai (SEO) | 🟡 nyitóoldal a szerveren (`/`, magyar/angol, letöltés Androidra, Macre, Windowsra, zárt előzetes jelzés, jogi linkek); árak oldal (`/pricing`, csomagok, éves díj, extra elemzések, a kliens áraival tesztben egyeztetve), `robots.txt` és `sitemap.xml`; népszerű részvények oldalai (`/stocks`, `/stocks/<ticker>`: 40 részvény árfolyama, piaci értéke, alapadatai magyarul és angolul, letöltés-gombokkal, 1 órás gyorsítótárral, a sitemapben); minta-elemzések később |
| 5i | Első indítás: rövid bemutató, ingyenes minta-elemzés, értékelés-kérés jó élmény után | ✅ kész: háromoldalas bemutató (csak friss telepítésnél, átugorható), áruházi értékelés-kérés egyszer, a 3. elemzés után; a minta-elemzés helyett a próbaidő ingyenes elemzései (beégetett, kitalált számokkal félrevezető lenne) |
| 5l | Újraelemzés: „Az előző elemzés óta” – árfolyam, piaci hangulat, forgatókönyv-valószínűségek és a legvalószínűbb forgatókönyv változása, lenyitva az előző elemzés lényege; a 12 óránál régebbi elemzésnél kérdés (új vagy a korábbi) és az elemzések előzménylistája | ✅ kész |
| 5m | „Kérdezz az elemzésről”: rövid beszélgetés egy elkészült elemzésről (javasolt kérdések, elemzésenként 6 kérdés, napi keret, próbaidőben olcsóbb modell; szerveren `/v1/ask`) | ✅ kész |
| 5n | Közelgő események: a kedvencek és a portfólió gyorsjelentései (90 nap, napszak, várt EPS) és az elemzések dátumos eseményei; kártya a kezdőképernyőn, teljes lista külön oldalon | ✅ kész |
| 5o | Összehasonlítás: legfeljebb 3 részvény fő számai egymás mellett (értékeltség, növekedés, árrés, ROE, eladósodottság, osztalék), soronként a legjobb kiemelve, alul az elmentett elemzések lényege; a részvény oldaláról nyílik | ✅ kész |
| 5p | Várható éves osztalék a portfólióban: tételenként és összesítve a megjelenítési devizában, hozammal (az elmúlt 12 hónap osztaléka alapján) | ✅ kész |
| 5q | Árfolyamgrafikon: a saját átlagár és az aktív riasztások szintje szaggatott vonallal | ✅ kész |
| 5r | „Piacok ma”: az S&P 500, a Nasdaq 100 és a Dow Jones napi változása (SPY, QQQ, DIA) a kezdőképernyőn | ✅ kész |
| 5s | Élő javaslatok gépelés közben a keresőben: azonnal a kedvencekből és a legutóbbiakból, 0,4 mp szünet után a piaci keresőből (cégnévvel) | ✅ kész |
| 5t | Saját jegyzetek részvényenként (befektetési napló: miért vetted, mire figyelsz); csak a készüléken, az AI-elemzés figyelembe veszi | ✅ kész |
| 5u | Hasonló cégek a részvény oldalán (versenytársak chipekként, egy gombbal összehasonlítás) | ✅ kész |
| 5v | Portfólió CSV-export (megosztással) és -import beillesztett sorokból (vessző, pontosvessző tizedesvesszővel, tabulátor; fejléc elhagyható) | ✅ kész |
| 5w | Szinkron az e-mailes fiókkal: portfólió, kedvencek, riasztások, jegyzetek minden eszközön (az utolsó írás nyer; első belépéskor és ütközéskor unió, hogy semmi ne vesszen el) | ✅ kész |
| 5x | Portfólió értékalakulása grafikonon (napi záróárakból, a vételek dátumától, a befektetett összeg szintjével); a nagy számok tömören a tengelyen | ✅ kész |
| 5y | AI-portfólióelemzés: az egész portfólió (koncentráció, szektor-, ország- és devizakitettség, közös kockázatok, osztalék, megfontolandó szempontok) egy rövid elemzésnyi keretért; a legutóbbi a készüléken marad | ✅ kész |
| 5z | Heti összefoglaló e-mailben (bekapcsolható): hétfő reggel a portfólió és a kedvencek heti mozgása, a friss (45 napon belül zárult) negyedéves eredmények EPS-sel, és a következő két hét gyorsjelentései | ✅ kész |
| 5aa | Portfólió összevetése az S&P 500-zal: mintha minden vétel összegét aznap indexalapba tetted volna (eladáskor ugyanannyit kivéve) | ✅ kész |
| 5ab | Eladások rögzítése: FIFO bekerülési érték, realizált nyereség (évenként is, az adóbevalláshoz), lezárt pozíciók; a grafikon, a CSV, a szinkron és a heti e-mail is kezeli | ✅ kész |
| 5ac | „Új gyorsjelentés” jelzés: ha egy mentett elemzés óta a cég gyorsjelentést tett közzé, a listában jelvény, megnyitáskor a frissítés-kérdés megemlíti | ✅ kész |
| 5ad | Bróker-exportok importja (Revolut, Trading 212, Interactive Brokers) fájlból is, eladásokkal; osztalék- és befizetéssorok kihagyva, ismételt import nem duplikál | ✅ kész |
| 5ae | Offline gyorsítótár: hálózat nélkül az utolsó ismert ár, profil, mutatók és grafikon látszik (legfeljebb 60 részvény), a részvény oldalán jelzéssel | ✅ kész |
| 5af | Mutatómagyarázatok kezdőknek: 24 mutató (P/E, PEG, béta, árrések, ROE…) mellett ⓘ, koppintásra egy-két mondatos, közérthető magyarázat 120 nyelven | ✅ kész |
| 5ag | „Hírek a részvényeidről” a kezdőképernyőn: a portfólió és a kedvencek friss hírei egy listában (újabb elöl, ismétlés nélkül, egy hétig), külön oldallal | ✅ kész |
| 5ah | Kedvencek oldal (figyelőlista): ár, napi változás, 30 napos mini-grafikon; rendezés napi változás vagy ticker szerint, átrendezés húzással, törlés elhúzással visszavonással | ✅ kész |
| 5ai | „A nap a részvényeiddel”: napi AI-összefoglaló a portfólió és a kedvencek mai mozgásáról és friss híreiről a kezdőképernyőn (a kérdéskeretből, elemzést nem fogyaszt) | ✅ kész |
| 5aj | Gyorsjelentések kártya a részvény oldalán: következő jelentés (nap, napszak, várt EPS), az utolsó 4 negyedév várt és jelentett EPS-e pontdiagramon a meglepetéssel, és hányszor teljesítette a várakozást | ✅ kész |
| 5ak | Gyorsjelentés-emlékeztető: asztali értesítés a kedvencek és a portfólió részvényeinek jelentése előtti napon (vagy aznap), egyszer; koppintásra a részvény nyílik; a Beállításokban kikapcsolható | ✅ kész |
| 5al | Több részvény egy képen (pl. bróker-figyelőlista): a választólapon soronként csillag, és „Mind a kedvencekhez” gomb | ✅ kész |
| 5am | Portfólió importálása képernyőképről: a bróker-app „Pozícióim” oldalának képéből (kiválasztva vagy beillesztve) a ticker, a darabszám és az átlagos vételár; átnézés és kijelölés után kerülnek a portfólióba, kétszer nem; a fotófelismerés segéd-végpontján, elemzést nem fogyaszt | ✅ kész |
| 5an | 52 hetes ársáv az Árfolyam kártyán: a mai ár helye az éves mélypont és csúcs között, és hány százalékkal van a csúcs alatt | ✅ kész |
| 5ao | Menüsor- / tálcamenü: az első 8 kedvenc a mai árral és a napi változással (▲/▼), 5 percenként frissül; kattintásra megnyílik a részvény | ✅ kész |
| 5ap | Követő stop riasztás („Esés a csúcsról”): a riasztás óta elért legmagasabb árhoz képest X%-os esésnél szól; a csúcs az appban és a szerveren is frissül (szinkronnál a magasabb marad), a szint a grafikonon is látszik, e-mailben is megy | ✅ kész |
| 5aq | Bennfentes ügyletek kártya a részvény oldalán: a vezetők nyílt piaci vételei és eladásai 90 napra (darab, nettó részvényszám, a legnagyobb ügyletek), az opciólehívás és a juttatás nélkül | ✅ kész |
| 5ar | Elemzői vélemények alakulása: az Elemzők kártyán az utolsó 4 hónap vétel/tartás/eladás aránya oszlopokban | ✅ kész |
| 5as | Saját listák a kedvencek között (pl. „Tech”, „Osztalék”): chipsor a Kedvencek oldalon, a részvény melletti gombbal listára tehető, átnevezés, törlés; a fiókkal szinkronizálva (név szerint összevonva) | ✅ kész |
| 5at | Kérdezz a portfólió-elemzésről: ugyanaz a rövid beszélgetés, mint a részvényelemzésnél (a napi kérdéskeretből) | ✅ kész |
| 5au | Hozamok a grafikon alatt: 1 hét, 1 hónap, 3 hónap, idén (az előző év záróárától), 1 év, 5 év; a nem fedett időszak kimarad | ✅ kész |
| 5av | Biztonsági mentés fájlba és visszaállítás (kedvencek, listák, portfólió, riasztások, jegyzetek) a Beállításokban; a visszaállítás összefésül, semmit nem töröl, kétszer sem duplikál | ✅ kész |
| 5aw | Portfólió-megoszlás részvények, szektorok vagy devizák szerint (váltóval) | ✅ kész |
| 5ax | Akadálymentesség: az árfolyam- és portfólió-grafikon képernyőolvasóval felolvassa az időszakot, a kezdő és záró árat és a változást | ✅ kész |
| 5ay | Összehasonlítás: 1 éves hozam (a magasabb kiemelve) és távolság az 52 hetes csúcstól | ✅ kész |
| 5az | Asztali billentyűparancsok (Ctrl, macOS-en ⌘): K új keresés a keresőmezőbe, 2 portfólió, 3 riasztások, vessző beállítások; az oldalsávon halványan jelölve | ✅ kész |
| 5ba | Reggeli összefoglaló (bekapcsolható): „A nap a részvényeiddel” reggel 7 után magától elkészül, amíg az app fut, és asztali értesítés jelzi az első mondatával | ✅ kész |
| 5bb | Célarányok és újrasúlyozás: pozíciónként megadható cél %, a megoszlás kártyán a mostani → cél arány és mennyit kellene venni vagy eladni (1 százalékpont alatt „Célon”); szinkronnal és a mentésben is | ✅ kész |
| 5bc | Gyorsjelentés eredménye értesítésben: a jelentés után (ha előtte emlékeztettünk rá) egyszer szól, hogy a cég a várt EPS felett vagy alatt teljesített, a számokkal | ✅ kész |
| 5bd | A Kedvencek listán kis harang jelzi az aktív árfolyam-riasztást | ✅ kész |
| 5be | Elrendezés-ellenőrzés keskeny telefonon (340 px, 1,4× betű): kezdőlap, részvény oldal, portfólió, riasztások, beállítások – a kilógó sorok javítva, állandó teszttel | ✅ kész |
| 5bf | „Mit jelent ez?” a híreknél: néhány mondatos AI-magyarázat arról, mi történt és mit jelenthet a részvényre; utánanéz a weben (legfeljebb 3 keresés, a cikk megnyitása), tisztázza a cégek kapcsolatát, megítéli a forrás hitelességét, és linkeli a felhasznált forrásokat (a kérdéskeretből) | ✅ kész |
| 5bg | Tömeges riasztás a Kedvencek oldalról: napi mozgás-riasztás (pl. ±5%) egyszerre a lista minden részvényére, ahol még nincs ilyen | ✅ kész |
| 5bh | Realizált nyereség exportja CSV-be az adóbevalláshoz: eladásonként dátum, ticker, darab, eladási ár, bevétel, FIFO bekerülési érték, nyereség, pénznem | ✅ kész |
| 5bi | Éves hozam a portfólió összesítőjén: pénzsúlyozott (XIRR) a vételek és eladások dátumával, ha az első vétel legalább egyéves; magyarázat koppintásra | ✅ kész |
| 5bj | Közelgő események a naptárba: az események oldaláról egy .ics fájl (Google, Apple, Outlook), egész napos bejegyzésekkel; állandó azonosítóval, így újraimportáláskor frissül, nem duplázódik | ✅ kész |
| 5bk | Portfólió-riasztás (asztali értesítés): ha a teljes portfólió egy nap alatt legalább ±2 / 3 / 5%-ot mozdul, naponta egyszer szól, a legnagyobb mozgóval; hétvégén és ugyanarra a mozgásra nem ismétel | ✅ kész |
| 5bl | „Mi lett volna, ha befektetsz?” a részvény oldalán: egy választható összeg mai értéke 1, 3 vagy 5 év után (csak árfolyam, osztalék és költség nélkül) | ✅ kész |
| 5bm | Kedvencek megosztása és beillesztése: a lista tickerei szövegként megoszthatók, és beillesztett tickerek (vessző, szóköz, új sor, $AAPL) egyszerre felvehetők a kedvencekhez és a kiválasztott listára | ✅ kész |
| 5bn | Portfólió-pozíciók rendezése: legnagyobb elöl, legjobb összhozam, legjobb mai mozgás vagy ticker szerint (az ár nélküliek a végén) | ✅ kész |
| 5bo | Saját vételek (▲) és eladások (▼) a részvény árfolyamgrafikonján, jelmagyarázattal, ha a látható időtávba esnek | ✅ kész |
| 5bp | Billentyűparancs-súgó asztali gépen: Ctrl/⌘ + / vagy az oldalsáv linkje listázza a gyorsbillentyűket (új keresés, portfólió, riasztások, beállítások, globális) | ✅ kész |
| 5bq | Amerikai tőzsdei nyitvatartás a kezdőlapon: „nyitva · zár X múlva” / „zárva · nyit X múlva” (New York-i idő, nyári időszámítás, 2026–27 ünnepnapjai és rövidített napjai), percenként frissül | ✅ kész |
| 5br | Portfólió-cél: célösszeg az összesítés pénznemében, alatta sáv és százalék (koppintásra módosítható vagy törölhető) | ✅ kész |
| 5bs | Kedvencek: a 7 napon belüli gyorsjelentés a ticker alatt („Holnap”, „5 nap múlva”), a dátum a súgóban | ✅ kész |
| 5bt | Részvény-grafikon: kapcsolóval az S&P 500 ugyanarról a pontról indítva, és a változása az időszakban (csak bekapcsoláskor tölt) | ✅ kész |
| 5bu | Aktív árfolyam-riasztás szerkesztése (ceruza gomb): feltétel és szint módosítható, ugyanazzal az azonosítóval, így a szinkron felülírja, nem duplázza | ✅ kész |
| 5bv | Kedvencek: kis jegyzet-ikon a ticker mellett, ha a részvényhez saját jegyzet tartozik | ✅ kész |
| 5bw | Pozíció tranzakciós lapja: a még meglévő vételi tételek (FIFO) egyenként, darab × vételi ár, dátum és a mai árral számolt nyereség | ✅ kész |
| 5bx | Tálca/menüsor (asztali gép): a kedvencek fölött a portfólió mai mozgása (%, összeg); koppintásra a portfólió nyílik | ✅ kész |
| 5by | Részvény-fejléc: ha 7 napon belül gyorsjelentés jön, a ticker alatt („Negyedéves gyorsjelentés · holnap · zárás után”) | ✅ kész |
| 5bz | Tranzakció törlése visszavonható: a tranzakciós lapon „Tranzakció törölve · Visszavonás”, amíg a lap nyitva van | ✅ kész |
| 5ca | Riasztások: törlés visszavonható (értesítő sáv), és a teljesült riasztások egy gombbal törölhetők (szintén visszavonható) | ✅ kész |
| 5cb | Kezdőképernyő testreszabása: a beállításokban kikapcsolható a Piacok ma, A nap a részvényeiddel, a Portfólió, a Kedvencek, az Események, a Hírek és az Elemzéseim | ✅ kész |
| 5cc | Portfólió megoszlása országok szerint is (a cégprofilok székhelye alapján, lefordított országnevekkel); a fülsor keskeny képernyőn görgethető | ✅ kész |
| 5cd | Riasztás-ablak: gyorsgomb az 52 hetes csúcsra (fölé) és mélypontra (alá), pontos szinttel; a megadott szintek (átlagár %, csúcs) nem kerekednek egészre | ✅ kész |
| 5ce | Kérdezz az elemzésről: ha a kérdéshez újabb vagy hiányzó tény kell (friss hír, cégek kapcsolata), legfeljebb 2 webkereséssel utánanéz, a források a válasz alatt; közös „Források” elem a hírmagyarázattal | ✅ kész |
| 5cf | A hírmagyarázatok a készüléken is megmaradnak (7 napig, legfeljebb 60), forrásokkal: újraindítás után sem fogyasztanak újra kérdést | ✅ kész |
| 5cg | Forrás-címkék a forráslinkek mellett (hírmagyarázat, kérdezés, AI-elemzés): Hivatalos, Sajtóközlemény, Vezető lap, Vélemény – a webhely alapján, AI-költség nélkül | ✅ kész |
| 5ch | „Mi volt a legutóbbi gyorsjelentésben?” – a gyorsjelentés-kártyán (ha 150 napon belül zárult negyedév) AI-összefoglaló: utánanéz a cég közleményének és a sajtónak, számokkal a várakozáshoz képest, forráslinkekkel; negyedévenként egyszer kérve, 30 napig a készüléken | ✅ kész |
| 5ci | Megosztott AI-válaszok a szerveren: a gyorsjelentés-összefoglalót (cég + negyedév + nyelv) és a hírmagyarázatot (cikk + nyelv) a szerver 30 napig őrzi, és a következő felhasználónak Anthropic-hívás és kérdéskeret nélkül adja – gyorsabb és sokkal olcsóbb | ✅ kész |
| 5cj | Devizasor a „Piacok ma” alatt: a dollár a megjelenítési pénznemben (USD/HUF; dollár-pénznemnél EUR/USD) az ECB napi árfolyamával és a napi változással, egy óráig gyorsítótárazva | ✅ kész |
| 5ck | „Frissítsük az elemzést?” kérdés és kártya: ha az elemzés óta új gyorsjelentés jött, linkkel rögtön kérhető a jelentés AI-összefoglalója | ✅ kész |
| 5cl | A gyorsjelentés eredményéről szóló értesítésre koppintva a részvény és rögtön az AI-összefoglaló lapja nyílik; az ablak előtérbe hozása nem akaszthatja meg a megnyitást | ✅ kész |
| 5cm | „A nap a részvényeiddel”: a ma (vagy az elmúlt 2 napban) jelentő cég friss EPS-e a várthoz képest, és a héten jelentők napja is bekerül az AI adataiba, így az összefoglaló a gyorsjelentést is említi | ✅ kész |
| 5cn | Összehasonlítás: két új sor – az utolsó negyedév EPS-meglepetése (a nagyobb nyer) és a következő jelentés napja | ✅ kész |
| 5co | Leírás alapján keresés: ha a beírt szöveg nem ticker és a piaci kereső nem találja („tech 100 etf”, „a legnagyobb magyar bank”), az AI találja ki, melyik részvény vagy ETF (egy biztos jelöltnél rögtön megnyílik, többnél választólap); nem fogyaszt elemzést | ✅ kész |
| 5cp | „Mi ez a papír?” – cégprofil nélküli tickernél (ETF, alap, letéti jegy) kártya, gombbal AI-magyarázat: mi ez, mit követ és tart, költség, méret, osztalék, kockázatok – webes forrásokkal; papíronként és nyelvenként egyszer, 30 napig megőrizve, a szerver megosztja | ✅ kész |
| 5cq | ETF-tudatos AI-elemzés (prompt v2.5): cégprofil nélküli tickernél a modell előbb azonosítja a papírt (ETF, alap, letéti jegy), és alapként elemzi – kibocsátó, követett index és tartalom, költség, méret, osztalék, követési hiba; a mögöttes index értékeltsége; cégspecifikus ellenőrzések nélkül | ✅ kész |
| 5cr | Keresési javaslat: ha a beírás leírásnak látszik és sem saját, sem piaci találat nincs, „Kérdezzük meg az AI-t: „…”” sor a javaslatok között – koppintásra ugyanaz, mint Enterre | ✅ kész |
| 5cs | Ár nélküli pozíciók nevesítve: a kezdőképernyő portfólió-kártyáján és a portfólió oldalon „Nincs aktuális ár: 1796.HK” (pl. nem USA-részvény), az összesítésből kimaradók helyett puszta n/a; csak ár nélküli papíroknál a napi/össz változás sor elmarad | ✅ kész |
| 5ct | „A nap a részvényeiddel”: a saját devizapár (USD a megjelenítési pénznemben) napi mozgása is az AI adataiban; ha legalább 0,3%, az összefoglaló egy tagmondatban megemlíti (a külföldi papírok forintértéke miatt) | ✅ kész |
| 5cu | „Friss gyorsjelentések” az események oldalán: a kedvencek és a portfólió 45 napon belül zárult negyedévének eredménye (várt felett/alatt, EPS-számok, meglepetés %), ✨ gombbal az AI-összefoglaló, koppintásra a részvény; az eseményszolgáltatás a teljes gyorsjelentés-adatot tölti (12 órás gyorsítótár) | ✅ kész |
| 5cv | Kedvencek lista: a friss negyedéves eredmény a ticker alatt („EPS +2,7%”, zöld/piros), ha nincs 7 napon belüli jelentés; a súgóban a várt és a jelentett EPS | ✅ kész |
| 5cw | Kérdezz vissza a kutatási lapokon: a hírmagyarázat, a gyorsjelentés-összefoglaló és a „mi ez a papír?” alatt kérdés tehető fel a szövegről; a modell a megkapott szövegből válaszol, szükség esetén egy webkereséssel, forrásokkal (a napi kérdéskeretből) | ✅ kész |
| 5cx | Kérdezz az összehasonlításról: az összehasonlító táblázat alatt kérdésmező, a táblázat szövegként megy az AI-nak (pl. „melyik az olcsóbb és miért?”), a napi kérdéskeretből | ✅ kész |
| 5cy | Portfólió-pozíciók: a friss negyedéves eredmény a sor alatt („EPS +2,7%”, zöld/piros), a súgóban a számokkal | ✅ kész |
| 5cz | Tálca/menüsor: a kedvencek sorában a 7 napon belüli gyorsjelentés („📅 Holnap”) | ✅ kész |
| 5da | Kutatási lapok megosztása szövegként (cím, válasz, források, megjegyzés); a szerver számolja a megosztott AI-válaszok találatait és tárolásait (admin) | ✅ kész |
| 5db | Gyorspanel (⌥⇧Space, macOS): leírásnak látszó beírásra az AI fejti meg a részvényt/ETF-et, ha a kereső nem találja | ✅ kész |
| 5dc | ETF/alap oldala: az üres cégspecifikus kártyák (értékelés, pénzügyek, kimutatások, elemzők) kimaradnak, ha nincs hozzájuk adat | ✅ kész |
| 5dd | A megfejtett leírások megmaradnak a készüléken („tech 100 etf” → QQQ): másodszor AI nélkül nyílik, gépelés közben javaslat; legfeljebb 50 | ✅ kész |
| 5de | AI-portfólióelemzés ETF-tudatos: a cégprofil nélküli pozíciót (ETF, alap) kosárként kezeli, a szektor- és országkitettségbe beszámítja, és jelzi a feltevést | ✅ kész |
| 5df | Kérdezz a napi összefoglalóról: „A nap a részvényeiddel” kártya alján kérdésmező, a válasz az összefoglaló szövegéből (a napi kérdéskeretből) | ✅ kész |
| 5dg | Kutatási lapok: „Mentés a jegyzeteimbe” – a hírmagyarázat, gyorsjelentés-összefoglaló vagy ETF-magyarázat dátummal, címmel és forrásokkal a részvény saját jegyzetének végére kerül | ✅ kész |
| 5dh | A jegyzetkártya követi a máshonnan érkező változást (mentett AI-jegyzet, szinkron), ha épp nem gépelsz benne | ✅ kész |
| 5di | „Friss gyorsjelentések” a kezdőképernyőn (legfeljebb három, „Mind” gombbal az események oldalára); a beállításokban kikapcsolható | ✅ kész |
| 5dj | A „kérdezz vissza” kérdések és válaszok a futás alatt megmaradnak: a kutatási lapot vagy összehasonlítást újranyitva is látszanak, nem kérdez újra | ✅ kész |
| 5dk | A „kérdezz vissza” beszélgetések a készüléken is megmaradnak (7 napig, legfeljebb 30 jegyzethez): újraindítás után is látszanak a kész kérdés–válasz párok, és nem fogyasztanak újra kérdést | ✅ kész |
| 5dl | Kapott osztalékok: kártya a portfólió oldalon (idei és összes, a megjelenítési pénznemre a mai árfolyamon átváltva, az utolsó tételek, kézi felvétel, törlés visszavonással), „A pozícióm” kártyán a részvény kapott osztaléka; a bróker-exportok osztaléksorai (Revolut, Trading 212, IBKR „Dividends” szakasz a „Withholding Tax” forrásadóval nettósítva) importáláskor bekerülnek, ismétlés nélkül; saját CSV-export/-import `dividend` sorral, külön osztalék-CSV az adóbevalláshoz; fiókkal szinkronizálva és a biztonsági mentésben, a heti e-mailben is („Kapott osztalékok a héten”), és az AI-portfólióelemzés a 12 havi tényleges osztalékot összeveti a hozammal; évenkénti összegek, ha több évből van tétel; a pozíció tranzakciós lapján osztalék felvétele kitöltött tickerrel és a részvény kapott osztaléka | ✅ kész |
| 5dm | „Amíg távol voltál” kártya a kezdőképernyőn (AI nélkül): ha legalább 20 óra telt el az előző indítás óta, a portfólió egészének változása és a portfólió és a kedvencek legnagyobb mozgásai azóta (legalább 1%, legfeljebb 4, koppintásra a részvény), a közben teljesült riasztások száma (koppintásra a riasztások oldala) és a gyorsjelentést adott cégek (koppintásra az események oldala; az előző látogatáskor még előre jelzett napokból); elvethető, a beállításokban kikapcsolható; minden indításkor (és egy napnál hosszabb háttér után előtérbe kerüléskor) új pillanatkép | ✅ kész |
| 5dn | „Miért mozog ma?” a részvény fejlécében, ha a napi mozgás legalább 2,5%: AI-magyarázat a mai hírekből (legfeljebb 2 webkeresés és 1 megnyitott cikk, forrásokkal, kérdezz-vissza mezővel, menthető a jegyzetbe); részvényenként, naponként és nyelvenként egyszer, a készüléken 2 napig, a szerver a többi felhasználóval megosztja; a Kedvencek listán a nagy napi mozgás ✨ jellel, koppintásra ugyanez; a „Piacok ma” sávban legalább 1,5%-os indexmozgásnál ugyanez az indexre (piaci szintű magyarázat) | ✅ kész |
| 5do | „Technikai kép” kártya a részvény oldalán a napi záróárakból: 50 és 200 napos mozgóátlag (és hány százalékkal van az ár felette/alatta), 14 napos RSI az állapotával (túlvett/semleges/túladott), 30 napos évesített volatilitás, a két átlag viszonya egy mondatban; a címkék mellett ⓘ magyarázat 120 nyelven; az RSI az AI-elemzés áradataiban is (`rsi_14`), az összehasonlításban két sor (a 200 napos átlaghoz képest, RSI); a portfólió értékgrafikonja alatt hány pozíció jár a saját 200 napos átlaga felett | ✅ kész |
| 5dp | „Jelzések” sáv a Kedvencek oldalon: a lista részvényeinek technikai jelzései a napi záróárakból – RSI 30 alatt (túladott) / 70 felett (túlvett), és ha az ár ma lépte át a 200 napos átlagát fölfelé vagy lefelé; chipek, koppintásra a részvény; ha nincs jelzés, nem látszik | ✅ kész |
| 5j | Telefonos háttér-értesítés (riasztás) szerverről, APNs / FCM | 🟡 első lépés kész: a szerver 10 percenként nézi a belépett fiókok szinkronizált riasztásait, és e-mailben szól (csukott appnál is, kikapcsolható); a telefonos push (APNs / FCM) a Firebase-projekt és az Apple-kulcs után |
| 5k | Bolti adatlapok 120 nyelven, képernyőképek, ikon, előnézeti videó | 🟡 adatlap-szövegek 70 bolti nyelven (fastlane-mappa, `docs/BOLTI_ADATLAP.md`), feliratos bolti képek a teszt-harnessből a boltok méreteiben (4 kép: felismerés, elemzés, portfólió, gyorsjelentés-összefoglaló kérdéssel); az adatlapon a kapott osztalékok és az „Amíg távol voltál” pontja is; előnézeti videó és a nem latin írású képek a natív buildből később |

**Nem kód, a tulajdonos intézi:** vállalkozási forma és adószám, könyvelő; Apple Developer (99 USD/év),
Google Play Console (25 USD), Stripe, Anthropic Console (költéskorláttal), Resend, domain; piaci adat
kereskedelmi licence; jogász az ÁSZF-hez és a tájékoztatóhoz; EU-s tárhely a szervernek; macOS-aláírás
(Developer ID, notarizáció) és Windows kódaláírás, különben a letöltéskor biztonsági figyelmeztetés jelenik meg.

## 8. Nyitott kérdések (a részletes leírásból várjuk a választ)

- Elsősorban melyik piac a fókusz? (BÉT, amerikai tőzsdék, európai – ez meghatározza az adatforrást.)
- Kell-e portfólió-kezelés (saját részvények, vételi ár, hozam), vagy csak információ?
- A cégleírások és hírek az adatforrásból angolul jönnek – kell-e ezeket is gépi fordítással a felhasználó nyelvére fordítani?
- Legyen-e árfolyam-riasztás, értesítés?
- Kell-e offline működés (OCR eszközön), vagy elég az online felismerés?
- Szükséges-e felhasználói fiók, szinkron az eszközök között?
