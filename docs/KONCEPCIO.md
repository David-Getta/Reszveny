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
| 1 | Kép → felismerés → árfolyam + profil + mutatók + hírek megjelenítése | ✅ kész (leírás alapján keresés és ETF-ek: 5co–5cr, 5db–5dd; portfólió képből: 5am; az eszközön futó OCR: 4b3) |
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
| 4b1 | Portfólió: vételek (darab, ár, dátum), összérték a megjelenítési pénznemben, napi változás, nyereség/veszteség, megoszlás, „A pozícióm” a részvény oldalán; az AI-elemzés a saját átlagárhoz is viszonyít (és a részvényből kapott 12 havi osztalékot, bekerülési hozammal is megkapja) | ✅ kész (fiókos szinkron: 5w) |
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
| 5h | Weboldal: letöltés, árak, minta-elemzések, népszerű részvények oldalai (SEO) | 🟡 nyitóoldal a szerveren (`/`, magyar/angol, letöltés Androidra, Macre, Windowsra, zárt előzetes jelzés, jogi linkek); árak oldal (`/pricing`, csomagok, éves díj, extra elemzések, a kliens áraival tesztben egyeztetve), `robots.txt` és `sitemap.xml`; népszerű részvények oldalai (`/stocks`, `/stocks/<ticker>`: 40 részvény árfolyama, piaci értéke, alapadatai és fő mutatói – P/E, osztalékhozam, béta, 52 hetes sáv – magyarul és angolul, letöltés-gombokkal, 1 órás gyorsítótárral, a sitemapben); fogalomtár-oldal (`/glossary`, magyar/angol: az app 34 mutatójának közérthető magyarázata horgonyokkal, az app szövegeiből generálva – `tool/glossary/gen_server_glossary.py`, egy app-teszt őrzi az egyezést –, a láblécből és a részvény-oldalak fő mutatói alól linkelve, a sitemapben); minta-elemzés oldal (`/sample`, magyar/angol: egy illusztratív elemzés kitalált cégen – lényeg, hangulat, három forgatókönyv sávokkal, kulcsszintek, szekciók, kérdés-válasz –, a nyitóoldalról és a láblécből linkelve, a sitemapben) |
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
| 5w | Szinkron az e-mailes fiókkal: portfólió (vételek, eladások, osztalékok, felaprózások, készpénz), kedvencek és saját listák, célarányok, célok, riasztások, jegyzetek minden eszközön (az utolsó írás nyer; első belépéskor és ütközéskor unió, hogy semmi ne vesszen el) | ✅ kész |
| 5x | Portfólió értékalakulása grafikonon (napi záróárakból, a vételek dátumától, a befektetett összeg szintjével); a nagy számok tömören a tengelyen | ✅ kész |
| 5y | AI-portfólióelemzés: az egész portfólió (koncentráció, szektor-, ország- és devizakitettség, közös kockázatok, osztalék, megfontolandó szempontok) egy rövid elemzésnyi keretért; a legutóbbi a készüléken marad | ✅ kész |
| 5z | Heti összefoglaló e-mailben (bekapcsolható): hétfő reggel a portfólió és a kedvencek heti mozgása, a friss (45 napon belül zárult) negyedéves eredmények EPS-sel, és a következő két hét gyorsjelentései | ✅ kész |
| 5aa | Portfólió összevetése egy indexszel (S&P 500, Nasdaq 100 vagy Dow Jones – chipekkel választható, megjegyezve; a választó akkor is látszik, ha az index adata nem érhető el, és váltás közben nem mutat régi értéket): mintha minden vétel összegét aznap indexalapba tetted volna (eladáskor ugyanannyit kivéve) | ✅ kész |
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
| 5bl | „Mi lett volna, ha befektetsz?” a részvény oldalán: egy választható összeg mai értéke 1, 3 vagy 5 év után (csak árfolyam, osztalék és költség nélkül); a mai osztalékhozammal az évi osztalék a mai értékre | ✅ kész |
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
| 5cn | Összehasonlítás: két új sor – az utolsó negyedév EPS-meglepetése (a nagyobb nyer) és a következő jelentés napja; kifizetési arány sor (irány nélkül) | ✅ kész |
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
| 5dl | Kapott osztalékok: kártya a portfólió oldalon (idei és összes, a megjelenítési pénznemre a mai árfolyamon átváltva, az utolsó tételek, kézi felvétel, törlés visszavonással), „A pozícióm” kártyán a részvény kapott osztaléka; a bróker-exportok osztaléksorai (Revolut, Trading 212, IBKR „Dividends” szakasz a „Withholding Tax” forrásadóval nettósítva) importáláskor bekerülnek, ismétlés nélkül; saját CSV-export/-import `dividend` sorral, külön osztalék-CSV az adóbevalláshoz; fiókkal szinkronizálva és a biztonsági mentésben, a heti e-mailben is („Kapott osztalékok a héten”), és az AI-portfólióelemzés a 12 havi tényleges osztalékot összeveti a hozammal és a bekerüléssel, a várható következő kifizetéseket is megkapja (becslésként); évenkénti összegek, ha több évből van tétel (a lezárt éveknél az előző évhez képesti változás százalékban); a pozíció tranzakciós lapján osztalék felvétele kitöltött tickerrel és a részvény kapott osztaléka (tételenként is, az újabb elöl) | ✅ kész |
| 5dm | „Amíg távol voltál” kártya a kezdőképernyőn (AI nélkül): ha legalább 20 óra telt el az előző indítás óta, a portfólió egészének változása és a portfólió és a kedvencek legnagyobb mozgásai azóta (legalább 1%, legfeljebb 4, koppintásra a részvény), a közben teljesült riasztások száma (koppintásra a riasztások oldala) és a gyorsjelentést adott cégek (koppintásra az események oldala; az előző látogatáskor még előre jelzett napokból); elvethető, a beállításokban kikapcsolható; minden indításkor (és egy napnál hosszabb háttér után előtérbe kerüléskor) új pillanatkép | ✅ kész |
| 5dn | „Miért mozog ma?” a részvény fejlécében, ha a napi mozgás legalább 2,5%: AI-magyarázat a mai hírekből (legfeljebb 2 webkeresés és 1 megnyitott cikk, forrásokkal, kérdezz-vissza mezővel, menthető a jegyzetbe); részvényenként, naponként és nyelvenként egyszer, a készüléken 2 napig, a szerver a többi felhasználóval megosztja; a Kedvencek listán a nagy napi mozgás ✨ jellel, koppintásra ugyanez; a „Piacok ma” sávban legalább 1,5%-os indexmozgásnál ugyanez az indexre (piaci szintű magyarázat); a kezdőképernyő kedvenc-csempéin is; a „Piacok ma” sáv alatt az S&P 500 technikai egysorosa (RSI és állapota, hol tart a 200 napos átlaghoz) | ✅ kész |
| 5do | „Technikai kép” kártya a részvény oldalán a napi záróárakból: 50 és 200 napos mozgóátlag (és hány százalékkal van az ár felette/alatta), 14 napos RSI az állapotával (túlvett/semleges/túladott), 30 napos évesített volatilitás, a két átlag viszonya egy mondatban; a címkék mellett ⓘ magyarázat 120 nyelven; az RSI az AI-elemzés áradataiban is (`rsi_14`), az összehasonlításban két sor (a 200 napos átlaghoz képest, RSI); a portfólió értékgrafikonja alatt hány pozíció jár a saját 200 napos átlaga felett | ✅ kész |
| 5dp | „Jelzések” sáv a Kedvencek oldalon: a lista részvényeinek technikai jelzései a napi záróárakból – RSI 30 alatt (túladott) / 70 felett (túlvett), és ha az ár ma lépte át a 200 napos átlagát fölfelé vagy lefelé; chipek, koppintásra a részvény; ha nincs jelzés, nem látszik; asztali gépen naponta egyszer rendszerértesítés is a jelzésekről (koppintásra az első részvény; a Beállításokban kikapcsolható); a heti e-mailben is („Technikai jelzések”, a Twelve Data 230 napos idősorából) | ✅ kész |
| 5dr | Készpénz a brókernél: pénznemenként megadható egyenleg (portfólió menü), az összértékbe és a megoszlásba számít („Készpénz” sor), a nyereségbe és a hozamba nem; a cél-sávban, az újrasúlyozásban (fedezet a vételekhez) és a pénznem szerinti megoszlásban a saját pénzneménél; az AI-portfólióelemzés adataiban is; fiókkal szinkronizálva (pénznemenként az újabb módosítás nyer, időbélyeggel – a törlés kétoldali összefésülésnél sem éled újra), a tárolóban az összeg és az időbélyeg egy bejegyzés (a törölt tétel csak időbélyegként marad), a biztonsági mentésben; csak készpénzzel is „él” a portfólió (összérték, főoldali kártya) | ✅ kész |
| 5ds | Várható következő osztalékok a „Kapott osztalékok” kártyán: a még birtokolt részvényekre, a rögzített kifizetések ritmusából (havi / negyedéves / féléves / éves, legalább két dátumozott tételből, a legutóbbi legfeljebb négy távolság mediánjával, döntetlennél a legutóbbi távolsághoz közelebbi – ritmusváltásnál bármelyik irányban az újabb nyer), a következő = az utolsó + ritmus naptári hónapokban (a hónap napja marad; havi ritmusnál így nem csúszik el a hónapfordulón), az utolsó összeggel („AAPL · nov. 13. körül · ~ 2,60 USD”); ami 3 hétnél régebben lett volna esedékes vagy fél évnél távolabbi, nem látszik; megjegyzés, hogy becslés; a megérkezett osztalék egy koppintással rögzíthető (a kártyán és az Események sorában „+”, a várható adatokkal előre kitöltve); ugyanezek az Események naptárban is („Várható osztalék · ~ 2,60 USD”), így a naptárexportba is bekerülnek; új vétel, eladás vagy osztalék után az eseménylista a gyorsítótárból azonnal frissül; „A pozícióm” kártyán is a részvény várható következő osztaléka | ✅ kész |
| 5dt | Bekerülési osztalékhozam „A pozícióm” kártyán: az utolsó 12 hónap kapott osztaléka a még birtokolt részvények vételi értékéhez mérve (a mai árhoz mért osztalékhozamtól eltérően), fogalomtár-magyarázattal (ma már 30 mutató), 120 nyelven; a „Kapott osztalékok” kártyán az egész portfólióra is (csak a még birtokolt részvények 12 havi, átváltott osztaléka az ő átváltott vételi értékükhöz; az árfolyam nélküli pozíció mindkét oldalról kimarad); a kártyák számainál is ⓘ a fogalomtár magyarázatával (közös címke-elem a részvény oldal táblázataival); a főoldali portfólió-kártyán az idei kapott osztalék („Idei osztalék: 63 453 HUF”) | ✅ kész |
| 5du | Részvényfelaprózás (split) a portfólióban: a pozíció tranzakciós lapján rögzíthető (arány új : régi, pl. 10:1, összevonásnál 1:10, és a nap); a nap előtti vételek és eladások darabszáma szorzódik, darabonkénti ára osztódik (a bekerülési érték és a realizált nyereség nem változik), a tárolt tétel és az azonosítója marad (a dátum nélküli tétel – pl. a képernyőképből importált mai darabszám – nem igazítódik); a lapon a felaprózás sora törölhető visszavonással; az értékalakulás és az S&P 500-összevetés is az igazított tételekből; fiókkal szinkronizálva és a biztonsági mentésben (`splits`; ugyanaz a felaprózás – ticker, nap, arány – két eszközről rögzítve is csak egyszer számít), a saját CSV-exportban `split` sorként (vissza is olvasható, ismétlés nélkül); a heti e-mail birtokolt részvényei is a felaprózással számolva; 120 nyelven | ✅ kész |
| 5dv | „Osztalék” kártya a részvény oldalán: hozam, évi osztalék részvényenként, kifizetési arány és az 5 éves osztaléknövekedés (Finnhub `dividendGrowthRate5Y`, fogalomtár-magyarázattal – 30 mutató); ha a részvény a portfólióban van, a saját darabszámra jutó évi osztalék („A te részvényeidre, évente: ~ 10,40 USD”); ha a cég az utolsó 12 hónapban nem fizetett, egy mondat mondja ki a sorok helyett (a hiányzó adat nem ezt jelenti); az összehasonlításban új sor (a nagyobb nyer), az AI-elemzés adataiban is; 120 nyelven | ✅ kész |
| 5dw | Havi osztalék-diagram a „Kapott osztalékok” kártyán: 15 oszlop (az előző 11 hónap, a folyó és a következő 3 hónap), a kapott összeg teli, a várható (a rögzítettek ritmusából továbbvetítve – a havonta fizető mindhárom hónapban) halvány oszlop, a megjelenítési pénznemre átváltva; keskeny hónapnevek a helyi nyelven, a folyó hónap kiemelve; koppintásra a hónap kapott és várható összege; jelmagyarázat; ha az ablakban nincs tétel, nem látszik; 120 nyelven | ✅ kész |
| 5dx | Pozíciók rendezése osztalékhozam szerint is (a mai árhoz mért évi osztalék; osztalék nélkül a végére); a pozíciók és a kedvencek legutóbb választott rendezése a készüléken megmarad (`list_sorts`) | ✅ kész |
| 5dy | Havi osztalékcél a „Kapott osztalékok” kártyán (a portfólió-célérték mintájára; mindkét cél fiókkal szinkronizálva, célonként az újabb módosítás nyer, a törlés sem éled újra): a még birtokolt részvények mai hozamokból várható évi osztalékának havi átlaga a célhoz mérve, haladásjelzővel; koppintásra módosítható vagy törölhető; közös cél-sáv és cél-dialógus a portfólió-céllal (az előtöltött összeg pontos és visszaolvasható – korábban a „4,000” mentve 4 lett); a beállított cél a becslés nélkül is látszik (törölhető); a fiók törlésekor a célok és a rendezések is törlődnek; a haladásjelzők akadálymentes értéke 100%-nál megáll (a teljesült cél eddig hibát okozott a képernyőolvasónak); 120 nyelven | ✅ kész |
| 5dz | Portfólió-kockázat a megoszlás-kártyán: a részvények értékkel súlyozott bétája (a bétával rendelkező pozíciókból, készpénz nélkül; csak ha ezek a részvények értékének legalább felét adják) és a 3 legnagyobb pozíció együttes súlya (csak 3-nál több pozíciónál), ⓘ magyarázattal – a fogalomtár 32 mutató; az AI-portfólióelemzés adataiban is (`portfolio_beta`, `top3_weight_pct`); 120 nyelven | ✅ kész |
| 5ea | Osztalék-emlékeztető asztali gépen: a portfólió várható osztalékának napján (a rögzített kifizetések ritmusából) egy rendszerértesítés a becsült összeggel („Ma várható a(z) KO osztaléka · Kb. 5,00 USD. Ha megérkezett, rögzítsd a portfóliódban.”), egyszer (két pénznemben két értesítés; az óraátállítás napján is a helyes napon); ha a gyorsjelentés-emlékeztető ki van kapcsolva, hálózat nélkül; a gyorsjelentés-emlékeztetővel közös szolgáltatásban, a Beállításokban külön kapcsolóval; 120 nyelven | ✅ kész |
| 5eb | Összehasonlítás egy koppintással: a pozíciók fejlécében a 3 legnagyobb pozíció (súly szerint), a kedvencek oldalán a látott sorrend (vagy a választott saját lista) első 3 részvénye nyílik meg egymás mellett | ✅ kész |
| 5ec | Számlák (pl. TBSZ, normál, NYESZ): a tranzakcióhoz számla adható (a vétel/eladás dialógusban egy gombbal előhívható mező, a meglévő számlák kiegészítésével; legfeljebb 30 karakter); a portfólió oldalon chipekkel számlánként szűrhető (összérték, pozíciók, lezártak, realizált nyereség, értékalakulás, megoszlás – a FIFO a számlán belül, a Minden számla nézetben is számlánként fut és összeadódik); a számla-nézetből az eladás arra a számlára kerül, a Minden számla nézetből a birtokló számlák közül választható (legfeljebb az ott tartott darabszám); az osztalékok is számlához köthetők (számla-nézetben a számla kapott és várható osztalékai, havi diagramja; rögzítéskor a legtöbb darabot tartó számla az alap; a CSV-kben számla-oszloppal); a készpénz, a portfólió-cél, a havi osztalékcél, a célarányok és az AI-elemzés a Minden számla nézetben; a számlanév kis- és nagybetűje a meglévőhöz igazodik; szinkronban (a számlát nem ismerő régebbi app sem törli), mentésben, saját CSV-ben („account” oszlop, magyar „számla” fejléc is; a realizált nyereség CSV-jében is); a megoszlás-kártyán „Számlák” nézet (a pozíciók értéke a számlákon tartott darabszám szerint, a számla nélküliek és a készpénz külön sorban) | ✅ kész |
| 5ed | Tranzakciós díj (jutalék): a vétel/eladás dialógusban egy gombbal előhívható mező (egy összeg a részvény pénznemében; ha már van díjas tranzakció, rögtön látszik); a vétel bekerülési értékéhez adódik (a darabonkénti bekerülési ár is), az eladás bevételéből levonódik – a realizált nyereség, az évenkénti bontás, a realizált nyereség CSV-je, az éves hozam (XIRR) és az értékalakulás „befektetve” vonala is ezzel számol; a felaprózás nem szorozza; a tranzakciós lapon a tétel alatt („Jutalék: 1,99 USD”); szinkronban (a díjat nem ismerő régebbi app sem törli), mentésben, saját CSV-ben („fee” oszlop), importban az IBKR „Comm/Fee”, a „commission”, a magyar „jutalék” / „díj” oszlopból; 120 nyelven | ✅ kész |
| 5ee | Éves összesítő az adóbevalláshoz (portfólió menü): évválasztó (alapból a legutóbbi lezárt év), számlánként és pénznemenként az eladási bevétel (az eladás jutaléka levonva), a FIFO szerinti szerzési érték (a vétel jutalékával), a realizált nyereség, a kapott osztalék és a fizetett jutalék – átváltás nélkül, az adóhatósági árfolyamra figyelmeztető megjegyzéssel; szövegként megosztható; 120 nyelven | ✅ kész |
| 5ef | Portfólió-teljesítmény megosztása (az összérték kártyáján): sötét 4:5 kép (1080×1350) összegek nélkül – nyereség %, éves hozam, mai mozgás, a legnagyobb 5 pozíció súlya a részvények értékében (a készpénz nélkül), a pozíciók száma, WhatStock-lábléc és „nem befektetési tanács”; szövegként is; számla-nézetben a számla teljesítménye; 120 nyelven | ✅ kész |
| 5eg | Új befizetés elosztása a célarányok szerint (a célarányok alatt, egy gombbal): a befektetendő összeg (a portfólió pénznemében) csak vétellel oszlik el – a cél a mostani összértékhez és a befizetéshez együtt mérve, először a célja alatt lévő pozíciók hiánya töltődik fel (ha nem elég, a hiányuk arányában), a maradék a célarányok szerint; pozíciónként az összeg és a mai áron nagyjából hány darab; 120 nyelven | ✅ kész |
| 5eh | A portfólió-cél becsült elérése a cél-sáv alatt: a mostani pénzsúlyozott éves hozammal (XIRR), kamatos kamattal, további befizetés nélkül („Ha az éves hozam marad (+17,15%), kb. 2029 táján éred el.”); nem látszik, ha nincs pozitív éves hozam, a cél teljesült, vagy 50 évnél messzebb volna; 120 nyelven | ✅ kész |
| 5ei | Legnagyobb visszaesés az értékalakulás-kártyán: a portfólió időarányos értékindexén (minden nap az előző napi darabszámok mai és tegnapi záróáron vett értékének aránya láncolva – a vételek és eladások nem számítanak nyereségnek vagy esésnek) a legnagyobb esés egy korábbi csúcsról a későbbi mélypontig, a két nappal, ⓘ magyarázattal; legalább 20 napnyi adat és 1%-os esés kell; számla-nézetben a számláé; 120 nyelven | ✅ kész |
| 5ej | „Mióta figyeled” a Kedvencek listán: a kedvenc felvételének napja megmarad (fiókkal szinkronizálva – két eszközön a korábbi nap –, a mentésben; levételkor törlődik, a visszavonás visszaadja), az ár alatt kis csillaggal a változás azóta („★ +1,3%”), rámutatva a nappal; a funkció előtti kedvenceknél és egy évnél régebbi felvételnél nincs; 120 nyelven | ✅ kész |
| 5ek | Minta-portfólió kipróbáláshoz az üres portfólió oldalon: egy gombbal néhány vétel (az OTP TBSZ-számlán), egy eladás, jutalék és negyedéves osztalékok töltődnek be, a mai naphoz képesti dátumokkal (látszik az éves hozam, az értékalakulás, a várható osztalék); amíg van minta-tétel, egy sáv jelzi, egy gombbal eltávolítható – a saját tételek maradnak (`sample_` azonosítók); 120 nyelven | ✅ kész |
| 5el | Követő stop minden pozícióra (portfólió menü): egy küszöb (−5 … −25%) választása után minden birtokolt pozíció „esés a csúcstól” riasztást kap a saját pénznemében (ahol még nincs aktív ilyen); a csúcs az első ellenőrzéskori ár, onnan követi az árat felfelé; a végén egy sáv mondja meg, hány lett; 120 nyelven | ✅ kész |
| 5em | Lezárt pozícióknál „az eladás óta”: a „Minden darabot eladtál” mellett az ár változása az utolsó eladás árához képest, a részvény pénznemében („+23,0% az eladás óta”, zölden ha azóta emelkedett) – megérte-e eladni; 120 nyelven | ✅ kész |
| 5en | Előnézet a vétel/eladás dialógusban, rögzítés előtt: vételnél az új átlagár a mostanihoz képest (ha már van a részvényből; abban a nézetben, ahonnan a dialógus nyílt – számla-nézetben a vétel számlájáé), eladásnál a FIFO szerint ezen az eladáson realizált eredmény a jutalékkal, színezve; ugyanazzal a számítással, mint a rögzítés után (felaprózások, számlánkénti FIFO, korábbi napra írt tétel); túl sok darabnál vagy érvénytelen számnál nem látszik; 120 nyelven | ✅ kész |
| 5eo | Idei hozam az értékalakulás-kártyán, időarányosan: a portfólió időarányos értékindexéből (ugyanaz, amiből a legnagyobb visszaesés számol – a vételek, eladások, befizetések nem hozamok) az előző év utolsó pontjától, vagy ha a portfólió idén indult, az első birtokolt naptól; alatta a választott index (S&P 500, Nasdaq 100, Dow Jones) hozama ugyanerre az időszakra; ⓘ magyarázattal; a fogalomtár 34 mutatóra bővül (idei hozam, legnagyobb visszaesés – a weboldalon is); 120 nyelven | ✅ kész |
| 5ep | Távolság a riasztásig a Riasztások oldalon és a részvény oldalának riasztás-kártyáján: minden aktív riasztás alatt a mostani ár és a kioldásig hátralévő változás előjellel („Most 231,45 USD · még +4,2%”) – célárnál a célárig, követő stopnál a csúcs (vagy a magasabb mostani ár) küszöbbel csökkentett szintjéig; a napi mozgás riasztásnál és a már túllépett szintnél (a következő ellenőrzés jelez) nincs; az árak a tickerek változásáig egyszer töltődnek; 120 nyelven | ✅ kész |
| 5eq | Amerikai brókerek exportjának importja: Charles Schwab („Fees & Comm”, „Reinvest Shares”, „Qualified/Non-Qualified Div”, „NRA Tax Adj”), Fidelity („Run Date”, „YOU BOUGHT/SOLD”, „DIVIDEND RECEIVED”, „FOREIGN TAX PAID”, a fejléc előtti és a záró szöveges sorok kimaradnak) és Robinhood („Activity Date”, „Instrument”, „Trans Code”: Buy/Sell/CDIV) – vétel, eladás jutalékkal, újrabefektetett osztalék darabjai vételként, kapott osztalék a külön soros forrásadóval nettósítva (mint az IBKR-nél); a perjeles dátum sorrendje: ha egy tag 12 fölött van, az dönt, különben az amerikai fejléc (hónap/nap), végül az amerikai nyelvi beállítás | ✅ kész |
| 5er | DEGIRO-export importja (Transactions.csv): a fejléc ticker helyett ISIN-nel is elfogadott; a ticker nélküli sorokat az import a piaci adatok keresőjével oldja fel ISIN-enként egyszer (nem dolláros kereskedésnél a pontos utótagú helyi tőzsdei találat az elsőbb, pl. ASML.AS, dollárosnál az utótag nélküli), ami nem oldható fel, a kihagyottak közé kerül; az ár és a díj melletti név nélküli pénznem-oszlop, a kötőjeles nap-hónap-év dátum, a más pénznemű (alapdevizás) díj az „Exchange rate” oszloppal a kereskedés pénznemébe; az import-dialógus szövege a hét felismert brókerrel (Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity, Robinhood) 120 nyelven | ✅ kész |
| 5es | DEGIRO-számlakivonat (Account.csv) osztalékai: a fejléc angolul, németül vagy hollandul (Date/Datum, ISIN, Description/Beschreibung/Omschrijving, Change/Änderung/Mutatie + név nélküli összeg-oszlop); a „Dividend/Dividende” sorok kapott osztalékként ISIN-nel (a tickert az import ugyanúgy a keresővel oldja fel), az aznapi osztalékadó („Dividend Tax”, „Dividendensteuer”, „Dividendbelasting”) levonva; befizetés, díj, átváltás kimarad; képernyőkép-jelenet az import-dialógusról | ✅ kész |
| 5et | Scalable Capital és Lightyear export: „CCY” pénznem-oszlop, „Net Amt.” osztalékösszeg (a forrásadó után), „Savings plan” / „Sparplan” vételként, „Distribution” / „Ausschüttung” osztalékként, a megbízás állapota („Cancelled”, „Rejected”, „Storniert”) szerint a nem teljesült sor kimarad; a ticker nélküli (ISIN-es) osztaléksor is bekerül, a tickert az import a keresővel oldja fel | ✅ kész |
| 5eu | Kedvencek rendezése „mióta figyeled” szerint (a rendezés menüjében, megjegyezve): a felvétel óta legtöbbet emelkedett elöl, ugyanazzal a számítással, mint a sor kis csillagos változása (a felvétel napi vagy utána első záróárhoz); a felvételi nap nélküliek és az adat nélküliek a végén; a lista a betöltött árakkal és idősorokkal rendeződik át; 120 nyelven | ✅ kész |
| 5ev | „Ma leginkább mozgott” az összérték-kártyán: a két legnagyobb mai változás pozíciónként (abszolút érték szerint), a megjelenítési pénznemre átváltva, színezve; csak ha legalább két pozíció mozdult; számla-nézetben a számla pozícióiból; 120 nyelven | ✅ kész |
| 5ew | Az import visszavonható: az import végén megjelenő sávon a „Visszavonás” egy mentéssel törli mindazt, amit az import felvett (tranzakciók, osztalékok, felaprózások – az ismétlésként kihagyottak és a korábbi tételek maradnak) | ✅ kész |
| 5ex | AI-portfólióelemzés teljesítményadatokkal: a kérés „performance” része a pénzsúlyozott éves hozam (XIRR), az idei időarányos hozam és a választott index hozama ugyanarra az időszakra, valamint a legnagyobb visszaesés; a prompt elmagyarázza őket (összefoglaló: hogyan teljesített, a jövőre következtetés nélkül; kockázatok: milyen mély esésen ment már át); az értékalakulás-kártya betöltője közös függvény (loadPortfolioHistory), a gyorsítótárazott idősorokból | ✅ kész |
| 5ey | CSV-exportok fájlként: a portfólió, az osztalékok és a realizált nyereség exportja `.csv` fájlként megy a megosztás-menübe (weben letöltés; ha a platform nem tud fájlt, szövegként), tizedesvesszős nyelven pontosvesszővel és tizedesvesszővel a tört számokban (a helyi Excel rögtön oszlopokra bontja), UTF-8 bájtsorrend-jellel; az import a jelet átugorja, és mindkét formát visszaolvassa | ✅ kész |
| 5ez | Jegyzet a tranzakcióhoz (befektetési napló): a vétel/eladás dialógusban egy gombbal előhívható jegyzetmező („Miért veszed / adod el?”); rögzítéskor a részvény jegyzeteinek végére kerül („2026. okt. 23. · Vétel 10 × 172,50 USD: …”), így szinkronban, a mentésben és az AI-elemzésben is ott van; a dialógus kis képernyőn görgethető; 120 nyelven | ✅ kész |
| 5fa | Import-javítások egy kódátnézés nyomán: a művelet szavai egész szóként és az értékpapír neve (Description) nélkül (Fidelity: „ISHARES RUSSELL 2000” nem eladás, osztalék-ETF vétele nem osztalék); vételi/eladási ige darabszámmal és árral mindig kereskedés; idézőjelen belüli sortörés nem kezd új sort (Robinhood); amerikai exportban a vessző ezres tagolás; minden díj-oszlop összeadódik (Fidelity Commission + Fees); az ISIN-feloldás pénznemenként, a pénznem tőzsdéjének utótagjával (EUR: .DE/.AS/.PA…, GBP: .L, CHF: .SW, HUF: .BD…); az amerikai dátum-tipp a rendszer országából | ✅ kész |
| 5fb | Tartási idő a „Pozícióm” kártyán: a legrégebbi még birtokolt (FIFO szerinti) vétel óta eltelt idő teljes években és hónapokban, az első hónapban napokban („Tartod: 1 év 7 hónap · 2024. márc. 4. óta”); a ma vett pozíciónál nem látszik; a bolti „Újdonságok” szöveg is frissítve; 120 nyelven (többes számmal) | ✅ kész |
| 5fc | Az új vétel számla-mezője alapból a legutóbbi (legkésőbbi dátumú, nem minta-) vétel számlája | ✅ kész |
| 5fd | Pontos tárolási szöveg: a jegyzetkártya és a portfólió lábjegyzete „ezen a készüléken marad, és a fiókodban, ha be vagy jelentkezve” (a szinkron óta a „csak ezen a készüléken” nem igaz); 120 nyelven | ✅ kész |
| 5fe | Közelgő gyorsjelentés a vétel/eladás dialógusban: ha 7 napon belül jelentés jön, a dialógus tetején ugyanaz a sor, mint a részvény fejlécében („Negyedéves gyorsjelentés · holnap · zárás után”), a gyorsítótárazott adatból; az EarningsSoonLine külön fájlba került | ✅ kész |
| 5ff | A „Követő stop minden pozícióra” visszavonható: a végén megjelenő sávon a „Visszavonás” csak az ekkor létrehozott riasztásokat törli (a korábbiak maradnak) | ✅ kész |
| 5fg | Súly-előnézet a vétel/eladás dialógusban: a részvény része a portfólió összértékéből (a készpénzzel) a tranzakció után és most, a mostani áron – a vétel új pénzként növeli, az eladás csökkenti az összértéket; új pozíciónál a betöltött árral; a pillanatkép a gyorsítótárazott árakból töltődik a dialógus megnyitásakor; egyetlen pozíciónál (mindig 100%) nem látszik; 120 nyelven | ✅ kész |
| 5fh | A készpénz követi a tranzakciót: ha a kereskedés pénznemében van vezetett készpénz-egyenleg, a vétel dialógusában „Készpénzből fizetve (most …)”, az eladáséban „A készpénzhez adva (most …)” jelölőnégyzet (alapból bekapcsolva); rögzítéskor az egyenleg a díjjal együtt változik; 120 nyelven | ✅ kész |
| 5fi | „Ma leginkább mozgott” a kezdőképernyő portfólió-kártyáján is (közös widget az összérték-kártyával) | ✅ kész |
| 5fj | A Riasztások oldalon az aktív riasztások a kioldáshoz legközelebbivel elöl (a hátralévő változás abszolút értéke szerint, az árak betöltése után); ár nélkül és a napi mozgás riasztás a végén, egyébként a megszokott sorrendben | ✅ kész |
| 5fk | Javítások egy második kódátnézés nyomán: weightChange a készpénzből fizetéssel (a vétel csak a készpénzen felüli részével növeli az összértéket, az eladás nem csökkenti) és a felaprózással igazított darabszámmal; ár nélküli birtokolt részvénynél nincs súly-előnézet; a készpénz-jelölő alapból csak a mai napra írt tranzakciónál be (amíg a felhasználó nem állít rajta); mentés közben a gomb letiltva, a készpénz a mentéskori egyenlegből, a tárolók a dialógus bezárása után is frissülnek; heldFor UTC-napokkal, nem negatív; a riasztások rendezésében a már túllépett szint 0 (elöl) | ✅ kész |
| 5fl | A bevezető (első indítás) negyedik oldala a portfólióról: „Kövesd a portfóliódat” – import a brókerek exportjából vagy kézzel, hozam indexhez mérve, osztalékok, éves összesítő az adóbevalláshoz; a lapozás az oldalak számából; 120 nyelven | ✅ kész |
| 5fm | A 3. bolti kép (portfólió) felirata a bevezető portfólió-oldalának szövege („Kövesd a portfóliódat…”) a riasztásos helyett; a bevezető képernyőkép-jelenete a portfólió-diát is rögzíti | ✅ kész |
| 5fn | Tranzakció javítása a tranzakciós lapon (ceruza a tétel mellett): ugyanaz a dialógus kitöltve a tárolt (felaprózással nem igazított) tétellel – darab, ár, dátum, számla, díj; az azonosító marad (szinkron, visszavonás), a számla a már használt írásmóddal; javításnál nincs előnézet, készpénz-mozgás és jegyzet; 120 nyelven | ✅ kész |
| 5fo | Karbantartás: a portfólió oldal (1800 sor) szétbontva – a megoszlás-kártya a célarányokkal, újrasúlyozással és befizetés-elosztással (`allocation_card.dart`) és a tranzakciós lap (`purchases_sheet.dart`) külön fájlban; viselkedés-változás nélkül (620 teszt zöld) | ✅ kész |
| 5fp | Kapott osztalék javítása a kártyáról és a tranzakciós lapról (ugyanaz az azonosító, a számla a meglévő írásmóddal, a múltbeli nap megmarad); a tárolt számok kerekítés nélkül kerülnek vissza a mezőkbe (tört részvény, „Mind” gomb, német tizedesjel) | ✅ kész |
| 5fq | „Összes tranzakció” oldal a portfólió menüjéből: vételek, eladások, osztalékok és felaprózások egy időrendi listában havi fejlécekkel, tickerre / típusra / számlára szűrve, koppintva javítható, törölhető visszavonással (lusta lista, több száz importált sorra is) | ✅ kész |
| 5fr | Ismételt import: a már rögzített sorok példányszám szerint maradnak ki (`CsvImport.withoutRecorded`) – a frissebb export újbóli beolvasása nem dupláz, a fájlon belüli két azonos részteljesítés viszont mindkettő bekerül; az összegzésben „N már rögzítve volt, kimaradt”, és „tranzakció hozzáadva” a „vétel” helyett | ✅ kész |
| 5fs | „A pozícióm” kártyán az indexhez mérés (a portfólió-szintű összevetés logikájával, a pozíció split-igazított tételeire): a választott index hozama ugyanarra a pénzmozgásra és a különbség százalékpontban, ⓘ magyarázattal; dátum nélküli vételnél, túl régi vételnél és az index saját oldalán nem látszik | ✅ kész |
| 5ft | Harmadik kódátnézés javításai: tartalom-alapú `holdingsKey` / `dividendsKey` (a javítás után a pillanatkép, az értékalakulás, az események és az idei osztalék is frissül), dátum nélküli tétel és számla nélküli osztalék javításkor az marad, a dialógus a felaprózással igazított számokkal dolgozik (`adjustedLot` / `storedLot`), a „Minden tranzakció” lista is igazítva mutat, a dátumválasztó a tartományon kívüli napot a határra igazítja, a kitöltött osztalékösszeg csak tizedesvesszős nyelven kap vesszőt. | ✅ kész |
| 5fu | Többes szám 26 nyelven: a gen-l10n az „=1” ágat a „one” kategóriába teszi, amely sok nyelven más számot is fed (fr/pt/hi: 0, ru/uk/hr/sr/lt: 21, 31…, lv: a „zero” a 10–20-at, sl: 101) – az ágakban a szó szerinti „1” (és a betűvel írt „egy”) helyett a helyőrző, a halott duplikált ágak (=1 és one együtt) törölve; `plural_numbers_test` minden nyelvre az intl szabályaiból ellenőrzi | ✅ kész |
| 5fv | Javított eladás felső határa: a számlán most birtokolt darab plusz maga az eladás (ha a számla marad), különben „Birtokolsz: N” hiba – a FIFO nem dobja el csendben a túladott részt | ✅ kész |
| 5fw | Szinkron javított tételekkel: a csomagban a számla és a díj üresen is szerepel, így a javításkor törölt érték nem keveredik össze a régebbi app által kihagyott mezővel – a másik eszköz nem írja vissza a régi számlát/díjat (a régi appok elleni védelem csak hiányzó mezőnél él) | ✅ kész |
| 5fx | Szinkron-ütközés javított tételeknél: a tranzakció és az osztalék `edited` időbélyeget kap javításkor (UTC, a csomagban és a mentésben is), és az összefésülés azonos azonosítónál a később javítottat tartja meg (egyezésnél vagy javítás nélkül a helyit) – a másik eszközön végzett javítás nem vész el, ha közben itt is változott valami | ✅ kész |
| 5fy | Törlési jelzések (tombstone) a portfólióban: a törölt tranzakció, osztalék és felaprózás azonosítója a törlés idejével megmarad (180 napig, a készüléken és a szinkron-csomagban); az összefésülés a két oldal jelzéseinek uniójával szűr (csak a törlés után javított tétel marad), így kétoldali változásnál sem támad fel a régi példány. A visszavonás és a mentésből visszaállítás újabbnak jelöli a tételt, így az nyer | ✅ kész |
| 5fz | Szinkron, harmadik kör: (1) a szerver `PUT /v1/sync` optimista zárolással – a kérés `base` mezője a letöltött változat ideje, ha azóta más írt, 409, az app legfeljebb háromszor újra letölt, összefésül és feltölt (`base` nélkül, régi appnál az utolsó írás nyer); (2) a szerver riasztásfigyelője a jelölést a friss csomagon végzi (beolvasás és mentés között nincs várakozás), így a lassú árlekérés alatti feltöltés nem vész el; (3) riasztások és jegyzetek törlési jelzése (`alerts_deleted`, `notes_deleted`, közös `tombstones.dart`), a riasztás `edited` ideje (szerkesztés, újraélesítés, visszaállítás) – a később változott nyer, a teljesülés ideje is számít | ✅ kész |
| 5ga | Negyedik kódátnézés (szinkron) javításai: a felaprózás is kap `edited` időt (visszavonás, mentésből visszaállítás), a mentés csak a most hiányzó, törölt tételeket éleszti fel (a felaprózást is), az újratöltött minta újabbnak jelölve, az összefésülés törli a megmaradt tételek jelzéseit (régi csomag átvételekor is), a feltöltés közben tett változás piszkos marad és újra felmegy (változásszámláló), legfeljebb 1000 jelzés kategóriánként. Ismert korlát: óraeltérésnél a későbbi időbélyeg nyer; fél évnél tovább offline eszköz régi törölt tételt hozhat vissza | ✅ kész |
| 5gb | Tickerváltás (átnevezett cég) a tranzakciós lapról: `renameSymbol` a portfólióban (tranzakciók, osztalékok, felaprózások ugyanazzal az azonosítóval, `edited` idővel – a szinkron átviszi; az új tickeren már meglévő azonos felaprózás marad, a másodpéldány törlési jelzést kap), a riasztásokban, a jegyzetben (az újhoz fűzve) és a beállításokban (kedvenc a régi helyén, felvételi nap, célarány, saját listák) | ✅ kész |
| 5gc | Ötödik kódátnézés (riasztás-összefésülés) javításai: azonosítónként a felhasználó később módosított változata nyer (a teljesülés ideje nem számít – a régi beállításra szólt), azonos módosításnál a teljesült (két teljesültnél a korábbi), a követő stop csúcsainak maximuma csak azonos beállításnál; a mentésből visszaállítás a riasztást és a jegyzetet is feléleszti; a távoli változás felismerése egyezés-alapú (óraugrásnál is) | ✅ kész |
| 5gd | Kedvencek szinkronja: levételi jelzés (`favorites_removed`) és pontos felvételi idő (`favorites_added`); az összefésülés a két oldal uniójából kihagyja a levettet, hacsak utána újra fel nem vették; a visszavonás (`setFavorites(restore: true)`), a tickerváltás és a mentésből visszaállítás újabbnak jelöl | ✅ kész |
| 5ge | Saját listák szinkronja: törlési és felvételi jelzések listára (`list:<név>`) és tagra (`item:<név>\|<TICKER>`) – a törölt lista, a levett tag nem jön vissza, az átnevezés a régi név törlése és az új létrehozása (nem duplázódik); a mentésből visszaállítás visszahozza a mentés után törölt listát | ✅ kész |
| 5gf | Számlázási átnézés, első csomag (szerver): atomi keretfoglalás a továbbítás előtt (`Quota.reserve`/`refund`, különbséggel író `addUsage`), `stream` tiltva, hibás JSON 400, 8 MB korlát, béta-fejléc fehérlista, `hasAccess` a kérdéshez és a segédhíváshoz, jobbról első nyilvános IP az `x-forwarded-for`-ból, tesztelői kód újrabeváltása nem nulláz, bolti értesítések a meghívó-kapu alól mentesek, fiók-összevonás átköltözteti a csomagot, a vásárlásokat és a Stripe-azonosítókat, a régi token érvénytelen. `billing_hardening_test.dart` | ✅ kész |
| 5gg | Számlázási átnézés, második csomag: `paid_through` a jogosultságban (bolti / Stripe lejárat, `VerifiedPurchase.expiresAt`), lejárat +3 nap után a csomag megszűnik, a keret nem gördül a kifizetett időn túl, havi előfizetésnél a bolt időszakához igazodik; Stripe: második előfizetés 409, `updated`/`deleted` csak a tárolt előfizetésre és státusz szerint, `payment_status` és `async_payment_succeeded`, `charge.refunded` / `charge.dispute.created` visszavon (a `payment_intent` a kapcsolókulcs); ajánlói kód e-mailhez és felső határhoz kötve (`sign_in_required`, `code_full`); törölt fiók bolti vásárlása újraköthető; a megosztott válasz kulcsa tartalom-hash; az app a még ellenőrizetlen bizonylatot megjegyzi és indításkor újraküldi; belépőkód: naponta legfeljebb 10 kód és 15 hibás próbálkozás címenként | ✅ kész |
| 5gh | Portfólió-cél értesítés (`PortfolioMoveWatcher.describeGoal`, célonként egyszer, `portfolio_goal_notified`), és a szerver második biztonsági átnézésének javításai: törzsméret-middleware, `RateLimiter` (regisztráció IP-nként, piaci proxy, telemetria, admin- és meghívó-találgatás), Finnhub-útvonal fehérlista, 30 mp-es quote-gyorsítótár, időkorlát, `sanitizeTopLevel` az AI-kérésekhez, segédhívás próbaidős modellje és kerete, telemetria platform/verzió-szűrés és új hibasorok napi korlátja, megosztás csak jogosultsággal | ✅ kész |
| 5gi | Nagy betűméret (akadálymentesség): `FitRow` (a címke mellé nem férő összeg a sor alá, végre igazítva), görgethető dialógusok, tartalomhoz igazodó csomagkártyák (`_PlanGrid`), `text_scale_test` 200%-on, 360 pt széles telefonon angolul és magyarul a fő oldalakon és dialógusokban; képernyőkép a teszt-harnessben | ✅ kész |
| 5gj | Képernyőolvasó: a gyorsjelentés-diagram negyedévenként egy felolvasható egység (jelentett és várt EPS, meglepetés), teszttel; az AI-kilátás `_SplitLine`-ja helyett a közös `FitRow` | ✅ kész |
| 5gk | Nagy betűs teszt hét nyelven (en, hu, de, ar, fi, ru, ja); a portfólió-riasztás választója a cím sorában `FitRow`-val, `IntrinsicWidth` + `isExpanded`-del rövidülhet; a diagram-jelmagyarázat tördelődik | ✅ kész |
| 5gl | Hatodik kódátnézés (import) javításai: IBKR-fejléc a 30. soron túl, csak „Order”/„Stocks” sor, ismételt szakaszfejléc; `_netOfTax` (arányos, kulcsonként egyszeri adólevonás); adószavak az osztalékszavak előtt (magyar, német); fájlonkénti ezres tagolás; `_numeric` (zárójel, U+2212); kétjegyű év és létező nap; bróker-felaprózás kihagyottként; Scalable befizetés; képernyőképes import: teljes sor nyer, helykitöltő ticker kimarad | ✅ kész |
| 5gm | Igény szerinti nyelvbetöltés a weben (`use-deferred-loading`, `AppL10nDelegate` szinkron gyorsítótárral, induláskori előtöltés, `test/flutter_test_config.dart`), szinkron szövegirány-delegate, az értesítések szövegei előtöltve (`AppServices.loadTexts`); `main.dart.js` 16,7 → 5,3 MB | ✅ kész |
| 5gn | Hetedik kódátnézés (riasztások) javításai: `earnings_known_period` az eredmény-értesítéshez, `PortfolioSnapshot.quoteTime` és kereskedési nap szerinti ismétlés-szűrés, `PriceAlert.armedAt` a napi mozgáshoz (app és szerver, Finnhub `t`), a szerveroldali figyelő körbeforgása és szüneteltetése, `switches_at` a kapcsolók szinkronjához, ellenőrzés közbeni szerkesztés, első ellenőrzés az első szinkron után, követő stop csúcsa szerkesztéskor, friss ár a kulcsszint-riasztáshoz, pénznem a napi mozgásból váltott riasztásnál | ✅ kész |
| 5go | Nyolcadik kódátnézés (események) javításai: `calendarDaysBetween` (közös, óraátállítás-biztos napszámítás), naptár-azonosító negyedévvel / hónappal és pénznemmel, `ExpectedDividend.announced` és `UpcomingEvent.announced` (bejelentett osztalék), kapott összegek a jövőbeli tétel nélkül, 12 havi ablak kizárt alsó határral, FX-gyorsítótár a lekérés idejétől, egyedi osztalék-sorkulcsok | ✅ kész |
| 5gp | Kilencedik kódátnézés (szerver) javításai: névtelenített ajánlási sorok törléskor, összevonáskor a megosztások és a használati napló is, kérőnkénti hibás-kód korlát és IP-nkénti kódkérés-korlát, levelezőhiba elrejtése, heti levél: adat nélküli fiók lezárása, keretbe férő fiókok, friss adat küldés előtt, leiratkozó link (`digest_unsubscribe`, `/u/<token>`, `List-Unsubscribe`), lejárt megosztás képe, JSON-mélység korlát, véletlen napi telemetria-só | ✅ kész |
| 5gq | Tizedik kódátnézés (piaci adatok) javításai: `CachingMarketDataProvider.stale` / `staleSince` és részvényenkénti `OfflineBanner`, `history$years` gyorsítótár-kulcs, `PriceHistory.since` (a diagram és a hozamsáv közös alappontja), napi gyertya naptári napként, `PriceStats.ytd` közösen, `_date` időzóna nélkül, S&P-betöltés hibakezelése, `isHit` csak az élesítés utáni árra (app és szerver) | ✅ kész |
| 5gr | Tizenegyedik kódátnézés (AI) javításai: tűrő `parseResponse` (típushiba helyett javító kör), nyelvhelyes `restore`/`generate`, `clipText` (emoji-biztos rövidítés), `hasNewResults` 22:00 UTC-től, `ResearchStore` mentési sor, csak a keresés utáni válaszszöveg, `Catalyst.sortDate`, `cachedResearch` hibaágának javítása, szerveroldali visszatérítés `max_tokens`-nél | ✅ kész |
| 5dq | Fogalomtár a Beállításokban (Névjegy): az app 34 mutatójának közérthető magyarázata egy kereshető listában (ugyanazok, mint a ⓘ-ek), 120 nyelven | ✅ kész |
| 5j | Telefonos háttér-értesítés (riasztás) szerverről, APNs / FCM | 🟡 első lépés kész: a szerver 10 percenként nézi a belépett fiókok szinkronizált riasztásait, és e-mailben szól (csukott appnál is, kikapcsolható); a telefonos push (APNs / FCM) a Firebase-projekt és az Apple-kulcs után |
| 5k | Bolti adatlapok 120 nyelven, képernyőképek, ikon, előnézeti videó, Apple adatvédelmi manifest | 🟡 Apple `PrivacyInfo.xcprivacy` az iOS és a macOS Runnerhez (Xcode-ban a célhoz adni: tulajdonosi lépés, `docs/BOLTI_ADATLAP.md`); Microsoft Store MSIX-konfiguráció (`msix_config`, az identitás a Partner Centerből: tulajdonosi adat); adatlap-szövegek 70 bolti nyelven (fastlane-mappa, `docs/BOLTI_ADATLAP.md`), feliratos bolti képek a teszt-harnessből a boltok méreteiben (4 kép: felismerés, elemzés, portfólió, gyorsjelentés-összefoglaló kérdéssel); az adatlapon a kapott osztalékok (a ritmusukból várható következőkkel) és az „Amíg távol voltál” pontja is; előnézeti videó és a nem latin írású képek a natív buildből később |

**Nem kód, a tulajdonos intézi:** vállalkozási forma és adószám, könyvelő; Apple Developer (99 USD/év),
Google Play Console (25 USD), Stripe, Anthropic Console (költéskorláttal), Resend, domain; piaci adat
kereskedelmi licence; jogász az ÁSZF-hez és a tájékoztatóhoz; EU-s tárhely a szervernek; macOS-aláírás
(Developer ID, notarizáció) és Windows kódaláírás, különben a letöltéskor biztonsági figyelmeztetés jelenik meg.

A kiadások összefoglalója (0.2.130-tól) és a bolti „Újdonságok” szövegek: `docs/VALTOZASOK.md`.

## 8. Nyitott kérdések – és ami közben eldőlt

- **Melyik piac a fókusz?** Az amerikai tőzsdék (Finnhub ingyenes csomag: ár, profil, mutatók, hírek, gyorsjelentések). A BÉT-es és hongkongi papírokhoz az árfolyam a Twelve Data fizetős csomagjával jönne (tulajdonosi döntés); addig ezek „ár nélküli” pozíciók.
- **Portfólió-kezelés?** Igen, elkészült: vételek, eladások (FIFO, realizált nyereség), kapott osztalékok, készpénz, célarányok, értékalakulás, S&P 500-összevetés, bróker-importok, CSV, fiókos szinkron.
- **A cégleírások és hírek fordítása?** Az AI-elemzés, a hírmagyarázat és a napi összefoglaló a felhasználó nyelvén készül; a nyers hírcímek és a cégleírás angolul maradnak (gépi fordítás nélkül – a forrás hűsége fontosabb).
- **Árfolyam-riasztás, értesítés?** Igen: ár fölé/alá, napi mozgás, követő stop, portfólió-mozgás, gyorsjelentés-emlékeztető és -eredmény, technikai jelzések; asztali gépen rendszerértesítés, bejelentkezve e-mail; a telefonos push a Firebase/APNs után (5j).
- **Offline működés (OCR eszközön)?** Még nyitott (4b3): a felismerés online AI; hálózat nélkül az utolsó ismert adatok látszanak (5ae). Az eszközön futó OCR döntés és natív tesztelés után.
- **Felhasználói fiók, szinkron?** Igen: e-mail kódos belépés, fiókhoz kötött előfizetés, a portfólió, kedvencek, riasztások, jegyzetek, készpénz szinkronja (5w); Apple/Google belépés később.
