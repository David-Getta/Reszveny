// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Fotózz le egy részvényt, és tudj meg róla mindent.';

  @override
  String get homeHint =>
      'Részvényigazolás, brókerapp képernyője, újság vagy céglogó – bármi, ami azonosít egy részvényt.';

  @override
  String get takePhoto => 'Fotó készítése';

  @override
  String get chooseFromGallery => 'Választás a galériából';

  @override
  String get chooseImage => 'Kép kiválasztása';

  @override
  String get enterTickerManually => 'Ticker megadása kézzel';

  @override
  String get tickerInputLabel => 'Ticker szimbólum';

  @override
  String get tickerInputHint => 'pl. AAPL';

  @override
  String get lookUp => 'Keresés';

  @override
  String demoModeBanner(String symbols) {
    return 'Demó mód – nincs beállítva piaci adatkulcs. Mintaadatok elérhetők: $symbols.';
  }

  @override
  String get recognizing => 'A kép elemzése…';

  @override
  String get loadingData => 'Adatok betöltése…';

  @override
  String get noCandidatesTitle => 'Nem ismertünk fel részvényt';

  @override
  String get noCandidatesBody =>
      'Nem sikerült részvényt azonosítani a képen. Próbálj élesebb fotót, vagy add meg a tickert kézzel.';

  @override
  String get whatWeSaw => 'Amit láttunk';

  @override
  String get chooseCandidateTitle => 'Melyik részvényre gondoltál?';

  @override
  String confidencePercent(int percent) {
    return '$percent% bizonyosság';
  }

  @override
  String get settings => 'Beállítások';

  @override
  String get language => 'Nyelv';

  @override
  String get systemLanguage => 'Rendszer alapértelmezése';

  @override
  String get about => 'Névjegy';

  @override
  String get disclaimer =>
      'Az alkalmazás csak tájékoztató jellegű, nem minősül befektetési tanácsadásnak. Az adatok késhetnek vagy pontatlanok lehetnek.';

  @override
  String dataSource(String source) {
    return 'Adatforrás: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Felismerés: $source';
  }

  @override
  String get retry => 'Újra';

  @override
  String get cancel => 'Mégse';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Bezárás';

  @override
  String get errorGeneric => 'Hiba történt.';

  @override
  String get errorSectionUnavailable =>
      'Ezt a szakaszt nem sikerült betölteni.';

  @override
  String get notAvailable => 'n/a';

  @override
  String get sectionIdentity => 'Azonosítás';

  @override
  String get sectionPrice => 'Árfolyam';

  @override
  String get sectionValuation => 'Értékeltség';

  @override
  String get sectionFinancials => 'Pénzügyi adatok';

  @override
  String get sectionDividend => 'Osztalék';

  @override
  String get sectionProfile => 'Cégprofil';

  @override
  String get sectionAnalysts => 'Elemzői ajánlások';

  @override
  String get sectionNews => 'Hírek';

  @override
  String get sectionRecognition => 'A felismerés részletei';

  @override
  String get labelSymbol => 'Ticker';

  @override
  String get labelExchange => 'Tőzsde';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Pénznem';

  @override
  String get labelCountry => 'Ország';

  @override
  String get labelIndustry => 'Iparág';

  @override
  String get labelSector => 'Szektor';

  @override
  String get labelWebsite => 'Weboldal';

  @override
  String get labelIpoDate => 'IPO dátuma';

  @override
  String get labelMarketCap => 'Piaci kapitalizáció';

  @override
  String get labelSharesOutstanding => 'Forgalomban lévő részvények';

  @override
  String get labelEmployees => 'Alkalmazottak';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Székhely';

  @override
  String get labelDescription => 'Leírás';

  @override
  String get labelLastPrice => 'Utolsó árfolyam';

  @override
  String get labelChange => 'Változás';

  @override
  String get labelOpen => 'Nyitó';

  @override
  String get labelDayHigh => 'Napi maximum';

  @override
  String get labelDayLow => 'Napi minimum';

  @override
  String get labelPreviousClose => 'Előző záró';

  @override
  String get labelWeek52High => '52 hetes maximum';

  @override
  String get labelWeek52Low => '52 hetes minimum';

  @override
  String get labelAverageVolume10d => 'Átl. forgalom (10 nap)';

  @override
  String updatedAt(String time) {
    return 'Frissítve: $time';
  }

  @override
  String get labelPeTrailing => 'P/E (visszatekintő)';

  @override
  String get labelPeForward => 'P/E (előretekintő)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / szabad cash flow';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Béta';

  @override
  String get labelRevenueTtm => 'Árbevétel (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nettó eredmény (TTM)';

  @override
  String get labelGrossMargin => 'Bruttó árrés';

  @override
  String get labelOperatingMargin => 'Működési árrés';

  @override
  String get labelNetMargin => 'Nettó árrés';

  @override
  String get labelRoe => 'Sajáttőke-arányos megtérülés';

  @override
  String get labelRoa => 'Eszközarányos megtérülés';

  @override
  String get labelDebtToEquity => 'Adósság / saját tőke';

  @override
  String get labelCurrentRatio => 'Likviditási ráta';

  @override
  String get labelRevenueGrowth => 'Árbevétel-növekedés (YoY)';

  @override
  String get labelEpsGrowth => 'EPS-növekedés (YoY)';

  @override
  String get labelDividendYield => 'Osztalékhozam';

  @override
  String get labelDividendPerShare => 'Egy részvényre jutó osztalék';

  @override
  String get labelPayoutRatio => 'Kifizetési arány';

  @override
  String get labelYieldOnCost => 'Bekerülési osztalékhozam';

  @override
  String get labelDividendGrowth5y => 'Osztaléknövekedés (5 év)';

  @override
  String get dividendNone => 'Az elmúlt 12 hónapban nem fizetett osztalékot.';

  @override
  String get dividendOnYourShares => 'A te részvényeidre, évente';

  @override
  String get labelConsensus => 'Konszenzus';

  @override
  String get ratingStrongBuy => 'Erős vétel';

  @override
  String get ratingBuy => 'Vétel';

  @override
  String get ratingHold => 'Tartás';

  @override
  String get ratingSell => 'Eladás';

  @override
  String get ratingStrongSell => 'Erős eladás';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elemző',
      one: '1 elemző',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Időszak: $period';
  }

  @override
  String get noNews => 'Nincsenek friss hírek.';

  @override
  String get openArticle => 'Cikk megnyitása';

  @override
  String get openLinkFailed => 'A hivatkozást nem sikerült megnyitni.';

  @override
  String get recognitionSummary => 'Összegzés';

  @override
  String get recognitionEvidence => 'Miért gondoljuk így';

  @override
  String get recognitionRawText => 'A képről beolvasott szöveg';

  @override
  String get errMissingAnthropicKey =>
      'A képfelismerés nincs beállítva (nincs ANTHROPIC_API_KEY). Add meg a tickert kézzel.';

  @override
  String get errRecognitionUnreachable =>
      'A felismerő szolgáltatás nem érhető el. Ellenőrizd az internetkapcsolatot.';

  @override
  String errRecognitionHttp(String status) {
    return 'A felismerő szolgáltatás hibát adott vissza (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'A felismerő szolgáltatás nem tudta feldolgozni ezt a képet.';

  @override
  String get errRecognitionTruncated =>
      'A felismerés válasza megszakadt. Kérlek, próbáld újra.';

  @override
  String get errRecognitionBadResponse =>
      'Váratlan válasz érkezett a felismerő szolgáltatástól.';

  @override
  String get errRecognitionEmpty =>
      'A felismerő szolgáltatás üres választ adott.';

  @override
  String get errMissingFinnhubKey =>
      'A piaci adatok nincsenek beállítva (nincs FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'A piaci adatszolgáltatás nem érhető el. Ellenőrizd az internetkapcsolatot.';

  @override
  String get errMarketRateLimited =>
      'Túl sok kérés a piaci adatszolgáltatás felé. Kérlek, várj egy percet.';

  @override
  String errMarketHttp(String status) {
    return 'A piaci adatszolgáltatás hibát adott vissza (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Váratlan válasz érkezett a piaci adatszolgáltatástól.';

  @override
  String errNoQuote(String symbol) {
    return 'Nem található árfolyamadat: $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nem található cégprofil: $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'A demó mód csak ezeket támogatja: $symbols. Élő adatokhoz adj meg egy FINNHUB_API_KEY-t.';
  }

  @override
  String errUnknown(String detail) {
    return 'Hiba történt: $detail';
  }

  @override
  String get newSearch => 'Új keresés';

  @override
  String get recentSearches => 'Legutóbbiak';

  @override
  String get noRecentSearches => 'Még nincsenek korábbi keresések.';

  @override
  String get clearRecent => 'Legutóbbiak törlése';

  @override
  String get greeting => 'Melyik részvényt nézzük meg?';

  @override
  String get searchHint => 'Ticker vagy cégnév';

  @override
  String get attachImage => 'Kép csatolása';

  @override
  String get searchResultsTitle => 'Keresési találatok';

  @override
  String errNoResults(String query) {
    return 'Nincs találat a „$query” kifejezésre.';
  }

  @override
  String get quickBarHint => 'Írj be egy tickert vagy cégnevet…';

  @override
  String get openFullWindow => 'Ablak megnyitása';

  @override
  String hotkeyHint(String shortcut) {
    return 'Nyomd le bárhol a $shortcut billentyűkombinációt, és előugrik a WhatStock.';
  }

  @override
  String get trayOpen => 'WhatStock megnyitása';

  @override
  String get trayQuickSearch => 'Gyorskeresés';

  @override
  String get trayQuit => 'Kilépés';

  @override
  String get appearance => 'Megjelenés';

  @override
  String get themeSystem => 'Rendszer';

  @override
  String get themeDark => 'Sötét';

  @override
  String get themeLight => 'Világos';

  @override
  String get back => 'Vissza';

  @override
  String get aiSectionTitle => 'AI-elemzés';

  @override
  String get aiIntro =>
      'Részletes, AI által írt áttekintés: a friss hírek összefoglalója, az üzleti modell, az erősségek, a kockázatok és a rejtett tényezők, az értékeltség, egy árfolyam-kilátás pszichológiai, szociológiai, technikai és makro szempontú szcenáriókkal, valamint hogy mire érdemes figyelni.';

  @override
  String get aiGenerate => 'Elemzés készítése';

  @override
  String get aiRegenerate => 'Újragenerálás';

  @override
  String get aiGenerating =>
      'Az elemzés készül… ez egy-két percet is igénybe vehet.';

  @override
  String get aiSources => 'Források';

  @override
  String aiGeneratedAt(String time) {
    return 'Készült: $time';
  }

  @override
  String get aiDisclaimer =>
      'AI által készített elemzés nyilvános adatok és friss hírek alapján. Hibákat tartalmazhat vagy elavult lehet, és nem minősül befektetési tanácsadásnak.';

  @override
  String get errAiNotConfigured =>
      'Az AI-elemzés nincs beállítva (nincs ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Az AI-szolgáltatás nem érhető el. Ellenőrizd az internetkapcsolatot.';

  @override
  String errAiHttp(String status) {
    return 'Az AI-szolgáltatás hibát adott vissza (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Az AI-szolgáltatás nem vállalta ennek a részvénynek az elemzését.';

  @override
  String get errAiBadResponse =>
      'Váratlan válasz érkezett az AI-szolgáltatástól.';

  @override
  String get sectionChart => 'Árfolyamgrafikon';

  @override
  String get rangeOneWeek => '1H';

  @override
  String get rangeOneMonth => '1Hó';

  @override
  String get rangeThreeMonths => '3Hó';

  @override
  String get rangeOneYear => '1É';

  @override
  String get rangeFiveYears => '5É';

  @override
  String get chartUnavailable =>
      'Az árfolyamtörténet nem érhető el a jelenlegi adatforrásból.';

  @override
  String get sectionStatements => 'Pénzügyi kimutatások (éves)';

  @override
  String get labelFiscalYear => 'Pénzügyi év';

  @override
  String get labelRevenue => 'Árbevétel';

  @override
  String get labelNetIncome => 'Nettó eredmény';

  @override
  String get labelTotalAssets => 'Összes eszköz';

  @override
  String get labelTotalLiabilities => 'Összes kötelezettség';

  @override
  String get labelEquity => 'Saját tőke';

  @override
  String get labelOperatingCashFlow => 'Működési cash flow';

  @override
  String get statementsUnavailable =>
      'Ehhez a részvényhez nem érhetők el közzétett pénzügyi kimutatások.';

  @override
  String get launchAtLogin => 'Indítás bejelentkezéskor';

  @override
  String get hotkeyLabel => 'Globális gyorsbillentyű';

  @override
  String get hotkeyRecordHint =>
      'Kattints ide, majd nyomd le az új billentyűkombinációt';

  @override
  String get hotkeyReset => 'Alapértelmezés visszaállítása';

  @override
  String get pasteImage => 'Kép beillesztése a vágólapról';

  @override
  String get errClipboardNoImage => 'A vágólapon nincs kép.';

  @override
  String get favorites => 'Kedvencek';

  @override
  String get addToFavorites => 'Hozzáadás a kedvencekhez';

  @override
  String get removeFromFavorites => 'Eltávolítás a kedvencek közül';

  @override
  String get noFavorites =>
      'Még nincsenek kedvencek. Koppints egy részvény csillagjára a hozzáadáshoz.';

  @override
  String get displayCurrency => 'Megjelenítési pénznem';

  @override
  String get displayCurrencyNone => 'Csak a részvény saját pénzneme';

  @override
  String labelConverted(String currency) {
    return '≈ átváltva: $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Árfolyam: 1 $from = $rate $to (EKB, $date)';
  }

  @override
  String get updates => 'Frissítések';

  @override
  String currentVersion(String version) {
    return '$version verzió';
  }

  @override
  String get autoUpdate => 'Frissítések automatikus telepítése';

  @override
  String get checkForUpdates => 'Frissítések keresése';

  @override
  String get updateChecking => 'Frissítések keresése…';

  @override
  String get updateUpToDate => 'A legújabb verziót használod.';

  @override
  String updateAvailable(String version) {
    return 'Elérhető a $version verzió.';
  }

  @override
  String get updateDownloading => 'A frissítés letöltése a háttérben…';

  @override
  String get updateDownloaded =>
      'A frissítés készen áll. A telepítéshez indítsd újra az alkalmazást.';

  @override
  String get updateNow => 'Frissítés';

  @override
  String get restartNow => 'Újraindítás';

  @override
  String get updatesViaStore =>
      'A frissítések automatikusan érkeznek az alkalmazásboltból.';

  @override
  String get updateCheckFailed => 'Nem sikerült frissítéseket keresni.';

  @override
  String get subscription => 'Előfizetés';

  @override
  String get planTrial => 'Próbaidő';

  @override
  String get planNormal => 'Normál';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Nincs aktív csomag';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count elemzés havonta';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days napos ingyenes próbaidő $count elemzéssel';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days nap van hátra a próbaidőből',
      one: '1 nap van hátra a próbaidőből',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Az ingyenes próbaidő lejárt. Válassz csomagot, hogy tovább elemezhess.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining / $total elemzés maradt ebben az időszakban';
  }

  @override
  String extraCredits(int count) {
    return '$count extra elemzés';
  }

  @override
  String renewsOn(String date) {
    return 'Megújul: $date';
  }

  @override
  String get choosePlan => 'Válassz csomagot';

  @override
  String get currentPlan => 'Jelenlegi csomag';

  @override
  String get subscribe => 'Előfizetek';

  @override
  String get perMonth => '/ hó';

  @override
  String get extraPacksTitle =>
      'Többre van szükséged? Vásárolj extra elemzéseket';

  @override
  String get extraPacksHint =>
      'Az extra elemzések nem járnak le, és a havi keret kimerülése után használódnak fel.';

  @override
  String get buy => 'Vásárlás';

  @override
  String get restorePurchases => 'Vásárlások visszaállítása';

  @override
  String get manageSubscription => 'Előfizetés kezelése';

  @override
  String get purchaseSuccess => 'Köszönjük! A vásárlásod aktív.';

  @override
  String get purchasePending => 'A vásárlás folyamatban…';

  @override
  String get purchaseFailed => 'A vásárlást nem sikerült befejezni.';

  @override
  String get purchaseCanceled => 'A vásárlás megszakítva.';

  @override
  String get billingUnavailable =>
      'Ezen a platformon még nem lehet vásárolni. Fizess elő a telefonodon vagy Macen; a csomagod minden eszközön működni fog.';

  @override
  String get errQuotaExceeded =>
      'Ebben az időszakban nem maradt több elemzésed. Válts nagyobb csomagra, vagy vásárolj extra elemzéseket.';

  @override
  String get errTrialExpired =>
      'Az ingyenes próbaidő lejárt. Válassz csomagot a folytatáshoz.';

  @override
  String get errNoPlan => 'Az AI-elemzéshez aktív csomag szükséges.';

  @override
  String get viewPlans => 'Csomagok megtekintése';

  @override
  String get usageTitle => 'Felhasználás';

  @override
  String get demoPurchaseNote =>
      'Demó számlázás: ezen a platformon a vásárlások csak szimuláltak.';

  @override
  String get mostPopular => 'Legnépszerűbb';

  @override
  String get bestValue => 'Legjobb ár-érték';

  @override
  String get planFeaturesCommon =>
      'A fotófelismerés, az élő adatok, a grafikonok, a kedvencek és mind a 120 nyelv minden csomagban benne van. A keret az AI-elemzésekre vonatkozik.';

  @override
  String get searchLanguages => 'Nyelv keresése…';

  @override
  String get noLanguageMatch => 'Nincs találat a nyelvek között.';

  @override
  String get aiSettings => 'AI-elemzés';

  @override
  String get aiLength => 'Hossz';

  @override
  String get aiDepthBrief => 'Rövid';

  @override
  String get aiDepthStandard => 'Alap';

  @override
  String get aiDepthDeep => 'Részletes';

  @override
  String get aiDepthBriefDesc => 'A lényeg, gyorsan.';

  @override
  String get aiDepthStandardDesc => 'Teljes elemzés minden szakasszal.';

  @override
  String get aiDepthDeepDesc =>
      'Több webkeresés, versenytárs-összevetés, mélyebb részletek.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Kb. $min–$max szó';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elemzést fogyaszt',
      one: '1 elemzést fogyaszt',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Olvasói szint';

  @override
  String get aiReaderBeginner => 'Kezdő';

  @override
  String get aiReaderExperienced => 'Tapasztalt';

  @override
  String get aiReaderBeginnerDesc =>
      'Közérthető nyelv, minden szakkifejezés megmagyarázva.';

  @override
  String get aiReaderExperiencedDesc =>
      'Tömörebb szöveg, szokásos pénzügyi szakkifejezésekkel.';

  @override
  String get aiCounterArgument => 'Legerősebb ellenérv';

  @override
  String get aiCounterArgumentDesc =>
      'Az összefoglaló mindig a saját következtetésével szembeni legerősebb érvvel zárul.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Elemzésenként legfeljebb $count webkeresés a csomagoddal',
      one: 'Elemzésenként legfeljebb 1 webkeresés a csomagoddal',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Alap hossznál csomagonként: Normál $normal, Pro $pro, Max $max, Ultra $ultra. A rövid 2-vel kevesebbet, a részletes 2-vel többet kap.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'legfeljebb $count webkeresés',
      one: 'legfeljebb 1 webkeresés',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count webkeresés elemzésenként',
      one: '1 webkeresés elemzésenként',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Ehhez a hosszhoz $needed elemzés kell, de csak $left maradt. Válassz rövidebbet a Beállításokban, vagy vásárolj még elemzést.';
  }

  @override
  String get outlookMarketMood => 'Piaci hangulat';

  @override
  String get moodVeryPessimistic => 'Nagyon pesszimista';

  @override
  String get moodPessimistic => 'Pesszimista';

  @override
  String get moodNeutral => 'Semleges';

  @override
  String get moodOptimistic => 'Optimista';

  @override
  String get moodVeryOptimistic => 'Nagyon optimista';

  @override
  String get scenarioBull => 'Optimista forgatókönyv';

  @override
  String get scenarioBase => 'Alapforgatókönyv';

  @override
  String get scenarioBear => 'Pesszimista forgatókönyv';

  @override
  String outlookCurrentPrice(String price) {
    return 'Jelenlegi ár: $price';
  }

  @override
  String get outlookKeyLevels => 'Kulcsszintek';

  @override
  String get keyLevelSupport => 'Támasz';

  @override
  String get keyLevelResistance => 'Ellenállás';

  @override
  String get keyLevelAnchor => 'Horgony';

  @override
  String get upcomingEvents => 'Közelgő események';

  @override
  String get outlookChartNote =>
      'Tájékoztató sávok; a valószínűségek durva becslések, nem előrejelzések.';

  @override
  String get accountTitle => 'Fiók';

  @override
  String get signIn => 'Bejelentkezés';

  @override
  String get signOut => 'Kijelentkezés';

  @override
  String get notSignedIn => 'Nincs bejelentkezve';

  @override
  String get accountBenefit =>
      'Jelentkezz be, hogy az előfizetésed minden eszközödön működjön.';

  @override
  String get accountSyncedNote =>
      'Az előfizetésed és a hátralévő elemzéseid minden eszközön ugyanazok.';

  @override
  String get signInTitle => 'Bejelentkezés a WhatStockba';

  @override
  String get emailLabel => 'E-mail-cím';

  @override
  String get continueWithEmail => 'Folytatás e-maillel';

  @override
  String codeSentTo(String email) {
    return 'Küldtünk egy 6 jegyű kódot a(z) $email címre. 10 percig érvényes.';
  }

  @override
  String get codeLabel => 'Belépőkód';

  @override
  String get resendCode => 'Új kód küldése';

  @override
  String get useDifferentEmail => 'Másik e-mail-cím';

  @override
  String get errInvalidCode => 'A kód hibás vagy lejárt.';

  @override
  String get errInvalidEmail => 'Adj meg egy érvényes e-mail-címet.';

  @override
  String get errSignInFailed =>
      'A bejelentkezés nem sikerült. Ellenőrizd a kapcsolatot, és próbáld újra.';

  @override
  String get checkoutWaiting =>
      'Fejezd be a fizetést a böngészőben. Az app automatikusan frissül, amint kész.';

  @override
  String get paymentViaStripe =>
      'Biztonságos fizetés a böngészőben, Stripe-on keresztül. Bármikor lemondható.';

  @override
  String get paymentViaStore =>
      'A számlázás az App Store- vagy Google Play-fiókodon keresztül történik. Bármikor lemondható a bolt beállításaiban.';

  @override
  String get keySpace => 'Szóköz';

  @override
  String get doubleOptionTitle => 'Dupla Option-nyomás';

  @override
  String get doubleOptionSubtitle =>
      'Az Option gomb kétszeri gyors lenyomása is előhozza a WhatStockot.';

  @override
  String get doubleOptionPermission =>
      'Hogy más appokban is működjön, engedélyezd a WhatStockot a Rendszerbeállítások → Adatvédelem és biztonság → Bemenetfigyelés alatt, majd nyisd meg újra az appot.';

  @override
  String get openSystemSettings => 'Rendszerbeállítások megnyitása';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Nyomd le bárhol a $shortcut billentyűkombinációt, vagy nyomd meg kétszer az Option gombot, és előugrik a WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Legvalószínűbb';

  @override
  String get longTermToday => 'Ma';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years év',
      one: '1 év',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return 'évi $range';
  }

  @override
  String longTermLikely(String price) {
    return 'legvalószínűbb: $price';
  }

  @override
  String get confidenceLow => 'Alacsony bizonyosság';

  @override
  String get confidenceMedium => 'Közepes bizonyosság';

  @override
  String get confidenceHigh => 'Magas bizonyosság';

  @override
  String get longTermNote =>
      'A hosszú távú sávok a megadott feltevéseken alapulnak, és az idővel tágulnak. Az árak osztalék nélkül értendők. Durva becslések, nem előrejelzések.';

  @override
  String get portfolio => 'Portfólió';

  @override
  String get portfolioEmpty =>
      'Még üres. Nyiss meg egy részvényt, és koppints a „Hozzáadás a portfólióhoz” gombra, hogy kövesd, amid van.';

  @override
  String get portfolioLocalNote =>
      'Ezen a készüléken marad, és a fiókodban, ha be vagy jelentkezve. Az összesítés ECB-árfolyamon számol; az árak késhetnek.';

  @override
  String get addToPortfolio => 'Hozzáadás a portfólióhoz';

  @override
  String portfolioAddTitle(String symbol) {
    return '$symbol hozzáadása';
  }

  @override
  String get portfolioQuantity => 'Darabszám';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Darabonkénti ár ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Vétel dátuma';

  @override
  String get portfolioAdd => 'Hozzáadás';

  @override
  String get portfolioInvalidNumber => 'Nullánál nagyobb számot adj meg.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol hozzáadva a portfólióhoz.';
  }

  @override
  String get portfolioTotalValue => 'Összérték';

  @override
  String get portfolioToday => 'Ma';

  @override
  String get portfolioGainLoss => 'Nyereség/veszteség';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Idei osztalék: $amount';
  }

  @override
  String get portfolioInvested => 'Befektetve';

  @override
  String get portfolioAllocation => 'Megoszlás';

  @override
  String get portfolioPositions => 'Pozíciók';

  @override
  String portfolioAvgCost(String price) {
    return 'átlagár $price';
  }

  @override
  String get portfolioYourPosition => 'A pozícióm';

  @override
  String get portfolioPurchases => 'Vételek';

  @override
  String get portfolioRemove => 'Törlés';

  @override
  String get portfolioExcluded =>
      'Az ár vagy árfolyam nélküli pozíciók kimaradnak az összesítésből.';

  @override
  String get priceAlerts => 'Árfolyam-riasztások';

  @override
  String get setPriceAlert => 'Árfolyam-riasztás beállítása';

  @override
  String alertDialogTitle(String symbol) {
    return 'Árfolyam-riasztás · $symbol';
  }

  @override
  String get alertKindAbove => 'Emelkedik e fölé';

  @override
  String get alertKindBelow => 'Esik e alá';

  @override
  String get alertKindMove => 'Nagyot mozdul egy nap alatt';

  @override
  String alertTargetPrice(String currency) {
    return 'Ár ($currency)';
  }

  @override
  String get alertMovePercent => 'Napi elmozdulás (%)';

  @override
  String get alertAlreadyMet => 'Az ár már túl van ezen a szinten.';

  @override
  String get alertSave => 'Riasztás beállítása';

  @override
  String alertCreated(String symbol) {
    return 'Riasztás beállítva: $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Még nincs riasztás. Nyiss meg egy részvényt, és koppints a csengőre.';

  @override
  String get alertsNote =>
      'A WhatStock 5 percenként ellenőrzi a riasztásokat, amíg fut. Számítógépen a menüsorban vagy a tálcán fut tovább; telefonon egyelőre akkor jelez, amikor az app nyitva van.';

  @override
  String alertDescAbove(String price) {
    return '$price fölött';
  }

  @override
  String alertDescBelow(String price) {
    return '$price alatt';
  }

  @override
  String alertDescMove(String percent) {
    return 'Napi ±$percent elmozdulás';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Teljesült: $date, $price áron';
  }

  @override
  String get alertRearm => 'Újraélesítés';

  @override
  String get alertDelete => 'Törlés';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol $price fölé emelkedett';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol $price alá esett';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol ma $percent mozdult';
  }

  @override
  String alertHitBody(String price) {
    return 'Jelenlegi ár: $price';
  }

  @override
  String get alertOpen => 'Megnyitás';

  @override
  String get keepInTrayTitle => 'Fusson tovább az ablak bezárása után is';

  @override
  String get keepInTraySubtitle =>
      'A WhatStock a menüsorban vagy a tálcán marad, így a gyorsbillentyű és az árfolyam-riasztás is működik.';

  @override
  String get termsOfUse => 'Felhasználási feltételek';

  @override
  String get privacyPolicy => 'Adatkezelési tájékoztató';

  @override
  String get subscriptionLegal =>
      'Az előfizetés havonta automatikusan megújul, amíg le nem mondod. Az előfizetéssel elfogadod a Felhasználási feltételeket és az Adatkezelési tájékoztatót.';

  @override
  String get deleteAccount => 'Fiók törlése';

  @override
  String get deleteAccountTitle => 'Törlöd a fiókodat?';

  @override
  String get deleteAccountBody =>
      'A fiókod és minden, amit a szerveren tárolunk (e-mail, keret, használat), véglegesen törlődik, a fel nem használt elemzések elvesznek. A böngészőben fizetett előfizetést azonnal lemondjuk; az App Store-os vagy Google Play-es előfizetést a bolt beállításaiban kell lemondanod.';

  @override
  String get deleteLocalData =>
      'A készüléken tárolt adataim törlése is (portfólió, riasztások, kedvencek, előzmények, elmentett elemzések)';

  @override
  String get deleteAccountConfirm => 'Végleges törlés';

  @override
  String get accountDeleted => 'A fiókodat töröltük.';

  @override
  String get errDeleteAccount =>
      'A fiókot nem sikerült törölni. Ellenőrizd a kapcsolatot, és próbáld újra.';

  @override
  String get aiTrialBriefNote =>
      'A próbaidős elemzések rövidek, és egy gyorsabb AI-modell készíti őket. Csomaggal a legerősebb AI-unk dolgozik, több webkereséssel, és választhatod az alap és a részletes hosszt is.';

  @override
  String get billingMonthly => 'Havi';

  @override
  String get billingYearly => 'Éves';

  @override
  String get yearlyDiscount => '2 hónap ingyen';

  @override
  String get perYear => '/ év';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price havonta';
  }

  @override
  String get subscriptionLegalYearly =>
      'Az éves előfizetés évente automatikusan megújul, amíg le nem mondod. Az előfizetéssel elfogadod a Felhasználási feltételeket és az Adatkezelési tájékoztatót.';

  @override
  String get myAnalyses => 'Elemzéseim';

  @override
  String get navAlerts => 'Riasztások';

  @override
  String get inviteTitle => 'Zárt előzetes';

  @override
  String get inviteBody =>
      'A WhatStock egyelőre csak meghívással használható. Írd be a kapott meghívókódot.';

  @override
  String get inviteCodeLabel => 'Meghívókód';

  @override
  String get inviteContinue => 'Tovább';

  @override
  String get inviteInvalid => 'Ez a meghívókód nem érvényes.';

  @override
  String get inviteExpired =>
      'Ez a meghívó lejárt. Kérj új kódot attól, aki meghívott.';

  @override
  String get inviteDeviceLimit =>
      'Ezt a meghívókódot már a megengedett számú eszközön használják.';

  @override
  String get previewConfidential => 'Bizalmas előzetes';

  @override
  String get errPreviewDailyLimit =>
      'Ennek az előzetesnek a mai elemzéskerete elfogyott. Próbáld újra holnap.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count órája',
      one: '1 órája',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count napja',
      one: '1 napja',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Frissítsük az elemzést?';

  @override
  String staleBody(String age) {
    return 'Ez az elemzés $age készült. Azóta változhatott az árfolyam, és lehetnek új hírek vagy eredmények.';
  }

  @override
  String get staleKeep => 'A korábbi megnézése';

  @override
  String get staleRefresh => 'Új elemzés';

  @override
  String seeAll(int count) {
    return 'Mind ($count)';
  }

  @override
  String get searchAnalyses => 'Keresés az elemzéseid között';

  @override
  String get deleteAnalysis => 'Törlés';

  @override
  String analysisDeleted(String symbol) {
    return '$symbol elemzés törölve';
  }

  @override
  String get keyLevelAlertHint =>
      'Koppints egy szintre, és szólunk, ha az árfolyam eléri.';

  @override
  String get shareAnalysisTitle => 'Elemzés megosztása';

  @override
  String get shareAsImage => 'Megosztás képként';

  @override
  String get shareAsText => 'Megosztás szövegként';

  @override
  String get shareCardFooter => 'WhatStockkal készült';

  @override
  String get shareCardDisclaimer => 'AI-elemzés · nem befektetési tanács';

  @override
  String get referralTitle => 'Hívd meg a barátaidat';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra elemzést',
      one: '1 extra elemzést',
    );
    return 'Oszd meg a kódodat. A barátod azonnal kap $_temp0, te pedig ugyanennyit az első elemzése után.';
  }

  @override
  String get referralYourCode => 'A kódod';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Meghívtál: $invited · Jutalom: $rewarded';
  }

  @override
  String get referralHaveCode => 'Van kódod egy barátodtól?';

  @override
  String get referralRedeem => 'Beváltás';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra elemzést kaptál. Üdv a WhatStockban!',
      one: '1 extra elemzést kaptál. Üdv a WhatStockban!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Ilyen kód nincs. Ellenőrizd, és próbáld újra.';

  @override
  String get referralErrOwn => 'A saját kódodat nem válthatod be.';

  @override
  String get referralErrAlready => 'Már beváltottad egy barátod kódját.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra elemzést',
      one: '1 extra elemzést',
    );
    return 'A WhatStockkal elemzem a részvényeket: lefotózod, és az AI elmagyarázza. A $code kóddal kapsz $_temp0.';
  }

  @override
  String get referralCopied => 'Kód kimásolva';

  @override
  String get onboardTitle1 => 'Fotózz le egy részvényt';

  @override
  String get onboardBody1 =>
      'Elég egy brókerapp képernyője, egy újságcikk vagy egy céglogó: a WhatStock felismeri a részvényt, és megmutatja az árfolyamot, a grafikont és a fontos számokat.';

  @override
  String get onboardTitle2 => 'Percek alatt átlátod';

  @override
  String get onboardBody2 =>
      'Az AI-elemzés elmagyarázza, mi mozgatja a részvényt, mik a kockázatok, mennyit ér, és három forgatókönyvet ad arra, merre mehet az ár – forrásokkal, a te nyelveden.';

  @override
  String get onboardTitle3 => 'Mindig képben leszel';

  @override
  String get onboardBody3 =>
      'A kedvencek, a portfóliód és az árfolyam-riasztások szólnak, ha történik valami. Az elemzéseid a készülékeden maradnak, bármikor újra megnyithatod őket.';

  @override
  String get onboardNext => 'Tovább';

  @override
  String get onboardStart => 'Kezdjük';

  @override
  String get onboardSkip => 'Kihagyás';

  @override
  String changesTitle(String date) {
    return 'Az előző elemzés óta ($date)';
  }

  @override
  String get changesPrice => 'Árfolyam';

  @override
  String get changesNoMajor => 'A kilátások érdemben nem változtak.';

  @override
  String get changesPreviousSummary => 'Az előző elemzés lényege';

  @override
  String get telemetryTitle => 'Segíts jobbá tenni a WhatStockot';

  @override
  String get telemetryBody =>
      'Névtelen használati statisztika és hibajelentés küldése: mely funkciókat használod, és mi romlott el. A részvényeidet, elemzéseidet és személyes adataidat soha nem küldjük. Bármikor módosíthatod a beállításokban.';

  @override
  String get telemetryAllow => 'Engedélyezem';

  @override
  String get telemetryDecline => 'Nem, köszönöm';

  @override
  String get telemetrySetting => 'Névtelen statisztika és hibajelentés';

  @override
  String get telemetrySettingHint =>
      'Milyen gyakran használod az egyes funkciókat, és a hibajelentések – személyes adatok, keresések és elemzések tartalma nélkül.';

  @override
  String get askButton => 'Kérdezz az elemzésről';

  @override
  String askTitle(String symbol) {
    return 'Kérdések: $symbol';
  }

  @override
  String get askIntro =>
      'Kérdezz bármit az elemzésről: mit jelent egy kockázat, mi változtatná meg a kilátásokat, hogyan jött ki egy szám. A válaszok erre az elemzésre épülnek, és nem befektetési tanácsok.';

  @override
  String get askHint => 'Írd be a kérdésed…';

  @override
  String get askSend => 'Küldés';

  @override
  String get askThinking => 'Gondolkodom…';

  @override
  String get askSuggest1 => 'Mi a legnagyobb kockázat?';

  @override
  String get askSuggest2 => 'Mi változtatná meg a kilátásokat?';

  @override
  String get askSuggest3 => 'Magyarázd el egyszerűen';

  @override
  String get askMaxReached =>
      'Ez volt az utolsó kérdés ehhez az elemzéshez. Újabb kérdésekhez készíts új elemzést.';

  @override
  String get errAskLimit =>
      'Elérted a mai kérdéskeretet. Holnap újra kérdezhetsz.';

  @override
  String get eventTomorrow => 'Holnap';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days nap múlva',
      one: '1 nap múlva',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Negyedéves gyorsjelentés';

  @override
  String get eventBeforeOpen => 'nyitás előtt';

  @override
  String get eventAfterClose => 'zárás után';

  @override
  String eventEpsEstimate(String value) {
    return 'Várt EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Az elemzésedből';

  @override
  String get eventDividend => 'Várható osztalék';

  @override
  String get eventDividendEstimate => 'A rögzített kifizetéseidből becsülve';

  @override
  String get eventsHint =>
      'A kedvenceid és a portfóliód részvényeinek gyorsjelentései a következő 90 napban, az elemzéseidben megjelölt dátumos események, és a rögzített kifizetéseid alapján várható osztalékok.';

  @override
  String get eventsEmpty =>
      'A következő 90 napban nincs dátumos esemény. Adj hozzá kedvenceket vagy portfólió-tételeket, és itt látod a gyorsjelentéseik dátumát; a rögzített osztalékokból a várható következő kifizetés is ide kerül.';

  @override
  String get compareTitle => 'Összehasonlítás';

  @override
  String get compareAdd => 'Részvény hozzáadása';

  @override
  String get compareRemove => 'Eltávolítás';

  @override
  String get compareTickerHint => 'Ticker, pl. MSFT';

  @override
  String get compareHint =>
      'A fő számok egymás mellett; soronként a legjobb érték kiemelve. Az összegek a részvények saját devizájában.';

  @override
  String get compareNoAnalysis => 'Még nincs elemzés';

  @override
  String get portfolioDividends => 'Éves osztalék';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent hozam';
  }

  @override
  String get portfolioDividendNote =>
      'A várható éves osztalék az elmúlt 12 hónapban kifizetett osztalékon alapul; a jövőbeli kifizetés nem garantált.';

  @override
  String positionDividend(String amount) {
    return 'Osztalék: évi $amount';
  }

  @override
  String get chartAvgCost => 'Átlagárad';

  @override
  String get chartAlertLevel => 'Riasztás';

  @override
  String get marketsToday => 'Piacok ma';

  @override
  String get notesTitle => 'Jegyzeteim';

  @override
  String get notesHint => 'Miért vetted meg, mire figyelsz, mi miatt adnád el?';

  @override
  String get notesInfo =>
      'Ezen a készüléken marad, és a fiókodban, ha be vagy jelentkezve. Az AI-elemzés figyelembe veszi a jegyzeteidet.';

  @override
  String notesSaved(String date) {
    return 'Mentve: $date';
  }

  @override
  String get peersTitle => 'Hasonló cégek';

  @override
  String get portfolioExport => 'Exportálás CSV-be';

  @override
  String get portfolioImport => 'Importálás CSV-ből';

  @override
  String get portfolioImportHint =>
      'Soronként egy vétel: ticker, darabszám, ár, pénznem, dátum (ÉÉÉÉ-HH-NN). Az oszlopokat vessző, pontosvessző vagy tabulátor választhatja el; a fejléc elhagyható.';

  @override
  String get portfolioImportButton => 'Importálás';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tranzakció hozzáadva',
      one: '1 tranzakció hozzáadva',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sor kihagyva',
      one: '1 sor kihagyva',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'A portfólió, a kedvencek, az árfolyam-riasztások és a jegyzetek minden eszközödön ugyanazok.';

  @override
  String syncLast(String time) {
    return 'Utolsó szinkron: $time';
  }

  @override
  String get syncNow => 'Szinkron most';

  @override
  String get syncFailed =>
      'A szinkron nem sikerült. Később automatikusan újrapróbálja.';

  @override
  String get alertEmailTitle => 'E-mail, ha egy riasztás teljesül';

  @override
  String get alertEmailOn =>
      'Néhány percenként megnézzük a riasztásaidat, és e-mailben szólunk, akkor is, ha az app nincs megnyitva.';

  @override
  String get alertEmailSignIn =>
      'Lépj be az e-mail-címeddel a beállításokban, és e-mailben is szólunk, akkor is, ha az app nincs megnyitva.';

  @override
  String get portfolioHistory => 'Értékalakulás';

  @override
  String get portfolioReviewTitle => 'AI-portfólióelemzés';

  @override
  String get portfolioReviewIntro =>
      'Az AI átnézi az egész portfóliódat: koncentráció, szektor- és devizakitettség, a részvényeid közös kockázatai és az osztalék. 1 elemzést fogyaszt.';

  @override
  String get portfolioReviewButton => 'Elemezd a portfóliómat';

  @override
  String get portfolioReviewAgain => 'Új elemzés';

  @override
  String get portfolioReviewWorking => 'A portfóliód elemzése folyamatban…';

  @override
  String get digestTitle => 'Heti összefoglaló e-mailben';

  @override
  String get digestHint =>
      'Hétfőnként: hogyan mozogtak a kedvenceid és a portfóliód részvényei az előző héten, és mikor jönnek a gyorsjelentéseik.';

  @override
  String get benchmarkTitle => 'Összevetés az S&P 500-zal';

  @override
  String get benchmarkTitleIndex => 'Összevetés egy indexszel';

  @override
  String get benchmarkHintIndex =>
      'Mintha minden vételed összegét ugyanazon a napon egy, a választott indexet követő alapba tetted volna. Osztalék nélkül; a múltbeli hozam nem jelzi előre a jövőbelit.';

  @override
  String get benchmarkYours => 'A te vételeid';

  @override
  String benchmarkAhead(String points) {
    return '$points százalékponttal jobb az indexnél';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points százalékponttal elmarad az indextől';
  }

  @override
  String get portfolioSell => 'Eladás';

  @override
  String portfolioSellTitle(String symbol) {
    return '$symbol eladása';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Darabonkénti eladási ár ($currency)';
  }

  @override
  String get portfolioSellDate => 'Eladás dátuma';

  @override
  String get portfolioSellAll => 'Mind';

  @override
  String portfolioSellTooMany(String quantity) {
    return '$quantity darabod van';
  }

  @override
  String get portfolioSold => 'Eladva';

  @override
  String get portfolioRealized => 'Realizált';

  @override
  String get portfolioClosed => 'Lezárt pozíciók';

  @override
  String get portfolioClosedNote => 'Minden darabot eladtál';

  @override
  String get portfolioTransactions => 'Tranzakciók';

  @override
  String get portfolioRealizedByYear => 'Realizált nyereség évenként';

  @override
  String get portfolioRealizedHint =>
      'Az eladások a legrégebbi vételeidből fogynak (FIFO), a mai árfolyamon átváltva. Az adóbevalláshoz a brókered kimutatását használd.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Az elemzés óta új gyorsjelentés jelent meg ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Új gyorsjelentés';

  @override
  String get portfolioImportBrokers =>
      'A Revolut, a Trading 212, az Interactive Brokers, a DEGIRO, a Schwab, a Fidelity és a Robinhood exportját is felismeri, az eladásokkal és az osztalékokkal (a forrásadóval csökkentve) együtt; a befizetést kihagyja.';

  @override
  String get portfolioImportFile => 'Fájl kiválasztása';

  @override
  String offlineBanner(String time) {
    return 'Nincs kapcsolat – a legutóbb mentett adatok látszanak ($time).';
  }

  @override
  String get glossMarketCap =>
      'Mennyit ér az egész cég a tőzsdén: árfolyam × részvények száma.';

  @override
  String get glossSharesOutstanding =>
      'Hány részvényt bocsátott ki a cég. Ha nő, egy részvényre kisebb szelet jut; a visszavásárlás csökkenti.';

  @override
  String get glossPeTrailing =>
      'Árfolyam ÷ az elmúlt 12 hónap egy részvényre jutó nyeresége: hány évnyi mostani profitot fizetsz ki. Az alacsonyabb olcsóbb, de a gyorsan növekvő cégeké általában magas.';

  @override
  String get glossPeForward =>
      'Mint a P/E, de az elemzők által a következő 12 hónapra várt profittal. Ha kisebb a múltbelinél, a profit növekedését várják.';

  @override
  String get glossPb =>
      'Árfolyam ÷ egy részvényre jutó könyv szerinti érték (eszközök mínusz tartozások). 1 körül a piac annyit ad a cégért, amennyi papíron a vagyona.';

  @override
  String get glossPs =>
      'Piaci érték ÷ éves árbevétel. Hasznos, ha a cégnek még alig van profitja; ugyanazon az iparágon belül érdemes összevetni.';

  @override
  String get glossEvToFcf =>
      'A cég értéke az adóssággal együtt (EV) ÷ a beruházások után egy év alatt megtermelt készpénz. Az alacsonyabb azt jelenti, hogy több pénzt kapsz az árért.';

  @override
  String get glossPeg =>
      'P/E ÷ várt éves profitnövekedés (%). 1 körül sokan méltányosnak tartják; a P/E-t a növekedéshez méri.';

  @override
  String get glossEps =>
      'Egy részvényre jutó nyereség az elmúlt 12 hónapban. Ha évről évre nő, az az egészséges cég egyik legerősebb jele.';

  @override
  String get glossBeta =>
      'Mennyire mozog együtt a piaccal: 1 = mint a piac, 1,5 = nagyjából másfélszer akkora kilengések, 1 alatt = nyugodtabb.';

  @override
  String get glossRevenueTtm =>
      'Az elmúlt 12 hónap teljes árbevétele, minden költség előtt.';

  @override
  String get glossNetIncomeTtm =>
      'Az elmúlt 12 hónapban minden költség, kamat és adó után megmaradt nyereség.';

  @override
  String get glossGrossMargin =>
      'Az árbevétel mekkora része marad meg a termékek közvetlen költsége után. A magas érték gyakran árazási erőt jelez.';

  @override
  String get glossOperatingMargin =>
      'Az árbevétel mekkora része marad meg a működés (bérek, bérleti díj, marketing) után, kamat és adó előtt.';

  @override
  String get glossNetMargin =>
      'Az árbevétel mekkora része lesz végső nyereség. 20% azt jelenti, hogy minden 100 egység bevételből 20 a profit.';

  @override
  String get glossRoe =>
      'Sajáttőke-arányos megtérülés: éves nyereség ÷ a tulajdonosok tőkéje. Megmutatja, mennyire jól forgatja a vezetés a részvényesek pénzét; kb. 15% fölött erős.';

  @override
  String get glossRoa =>
      'Eszközarányos megtérülés: éves nyereség ÷ a cég összes eszköze. Ugyanazon az iparágon belül érdemes összevetni.';

  @override
  String get glossDebtToEquity =>
      'Adósság ÷ a tulajdonosok tőkéje. A magasabb több kölcsönpénzt jelent: nagyobb kockázat kamatemelésnél vagy lassuláskor.';

  @override
  String get glossCurrentRatio =>
      'Rövid lejáratú eszközök ÷ egy éven belül esedékes tartozások. 1 fölött a cég fedezni tudja a közeli kötelezettségeit.';

  @override
  String get glossRevenueGrowth =>
      'Mennyivel nőtt az árbevétel az egy évvel korábbihoz képest.';

  @override
  String get glossEpsGrowth =>
      'Mennyivel nőtt az egy részvényre jutó nyereség az egy évvel korábbihoz képest.';

  @override
  String get glossDividendYield =>
      'Éves osztalék ÷ árfolyam: évente mennyi készpénzt kapnál a befizetett összeg százalékában.';

  @override
  String get glossDividendPerShare =>
      'Az elmúlt évben egy részvényre kifizetett osztalék.';

  @override
  String get glossPayoutRatio =>
      'A nyereség mekkora részét fizeti ki osztalékként. 100% fölött többet fizet, mint amennyit keres, ami ritkán tartható.';

  @override
  String get portfolioBeta => 'Portfólió-béta';

  @override
  String get glossPortfolioBeta =>
      'A részvényeid bétája az értékükkel súlyozva: nagyjából hány százalékot mozdulnak a részvényeid, ha a piac 1%-ot. 1 fölött nagyobbakat lengenek, mint a piac, 1 alatt kisebbeket. A készpénz nincs benne.';

  @override
  String get portfolioTop3 => 'A 3 legnagyobb pozíció';

  @override
  String get glossPortfolioTop3 =>
      'A részvényeid értékének mekkora része van a három legnagyobb pozíciódban. Minél magasabb, annál jobban fájhat egyetlen cég rossz híre az egész portfóliónak.';

  @override
  String get glossDividendGrowth5y =>
      'Mennyivel nőtt átlagosan évente a részvényenkénti osztalék az elmúlt öt évben. Az egyenletes növekedés általában azt jelzi, hogy a cég bízik a pénztermelésében; a csökkentés gyakran figyelmeztető jel.';

  @override
  String get glossYieldOnCost =>
      'Az elmúlt 12 hónapban kapott osztalék osztva azzal, amennyit a még birtokolt részvényekért fizettél. Az osztalékhozammal ellentétben a saját vételi áradhoz méri, nem a mai árhoz.';

  @override
  String get glossTitle => 'Mit jelent?';

  @override
  String get watchNewsTitle => 'Hírek a részvényeidről';

  @override
  String get undo => 'Visszavonás';

  @override
  String get watchSort => 'Rendezés';

  @override
  String get watchSortOwn => 'Saját sorrend';

  @override
  String get watchSortGainers => 'Legnagyobb emelkedők elöl';

  @override
  String get watchSortLosers => 'Legnagyobb esők elöl';

  @override
  String get watchSortName => 'Ticker szerint (A–Z)';

  @override
  String get watchHint =>
      'A fogantyút húzva átrendezheted, balra húzva törölheted. A vonal az elmúlt 30 napot mutatja.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: elkészült az elemzés.';
  }

  @override
  String alertFromCost(String price) {
    return 'Az átlagos vételárad ($price) alapján:';
  }

  @override
  String get briefTitle => 'A nap a részvényeiddel';

  @override
  String get briefButton => 'Mai összefoglaló';

  @override
  String get briefHint =>
      'Rövid AI-összefoglaló arról, hogyan mozogtak ma a portfóliód és a kedvenceid részvényei, és mit mondanak róluk a friss hírek. Nem fogyaszt elemzést.';

  @override
  String get briefRefresh => 'Frissítés';

  @override
  String get sectionEarnings => 'Gyorsjelentések';

  @override
  String earningsNext(String date) {
    return 'Következő jelentés: $date';
  }

  @override
  String get earningsExpected => 'Várt EPS';

  @override
  String get earningsReported => 'Jelentett EPS';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Az utolsó $total negyedévből $beats alkalommal érte el vagy verte meg a várt EPS-t',
      one:
          '1 negyedévből $beats alkalommal érte el vagy verte meg a várt EPS-t',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol: holnap gyorsjelentés';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol: ma gyorsjelentés';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Ma várható a(z) $symbol osztaléka';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Kb. $amount. Ha megérkezett, rögzítsd a portfóliódban.';
  }

  @override
  String get dividendRemindersTitle => 'Osztalék-emlékeztető';

  @override
  String get dividendRemindersSubtitle =>
      'Értesítés a várható osztalék napján a rögzített kifizetéseid ritmusából, hogy rögzíthesd';

  @override
  String get earningsRemindersTitle => 'Gyorsjelentés-emlékeztető';

  @override
  String get earningsRemindersSubtitle =>
      'Értesítés a kedvenceid és a portfóliód részvényeinek gyorsjelentése előtti napon';

  @override
  String addAllToFavorites(int count) {
    return 'Mind a kedvencekhez ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importálás képernyőképről';

  @override
  String get holdingsReading => 'Pozíciók beolvasása…';

  @override
  String get holdingsReviewTitle => 'Talált pozíciók';

  @override
  String get holdingsReviewHint =>
      'Ellenőrizd a számokat, mielőtt felveszed őket. Az ár az egy részvényre jutó átlagos vételár, nem a mai ár.';

  @override
  String get holdingsNoPrice => 'Nincs átlagos vételár a képen';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozíció felvétele',
      one: '1 pozíció felvétele',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Ezen a képen nem találtunk részvénypozíciót. Próbáld a brókered „Pozícióim” vagy „Portfólió” oldaláról készült képernyőképpel.';

  @override
  String get week52Range => '52 hetes sáv';

  @override
  String week52BelowHigh(String percent) {
    return '$percent-kal az 52 hetes csúcs alatt';
  }

  @override
  String get week52AtHigh => 'Az 52 hetes csúcson';

  @override
  String get alertKindTrailing => 'Esés a csúcsról';

  @override
  String get alertTrailingPercent => 'Esés a csúcsról (%)';

  @override
  String get alertTrailingHint =>
      'Követi az árat felfelé: akkor szól, ha az ár ennyit esik a beállítás óta elért legmagasabb szintjéről.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent esés a csúcsról';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'eddigi csúcs: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol: $percent esés a csúcsról';
  }

  @override
  String get sectionInsiders => 'Bennfentes ügyletek';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vétel',
      one: '1 vétel',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eladás',
      one: '1 eladás',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Nettó: $shares részvény';
  }

  @override
  String get insiderBuy => 'Vett';

  @override
  String get insiderSell => 'Eladott';

  @override
  String get insiderHint =>
      'A vezetők és az igazgatósági tagok nyílt piaci vételei és eladásai az elmúlt 90 napban (SEC Form 4). Az opciólehívás és a részvényjuttatás nem számít bele.';

  @override
  String get insiderNone =>
      'Az elmúlt 90 napban nem volt bennfentes vétel vagy eladás a nyílt piacon.';

  @override
  String get analystTrend => 'Hogyan változtak a vélemények hónapról hónapra';

  @override
  String get watchListAll => 'Mind';

  @override
  String get watchListNew => 'Új lista';

  @override
  String get watchListName => 'A lista neve';

  @override
  String get watchListRename => 'Lista átnevezése';

  @override
  String get watchListDelete => 'Lista törlése';

  @override
  String get watchListAddTo => 'Listához adás';

  @override
  String get watchListEmpty =>
      'Ezen a listán még nincs részvény. A részvény melletti lista gombbal veheted fel.';

  @override
  String get portfolioAskTitle => 'Kérdések a portfóliódról';

  @override
  String get rangeYtd => 'Idén';

  @override
  String get backupTitle => 'Biztonsági mentés';

  @override
  String get backupSave => 'Mentés fájlba';

  @override
  String get backupSaveHint =>
      'A kedvenceid, listáid, portfóliód, riasztásaid és jegyzeteid egy fájlban.';

  @override
  String get backupRestore => 'Visszaállítás mentésből';

  @override
  String get backupRestoreHint =>
      'Hozzáadja, ami a fájlban van; a mostani adataidból semmi nem törlődik.';

  @override
  String get backupRestored => 'A mentés visszaállítva.';

  @override
  String get backupInvalid => 'Ez a fájl nem WhatStock-mentés.';

  @override
  String get allocationPositions => 'Részvények';

  @override
  String get allocationSectors => 'Szektorok';

  @override
  String get allocationCurrencies => 'Devizák';

  @override
  String get allocationAccounts => 'Számlák';

  @override
  String get compareReturn1y => '1 éves hozam';

  @override
  String get compareFromHigh => 'Távolság az 52 hetes csúcstól';

  @override
  String get briefAutoTitle => 'Napi összefoglaló minden reggel';

  @override
  String get briefAutoSubtitle =>
      '„A nap a részvényeiddel” reggel 7 után magától elkészül, amíg az app fut; számítógépen értesítés jelzi. A napi kérdéskeretből megy, elemzést nem fogyaszt.';

  @override
  String get targetsButton => 'Célarányok';

  @override
  String get targetsTitle => 'Célarányok';

  @override
  String get targetsHint =>
      'Add meg, mekkora részt kapjon a portfólióból egy-egy részvény. Üres mező: nincs cél. Az app ezután megmutatja, mit kellene venni vagy eladni hozzá.';

  @override
  String targetsSum(String percent) {
    return 'Összesen: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Vétel ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Eladás ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Célon';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol: a várt EPS felett';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol: a várt EPS alatt';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'Jelentett EPS $actual, várt $estimate';
  }

  @override
  String get newsExplain => 'Mit jelent ez?';

  @override
  String get watchAlertAll => 'Riasztás nagy napi mozgásra';

  @override
  String get watchAlertAllHint =>
      'Árfolyam-riasztás a lista minden részvényére: akkor szól, ha egy nap alatt ennyit mozdul, felfelé vagy lefelé. Ahol már van ilyen, az marad.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count riasztás beállítva',
      one: '1 riasztás beállítva',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Realizált nyereség exportja (CSV)';

  @override
  String get portfolioAnnualReturn => 'Éves hozam';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / év';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Pénzsúlyozott éves hozam (XIRR): számít, mikor vettél és adtál el, így a később betett pénz nem torzítja. Akkor látszik, ha az első vételed legalább egyéves; az osztalék nincs benne.';

  @override
  String get eventsAddToCalendar => 'Hozzáadás a naptárhoz (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Portfólió-riasztás';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Értesítés, ha a teljes portfóliód egy nap alatt ennyit mozdul.';

  @override
  String get portfolioMoveAlertOff => 'Ki';

  @override
  String portfolioMoveUp(String percent) {
    return 'A portfóliód ma $percent-kal emelkedett';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'A portfóliód ma $percent-kal esett';
  }

  @override
  String get whatIfTitle => 'Mi lett volna, ha befektetsz?';

  @override
  String get whatIfAmount => 'Összeg';

  @override
  String whatIfResult(String amount, String period) {
    return '$period ezelőtt befektetett $amount ma ennyit érne';
  }

  @override
  String get whatIfNote =>
      'Csak az árfolyam alapján: az osztalék, a díjak és az adó nincs benne. A múltbeli hozam nem jelzi előre a jövőbelit.';

  @override
  String get watchShare => 'Lista megosztása';

  @override
  String get watchImport => 'Tickerek hozzáadása';

  @override
  String get watchImportHint =>
      'Illeszd be a tickereket vesszővel, szóközzel vagy új sorral elválasztva – például egy listát, amit valaki megosztott veled.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count részvény hozzáadva',
      one: '1 részvény hozzáadva',
      zero: 'Nincs új részvény',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Legnagyobb elöl';

  @override
  String get positionsSortGain => 'Legjobb összhozam elöl';

  @override
  String get positionsSortToday => 'Legjobb mai mozgás elöl';

  @override
  String get chartMyBuys => 'Vételeid';

  @override
  String get chartMySells => 'Eladásaid';

  @override
  String get shortcutsTitle => 'Billentyűparancsok';

  @override
  String usMarketOpen(String time) {
    return 'Az amerikai piac nyitva · zár $time múlva';
  }

  @override
  String usMarketClosed(String time) {
    return 'Az amerikai piac zárva · nyit $time múlva';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes perc';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours óra $minutes perc';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days nap $hours óra';
  }

  @override
  String get dividendGoalSet => 'Havi osztalékcél beállítása';

  @override
  String get dividendGoalTitle => 'Havi osztalékcél';

  @override
  String get dividendGoalAmount => 'Osztalék havonta';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'A mai hozamokkal havonta kb. $amount · $percent kész · cél: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'A mai hozamokkal havonta kb. $amount · cél elérve: $goal';
  }

  @override
  String get portfolioAccount => 'Számla';

  @override
  String get portfolioAccountHint => 'pl. TBSZ 2026 (nem kötelező)';

  @override
  String get portfolioAccountAdd => 'Számla megadása';

  @override
  String get portfolioAccountsAll => 'Minden számla';

  @override
  String get portfolioAccountNote =>
      'Csak ennek a számlának a tranzakciói és osztalékai. A készpénz, a célok és az AI-elemzés a „Minden számla” nézetben látszanak.';

  @override
  String get portfolioNoAccount => 'Számla nélkül';

  @override
  String portfolioFee(String currency) {
    return 'Jutalék ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Jutalék megadása';

  @override
  String portfolioFeeRow(String amount) {
    return 'Jutalék: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Éves összesítő';

  @override
  String get portfolioProceeds => 'Eladási bevétel';

  @override
  String get portfolioCostBasis => 'Szerzési érték';

  @override
  String get portfolioFeesPaid => 'Fizetett jutalék';

  @override
  String get portfolioAnnualSummaryNote =>
      'Az összegek az eredeti pénznemben, átváltás nélkül. A bevételből az eladás jutaléka már levonva, a szerzési érték a vétel jutalékával együtt (FIFO). A bevalláshoz az adóhatóság által előírt árfolyamon számolj át.';

  @override
  String get portfolioShare => 'Teljesítmény megosztása';

  @override
  String get portfolioShareHeading => 'A portfólióm';

  @override
  String get portfolioTopHoldings => 'Legnagyobb pozíciók';

  @override
  String get portfolioShareNote =>
      'Csak százalékok kerülnek a megosztásba, összegek nem.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozíció',
      one: '1 pozíció',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Nem befektetési tanács';

  @override
  String get contributionButton => 'Új befizetés elosztása';

  @override
  String contributionAmount(String currency) {
    return 'Befektetendő összeg ($currency)';
  }

  @override
  String get contributionHint =>
      'Csak vétel, eladás nélkül: először a céljuktól leginkább elmaradó pozíciók kapnak belőle.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares db';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Most nincs ára: $symbols – kimarad az elosztásból.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Ha az éves hozam marad ($rate), kb. $year táján éred el.';
  }

  @override
  String get portfolioMaxDrawdown => 'Legnagyobb visszaesés';

  @override
  String get glossMaxDrawdown =>
      'A részvényeid értékének legnagyobb esése egy korábbi csúcsról egy későbbi mélypontig, a vételeid és eladásaid hatása nélkül (időarányosan). Megmutatja, mekkora visszaesést élt már át a portfóliód.';

  @override
  String watchSince(String date) {
    return 'Mióta figyeled ($date)';
  }

  @override
  String get portfolioSampleTry => 'Kipróbálom egy minta-portfólióval';

  @override
  String get portfolioSampleBanner =>
      'Ez egy minta-portfólió. Mellé veheted a saját vételeidet, vagy eltávolíthatod.';

  @override
  String get portfolioSampleRemove => 'Minta eltávolítása';

  @override
  String get portfolioStopsAll => 'Követő stop minden pozícióra';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count követő stop beállítva',
      one: '1 követő stop beállítva',
      zero: 'Minden pozíción van már követő stop',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent az eladás óta';
  }

  @override
  String get lotPreviewRealized => 'Ezen az eladáson realizált (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Új átlagár: $after (most $before)';
  }

  @override
  String get portfolioYtdReturn => 'Idei hozam';

  @override
  String get glossTwrYtd =>
      'Időarányos hozam az év elejétől (vagy az első vételtől, ha az idén volt): minden nap az aznap birtokolt részvények változása számít, és a napok összeláncolódnak – a befizetés és a kivét nem hozam, így összevethető egy indexszel. Alatta a választott index ugyanerre az időszakra.';

  @override
  String alertDistance(String price, String percent) {
    return 'Most $price · még $percent';
  }

  @override
  String get watchSortSince => 'Mióta figyeled szerint';

  @override
  String get portfolioTodayMovers => 'Ma leginkább mozgott:';

  @override
  String get lotNoteAdd => 'Jegyzet hozzáadása';

  @override
  String get lotNoteBuyHint =>
      'Miért veszed? A részvény jegyzeteibe kerül, dátummal.';

  @override
  String get lotNoteSellHint =>
      'Miért adod el? A részvény jegyzeteibe kerül, dátummal.';

  @override
  String get lotNoteBought => 'Vétel';

  @override
  String get positionHeld => 'Tartod';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months hónap',
      one: '1 hónap',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days nap',
      one: '1 nap',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return '$date óta';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Súly a portfólióban ezután: $after (most $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Készpénzből fizetve (most $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'A készpénzhez adva (most $amount)';
  }

  @override
  String get onboardTitle4 => 'Kövesd a portfóliódat';

  @override
  String get onboardBody4 =>
      'Importáld a brókered exportját (Revolut, Trading 212, IBKR, DEGIRO, Schwab…), vagy rögzítsd kézzel: látod a hozamot egy indexhez mérve, az osztalékokat és az adóbevalláshoz az éves összesítőt.';

  @override
  String get lotEdit => 'Szerkesztés';

  @override
  String lotEditTitle(String symbol) {
    return 'Tranzakció javítása · $symbol';
  }

  @override
  String get lotSave => 'Mentés';

  @override
  String dividendEditTitle(String symbol) {
    return 'Osztalék javítása · $symbol';
  }

  @override
  String get activityTitle => 'Összes tranzakció';

  @override
  String get activitySearchHint => 'Szűrés tickerre';

  @override
  String get activityNoMatch => 'Egy tranzakció sem felel meg a szűrésnek.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count már rögzítve volt, kimaradt',
      one: '1 már rögzítve volt, kimaradt',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Tickerváltás';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Tickerváltás · $symbol';
  }

  @override
  String get tickerChangeNew => 'Új ticker';

  @override
  String get tickerChangeHint =>
      'Ha egy cég tickert vált (pl. FB → META): minden tranzakció, osztalék, felaprózás, a jegyzet és a riasztások átkerülnek az újra.';

  @override
  String tickerChanged(String symbol) {
    return 'Áthelyezve: $symbol';
  }

  @override
  String get referralErrSignIn =>
      'Egy barát kódjának beváltásához lépj be az e-mail-címeddel.';

  @override
  String get referralErrFull =>
      'Ezt a kódot már annyiszor beváltották, ahányszor lehet.';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'A portfóliód most $value értékű.';
  }

  @override
  String get errAiTruncated =>
      'Az elemzés befejezés előtt megszakadt. Próbáld újra – a keretedből nem vont le.';

  @override
  String get errImageUnsupported =>
      'Ez a kép nem olvasható. Mentsd el JPEG vagy PNG formátumban, és próbáld újra.';

  @override
  String get errRateLimited =>
      'Túl sok kérés rövid idő alatt. Várj egy percet, és próbáld újra.';

  @override
  String get portfolioGoalSet => 'Cél kitűzése';

  @override
  String get portfolioGoalTitle => 'Portfólió-cél';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent kész · cél: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Cél elérve: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Cél törlése';

  @override
  String get alertEdit => 'Riasztás módosítása';

  @override
  String get positionOpenLots => 'Még meglévő tételek (a legrégebbi elöl)';

  @override
  String get lotRemoved => 'Tranzakció törölve';

  @override
  String get alertDeleted => 'Riasztás törölve';

  @override
  String get alertsClearTriggered => 'Teljesült riasztások törlése';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count riasztás törölve',
      one: '1 riasztás törölve',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Kezdőképernyő';

  @override
  String get allocationCountries => 'Országok';

  @override
  String get newsExplainNoteResearch =>
      'AI-magyarázat: utánanéz a tényeknek a weben, megnyitja a cikket, és megítéli, mennyire hiteles a forrás. Nem befektetési tanács. A napi kérdéskeretből megy, elemzést nem fogyaszt.';

  @override
  String get sourceOfficial => 'Hivatalos';

  @override
  String get sourcePressRelease => 'Sajtóközlemény';

  @override
  String get sourceMajorNews => 'Vezető lap';

  @override
  String get sourceOpinion => 'Vélemény';

  @override
  String get earningsSummaryButton => 'Mi volt a legutóbbi gyorsjelentésben?';

  @override
  String get earningsSummaryNote =>
      'AI-összefoglaló a cég eredményközleményéből és a weben talált sajtóvisszhangból. Nem befektetési tanács. A napi kérdéskeretből megy, elemzést nem fogyaszt.';

  @override
  String get compareLastSurprise => 'Utolsó negyedév EPS a várthoz képest';

  @override
  String get compareNextReport => 'Következő jelentés';

  @override
  String get resolvingDescription => 'Kitaláljuk, melyik részvényre gondolsz…';

  @override
  String get instrumentTitle => 'Erről a papírról';

  @override
  String get instrumentHint =>
      'Ehhez a tickerhez nincs cégprofil – lehet, hogy ETF, alap vagy letéti jegy. Kérdezd meg az AI-t, mi ez, mit tart és mennyibe kerül.';

  @override
  String get instrumentAsk => 'Mi ez a papír?';

  @override
  String get instrumentNote =>
      'AI-magyarázat a kibocsátó oldaláról és a weben talált pénzügyi oldalakról. Nem befektetési tanács. A napi kérdéskeretből megy, elemzést nem fogyaszt.';

  @override
  String suggestAskAi(String query) {
    return 'Kérdezzük meg az AI-t: „$query”';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Nincs aktuális ár: $symbols.';
  }

  @override
  String get eventsRecentResults => 'Friss gyorsjelentések';

  @override
  String get saveToNotes => 'Mentés a jegyzeteimbe';

  @override
  String get savedToNotes => 'Elmentve a jegyzeteidbe';

  @override
  String get portfolioDividendsReceived => 'Kapott osztalékok';

  @override
  String get portfolioDividendsThisYear => 'Idén';

  @override
  String get portfolioDividendsAllTime => 'Összesen';

  @override
  String get portfolioAddDividend => 'Osztalék felvétele';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Kapott összeg ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Kifizetés napja';

  @override
  String get portfolioDividendsEmpty =>
      'Még nincs rögzített osztalék. Vedd fel kézzel, vagy importáld a brókered exportját – annak osztaléksorai is bekerülnek.';

  @override
  String get portfolioSplit => 'Részvényfelaprózás';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Részvényfelaprózás: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'A felaprózás napja előtti vételek és eladások igazítódnak: a darabszám szorzódik, a darabonkénti ár osztódik, így a bekerülési érték nem változik.';

  @override
  String get portfolioSplitRatio => 'Arány (új : régi)';

  @override
  String get portfolioSplitRatioError =>
      'Adj meg egy arányt, pl. 10:1 – összevonásnál 1:10.';

  @override
  String get portfolioSplitDate => 'A felaprózás napja';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Felaprózás $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Felaprózás törölve';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count felaprózás felvéve',
      one: '1 felaprózás felvéve',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count osztalék felvéve',
      one: '1 osztalék felvéve',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Osztalékok exportja (CSV)';

  @override
  String get portfolioDividendDeleted => 'Osztalék törölve';

  @override
  String get portfolioDividendsHint =>
      'Az összegek úgy, ahogy a számlára érkeztek, a kifizetés pénznemében; az összesítés a mai árfolyamon átváltva. Az adóbevalláshoz a brókered kimutatása az irányadó.';

  @override
  String get awayTitle => 'Amíg távol voltál';

  @override
  String awaySince(String when) {
    return '$when óta';
  }

  @override
  String get awayQuiet => 'Nem történt nagy mozgás.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count riasztás teljesült',
      one: '1 riasztás teljesült',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Gyorsjelentést adott: $symbols';
  }

  @override
  String get moveWhyButton => 'Miért mozog ma?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent ma';
  }

  @override
  String get moveWhyNote =>
      'AI-magyarázat a weben talált mai hírekből; a valódi ok ismeretlen vagy más is lehet. Nem befektetési tanács. A napi kérdéskeretből fogyaszt, nem elemzést.';

  @override
  String get sectionTechnical => 'Technikai kép';

  @override
  String get labelSma50 => '50 napos átlag';

  @override
  String get labelSma200 => '200 napos átlag';

  @override
  String get labelRsi => 'RSI (14 nap)';

  @override
  String get labelVolatility30 => 'Volatilitás (30 nap)';

  @override
  String techAbove(String percent) {
    return '$percent felette';
  }

  @override
  String techBelow(String percent) {
    return '$percent alatta';
  }

  @override
  String get techOverbought => 'túlvett';

  @override
  String get techOversold => 'túladott';

  @override
  String get techNeutral => 'semleges';

  @override
  String get techGoldenCross =>
      'Az 50 napos átlag a 200 napos felett jár – a klasszikus olvasat szerint emelkedő trend.';

  @override
  String get techDeathCross =>
      'Az 50 napos átlag a 200 napos alatt jár – a klasszikus olvasat szerint csökkenő trend.';

  @override
  String get glossSma50 =>
      'Az utolsó 50 kereskedési nap záróárainak átlaga. Ha az ár felette van, azt gyakran rövid távú erőként olvassák, ha alatta, gyengeségként.';

  @override
  String get glossSma200 =>
      'Az utolsó 200 kereskedési nap záróárainak átlaga – a klasszikus hosszú távú trendvonal. Sok befektető a felette járó árat hosszú távú emelkedő trendnek tekinti.';

  @override
  String get glossRsi =>
      'Relatív erő index: a közelmúlt emelkedéseit veti össze az eséseivel egy 0–100-as skálán. 70 felett gyakran túlvettnek mondják (gyorsan emelkedett), 30 alatt túladottnak – de egy erős trendben sokáig ott maradhat.';

  @override
  String get glossVolatility =>
      'Mennyit ingadozik az ár napról napra, egy évre vetítve: 20% azt jelenti, hogy egy tipikus év nagyjából ±20%-on belül mozog. A nagyobb volatilitás nagyobb kilengéseket jelent mindkét irányba.';

  @override
  String get techNote =>
      'A napi záróárakból számolva. A technikai jelzések a múltat írják le, nem a jövőt.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$count pozícióból $above a saját 200 napos átlaga felett';
  }

  @override
  String get watchSignalsTitle => 'Jelzések';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · túladott';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · túlvett';
  }

  @override
  String get signalCrossedAbove => 'a 200 napos átlaga fölé került';

  @override
  String get signalCrossedBelow => 'a 200 napos átlaga alá került';

  @override
  String get signalAlertsTitle => 'Technikai jelzés-értesítés';

  @override
  String get signalAlertsSubtitle =>
      'Naponta egyszer, ha egy figyelt részvény RSI-je túladott vagy túlvett lesz, vagy az ára átlépi a 200 napos átlagát.';

  @override
  String get signalAlertsNotification => 'Technikai jelzések';

  @override
  String get glossaryPageTitle => 'Fogalomtár';

  @override
  String get glossaryPageSubtitle =>
      'Közérthető magyarázat az app minden mutatójához, a P/E-től az RSI-ig';

  @override
  String get glossarySearchHint => 'Keresés a fogalomtárban';

  @override
  String get portfolioCash => 'Készpénz';

  @override
  String get portfolioCashTitle => 'Készpénz-egyenleg';

  @override
  String get portfolioCashHint =>
      'A brókernél tartott, be nem fektetett pénz pénznemenként. Az összértékbe és a megoszlásba számít, a hozamba nem.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Összeg ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Készpénz-egyenleg megadása';

  @override
  String get portfolioDividendsByMonth => 'Havonta';

  @override
  String get dividendsLegendReceived => 'Kapott';

  @override
  String get dividendsLegendExpected => 'Várható';

  @override
  String get portfolioDividendsExpected => 'Várható következő';

  @override
  String get portfolioDividendsExpectedNote =>
      'A rögzített kifizetések dátumaiból és összegeiből becsülve; a cégek változtathatnak rajta, vagy ki is hagyhatják.';

  @override
  String portfolioDividendAround(String date) {
    return '$date körül';
  }
}
