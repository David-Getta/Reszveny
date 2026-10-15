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
| 5h | Weboldal: letöltés, árak, minta-elemzések, népszerű részvények oldalai (SEO) | 🟡 nyitóoldal a szerveren (`/`, magyar/angol, letöltés Androidra, Macre, Windowsra, zárt előzetes jelzés, jogi linkek); az árak és a népszerű részvények oldalai később |
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
| 5z | Heti összefoglaló e-mailben (bekapcsolható): hétfő reggel a portfólió és a kedvencek heti mozgása, és a következő két hét gyorsjelentései | ✅ kész |
| 5j | Telefonos háttér-értesítés (riasztás) szerverről, APNs / FCM | 🟡 első lépés kész: a szerver 10 percenként nézi a belépett fiókok szinkronizált riasztásait, és e-mailben szól (csukott appnál is, kikapcsolható); a telefonos push (APNs / FCM) a Firebase-projekt és az Apple-kulcs után |
| 5k | Bolti adatlapok 120 nyelven, képernyőképek, ikon, előnézeti videó | 🟡 adatlap-szövegek 70 bolti nyelven (fastlane-mappa, `docs/BOLTI_ADATLAP.md`), feliratos bolti képek a teszt-harnessből a boltok méreteiben; előnézeti videó és a nem latin írású képek a natív buildből később |

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
