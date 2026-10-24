# Változásjegyzék (0.2.130 → 0.2.285)

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
- **Indexhez mérve** a „Pozícióm” kártyán: mintha minden vétel összegét ugyanazon a napon a választott indexbe
  (alapból S&P 500) tetted volna, és eladáskor ugyanannyit vettél volna ki – „S&P 500 +58,9% · 34,5 százalékponttal
  jobb az indexnél”, ⓘ magyarázattal (csak dátumos vételeknél, ha az index-sor a legelső vételig visszaér).
- **Tartási idő** a „Pozícióm” kártyán: mióta tartod a legrégebbi még birtokolt darabokat („Tartod: 1 év 7 hónap ·
  2024. márc. 4. óta”).
- **Tranzakció javítása**: a tranzakciós lapon a ceruzával a darab, az ár, a dátum, a számla és a díj javítható
  (ugyanaz a tétel marad, szinkronban); eddig csak törölni és újra felvenni lehetett. A **kapott osztalék** is
  javítható (a „Kapott osztalékok” kártyán és a tranzakciós lapon): összeg, pénznem, nap, számla. Javításkor a tárolt
  számok kerekítés nélkül töltődnek vissza (a 0,12345678 tört részvény nem lesz 0,1235 mentéskor, a „Mind” gomb is
  pontosan a birtokolt darabot írja be).
- **Tickerváltás** a tranzakciós lapon (pl. FB → META, SQ → XYZ): a részvény minden tranzakciója, osztaléka,
  felaprózása, a jegyzete, a riasztásai, a kedvenc-jelölése, a célaránya és a saját listái egy lépésben átkerülnek az
  új tickerre (ha ott már volt pozíció, összeadódnak); szinkronnal a többi eszközre is.
- **Összes tranzakció** (a portfólió menüjéből): minden vétel, eladás, kapott osztalék és felaprózás egy listában,
  havonta fejléccel, az újabb elöl; szűrés tickerre, típusra és számlára; koppintva javítható, törölhető
  visszavonással – egy több száz soros import után is gyorsan megtalálható a hibás tétel.
- **Jegyzet a tranzakcióhoz** (befektetési napló): a vétel/eladás dialógusban „Jegyzet hozzáadása” – a „miért veszed /
  adod el” a részvény jegyzeteinek végére kerül, dátummal, darabszámmal és árral; szinkronban, az AI-elemzés is látja.
- Az előnézet a **súlyt** is mutatja: mekkora része lesz a részvény a portfóliónak a vétel/eladás után („Súly a
  portfólióban ezután: 27,4% (most 18,2%)”) – a koncentráció a döntés előtt látszik.
- **Előnézet rögzítés előtt** a vétel/eladás dialógusban: vételnél az új átlagár („Új átlagár: 150,00 USD (most
  200,00 USD)”, abban a nézetben, ahonnan nyílt), eladásnál a FIFO szerint ezen az eladáson realizált eredmény a
  jutalékkal (zölden / pirosan) – a felaprózásokkal és a számlákkal is úgy, ahogy rögzítés után lesz.

## Kipróbálás

- A **bevezető** (első indítás) negyedik oldala a portfólió: import a brókerektől, hozam indexhez mérve, osztalék,
  éves összesítő az adóbevalláshoz.
- A 3. **bolti kép** (portfólió) felirata is a portfólióról szól („Kövesd a portfóliódat…”).
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
- **Darabszámok helyesen 26 nyelven**: ahol a nyelv „egyes” alakja más számot is jelent (franciául, portugálul,
  hindiül a 0-t, oroszul, ukránul, horvátul a 21-et, 31-et, lettül a 10–20-at is), eddig „1 sor kihagyva” látszhatott
  0 vagy 21 sorra; most mindenütt a tényleges szám áll (a szingaléz és zulu szövegek átírva), és egy teszt minden
  nyelvre ellenőrzi.
- **Javítások egy harmadik kódátnézés nyomán**: tranzakció vagy osztalék javítása után a portfólió oldal
  összesítői, az értékalakulás és az események is frissülnek (eddig az azonosító szerinti kulcs miatt a régi számok
  maradtak); a dátum nélküli tétel javításkor nem kap mai dátumot (különben egy későbbi eladás elé kerülhetett), a
  számla nélküli osztalék nem kap számlát; a felaprózás előtti vétel a listában látott (igazított) számokkal javítható,
  és mentéskor visszaalakul; a jövőbeli vagy 1980 előtti tárolt nap nem akasztja meg a naptárt; perzsa és pastu nyelven
  is menthető a kitöltött osztalékösszeg; a javított eladás sem lehet több, mint a számlán birtokolt darab plusz maga
  az eladás. Szinkronnál a javításkor törölt számla és díj sem tér vissza a másik eszközről (eddig a régebbi appok
  elleni védelem visszaírta). Ha mindkét eszközön volt változás, azonos tételnél a később javított változat nyer (eddig
  a helyi, így a másik eszközön végzett javítás elveszhetett), és a törölt tranzakció, osztalék vagy felaprózás sem
  támad fel a másik eszköz régi példányából (törlési jelzés fél évig; a visszavonás és a mentésből visszaállítás
  továbbra is visszahozza). Ugyanez a riasztásokra és a jegyzetekre is; az újraélesített riasztást a szerver korábbi
  „teljesült” jelölése nem írja felül. Két eszköz egyidejű feltöltése sem írja felül egymást (a szerver elutasítja a
  régi változatra épülő feltöltést, az app újra letölt és összefésül), és a szerver riasztásfigyelője sem írhat vissza
  régi adatot egy közbeni feltöltés helyére. Egy negyedik kódátnézés nyomán: a felaprózás törlésének visszavonása és
  a mentésből visszaállított felaprózás is megmarad, az újratöltött minta-portfóliót nem törlik a korábbi eltávolítás
  jelzései, a megmaradt tételek jelzése eltűnik (nem töröl később), és a feltöltés közben tett változás is felmegy.
  Egy ötödik átnézés nyomán: a riasztás offline szerkesztését nem írja felül a szerver későbbi jelölése a régi
  beállítás szerint, a szigorított követő stop régi csúcsa nem jön vissza (különben azonnal riasztana), és a mentésből
  visszaállítás a mentés után törölt riasztást és jegyzetet is visszahozza. A levett kedvenc sem tér vissza a másik
  eszköz régi listájából (az újra felvett és a visszavont levétel megmarad, a mentésből visszaállítás visszahozza);
  ugyanígy a törölt saját lista és a listáról levett részvény, az átnevezett lista pedig nem duplázódik.
- **Ismételt import duplikálás nélkül**: a frissebb (a régi sorokat is tartalmazó) bróker-export újbóli beolvasásakor
  a már rögzített tranzakciók és osztalékok kimaradnak, és az import végén látszik, hány („2 már rögzítve volt,
  kimaradt”); a fájlon belüli két azonos részteljesítés viszont elsőre mindkettő bekerül (eddig a második elveszett).
  Az import összegzése „tranzakció hozzáadva” (az eladásokat is számolja, nem csak a vételeket).
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
- **Nagy betűméret (0.2.254)**: 200%-os rendszer-betűméretnél, kis telefonon (360 pt) sem csúszik ki semmi. A
  címke–összeg sorok (kapott és várható osztalékok, realizált nyereség évenként, dátumválasztó, versenytársak,
  bennfentes ügyletek, „Összes tranzakció”, minta-portfólió sáv) új közös elrendezéssel készülnek: ha az összeg nem
  fér a címke mellé, alá kerül, a sor végéhez igazítva (normál méretnél minden a régi helyén marad); a többsoros
  dialógusok görgethetők; a csomagkártyák magassága a tartalomhoz igazodik, nagy betűnél egy oszlopban. Új teszt
  angolul és magyarul végiggörgeti a fő oldalakat és dialógusokat (kezdőlap, kedvencek, események, portfólió,
  osztalék- és készpénz-dialógus, összes tranzakció, éves összesítő, követő stopok, riasztások, beállítások,
  fogalomtár, csomagok, részvény oldal és AI-elemzés, vétel- és riasztás-dialógus, összehasonlítás).
- **Képernyőolvasó (0.2.255)**: a gyorsjelentés-diagram negyedévei egyben felolvashatók („2026. jún., Jelentett EPS
  1,52, Várt EPS 1,47, +3,4%” – eddig a várt EPS kimaradt); az AI-kilátás sorai is a közös címke–érték elrendezést
  használják (a bizonyossági címke a tördelt szöveg mellett marad).
- **0.2.256**: a nagy betűs teszt hét nyelven fut (angol, magyar, német, arab – jobbról balra –, finn, orosz,
  japán); oroszul a portfólió-riasztás választója rövidül, ha nem fér el (és a cím alá kerül), az árfolyam-diagram
  „Vételeim / Eladásaim” jelmagyarázata tördelődik.

- **Javítások egy második kódátnézés nyomán** (vétel/eladás dialógus): a súly-előnézet számol a készpénzből fizetéssel
  és a felaprózással; egy korábbi napra pótolt tétel alapból nem változtat a mai készpénzen; dupla koppintásra sem
  kerül be kétszer; a készpénz a mentéskori egyenlegből változik; a tartási idő az óraátállítás hetében is pontos; a
  már túllépett szintű riasztás a lista elején.
- Holland nyelven az RSI-jelzés „oververkocht / overgekocht” (eddig angolul maradt).
- Tizenhat kódátnézés és három egyszerűsítési átnézés javításai (közös FIFO-lépés, gyorsítótárazott számla-nézetek,
  egy számla mező a tranzakcióhoz és az osztalékhoz, egylépéses kedvenc-szinkron), bővített tesztek; 120 nyelven
  minden új szöveg.

## Régóta nyitott hibák javítása

- **0.2.285**: a várható következő osztalék a mai darabszámra arányosít (az utolsó kifizetés óta vett vagy eladott
  rész már benne van) – az appban, az Események naptárban, az AI-portfólióelemzésben és a heti e-mailben is. Egy
  ticker más pénznemű importált sora (CSV, bróker-export, képernyőkép) a tranzakció napjának ECB-árfolyamán a
  meglévő pozíció pénznemébe váltva kerül be (eddig átváltás nélkül adódott össze); egy korábbi, átváltás nélküli
  import sorait ismétlésként felismeri, és a részvény oldaláról felvett vétel is a pozíció pénznemében indul. A
  pennyben (GBp) és centben (ZAc) jegyzett ár nem fontként (százszoros értékkel) tárolódik. Egy régebbi eszközön
  végzett tickerváltás nem hozza vissza a közben másutt törölt tranzakciót, osztalékot, felaprózást vagy riasztást,
  és a riasztást sem élesíti újra. Ha a szinkronizált adat túl nagy a szervernek, a Beállítások ezt mondják meg
  (mit érdemes törölni), nem újrapróbálást ígérnek.

## Teljesítmény: egy harmincadik kódátnézés javításai

- **0.2.284**: a portfólió értékalakulása, időarányos hozama és indexösszevetése egész napkulcsokkal és előre
  haladó mutatókkal számolódik (nagy portfóliónál eddig másodpercekre megakasztotta a felületet). A teljes
  kedvenclista rendezése részvényenként egyszer számolja a kulcsot, és az érkező adatok képkockánként legfeljebb
  egyszer rendezik újra. A bróker-export importja egyetlen értesítéssel és mentéssel zárul (eddig tételenként
  az egész portfóliót újra kódolta és mentette), és a szinkron „piszkos” jelzője csak változáskor íródik. A piaci
  adatok rövid ideig memóriában maradnak (egy vétel vagy görgetés nem tölt le újra mindent), és a készülékre ritkábban
  mentődnek (Windowson minden írás az egész beállítástárat újraírja). A sikertelen árfolyam-lekérést egy percig nem
  ismétli, a mentett elemzéseket nem dekódolja újra minden értesítéskor, a kezdőlap legfeljebb 12 kedvencet mutat (a
  többi a „Mind” oldalon), és a grafikonok felirat-rajzolói felszabadulnak.

## Csomagok és beállítások: egy huszonkilencedik kódátnézés javításai

- **0.2.283**: egyszerre csak egy vásárlás indulhat (eddig böngészős fizetés közben egy másik csomag is
  megvehető volt, akár kettős terheléssel), és a félbehagyott böngészős fizetés egy idő után lezárul, a gomb nem
  pörög tovább. A „Vásárlások visszaállítása” csak akkor mond sikert, ha tényleg talált vásárlást, különben azt
  írja, hogy nincs mit visszaállítani, és futás közben nem nyomható újra. Lejárt próbaidő után a vett extra
  elemzések teljes értékűek (nem rövidek), és a csomag-jelző és az állapotkártya is mutatja őket. Az árak a régió
  pénznemében jelennek meg, nem a részvények megjelenítési pénznemében, az éves előfizetés megújulási napja a
  kifizetett időszak vége, és az utolsó órában sem „0 nap” a próbaidő. A korábbi vásárlás üzenete nem jelenik meg
  újra a lap következő megnyitásakor, az „Előfizetés kezelése” megmondja, ha itt nincs mit kezelni, és a sikertelen
  mentésről is értesítés jön (3 új szöveg, 120 nyelven). A fióktörlés nem indítható kétszer, a szinkron sora nagy
  betűvel sem töri szét a Beállításokat, és a csomagvásárlás chipje keskeny képernyőn sem csordul túl.

## Akadálymentesség és jobbról balra író nyelvek: egy huszonnyolcadik kódátnézés javításai

- **0.2.282**: arab, héber és perzsa felületen az adatforrás angol szövegei (cégnév, cégleírás, hírcímek) balról
  jobbra futnak, így a mondatvégi pont nem ugrik az elejére („.Apple Inc”). A portfólió sorainak ikonja, az
  osztalékok évenkénti változása, az AI-portfólióelemzés felsoroláspontjai, több kártya és a lapok fejléce
  irányfüggő térközt kap; a széles nézet oldalsávjának elválasztó vonala a tartalom felé esik, és az összecsukott
  szakasz nyila a címe felé mutat. Képernyőolvasóval: a keresés gombja 48×48-as gomb, a „Miért mozog ma?” jel
  nagyobb koppintási felületet kap, a kedvencek, a piacok, a portfóliókártya és -sorok, a csomag-jelző, a
  figyelőlista sorai és a mutatók ⓘ-jelölői gombként jelennek meg, a nyelvkereső törlőgombja nevet kap, és az
  elemzői vélemények havi grafikonja számokkal is elmondja a megoszlást. A kabil és a macedón fordításban néhány,
  más írásrendszerbe tartozó hasonló betű javítva.

## Kezdőképernyő: egy huszonhetedik kódátnézés javításai

- **0.2.281**: a keresési javaslatok nem omlanak össze, ha két korábban megfejtett leírás („gold etf”, „gold
  fund”) ugyanarra a részvényre mutat, és egy Enter után későn megérkező javaslat sem takarja el a találatokat;
  Esc törli a találatokat. A felismert jelöltek választólapja nagy betűméretnél (200%) keskeny telefonon is
  kirajzolódik. A kezdőlap forgatás és ablak-átméretezés után is a mostani elrendezést követi (eddig a telefonos
  nézetből hiányoztak a legutóbbi keresések, a szélesen pedig kétszer látszottak). Telefonon a portfólió-értesítés
  a Portfólió fület nyitja meg (eddig a keresés fülére került egy második portfólió-oldal). A közelgő események a
  kedvencek változását is követik, a „Mind” és a naptár-export akkor is elérhető, ha 30 napon belül nincs
  esemény, és az éjfél előtt betöltött tegnapi esemény nem „ma”. Keskeny képernyőn, nagy betűvel a távollét
  riasztás-sora, a mentett elemzés sora és az osztalék-esemény sora sem csordul túl.

## Portfólió-felület: egy huszonhatodik kódátnézés javításai

- **0.2.280**: a „Minden tranzakció” listából javított vétel nem alkalmazza kétszer a részvényfelaprózást (eddig
  egy változatlan mentés is tízszeresére növelte a pozíciót egy 10:1-es felaprózás után). A vétel, eladás és
  javítás ablaka érti az ezres tagolást („1,500” angolul, „12.500” magyarul), és a nyelv tizedesjelével tölti ki a
  mezőket; a nagyon kis árak (0,00012 USD) előtöltése sem kerekít le. Egy vétel nem javítható a belőle már eladott
  mennyiség alá (új hibaüzenet, 120 nyelven). A felaprózás törlése és visszavonása (az importé is) a részvény
  árfolyam-riasztásait is visszaállítja. A bejelentett, jövőbeli osztalék nem számít bele az idei kapott
  osztalékba, az évenkénti összegbe és az adóbevalláshoz készülő CSV-be. Az osztalék kézi felvételénél a beírt
  (birtokolt) részvény pénzneme és számlája jön, nem az összesítés pénzneme. A szektor- és országmegoszlás új
  részvény vétele vagy importja után is frissül, és a még el nem ért cél nem mutat 100%-ot.

## Szerver: riasztások, levelek, indítás – egy huszonötödik kódátnézés javításai

- **0.2.279**: egy riasztásfigyelő kör közben feltöltött hibás szinkroncsomag nem állítja le a szervert (eddig
  kezeletlen hiba volt), és a többi fiók riasztásai is kimennek. A riasztás-e-mailek sorba kerülnek, és csak
  sikeres küldés után törlődnek: egy levelezőhiba (pl. 429) után a következő kör újra próbálja, a küldések
  között szünet van. A levelező hívásai 20 másodperc után feladják, így egy elakadt hívás sem állítja meg végleg
  a figyelést. A riasztás-e-mail egy kattintással leiratkozható (`List-Unsubscribe`), az appban a Riasztások
  oldalon kapcsolható vissza. A nem amerikai, Twelve Data-árazott papírok (pl. OTP.BD) riasztásai a szerveren is
  teljesülnek. A valódi HTTP-szerveren a darabolt (hossz nélküli) kérések nem adnak 500-at. Ismeretlen
  `VERIFY_MODE` (pl. `STORE`) esetén a szerver nem indul el, ahelyett hogy minden vásárlást elfogadna, és az üresen
  hagyott környezeti változó az alapértéket kapja (üres `DATABASE_PATH` eddig ideiglenes adatbázist jelentett).
  Újratelepítéskor a szerver befejezi a futó kéréseket és rendben lezárja az adatbázist. A sebességkorlátozó a
  régi bejegyzéseit takarítja, a két napnál régebbi belépőkódok törlődnek, és új indexek gyorsítják a kódok és a
  használati napló lekérdezését.

## Részvényoldal, listák, összehasonlítás: egy huszonnegyedik kódátnézés javításai

- **0.2.278**: töltés közben a „Portfólióhoz adás” vagy a riasztás gombjára kétszer koppintva nem nyílik két ablak
  (mindkettő mentett volna). Cégprofil nélküli papírnál (ETF, sok nem amerikai részvény) a vétel pénzneme a
  meglévő pozícióé, majd a tőzsdéé (pl. `OTP.BD` → HUF), nem automatikusan dollár. A lehúzásos frissítés nem
  cseréli egész oldalas töltésjelzőre a részvényoldalt, és megmarad a választott grafikon-időszak. A telefonos és
  a széles elrendezés közti váltás (tablet forgatása, ablak átméretezése) nem zárja be a portfólió, a riasztások
  vagy a beállítások fülén megnyitott oldalt. A kedvencek visszavonása csak a levett részvényt teszi vissza a
  régi helyére (a közben felvett kedvenc megmarad), a saját listáról levett részvény is a régi helyére kerül, és
  egy egész lista törlése visszavonható. A foglalt listanevet a névablak jelzi és nyitva marad, a listakorlátot
  üzenet jelzi (2 új szöveg, 120 nyelven). A teljes kedvenclista félóránként és előtérbe kerüléskor frissül, egy
  sikertelen lekérés nem marad „n/a”. A részvényoldalról nyitott összehasonlításban is megnyitható egy oszlop
  részvénye, és a be nem tölthető ticker oszlopa „n/a” jelzést kap.

## Nyilvános weboldalak: egy huszonharmadik kódátnézés javításai

- **0.2.277**: ha a `PUBLIC_URL` perjellel végződik, a megosztási, leiratkozó és fizetési linkek sem lesznek
  `//s/…` alakúak (eddig 404-et adtak). A böngésző nyelve szerint változó oldalak `Vary: Accept-Language` fejlécet
  küldenek, így egy köztes gyorsítótár nem az első látogató nyelvét adja mindenkinek. Az admin JSON-végponton is
  él a kulcstalálgatás korlátja, a válasz nem gyorsítótárazható, és a hibás admin-űrlap nem okoz szerverhibát. Az
  előfizetés kezeléséből (lemondás, kártyacsere) visszatérve semleges oldal jön, nem „Sikeres fizetés”. A
  kérésnapló nem írja ki a leiratkozó tokent és a megosztás azonosítóját. Ha az adatforrás nem válaszol, az üres
  részvényoldal nem kerül nyilvános gyorsítótárba, és egy percig nem kérdezzük újra. A nyitóoldal og:url-je
  megtartja a nyelvet, az indexelt oldalak kanonikus linket kapnak, és az ismeretlen részvény oldala nem a lejárt
  megosztás szövegét mutatja.

## Árfolyamok és a részvényoldal kártyái: egy huszonkettedik kódátnézés javításai

- **0.2.276**: a megjelenítési pénznem váltása a részvényoldal fejlécében azonnal látszik, és betöltés közben
  sem kerül a régi árfolyam az új pénznem címkéje alá. Az euróövezet országaiban (pl. Írország, Málta, angol
  nyelvű felülettel Németország) és Bulgáriában (2026-tól euró) az alapértelmezett pénznem az euró; a tárolt
  bolgár leva euróra vált. A pennyben (GBp, GBX), centben (ZAc) és agórában (ILA) jegyzett árak a fő pénznem
  századaként váltódnak (eddig a font árfolyamával, százszoros értékkel, vagy egyáltalán nem). A kezdőképernyő
  kedvencei félóránként és előtérbe kerüléskor frissülnek, egy sikertelen lekérés nem marad „n/a”. A részvényoldal
  gyorsjelentés-, bennfentes- és társcég-adatait görgetéskor nem kéri le újra (10 percig megmarad). A nagyon kis
  árfolyam (1 IDR = 0,00005 GBP) a fordítottjával jelenik meg, nem 0,0000-ként.

## Fiók, belépés, meghívó: egy huszonegyedik kódátnézés javításai

- **0.2.275**: aki beváltott egy ajánlókódot, annak a szinkron többé nem hiúsul meg 409-cel (a beváltás
  ellenőrzése tévedésből a feltöltésbe is bekerült). Ha a fiók törlésekor a helyi adatok megtartását választja,
  és utána másik e-mail-címmel lép be, a megtartott portfólió nem törlődik, hanem első belépésként összefésül. A
  zárt előzetesben a ki- és bejelentkezés nem fogyasztja el a meghívó eszközhelyeit (a beolvadt és a törölt fiók
  felszabadítja). A kijelentkezés annak az eszköznek a tokenjét is visszavonja, amelyen a fiók indult. Egy közben
  futó fiókfrissítés nem írja felül a be- vagy kijelentkezést, és kijelentkezéskor hálózat nélkül sem marad a
  fizetős csomag a készüléken. A fiók törlése után ugyanazzal a postafiókkal nem váltható be újra ajánlókód. Más
  IP-ről érkező kérések nem zárhatják ki a cím gazdáját a belépőkódokból, és az ajánló- és tesztelői kódok
  találgatása korlátozott. A helyi adatok törlése a begépelt keresési leírásokat és az értesítések nyomait is
  törli. Az ajánló kártya belépés után az új fiók kódját mutatja. Az értesítések és a reggeli összefoglaló nyelve
  a készülék teljes nyelvlistájából jön, ugyanúgy, mint a felületé. A bejelentkezési lap bezárása kódküldés
  közben nem okoz hibát. A szerver a portfólió-kép megosztását és a tömeges stop-loss beállítást is számolja, és
  egy teli hibacsomagból kimaradt hiba a következőben elmegy.

## Hírek és napi összefoglaló: egy huszadik kódátnézés javításai

- **0.2.274**: a napi összefoglaló már csak a ténylegesen megjelent gyorsjelentés eredményét írja „friss
  eredménynek”. Eddig a jelentés napján, zárás után jelentő cégnél reggel az előző negyedév számait mutatta be
  frissként, a tegnap jelentő cégnél pedig semmit, mert a múltbeli dátum kiesett a listából. A jelentés napja most
  újralekérés után is megmarad két napig. A „Miért mozog ma?” magyarázat kulcsa a New York-i kereskedési nap és a
  mozgás nagysága: közép-európai éjfél után nem kér újat ugyanarra a mozgásra, és ha a +3%-ból +8% lesz, nem a
  reggeli magyarázatot adja. Az összefoglalóba részvényenként a saját hírei kerülnek, a több részvényt érintő közös
  hír mindegyikhez. Egy már futó hírfrissítést az összefoglaló megvár, nem üres hírekből készül. A reggeli
  összefoglaló hétvégén és ünnepnap után nem ismétli ugyanazokat a számokat, nyelvváltás után az új nyelven
  készül, és az értesítés első mondata nem szakad meg az „U.S.” pontjánál. Hálózat nélkül a távollét-összefoglaló
  nem a gyorsítótár régi árából számol, és nem írja felül vele a pillanatképet. A kezdőképernyő piaci sávja és
  hírei nyitva hagyva is frissülnek (félóránként és előtérbe kerüléskor). A helyi adatok törlése az
  AI-utánanézéseket, a kérdezz-vissza beszélgetéseket és a távollét-pillanatképet is törli. A naplenyomat
  műveleti sorrendje javítva (eddig sok szövegnek azonos lenyomata lehetett).

## AI-jelentés, kérdések, megosztás: egy tizenkilencedik kódátnézés javításai

- **0.2.273**: belépéskor nem hiúsul meg a fiók-összevonás, ha ugyanazt az elemzést mindkét fiókból
  megosztották. Eddig 500-as hiba lett, félig összevont fiókkal, és a névtelen fiók linkje a fiók törlése után is
  élt. Az összevonás most egy tranzakcióban fut. A jelentés napján este (a megjelenés után) készült elemzés nem
  kap azonnal „új eredmények” jelzést. Eddig a frissen kifizetett elemzés el volt rejtve, és a „frissítés”
  újra levont. A sikertelen válasz nem fogyasztja a napi kérdéskeretet, egy már megosztott elemzés a napi
  korlát után is újra megosztható, és a nyilvános oldal nem vág ketté egy emojit. A megosztott kép a rendszer
  nagyobb betűméretén sem veszíti el a láblécét és a „nem befektetési tanács” sort. Az elemzés kérdés-előzménye
  és a 6 kérdéses keret nem indul újra a lemezről betöltött példánynál. Nyelvváltás után a nyitott
  részvényoldal és a portfólió-elemzés kártyája sem mutatja a régi nyelvű elemzést. A helyi adatok törlése
  közben futó elemzés nem íródik vissza, és teli tárnál a legrégebbi elemzések helyet adnak az újnak. Az azonos
  árú kulcsszintek nem okoznak hibát. Az elemzés címébe és a „legvalószínűbb okba” nem kerül az olvasó saját
  pozíciója és jegyzete (ezek nyilvánosan megoszthatók; prompt v2.6).

## Részvényoldali számok és formázás: egy tizennyolcadik kódátnézés javításai

- **0.2.272**: a hozamok és a grafikon időszakai naptári napokban és években számolnak. Eddig a nyári
  időszámítás váltásakor egy nappal elcsúsztak (az 1 hetes hozam 5,56% volt 4,59% helyett), az 5 éves pedig
  nem pontosan 5 év volt. Az idei hozam az év első kereskedési napja előtt nem a tavalyi teljes év. Jobbról
  balra író nyelveken (arab, perzsa, héber, urdu…) az előjeles szám egy egységként jelenik meg (eddig „5%+”), az
  52 hetes sáv és a grafikon dátumai nem tükröződnek rossz oldalra. Az S&P-összevetés egy amerikai ünnepnapon
  az előző, nem a következő napi zárót használja. A tömör szám a kerekítés után vált egységet (999 999 → „1,00M”,
  nem „1 000,00K”), nincs „-0,00%” (és piros „-0,0%” nyereség sem), a tört darabszám nem kap felesleges
  nullákat, és a 0,00001 darab sem látszik nullának. A „Mi lett volna, ha…” nagy összegnél is pontos, a grafikon
  tengelyfeliratai a látható sávhoz igazított tizedesekkel jelennek meg (45,10–45,60 nem „46 / 45 / 45”), az RSI
  egy tizedessel (a 29,6 nem „30 · túladott”).

## Portfólió-számítások: egy tizenhetedik kódátnézés javításai

- **0.2.271**: a vételnél korábbi napra rögzített eladás nem tűnik el (pl. a ma felvett meglévő tétel mellé
  egy tavaszi eladás). Eddig a darabszám és a realizált eredmény úgy maradt, mintha az eladás meg sem
  történt volna. Egy felaprózás előtti napra felvett tranzakció is a mai (igazított) számokkal értendő, mint
  a javítása, a listák, az eladási korlát és a kitöltött ár (eddig a felvétel a kötjegy szerinti
  számokat várta, így egy ilyen eladás kétszer igazodott). Az
  újrasúlyozási terv nem javasol 100%-os eladást vagy vételt egy ár nélküli pozíció miatt. Az index
  története (5 év) előtti vételnél nem jelenik meg félrevezető „+150 százalékpont” összevetés. A
  bekerülési osztalékhozam a mai darabszámra arányosít (egy azóta eladott rész osztaléka nem növeli). Egy
  felaprózás a részvény árriasztásait is az új egységbe viszi (eddig a követő stop azonnal szólt). A mai
  eredmény a ma vett részvényt a vételi árától, a ma eladottat az eladási áráig méri. A realizált
  nyereség CSV-je a felaprózás előtti eladást a kötjegy szerinti darabbal és árral mutatja. Az éves
  összesítő nem nyílik egy csak jövőre bejelentett osztalékot tartalmazó üres évre, és február 29-én sem
  marad ki egy március 1-jei osztalék. Ismert, nem javított: egy ticker különböző pénznemű tételei (CSV-ből)
  átváltás nélkül adódnak össze, és a várható következő osztalék az utolsó kifizetés összege.

## Fiók-szinkron: egy tizenhatodik kódátnézés javításai

- **0.2.270**: egy eszközön másik fiókba belépve az előző fiók adatai (tranzakciók, jegyzetek, riasztások) nem
  kerülnek át az újba. Eddig összefésülte őket, és a szerver a másik fiók címére küldte a riasztásokat. A
  készülék az új fiók adatait veszi át, üres fióknál üresen indul. Egy új eszköz alapértékei nem írják felül
  a fiók e-mail-beállításait (riasztás, heti összefoglaló). A célarányok törlése is szinkronizálódik, és az
  újabb beállítás nyer (eddig egy összefésülés visszahozta a régit). A letöltött adat egy lépésben cserélődik,
  így a közben tett helyi változás nem vész el, és nem marad feltöltetlen. A sikertelen szinkron magától újra
  próbálkozik (30 mp-től 30 percig ritkulva), futás közben 15 percenként és előtérbe kerüléskor is
  szinkronizál. A törölt, majd újra létrehozott listába egy régi eszköz nem hozza vissza a régi tagokat. Egy
  nagy import visszavonása után sem jön vissza tétel (5000 törlési jelzés fér el, a szerveren 2 MB a
  csomag). A riasztások sorrendje nem fordul meg minden szinkronnál. Ismert, nem javított: egy régebbi
  eszközön végzett tickerváltás visszahozhat egy közben másutt törölt tranzakciót.

## Számlázás és keretek: egy tizenötödik kódátnézés javításai

- **0.2.269**: a szerver minden sikeres elemzés-választ levon. Eddig a kliens által kért kis `max_tokens`
  vagy egy `pause_turn` ingyen adta a részeredményt. A hosszkorláton megszakadt, visszatérített válasz szöveg
  nélkül megy ki. A szünetelt (`pause_turn`) elemzés egyszer kerül pénzbe, a folytatásai egy jellel
  ingyenesek, egy meghiúsult folytatás az egészet visszaadja (a jelet még nem küldő régebbi app folytatása is
  felismerve). Ugyanannak az elemzésnek az ismétlése (pl. időtúllépés után) nem von le újra, és egy
  szerver-újraindításkor félbemaradt elemzés foglalása visszajár. Fióktörlés és visszaállítás után egy
  elhasznált csomag nem írható jóvá újra, és az előfizetés időszaka nem indul újra. Egy másik élő fiókon
  visszaállított előfizetés átkerül (a megújítás is oda megy). A tesztelői kód csomagja akkor is lejár, ha
  közben csomagot vett a fiók. Belépéskor az átkerülő előfizetés kifizetett időszaka is átkerül. A Stripe
  éves csomagja akkor is egy évre szól, ha a számla a fizetés előtt érkezik. Az elhasznált, majd visszatérített
  csomag tartozást hagy, amit a következő vásárlás fedez. A Google Playen lemondott, de még kifizetett
  előfizetés is elfogadva. Az e-mailes regisztráció is az IP-nkénti próbaidő-korlát alá esik, egy postafiók
  más alakban (`név+1@`) nem válthat be újra ajánlói kódot. Az appban az elutasított vásárlás nem „sikeres”,
  a zárt előzetes meghívókód-hibája nem dobja el a bizonylatot, a bolti vásárlás csak a bizonylat mentése után
  zárul le, és a kifizetett időszakon túl nem látszik új keret.

## Asztali app és háttér: egy tizennegyedik kódátnézés javításai

- **0.2.268**: Windowson egyszerre csak egy WhatStock fut: az újbóli indítás a tálcán rejtőző ablakot hozza elő
  (eddig egy második példány indult, minden értesítés kétszer jött, és a két példány felülírta egymás mentett
  adatait). A gyorssáv nem bontja le a főablak navigációját (a megnyitott részvény megmarad), a tálca
  „Portfólió” pontja a gyorssávból is működik. macOS-en az előző futás értesítésére kattintva is megnyílik a
  részvény (eddig csak akkor, ha ebben a futásban már ment értesítés). A portfólió napi mozgása és célja, a
  reggeli összefoglaló és az osztalék-emlékeztető értesítése is megnyitja a hozzá tartozó oldalt. Egy késve
  érkező 401-es válasz nem hoz létre második névtelen fiókot (második próbaidőt, elveszett vásárlás-ellenőrzést).
  A hibásan beírt meghívókód nem mentődik el (eddig minden további kéréssel ment, és a szerver egy óra után
  kizárta az IP-címet); a túl sok próbálkozás és a kapcsolati hiba saját üzenetet kap. A Sparkle/WinSparkle
  frissítésnél a „Letöltés…” jelző nem ragad be, és a kézi ellenőrzés mindig indul. Egy sérült tárolt érték (pl.
  a gyorsbillentyűé) nem nullázza le az összes beállítást (kedvenceket, hozzájárulást). Az első indításkor
  félbehagyott bevezető a következő indításkor újra megjelenik. A tálcamenü nem mutat régebbi kedvenclistát egy
  lassabb frissítés miatt, és nyelvváltáskor azonnal az új nyelven jelenik meg.

## Képfelismerés és keresés: egy tizenharmadik kódátnézés javításai

- **0.2.267**: a felismert nem amerikai részvény a piaci adatok tickerével nyílik meg (OTP + Budapest → OTP.BD,
  Toyota → 7203.T, Siemens → SIE.DE; eddig adat nélküli oldal, és a hibás ticker a kedvencekbe is bekerült). A
  Windows-vágólap képernyőfotója (BMP) is felismerhető (eddig mindig hibás volt), a kép típusa a fájl tartalmából
  jön (az iPhone HEIC-je, a TIFF, az Androidon átméretezett PNG nem megy rossz címkével), és asztali gépen, a
  vágólapról is kicsinyítve megy fel (a nagy képernyőfotó eddig „HTTP 413”-at adott); az olvashatatlan képre
  külön üzenet szól. Sűrű képernyőfotónál (30–40 sor) sem szakad meg a felismerés: legfeljebb 10 jelölt és
  rövidebb átirat, nagyobb válaszkeret. Az előfizetés hiánya és a túl sok kérés a saját üzenetével jelenik meg
  („HTTP 402” és „nincs találat” helyett), 120 nyelven. A gyorskereső és a gyorssáv egy meg nem fejtett leírást
  nem nyit meg tickerként (és nem teszi a legutóbbiak közé), a kereső hibája után is megkérdezi az AI-t; a `$AAPL`
  és a `7203.T` alak tickerként megy. A gyorssávban a Ctrl+V szöveget is beilleszt (eddig csak képet), és a
  vágólap hibája sem marad kezeletlen. Az azonos tickerű jelöltek összevonva, a sémától eltérő válasz nem okoz
  típushibát. A csak tesztben használt, pontatlan `TickerExtractor` kikerült.

## Kedvencek, listák, összehasonlítás, mentés: egy tizenkettedik kódátnézés javításai

- **0.2.266**: a mentésből való visszaállítás valóban nem töröl semmit. A mentés törlési jelzései (a mentést készítő
  eszközön levett kedvenc, törölt lista, levett listatag, törölt tétel, riasztás, jegyzet) nem viszik el a most
  meglévőt. A mostani jegyzet, készpénz és cél marad, a mentés csak a hiányzót pótolja, az eltérő mentett jegyzet a
  mostani alá kerül. A hibás típusú mezőt tartalmazó fájl egészében elutasítva, üzenettel (eddig félig íródott be,
  üzenet nélkül), a furcsa értékek (szám azonosító, hiányzó dátum) nem okoznak hibát, a kisbetűs tickerek nem
  duplázódnak. A 20 feletti listák sem vesznek el összefésüléskor (a korlát csak új listára vonatkozik).
  Összehasonlításban az adósságmentes cég (0 adósság/saját tőke) nyer, holtversenyben nincs kiemelés. A
  tickerbeillesztés idézőjeles CSV-ből, „Apple (AAPL)” alakból, „AAPL: 10” sorokból és mondatból is kiolvassa a
  tickereket (a közönséges szavak nélkül). Az utolsó kedvenc levétele után is elérhetők a saját listák. A
  jegyzet és a listanév hossza karakterre számít (az emodzsis jegyzet nem vágódik meg, az emodzsis név nem
  utasítódik el csendben). A rendezés stabil (a betöltetlen sorok a saját sorrendben maradnak).

## AI-elemzés: egy tizenegyedik kódátnézés javításai

- **0.2.263**: a sémától eltérő válasz (a forrás URL-szövegként, a bekezdés szövegként a lista helyett) nem okoz
  összeomlást: ami értelmezhető, bekerül, ha semmi, a javító kör fut (eddig típushiba, javítás nélkül, a keretből
  levonva); nyelvváltás után a régi nyelvű elemzés a memóriából sem jön vissza, és új készül; a szöveg rövidítése
  nem vág ketté emojit (az API elutasította volna a kérést); az „új eredmények jelentek meg” jelzés a jelentés
  napján 22:00 UTC-től (Ázsiában és Ausztráliában eddig a megjelenés előtt jelzett); két egyszerre futó
  utánanézés nem írja felül egymás mentett eredményét; a válaszban csak a keresés utáni szöveg marad (a „Utánanézek…”
  bevezető nem ragad hozzá); a csak hónappal megadott esemény a helyén van az időrendben; a sikertelen
  utánanézés nem okoz kezeletlen hibát (eddig minden hálózati hiba összeomlásként ment a telemetriába); a szerver
  a hosszkorláton megszakadt elemzést nem vonja le a keretből.
- **0.2.264**: a hosszkorláton megszakadt elemzés nem mentődik teljesként (eddig a javító kör üres részekkel
  „kiegészítette”): külön hibaüzenet kéri az újrapróbálást, és jelzi, hogy a keretből nem vont le – 120 nyelven.

## Piaci adatok és offline gyorsítótár: egy tizedik kódátnézés javításai

- **0.2.262**: az offline-sáv a részvény oldalán akkor is látszik, ha csak egy része (pl. az ár) jött a mentett
  adatból (eddig egy másik adat sikeres letöltése eltüntette); az 1 éves és az 5 éves árfolyam-történet külön
  mentődik (offline az 5 éves diagramon eddig az 1 éves adat látszhatott); a diagram időszakának változása
  ugyanattól a záróártól számít, mint a hozamsáv (ünnepnap után a tényleges előző zárástól); a napi gyertyák
  naptári napok (Amerikában eddig egy nappal korábbi dátum, és a vételek jelölése eltűnhetett a diagram
  végéről); az AI-elemzésnek küldött idei hozam az előző év utolsó záróárától számít (mint a képernyőn), a
  dátumok időzóna-eltolás nélkül; az S&P 500 összevetés sikertelen betöltése kikapcsol, és újrapróbálható;
  az árfolyam-riasztás csak az élesítés utáni árra szól (a hálózati hibánál mentett régebbi ár nem süti el – az
  appban és a szerveren is).

## Szerver: heti levél, megosztás, belépés – egy kilencedik kódátnézés javításai

- **0.2.261**: a fióktörlés nem törli a másik fél ajánlási sorát (eddig egy eldobható ajánló törlésével a meghívott
  újra és újra beválthatott egy kódot – korlátlan extra elemzés); a belépés előtti névtelen eszközön készült
  megosztások és használati napló az összevont fiókkal együtt törlődnek; a hibás kódok korlátja kérőnként (IP) és
  címenként számít, így egy idegen nem zárhatja ki a cím gazdáját, és IP-nként óránként legfeljebb 20 kód kérhető;
  a levelező hibaüzenete nem megy ki a kérőnek; a heti levél: az adat nélküli fiók nem éli fel minden körben a
  keretet (eddig a mögötte állók sosem kapták meg), a keretbe nem férő fiók a következő körre marad (nem csonkítva),
  küldés előtt a friss adatból dönt (közben törölt fióknak, kikapcsolt levélnek nem megy), és egykattintásos
  leiratkozó link került bele (`List-Unsubscribe` fejléccel; a link megerősítő oldalt ad, a leiratkozás a gombbal);
  a lejárt megosztás képe sem érhető el; a túl mélyen egymásba ágyazott szinkron-csomag 400 (nem 500); a
  telemetria napi sója véletlen és csak a memóriában van (a felhasználók listájából nem számolható vissza); a nem
  szöveges e-mail vagy kód nem okoz szerverhibát.

## Események, naptár, osztalék-előrejelzés: egy nyolcadik kódátnézés javításai

- **0.2.260**: a „holnap / N nap múlva” az óraátállítás körül is pontos (a tavaszi napon eddig egy nappal
  kevesebbet mutatott; a napi összefoglaló is a holnapi jelentést hitte megjelentnek); a naptárexport azonosítója
  a pontosított nap mellett is állandó (gyorsjelentés: negyedév, várható osztalék: hónap és pénznem), és két
  pénznemű sorozat nem ütközik; a jövőre rögzített (bejelentett) osztalék maga a következő kifizetés (pontos
  összeggel, az Eseményekben is; emlékeztető nélkül, mert már rögzítve van), és nem számít bele az idei és az
  összes kapott osztalékba, sem az éves összesítőbe; a 12 havi osztalék nem számolja kétszer az éves kifizetést;
  az árfolyam 12 óráig marad meg a lekéréstől (eddig az ECB-nap szerint akár 3,5 napig, ünnep után pedig
  egyáltalán nem); egyedi kulcsok a két pénznemű osztalék-soroknak.
- **0.2.265**: a heti levél „Várható osztalékok” része is a bejelentett (jövőre rögzített) kifizetést mutatja a
  pontos összeggel, mint az app.

## Riasztások és értesítések: egy hetedik kódátnézés javításai

- **0.2.259**: a gyorsjelentés-eredmény értesítése csak az emlékeztetéskor ismertnél újabb negyedévről szól (egy
  bank két héttel a negyedév vége után jelent – eddig a jelentés napján az előző negyedévet küldte „újként”, és a
  valódit már nem); a portfólió-mozgás riasztás egy kereskedési napról egyszer szól (másnap hajnalban nem ismétli
  a tegnapit, és a valódi mai mozgás nem vész el); a napi mozgás riasztás csak az élesítés utáni kötésre szól
  (hétvégén létrehozva nem süt el a pénteki mozgásra – az appban és a szerver e-mailjében sem); a szerver
  riasztásfigyelője 200 ticker fölött körbeforog, és szünetet tart a lekérések között; az e-mailes riasztás és a
  heti összefoglaló kapcsolójánál a később állított nyer (egy másik eszköz nem kapcsolja vissza); az ár betöltése
  alatt szerkesztett riasztást az új beállítás szerint ítéli meg; induláskor az első ellenőrzés az első szinkron
  után fut (a szerver által már elküldött riasztás nem szól újra); a követő stop szerkesztésekor a csúcs megmarad;
  a kulcsszintből készült riasztás a friss árral dönt fölé/alá; a napi mozgás riasztás árszintre váltva megkapja
  a részvény pénznemét.

## Webes változat

- **0.2.258**: a webes változat fő fájlja 16,7 MB helyett 5,3 MB – a 120 nyelv szövegei külön, igény szerint
  töltődnek (csak a választott nyelv, 50–200 KB); induláskor a saját nyelv előre betöltődik, így nincs üres első
  képkocka (a szövegirány-delegate eddig minden platformon egy képkockányi késést okozott – javítva); az
  értesítések szövegei is az előre betöltött nyelvből jönnek, nyelvváltáskor újratöltve.

## Import: egy hatodik kódátnézés javításai

- **0.2.257**: az Interactive Brokers teljes kimutatása akkor is beolvasódik, ha a „Trades” szakasz előtt sok más
  szakasz van (eddig a 30. sor után nem kereste); csak a részvény-megbízások számítanak (a devizaváltás és a
  lezárt tételek részletezése nem vétel – eddig az is bekerült), és az eszközfajtánként ismételt fejlécet is
  követi; az osztalék forrásadója naponként egyszer, arányosan vonódik le (két osztalék- és két adósor egy
  napon eddig kétszer); az „Osztalékadó”, „Forrásadó”, „Dividendensteuer”, „Dividend Tax” sor adó, nem osztalék;
  ezres tagolás a vesszővel tagolt fájlban („1,000”, „£1,234”) és a tizedesvesszős pontosvesszős fájlban
  („1.000”); a könyvelési zárójel („(10)”) és a tipográfiai mínusz negatív; kétjegyű év („3/14/25”), a nem
  létező nap („2025-02-30”) nem dátum; a bróker felaprózás-sora kihagyottként jelzett (kézzel rögzíthető); a
  Scalable befizetése nem „kihagyott sor”; a képernyőképes importban a hiányos sort a teljes váltja, és a „-”
  nem ticker.

## Szerver: számlázás és keretek (biztonsági átnézés)

- **0.2.249**: az elemzés kerete a továbbítás előtt, atomian foglalódik (párhuzamos kérések nem költhetik el kétszer
  ugyanazt, a közben jóváírt vásárlás nem vész el), sikertelen vagy félbemaradt válasznál visszajár; a `stream` kérés
  nem tesz ingyenessé egy elemzést; értelmezhetetlen kérés 400, 8 MB-os méretkorlát; csak az app által használt
  béta-funkció megy tovább; a kérdés és a segédhívás csomagot, élő próbaidőt vagy extra elemzést kér; a próbaidő
  IP-korlátja nem kerülhető meg hamis továbbítási fejléccel; a tesztelői kód újra beváltva nem indul újra; a bolti
  értesítések átjutnak a meghívó-kapun; bejelentkezéskor a névtelen fiók fizetős csomagja és vásárlásai átköltöznek
  (nem másolódnak), a régi token érvénytelen.
- **0.2.250**: az előfizetés a kifizetett időszak végén (+3 nap türelmi idő) megszűnik, ha nem jött megújítás – a bolt
  (App Store `expiresDate`, Google Play `expiryTime`) és a Stripe (számla-időszak) szerint; a havi keret a bolt
  időszakához igazodik (nem a 30. napon, majd a megújításkor újra), évesnél havonta gördül. Stripe: élő előfizetés mellé
  nem indul második, a megszűnés és a módosítás csak a tárolt előfizetésre és státusz szerint hat (egy késve érkező
  esemény sem éleszt újra), a késleltetett fizetés csak beérkezéskor ír jóvá, a visszatérítés és a vitatott terhelés
  visszavonja a csomagot. Ajánlói kód: csak e-mailes fiókkal váltható be, és legfeljebb a felső határig. A törölt fiók
  még fizetett bolti előfizetése új fiókhoz köthető; a megosztott válasz kulcsa a kérés tartalmából is számolódik
  (saját kérdéssel nem írható felül). Az app a szerveren még nem ellenőrzött vásárlást megjegyzi, és indításkor újra
  elküldi (hálózati hiba után sem vész el a megvett csomag). A belépőkód napi korlátja: címenként legfeljebb 10 kód
  és 15 hibás próbálkozás naponta (a 6 jegyű kód így nem találgatható ki).
- **0.2.251–0.2.252**: az ajánlói kód új hibaüzenetei (belépés kell, a kód betelt) 120 nyelven; böngészős fizetésnél
  élő előfizetés mellett a csomagváltás a Stripe portálon nyílik meg (nem indul második előfizetés), és az app figyeli,
  mikor érvényes az új csomag.
- **0.2.253** (szerver-biztonság, második átnézés): a kérés törzse útvonalanként korlátos (1 MB, a képes AI-kéréseknél
  8 MB, megosztásnál 2 MB), darabolt küldésnél is; új névtelen fiók IP-címenként óránként legfeljebb 20; a piaci proxy
  csak az app által használt Finnhub-végpontokat engedi, felhasználónként korlátos, időkorláttal, és az árfolyamot 30
  másodpercig közösen tárolja; az AI-kérésből csak az ismert mezők mennek tovább (más modellre váltó `fallbacks`,
  hosszabb gyorsítótár nem); a segédhívás próbaidőben az olcsóbb modellel és kisebb napi kerettel megy, nagy kimenetet
  csak egy friss elemzés javítása kérhet; a telemetria csak ismert platformot és szabályos verziót fogad, napi
  korláttal; megosztani csak jogosultsággal lehet; a hibás admin-kulcs és meghívókód IP-címenként korlátozott.

## Portfólió-cél értesítés

- **0.2.253**: amikor a portfólió összértéke eléri a kitűzött célt, egyszer asztali értesítés jön („10 000 000 Ft-os
  cél elérve · A portfóliód most 10 250 000 Ft értékű”); új célnál újra, hétvégén is (a napi mozgás-riasztástól
  függetlenül).

## Bolti „Újdonságok” (rövid)

**Magyar:** Import hat további brókertől (DEGIRO, Schwab, Fidelity, Robinhood, Scalable Capital, Lightyear –
egy koppintással visszavonható), előnézet vétel és eladás előtt (új átlagár, várható realizált eredmény), idei
hozam az indexhez mérve, távolság a riasztásig, jegyzet a tranzakcióhoz; számlák (pl. TBSZ) és jutalék, éves
összesítő az adóbevalláshoz, Excelben rögtön megnyitható CSV-export – mind 120 nyelven.

**English:** Imports from six more brokers (DEGIRO, Schwab, Fidelity, Robinhood, Scalable Capital, Lightyear –
undo in one tap), a preview before you buy or sell (new average cost, expected realized gain), this year's return
next to an index, how far each alert is from firing, a note on every trade; accounts and fees, an annual summary
for your tax return, CSV exports that open straight in Excel – all in 120 languages.
