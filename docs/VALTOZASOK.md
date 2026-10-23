# Változásjegyzék (0.2.130 → 0.2.228)

A kiadások a `claude/eager-bohr-pi0oy9` ágról, a GitHub Release-ből jönnek (minden verzió CI-vel és
Release-szel). A bolti „Újdonságok” szövegekhez a fejezet végén rövid összefoglaló.

## Osztalékok

- **Kapott osztalékok** kártya a portfólióban: idei és összes összeg (átváltva), kézi felvétel, törlés
  visszavonással, évenkénti összegek a lezárt évek változásával („2025 · +8%”), CSV-export az
  adóbevalláshoz; a bróker-exportok (Revolut, Trading 212, IBKR, Schwab, Fidelity, Robinhood – forrásadóval
  nettósítva) osztaléksorai importáláskor bekerülnek; fiókkal szinkronizálva, a biztonsági mentésben.
- **Várható következő osztalékok** a rögzített kifizetések ritmusából (havi / negyedéves / féléves /
  éves, a legutóbbi távolságokból): a kártyán, „A pozícióm” kártyán, az Események naptárban (naptárexportba
  is), a heti e-mailben („a következő két hétben”).
- **Bekerülési osztalékhozam** a pozíció kártyáján és az egész portfólióra, ⓘ magyarázattal; a főoldali
  portfólió-kártyán az idei osztalék; a tranzakciós lapon a részvény osztalékai tételenként.
- Az **AI-portfólióelemzés** megkapja a 12 havi tényleges osztalékot és a várható kifizetéseket; a heti
  e-mail az idei összesítést pénznemenként.
- Az **AI-portfólióelemzés** a teljesítményt is látja: a pénzsúlyozott éves hozamot, az idei időarányos hozamot a
  választott indexszel ugyanarra az időszakra, és a legnagyobb visszaesést (az összefoglalóban és a kockázatoknál).
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

- **Mi mozgatta ma a portfóliót**: az összérték-kártyán és a kezdőképernyő portfólió-kártyáján a két legnagyobb mai
  változás pozíciónként, a megjelenítési pénznemben („Ma leginkább mozgott: NVDA +39 284 HUF · OTP +18 600 HUF”).

- A **lezárt pozícióknál „az eladás óta”**: az ár változása az utolsó eladás óta (megérte-e eladni).
- **Követő stop minden pozícióra** egy lépésben a portfólió menüjéből (−5 … −25%, a meglévők maradnak); a végén
  egy koppintással visszavonható.
- **Távolság a riasztásig**: a Riasztások oldalon és a részvény oldalán minden aktív riasztás alatt a mostani ár és
  hogy mennyit kell még mozdulnia a kioldásig („Most 231,45 USD · még +4,2%”); követő stopnál a csúcstól számolt
  szintig. A Riasztások oldalon a kioldáshoz legközelebbi van elöl.

- **Legnagyobb visszaesés** az értékalakulás-kártyán (a vételek és eladások hatása nélkül, időarányosan), a csúcs és
  a mélypont napjával, ⓘ magyarázattal.
- **Idei hozam** az értékalakulás-kártyán: időarányosan (a befizetés és a kivét nem hozam), az év elejétől vagy az első
  idei vételtől, alatta a választott index ugyanerre az időszakra („S&P 500: +12,1%”), ⓘ magyarázattal; a fogalomtárban
  (az appban és a weboldalon) mostantól 34 mutató, a legnagyobb visszaeséssel együtt.

- A **portfólió-cél becsült elérése** a cél-sáv alatt a mostani éves hozammal („kb. 2029 táján éred el”).
- **Új befizetés elosztása** a célarányok szerint: a befektetendő összegből csak vétel, először a céljuktól leginkább
  elmaradó pozíciók kapnak; pozíciónként az összeg és nagyjából hány darab.

- A megoszlás-kártya alján a **portfólió-béta** (a részvények bétája az értékükkel súlyozva) és **a 3
  legnagyobb pozíció súlya**, ⓘ magyarázattal (a fogalomtár mutatói között); az AI-portfólióelemzés is megkapja.
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
- A vétel/eladás dialógus jelzi a **héten belüli gyorsjelentést** („Negyedéves gyorsjelentés · holnap · zárás után”):
  a döntés előtt jó tudni, hogy az ár a szokásosnál jobban mozoghat.
- Az **új vétel számlája** alapból a legutóbbi vételé (a mindig TBSZ-re vevőnek nem kell újra beírnia).
- A jegyzetkártya és a portfólió lábjegyzete helyesen írja: az adat ezen a készüléken marad, **és a fiókodban, ha be
  vagy jelentkezve** (eddig „csak ezen a készüléken”).
- **Tartási idő** a „Pozícióm” kártyán: mióta tartod a legrégebbi még birtokolt darabokat („Tartod: 1 év 7 hónap ·
  2024. márc. 4. óta”).
- **Jegyzet a tranzakcióhoz** (befektetési napló): a vétel/eladás dialógusban „Jegyzet hozzáadása” – a „miért veszed /
  adod el” a részvény jegyzeteinek végére kerül, dátummal, darabszámmal és árral; szinkronban, az AI-elemzés is látja.
- Az előnézet a **súlyt** is mutatja: mekkora része lesz a részvény a portfóliónak a vétel/eladás után („Súly a
  portfólióban ezután: 27,4% (most 18,2%)”) – a koncentráció a döntés előtt látszik.
- **Előnézet rögzítés előtt** a vétel/eladás dialógusban: vételnél az új átlagár („Új átlagár: 150,00 USD (most
  200,00 USD)”, abban a nézetben, ahonnan nyílt), eladásnál a FIFO szerint ezen az eladáson realizált eredmény a
  jutalékkal (zölden / pirosan) – a felaprózásokkal és a számlákkal is úgy, ahogy rögzítés után lesz.

## Kipróbálás

- **Minta-portfólió** az üres portfólió oldalon: egy gombbal betölthető (vételek, eladás, jutalék, osztalékok, TBSZ-számla),
  egy gombbal eltávolítható; a saját tételek maradnak.

## Import

- A **pénzösszeg-mezők** (befizetés, cél, készpénz, osztalék, „Mi lett volna, ha”) a nyelv ezres tagolását is értik:
  angolul az „5,000” 5000, magyarul és németül a „100.000” 100 000 (eddig 5, illetve 100 lett); a „NaN” és az
  „Infinity” nem szám.

- A CSV-import a **magyar és német fejléceket** is felismeri (Mennyiség, Árfolyam, Pénznem, Dátum, Irány,
  Számla, Jutalék; Stück, Kurs, Währung, Datum, Typ, Gebühr, Konto), a „Vétel/Eladás/Osztalék” és a
  „Kauf/Verkauf” szavakat, és a magyar dátumot („2025.03.14.”).
- **Amerikai brókerek exportja** is: Charles Schwab, Fidelity és Robinhood – vételek, eladások (a jutalékkal),
  újrabefektetett osztalék darabjai, kapott osztalékok a külön soros forrásadóval csökkentve; a perjeles dátum
  sorrendjét (hónap/nap vagy nap/hónap) a fájl dönti el, ennek híján az amerikai fejléc, végül az amerikai nyelvi
  beállítás.
- **DEGIRO-export** (Transactions.csv): ticker helyett ISIN van benne – a tickert az import a keresővel oldja fel (nem
  dolláros kereskedésnél a helyi tőzsde tickere, pl. ASML.AS); az ár melletti pénznem, a kötőjeles dátum
  („14-03-2025”), az alapdevizában fizetett díj az árfolyammal átváltva. Az import-dialógus szövege mind a hét
  brókert felsorolja, 120 nyelven.
- A **DEGIRO számlakivonata** (Account.csv – angol, német vagy holland nyelvű) is beolvasható: a „Dividend” sorok
  kapott osztalékként, az aznapi „Dividend Tax” levonva, a tickert ugyanúgy ISIN-ből; a többi sor kimarad.
- A **CSV-exportok fájlként** mennek (portfólió, osztalékok, realizált nyereség): tizedesvesszős nyelven – pl.
  magyarul – pontosvesszővel és tizedesvesszővel, így a helyi Excel rögtön oszlopokra bontja; UTF-8 jellel, hogy az
  ékezetes számlanevek is jók legyenek; weben letöltésként. A saját import mindkét formát visszaolvassa.
- **Az import visszavonható**: a végén megjelenő sávon egy koppintással mindaz törlődik, amit az import felvett
  (tranzakciók, osztalékok, felaprózások) – egy rossz fájl után nem kell tételenként takarítani.
- **Import-javítások** (kódátnézés): a Fidelity műveletében az értékpapír neve nem számít műveletnek (az „ISHARES
  RUSSELL 2000” vétel, nem eladás; egy osztalék-ETF vétele nem osztalék); a Robinhood kétsoros leírása nem vágja
  ketté a sort; az amerikai export „1,000” darabja ezer; a Fidelity „Fees” oszlopa is díj; ugyanaz az ISIN dollárban
  és euróban két tőzsdei tickert kap (euróban a német/holland/francia… listát); az amerikai dátum-sorrend a rendszer
  országából.
- **Scalable Capital** (pontosvesszős, ISIN-es export: a megtakarítási terv vételként, a „Distribution” osztalékként,
  a visszavont megbízás kimarad) és **Lightyear** („CCY”, „Net Amt.” – az osztalék a forrásadó utáni összeg).

## Megosztás

- **Portfólió-teljesítmény megosztása** képként vagy szövegként az összérték kártyájáról: nyereség %, éves hozam,
  mai mozgás és a legnagyobb pozíciók súlya – összegek nélkül.

## Készpénz

- A **készpénz követi a tranzakciót**: ha a pénznemben van vezetett egyenleg, a vétel (a díjjal) levonódik belőle, az
  eladás hozzáadódik – a dialógusban egy jelölőnégyzettel kikapcsolható.
- **Készpénz a brókernél** pénznemenként: az összértékbe és a megoszlásba számít, a hozamba nem; a cél-sávban,
  az újrasúlyozásban és az AI-elemzésben; csak készpénzzel is „él” a portfólió; fiókkal szinkronizálva,
  időbélyeggel (a törlés kétoldali összefésülésnél sem éled újra).
- **Részvényfelaprózás** rögzítése a tranzakciós lapon (10:1 vagy 1:10 és a nap): a korábbi vételek és
  eladások darabszáma és ára igazodik, a bekerülési érték marad; szinkronban, mentésben és a CSV-ben is.

## Kezdőképernyő és piacok

- **„Mióta figyeled”** a Kedvencek listán: a felvétel óta eltelt árváltozás az ár alatt („★ +1,3%”), a felvétel napja
  szinkronban és a mentésben.
- A Kedvencek **rendezhetők „mióta figyeled” szerint** is: a felvétel óta legtöbbet emelkedett elöl, a dátum
  nélküliek a végén.

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
- **Fogalomtár** a Beállításokban: 34 mutató közérthető magyarázata, kereshetően; ⓘ a kártyák számainál.

## Események

- Az Események lista követi a portfóliót (vétel, eladás, osztalék után azonnal, hálózat nélkül); a
  naptárexportban a várható osztalékok is.

## Weboldal

- **Minta-elemzés** oldal (`/sample`, magyar és angol): egy illusztratív elemzés kitalált cégen mutatja az
  elemzés szerkezetét; a nyitóoldalról és a láblécből linkelve, a sitemapben.
- A népszerű részvények oldalain **fő mutatók** is: P/E, osztalékhozam, béta, 52 hetes sáv.
- **Fogalomtár** a weboldalon (`/glossary`): a 34 mutató magyarázata magyarul és angolul, a részvény-oldalakról linkelve.

## Bolti előkészítés

- Apple adatvédelmi manifest (iOS, macOS), exportengedély-kulcs, macOS mentési jogosultság; Google Play
  „Adatbiztonság” válaszok; Microsoft Store MSIX-konfiguráció; a bolti adatlapok 70 nyelven frissítve.

## Minőség

- **Akadálymentesség**: a keresőmező küldés-gombja nevet kapott a képernyőolvasónak; új teszt ellenőrzi, hogy a fő
  oldalakon (kezdőlap, portfólió, riasztások, beállítások, kedvencek, részvény oldal) minden koppintható elemnek van neve.

- Tizenhat kódátnézés és három egyszerűsítési átnézés javításai (közös FIFO-lépés, gyorsítótárazott számla-nézetek,
  egy számla mező a tranzakcióhoz és az osztalékhoz, egylépéses kedvenc-szinkron), bővített tesztek; 120 nyelven
  minden új szöveg.

## Bolti „Újdonságok” (rövid)

**Magyar:** Import hat további brókertől (DEGIRO, Schwab, Fidelity, Robinhood, Scalable Capital, Lightyear –
egy koppintással visszavonható), előnézet vétel és eladás előtt (új átlagár, várható realizált eredmény), idei
hozam az indexhez mérve, távolság a riasztásig, jegyzet a tranzakcióhoz; számlák (pl. TBSZ) és jutalék, éves
összesítő az adóbevalláshoz, Excelben rögtön megnyitható CSV-export – mind 120 nyelven.

**English:** Imports from six more brokers (DEGIRO, Schwab, Fidelity, Robinhood, Scalable Capital, Lightyear –
undo in one tap), a preview before you buy or sell (new average cost, expected realized gain), this year's return
next to an index, how far each alert is from firing, a note on every trade; accounts and fees, an annual summary
for your tax return, CSV exports that open straight in Excel – all in 120 languages.
