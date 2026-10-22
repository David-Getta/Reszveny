# Változásjegyzék (0.2.130 → 0.2.183)

A kiadások a `claude/eager-bohr-pi0oy9` ágról, a GitHub Release-ből jönnek (minden verzió CI-vel és
Release-szel). A bolti „Újdonságok” szövegekhez a fejezet végén rövid összefoglaló.

## Osztalékok

- **Kapott osztalékok** kártya a portfólióban: idei és összes összeg (átváltva), kézi felvétel, törlés
  visszavonással, évenkénti összegek a lezárt évek változásával („2025 · +8%”), CSV-export az
  adóbevalláshoz; a bróker-exportok (Revolut, Trading 212, IBKR – forrásadóval nettósítva) osztaléksorai
  importáláskor bekerülnek; fiókkal szinkronizálva, a biztonsági mentésben.
- **Várható következő osztalékok** a rögzített kifizetések ritmusából (havi / negyedéves / féléves /
  éves, a legutóbbi távolságokból): a kártyán, „A pozícióm” kártyán, az Események naptárban (naptárexportba
  is), a heti e-mailben („a következő két hétben”).
- **Bekerülési osztalékhozam** a pozíció kártyáján és az egész portfólióra, ⓘ magyarázattal; a főoldali
  portfólió-kártyán az idei osztalék; a tranzakciós lapon a részvény osztalékai tételenként.
- Az **AI-portfólióelemzés** megkapja a 12 havi tényleges osztalékot és a várható kifizetéseket; a heti
  e-mail az idei összesítést pénznemenként.
- A **megérkezett osztalék egy koppintással** rögzíthető a várható tételből (a kártyán és az Események
  sorában, előre kitöltve); a részvény AI-elemzése a saját pozíció 12 havi osztalékát és bekerülési hozamát
  is megkapja; a „Mi lett volna, ha…” kártya a mai hozammal számolt évi osztalékot is mutatja.
- **Havi osztalék-diagram** a „Kapott osztalékok” kártyán: az elmúlt 12 hónap kapott és a következő 3 hónap
  várható osztaléka (a havonta fizető részvény minden hónapban), koppintásra a hónap összegeivel.
- **Havi osztalékcél** a „Kapott osztalékok” kártyán: a mai hozamokból várható havi osztalék a célhoz mérve,
  haladásjelzővel („A mai hozamokkal havonta kb. 18 500 Ft · 37% kész · cél: 50 000 Ft”); a portfólió-célérték
  és az osztalékcél fiókkal szinkronizálva (az újabb módosítás nyer, a törlés sem éled újra).
- **Osztalék-emlékeztető** asztali gépen: a várható osztalék napján egy értesítés a becsült összeggel, hogy a
  megérkezett osztalékot rögzíteni lehessen (a Beállításokban külön kikapcsolható).
- A pozíciók **osztalékhozam szerint** is rendezhetők; a pozíciók és a kedvencek választott rendezése
  megmarad az app újraindítása után.
- A részvény oldalán az **„Osztalék” kártya** az 5 éves osztaléknövekedéssel és a saját részvényekre jutó
  évi osztalékkal; ha a cég nem fizet, ezt egy mondat mondja ki (az összehasonlításban is új sor).

## Kockázat

- A megoszlás-kártya alján a **portfólió-béta** (a részvények bétája az értékükkel súlyozva) és **a 3
  legnagyobb pozíció súlya**, ⓘ magyarázattal (a fogalomtár 32 mutatója); az AI-portfólióelemzés is megkapja.
- **Összehasonlítás egy koppintással**: a pozíciók fejlécéből a 3 legnagyobb pozíció, a kedvencekből az első 3.
- Az értékalakulás-kártyán az összevetés indexe választható: **S&P 500, Nasdaq 100 vagy Dow Jones** (megjegyezve).

## Készpénz

- **Készpénz a brókernél** pénznemenként: az összértékbe és a megoszlásba számít, a hozamba nem; a cél-sávban,
  az újrasúlyozásban és az AI-elemzésben; csak készpénzzel is „él” a portfólió; fiókkal szinkronizálva,
  időbélyeggel (a törlés kétoldali összefésülésnél sem éled újra).
- **Részvényfelaprózás** rögzítése a tranzakciós lapon (10:1 vagy 1:10 és a nap): a korábbi vételek és
  eladások darabszáma és ára igazodik, a bekerülési érték marad; szinkronban, mentésben és a CSV-ben is.

## Kezdőképernyő és piacok

- **„Amíg távol voltál”** kártya: a nagy mozgások, a megszólalt riasztások, a közben megjelent eredmények és
  a portfólió változása a legutóbbi látogatás óta (előtérbe kerüléskor is).
- **„Miért mozog ma?”** – AI-magyarázat a nagy napi mozgásra forrásokkal: a részvény fejlécében, a
  Kedvencek listán, a kezdőképernyő csempéin és az indexekre a „Piacok ma” sávban.
- **„Piacok ma”**: az S&P 500 technikai egysorosa (RSI, 200 napos átlag).

## Technikai kép és jelzések

- **„Technikai kép”** kártya a részvény oldalán (50/200 napos átlag, RSI, 30 napos volatilitás), új sorok az
  összehasonlításban (köztük a kifizetési arány), trendkép a portfólió-grafikonon.
- **„Jelzések”** sáv a Kedvencek oldalon (RSI szélsőség, a 200 napos átlag átlépése), napi
  rendszerértesítés asztali gépen (kikapcsolható), a heti e-mailben is.
- **Fogalomtár** a Beállításokban: 32 mutató közérthető magyarázata, kereshetően; ⓘ a kártyák számainál.

## Események

- Az Események lista követi a portfóliót (vétel, eladás, osztalék után azonnal, hálózat nélkül); a
  naptárexportban a várható osztalékok is.

## Weboldal

- **Minta-elemzés** oldal (`/sample`, magyar és angol): egy illusztratív elemzés kitalált cégen mutatja az
  elemzés szerkezetét; a nyitóoldalról és a láblécből linkelve, a sitemapben.
- A népszerű részvények oldalain **fő mutatók** is: P/E, osztalékhozam, béta, 52 hetes sáv.
- **Fogalomtár** a weboldalon (`/glossary`): a 32 mutató magyarázata magyarul és angolul, a részvény-oldalakról linkelve.

## Bolti előkészítés

- Apple adatvédelmi manifest (iOS, macOS), exportengedély-kulcs, macOS mentési jogosultság; Google Play
  „Adatbiztonság” válaszok; Microsoft Store MSIX-konfiguráció; a bolti adatlapok 70 nyelven frissítve.

## Minőség

- Tizenegy kódátnézés és két egyszerűsítési átnézés javításai, bővített tesztek; 120 nyelven minden új szöveg.

## Bolti „Újdonságok” (rövid)

**Magyar:** Kapott és várható osztalékok, bekerülési osztalékhozam, készpénz a brókernél, „Amíg távol
voltál” kártya, „Miért mozog ma?” AI-magyarázat, technikai kép és jelzések, fogalomtár – mind 120 nyelven.

**English:** Dividends received and expected, yield on cost, cash at your broker, a “While you were away”
card, “Why is it moving today?” AI explanations, a technical picture with signals, and a glossary – all in
120 languages.
