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
      'Csak ezen a készüléken tárolódik. Az összesítés ECB-árfolyamon számol; az árak késhetnek.';

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
}
