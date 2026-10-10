// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'StockLens';

  @override
  String get homeTagline => 'Fotózz le egy részvényt, és tudj meg róla mindent.';

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
  String get errorSectionUnavailable => 'Ezt a szakaszt nem sikerült betölteni.';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count elemző', one: '1 elemző');
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
  String get errRecognitionUnreachable => 'A felismerő szolgáltatás nem érhető el. Ellenőrizd az internetkapcsolatot.';

  @override
  String errRecognitionHttp(String status) {
    return 'A felismerő szolgáltatás hibát adott vissza (HTTP $status).';
  }

  @override
  String get errRecognitionRefused => 'A felismerő szolgáltatás nem tudta feldolgozni ezt a képet.';

  @override
  String get errRecognitionTruncated => 'A felismerés válasza megszakadt. Kérlek, próbáld újra.';

  @override
  String get errRecognitionBadResponse => 'Váratlan válasz érkezett a felismerő szolgáltatástól.';

  @override
  String get errRecognitionEmpty => 'A felismerő szolgáltatás üres választ adott.';

  @override
  String get errMissingFinnhubKey => 'A piaci adatok nincsenek beállítva (nincs FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable => 'A piaci adatszolgáltatás nem érhető el. Ellenőrizd az internetkapcsolatot.';

  @override
  String get errMarketRateLimited => 'Túl sok kérés a piaci adatszolgáltatás felé. Kérlek, várj egy percet.';

  @override
  String errMarketHttp(String status) {
    return 'A piaci adatszolgáltatás hibát adott vissza (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Váratlan válasz érkezett a piaci adatszolgáltatástól.';

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
    return 'Nyomd le bárhol a $shortcut billentyűkombinációt, és előugrik a StockLens.';
  }

  @override
  String get trayOpen => 'StockLens megnyitása';

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
  String get aiGenerating => 'Az elemzés készül… ez egy-két percet is igénybe vehet.';

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
  String get errAiNotConfigured => 'Az AI-elemzés nincs beállítva (nincs ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Az AI-szolgáltatás nem érhető el. Ellenőrizd az internetkapcsolatot.';

  @override
  String errAiHttp(String status) {
    return 'Az AI-szolgáltatás hibát adott vissza (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Az AI-szolgáltatás nem vállalta ennek a részvénynek az elemzését.';

  @override
  String get errAiBadResponse => 'Váratlan válasz érkezett az AI-szolgáltatástól.';

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
  String get chartUnavailable => 'Az árfolyamtörténet nem érhető el a jelenlegi adatforrásból.';

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
  String get statementsUnavailable => 'Ehhez a részvényhez nem érhetők el közzétett pénzügyi kimutatások.';

  @override
  String get launchAtLogin => 'Indítás bejelentkezéskor';

  @override
  String get hotkeyLabel => 'Globális gyorsbillentyű';

  @override
  String get hotkeyRecordHint => 'Kattints ide, majd nyomd le az új billentyűkombinációt';

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
  String get noFavorites => 'Még nincsenek kedvencek. Koppints egy részvény csillagjára a hozzáadáshoz.';

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
  String get updateDownloaded => 'A frissítés készen áll. A telepítéshez indítsd újra az alkalmazást.';

  @override
  String get updateNow => 'Frissítés';

  @override
  String get restartNow => 'Újraindítás';

  @override
  String get updatesViaStore => 'A frissítések automatikusan érkeznek az alkalmazásboltból.';

  @override
  String get updateCheckFailed => 'Nem sikerült frissítéseket keresni.';

  @override
  String get subscription => 'Subscription';

  @override
  String get planTrial => 'Trial';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max 1';

  @override
  String get planMax2 => 'Max 2';

  @override
  String get planNone => 'No active plan';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analyses per month';
  }

  @override
  String planTrialDescription(int days, int count) {
    return '$days-day free trial with $count analyses';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days of trial left',
      one: '1 day of trial left',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired => 'Your free trial has ended. Choose a plan to keep analysing.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining of $total analyses left this period';
  }

  @override
  String extraCredits(int count) {
    return '$count extra analyses';
  }

  @override
  String renewsOn(String date) {
    return 'Renews $date';
  }

  @override
  String get choosePlan => 'Choose a plan';

  @override
  String get currentPlan => 'Current plan';

  @override
  String get subscribe => 'Subscribe';

  @override
  String get perMonth => '/ month';

  @override
  String get extraPacksTitle => 'Need more? Buy extra analyses';

  @override
  String get extraPacksHint => 'Extra analyses never expire and are used after your monthly allowance.';

  @override
  String get buy => 'Buy';

  @override
  String get restorePurchases => 'Restore purchases';

  @override
  String get manageSubscription => 'Manage subscription';

  @override
  String get purchaseSuccess => 'Thanks! Your purchase is active.';

  @override
  String get purchasePending => 'Purchase pending…';

  @override
  String get purchaseFailed => 'The purchase could not be completed.';

  @override
  String get purchaseCanceled => 'Purchase canceled.';

  @override
  String get billingUnavailable =>
      'Purchases are not available on this platform yet. Subscribe on your phone or Mac; your plan will work on every device.';

  @override
  String get errQuotaExceeded => 'You have no analyses left for this period. Upgrade your plan or buy extra analyses.';

  @override
  String get errTrialExpired => 'Your free trial has ended. Choose a plan to continue.';

  @override
  String get errNoPlan => 'An active plan is needed for AI analysis.';

  @override
  String get viewPlans => 'View plans';

  @override
  String get usageTitle => 'Usage';

  @override
  String get demoPurchaseNote => 'Demo billing: purchases are simulated on this platform.';

  @override
  String get mostPopular => 'Most popular';

  @override
  String get bestValue => 'Best value';

  @override
  String get planFeaturesCommon =>
      'Photo recognition, live data, charts, favorites and all 44 languages are included in every plan. The allowance covers AI analyses.';
}
