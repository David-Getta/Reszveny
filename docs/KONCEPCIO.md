# Részvény – koncepció és architektúra

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

Az app felülete **44 nyelven** érhető el; az **alapértelmezett az angol**. Induláskor a rendszer
nyelvét választja (ha támogatott), a beállításokban bárki átválthat – a nyelvválasztó minden
nyelvet a saját nevén mutat. A jobbról balra író nyelveknél (arab, perzsa, urdu) a teljes
elrendezés tükröződik.

| Csoport | Nyelvek |
|---|---|
| Alap | angol |
| Világnyelvek | mandarin kínai (egyszerűsített), kantoni (hagyományos, Hongkong), hindi, spanyol, francia, arab (modern standard), bengáli, orosz, portugál, urdu, indonéz, német, japán, maráthi, telugu, török, tamil, vietnámi, filippínó (tagalog), koreai, perzsa (fárszi), jávai, hausza, szuahéli |
| Európa | magyar, olasz, lengyel, ukrán, román, holland, görög, cseh, svéd, katalán, szerb, bolgár, albán, horvát, dán, finn, norvég, szlovák, litván |

Megjegyzések:
- A **wu kínainak** nincs általánosan használt írott formája; a wu nyelvű eszközbeállítás az
  egyszerűsített kínai felületet kapja. A **kantoni** a hongkongi hagyományos írást használja.
- A **jávai** és a **hausza** nyelvet a Flutter beépített rendszer-szövegei (pl. dátumválasztó)
  nem ismerik; ott ezek angolul jelennek meg, az app saját szövegei a kívánt nyelven.
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

**Előhívás bárhonnan.** macOS-en és Windowson egy globális gyorsbillentyű (`⌥ Space`, illetve
`Ctrl + Alt + Space`) egy kompakt, lebegő keresősávot hoz elő a képernyő felső harmadában,
minden más ablak felett – ugyanúgy, ahogy a Claude macOS-es alkalmazása. Enter a teljes
ablakban nyitja meg a találatot, Esc vagy fókuszvesztés elrejti a sávot. A menüsorban /
tálcán ikon áll rendelkezésre „Megnyitás / Gyorskeresés / Kilépés” menüvel.

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
- `l10n/` – 44 nyelv ARB-fájljai, nyelvfeloldás, tartalék-delegate a Flutter által nem ismert nyelvekre.
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

Éles kiadásnál a kulcsokat egy saját kis backend (proxy) tartja, az app azzal beszél. A kódban a `AppConfig` központosítja a kulcsok és végpontok elérését, így a proxyra váltás egy helyen történik.

## 7. Ütemterv

| Fázis | Tartalom | Állapot |
|---|---|---|
| 0 | Repó, Flutter váz, mind az 5 platform target, CI, 44 nyelv | ✅ kész |
| 0b | Claude-stílusú felület, oldalsáv, előzmények, téma, cégnév-keresés, macOS/Windows gyorsbillentyű + tálcaikon, app-ikonok | ✅ kész |
| 1 | Kép → felismerés → árfolyam + profil + mutatók + hírek megjelenítése | 🟡 váz kész, finomítás jön |
| 2 | AI-elemzés (hírösszefoglaló + átfogó kép, webkereséssel), árfolyamgrafikon, éves kimutatások, vágólap-beillesztés, átállítható gyorsbillentyű, bejelentkezéskori indítás | ✅ kész |
| 3a | Kedvencek (csillag, oldalsáv, kezdőképernyő élő árral), böngészős előnézet (web-build Artifactként) | ✅ kész |
| 3b | OCR fallback offline (ML Kit, mobil), deviza-átváltás, árfolyam-riasztás | ⬜ |
| 4 | Backend proxy, bejelentkezés, bolti kiadás (App Store, Play, Microsoft Store, Mac App Store) | ⬜ |

## 8. Nyitott kérdések (a részletes leírásból várjuk a választ)

- Elsősorban melyik piac a fókusz? (BÉT, amerikai tőzsdék, európai – ez meghatározza az adatforrást.)
- Kell-e portfólió-kezelés (saját részvények, vételi ár, hozam), vagy csak információ?
- A cégleírások és hírek az adatforrásból angolul jönnek – kell-e ezeket is gépi fordítással a felhasználó nyelvére fordítani?
- Legyen-e árfolyam-riasztás, értesítés?
- Kell-e offline működés (OCR eszközön), vagy elég az online felismerés?
- Szükséges-e felhasználói fiók, szinkron az eszközök között?
