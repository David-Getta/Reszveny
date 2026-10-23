# Változásjegyzék (0.2.130 → 0.2.195)

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

- **Új befizetés elosztása** a célarányok szerint: a befektetendő összegből csak vétel, először a céljuktól leginkább
  elmaradó pozíciók kapnak; pozíciónként az összeg és nagyjából hány darab.

- A megoszlás-kártya alján a **portfólió-béta** (a részvények bétája az értékükkel súlyozva) és **a 3
  legnagyobb pozíció súlya**, ⓘ magyarázattal (a fogalomtár 32 mutatója); az AI-portfólióelemzés is megkapja.
- **Összehasonlítás egy koppintással**: a pozíciók fejlécéből a 3 legnagyobb pozíció, a kedvencekből az első 3.
- Az értékalakulás-kártyán az összevetés indexe választható: **S&P 500, Nasdaq 100 vagy Dow Jones** (megjegyezve).

## Számlák

- **Számlák** (pl. TBSZ, normál, NYESZ): a vételhez és az eladáshoz számla adható meg (a meglévők közül kiegészítve,
  nem kötelező); a portfólió oldalon számlánként szűrhető – a FIFO, a realizált nyereség és az értékalakulás is a
  számlán belül; szinkronban, mentésben és a CSV-ben is.
- A FIFO a „Minden számla” nézetben is számlánként fut (egyik számla eladása nem fogyasztja a másik vételeit); eladáskor
  a birtokló számlák közül választható, honnan; a realizált nyereség CSV-je számla-oszlopot kap; a kis- és nagybetű
  eltérése nem nyit új számlát; a számlát nem ismerő régebbi app szinkronja nem törli a számlákat.
- Ha egy eladásnak a saját számláján nincs vétele (pl. régebben számla nélkül rögzített eladás TBSZ-es vételre), a
  többi számla legrégebbi tételeiből fogy – a darabszám mindig egyezik a grafikonéval; a számla-nézetek a teljes
  FIFO-ból számolnak, így a számlák összeadódnak.
- Az egy héten belül (pl. két számlán egy nap eltéréssel) rögzített osztalékok egy kifizetésnek számítanak a várható
  osztalékok ritmusánál (az appban és a heti e-mailben is); a várható tétel rögzítésekor a számlánkénti rész kerül be.
- **Osztalékok számlánként**: az osztalék rögzítésekor számla adható (alapból ahol a legtöbb darab van, számla-nézetben
  az a számla); a számla-nézetben a „Kapott osztalékok” kártya a számla osztalékait, várható kifizetéseit és havi
  diagramját mutatja; az osztalék-CSV-kben számla-oszlop; szinkronban (régebbi app sem törli).
- **Megoszlás számlák szerint**: a megoszlás-kártyán új „Számlák” nézet (pl. TBSZ 2026 32% · Normál 68%).
- **Éves összesítő az adóbevalláshoz** (portfólió menü): évenként, számlánként és pénznemenként az eladási bevétel, a
  szerzési érték, a realizált nyereség, a kapott osztalék és a fizetett jutalék, átváltás nélkül; szövegként megosztható.
- **Tranzakciós díj (jutalék)**: a vételhez és az eladáshoz megadható; a bekerülési értékbe, a realizált nyereségbe
  (az adó-CSV-be is) és az éves hozamba beszámít; a bróker-exportok díj-oszlopa (IBKR „Comm/Fee”) importáláskor
  bekerül; szinkronban, mentésben és a CSV-ben is.

## Import

- A **pénzösszeg-mezők** (befizetés, cél, készpénz, osztalék, „Mi lett volna, ha”) a nyelv ezres tagolását is értik:
  angolul az „5,000” 5000, magyarul és németül a „100.000” 100 000 (eddig 5, illetve 100 lett); a „NaN” és az
  „Infinity” nem szám.

- A CSV-import a **magyar és német fejléceket** is felismeri (Mennyiség, Árfolyam, Pénznem, Dátum, Irány,
  Számla, Jutalék; Stück, Kurs, Währung, Datum, Typ, Gebühr, Konto), a „Vétel/Eladás/Osztalék” és a
  „Kauf/Verkauf” szavakat, és a magyar dátumot („2025.03.14.”).

## Megosztás

- **Portfólió-teljesítmény megosztása** képként vagy szövegként az összérték kártyájáról: nyereség %, éves hozam,
  mai mozgás és a legnagyobb pozíciók súlya – összegek nélkül.

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
