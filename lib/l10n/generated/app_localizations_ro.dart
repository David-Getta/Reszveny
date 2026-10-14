// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline => 'Fotografiază o acțiune și află totul despre ea.';

  @override
  String get homeHint =>
      'Un certificat de acțiuni, ecranul unei aplicații de brokeraj, un ziar sau logoul unei companii – orice identifică o acțiune.';

  @override
  String get takePhoto => 'Fă o fotografie';

  @override
  String get chooseFromGallery => 'Alege din galerie';

  @override
  String get chooseImage => 'Alege o imagine';

  @override
  String get enterTickerManually => 'Introdu simbolul manual';

  @override
  String get tickerInputLabel => 'Simbol (ticker)';

  @override
  String get tickerInputHint => 'ex. AAPL';

  @override
  String get lookUp => 'Caută';

  @override
  String demoModeBanner(String symbols) {
    return 'Mod demo – nu este configurată nicio cheie pentru datele de piață. Date de exemplu disponibile pentru: $symbols.';
  }

  @override
  String get recognizing => 'Se analizează imaginea…';

  @override
  String get loadingData => 'Se încarcă datele…';

  @override
  String get noCandidatesTitle => 'Nicio acțiune recunoscută';

  @override
  String get noCandidatesBody =>
      'Nu am putut identifica o acțiune în această imagine. Încearcă o fotografie mai clară sau introdu simbolul manual.';

  @override
  String get whatWeSaw => 'Ce am văzut';

  @override
  String get chooseCandidateTitle => 'La ce acțiune te refereai?';

  @override
  String confidencePercent(int percent) {
    return '$percent% încredere';
  }

  @override
  String get settings => 'Setări';

  @override
  String get language => 'Limbă';

  @override
  String get systemLanguage => 'Implicit (sistem)';

  @override
  String get about => 'Despre';

  @override
  String get disclaimer =>
      'Această aplicație oferă doar informații și nu constituie consultanță de investiții. Datele pot fi întârziate sau inexacte.';

  @override
  String dataSource(String source) {
    return 'Sursa datelor: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Recunoaștere: $source';
  }

  @override
  String get retry => 'Reîncearcă';

  @override
  String get cancel => 'Anulează';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Închide';

  @override
  String get errorGeneric => 'Ceva nu a funcționat.';

  @override
  String get errorSectionUnavailable =>
      'Această secțiune nu a putut fi încărcată.';

  @override
  String get notAvailable => 'n/a';

  @override
  String get sectionIdentity => 'Identificare';

  @override
  String get sectionPrice => 'Preț';

  @override
  String get sectionValuation => 'Evaluare';

  @override
  String get sectionFinancials => 'Date financiare';

  @override
  String get sectionDividend => 'Dividend';

  @override
  String get sectionProfile => 'Profilul companiei';

  @override
  String get sectionAnalysts => 'Evaluările analiștilor';

  @override
  String get sectionNews => 'Știri';

  @override
  String get sectionRecognition => 'Detalii despre recunoaștere';

  @override
  String get labelSymbol => 'Simbol';

  @override
  String get labelExchange => 'Bursă';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Monedă';

  @override
  String get labelCountry => 'Țară';

  @override
  String get labelIndustry => 'Industrie';

  @override
  String get labelSector => 'Sector';

  @override
  String get labelWebsite => 'Site web';

  @override
  String get labelIpoDate => 'Data IPO';

  @override
  String get labelMarketCap => 'Capitalizare bursieră';

  @override
  String get labelSharesOutstanding => 'Acțiuni în circulație';

  @override
  String get labelEmployees => 'Angajați';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Sediu central';

  @override
  String get labelDescription => 'Descriere';

  @override
  String get labelLastPrice => 'Ultimul preț';

  @override
  String get labelChange => 'Variație';

  @override
  String get labelOpen => 'Deschidere';

  @override
  String get labelDayHigh => 'Maximul zilei';

  @override
  String get labelDayLow => 'Minimul zilei';

  @override
  String get labelPreviousClose => 'Închiderea anterioară';

  @override
  String get labelWeek52High => 'Maxim 52 de săptămâni';

  @override
  String get labelWeek52Low => 'Minim 52 de săptămâni';

  @override
  String get labelAverageVolume10d => 'Volum mediu (10 zile)';

  @override
  String updatedAt(String time) {
    return 'Actualizat $time';
  }

  @override
  String get labelPeTrailing => 'P/E (istoric)';

  @override
  String get labelPeForward => 'P/E (estimat)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / flux de numerar liber';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Venituri (TTM)';

  @override
  String get labelNetIncomeTtm => 'Profit net (TTM)';

  @override
  String get labelGrossMargin => 'Marjă brută';

  @override
  String get labelOperatingMargin => 'Marjă operațională';

  @override
  String get labelNetMargin => 'Marjă netă';

  @override
  String get labelRoe => 'Rentabilitatea capitalului propriu (ROE)';

  @override
  String get labelRoa => 'Rentabilitatea activelor (ROA)';

  @override
  String get labelDebtToEquity => 'Datorii / capital propriu';

  @override
  String get labelCurrentRatio => 'Rata lichidității curente';

  @override
  String get labelRevenueGrowth => 'Creșterea veniturilor (YoY)';

  @override
  String get labelEpsGrowth => 'Creșterea EPS (YoY)';

  @override
  String get labelDividendYield => 'Randamentul dividendului';

  @override
  String get labelDividendPerShare => 'Dividend pe acțiune';

  @override
  String get labelPayoutRatio => 'Rata de distribuire (payout)';

  @override
  String get labelConsensus => 'Consens';

  @override
  String get ratingStrongBuy => 'Cumpărare puternică';

  @override
  String get ratingBuy => 'Cumpărare';

  @override
  String get ratingHold => 'Menținere';

  @override
  String get ratingSell => 'Vânzare';

  @override
  String get ratingStrongSell => 'Vânzare puternică';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de analiști',
      few: '$count analiști',
      one: '1 analist',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Perioadă: $period';
  }

  @override
  String get noNews => 'Nu există știri recente.';

  @override
  String get openArticle => 'Deschide articolul';

  @override
  String get openLinkFailed => 'Linkul nu a putut fi deschis.';

  @override
  String get recognitionSummary => 'Rezumat';

  @override
  String get recognitionEvidence => 'De ce credem asta';

  @override
  String get recognitionRawText => 'Text citit din imagine';

  @override
  String get errMissingAnthropicKey =>
      'Recunoașterea imaginilor nu este configurată (lipsește ANTHROPIC_API_KEY). Introdu simbolul manual.';

  @override
  String get errRecognitionUnreachable =>
      'Nu s-a putut contacta serviciul de recunoaștere. Verifică conexiunea la internet.';

  @override
  String errRecognitionHttp(String status) {
    return 'Serviciul de recunoaștere a returnat o eroare (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Serviciul de recunoaștere nu a putut procesa această imagine.';

  @override
  String get errRecognitionTruncated =>
      'Răspunsul serviciului de recunoaștere a fost întrerupt. Încearcă din nou.';

  @override
  String get errRecognitionBadResponse =>
      'Răspuns neașteptat de la serviciul de recunoaștere.';

  @override
  String get errRecognitionEmpty =>
      'Serviciul de recunoaștere a returnat un răspuns gol.';

  @override
  String get errMissingFinnhubKey =>
      'Datele de piață nu sunt configurate (lipsește FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nu s-a putut contacta serviciul de date de piață. Verifică conexiunea la internet.';

  @override
  String get errMarketRateLimited =>
      'Prea multe solicitări către serviciul de date de piață. Așteaptă un minut.';

  @override
  String errMarketHttp(String status) {
    return 'Serviciul de date de piață a returnat o eroare (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Răspuns neașteptat de la serviciul de date de piață.';

  @override
  String errNoQuote(String symbol) {
    return 'Nu s-au găsit date de preț pentru $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nu s-a găsit profilul companiei pentru $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Modul demo acceptă doar $symbols. Adaugă o cheie FINNHUB_API_KEY pentru date în timp real.';
  }

  @override
  String errUnknown(String detail) {
    return 'Ceva nu a funcționat: $detail';
  }

  @override
  String get newSearch => 'Căutare nouă';

  @override
  String get recentSearches => 'Recente';

  @override
  String get noRecentSearches => 'Nu există căutări recente încă.';

  @override
  String get clearRecent => 'Șterge recentele';

  @override
  String get greeting => 'La ce acțiune ne uităm?';

  @override
  String get searchHint => 'Simbol sau numele companiei';

  @override
  String get attachImage => 'Atașează o imagine';

  @override
  String get searchResultsTitle => 'Rezultatele căutării';

  @override
  String errNoResults(String query) {
    return 'Nu s-au găsit acțiuni pentru „$query”.';
  }

  @override
  String get quickBarHint => 'Scrie un simbol sau numele unei companii…';

  @override
  String get openFullWindow => 'Deschide fereastra';

  @override
  String hotkeyHint(String shortcut) {
    return 'Apasă $shortcut oriunde pentru a deschide WhatStock.';
  }

  @override
  String get trayOpen => 'Deschide WhatStock';

  @override
  String get trayQuickSearch => 'Căutare rapidă';

  @override
  String get trayQuit => 'Ieșire';

  @override
  String get appearance => 'Aspect';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeDark => 'Întunecat';

  @override
  String get themeLight => 'Luminos';

  @override
  String get back => 'Înapoi';

  @override
  String get aiSectionTitle => 'Analiză AI';

  @override
  String get aiIntro =>
      'O prezentare detaliată scrisă de AI: rezumatul știrilor recente, afacerea, punctele forte, riscurile și factorii ascunși, evaluarea, o perspectivă a prețului cu scenarii din unghiuri psihologice, sociologice, tehnice și macroeconomice, și ce trebuie urmărit.';

  @override
  String get aiGenerate => 'Generează analiza';

  @override
  String get aiRegenerate => 'Regenerează';

  @override
  String get aiGenerating =>
      'Se pregătește analiza… poate dura un minut sau două.';

  @override
  String get aiSources => 'Surse';

  @override
  String aiGeneratedAt(String time) {
    return 'Generată $time';
  }

  @override
  String get aiDisclaimer =>
      'Analiză generată de AI pe baza datelor publice și a știrilor recente. Poate conține erori sau poate fi depășită și nu reprezintă un sfat de investiții.';

  @override
  String get errAiNotConfigured =>
      'Analiza AI nu este configurată (lipsește ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Nu s-a putut contacta serviciul AI. Verifică conexiunea la internet.';

  @override
  String errAiHttp(String status) {
    return 'Serviciul AI a returnat o eroare (HTTP $status).';
  }

  @override
  String get errAiRefused =>
      'Serviciul AI a refuzat să analizeze această acțiune.';

  @override
  String get errAiBadResponse => 'Răspuns neașteptat de la serviciul AI.';

  @override
  String get sectionChart => 'Graficul prețului';

  @override
  String get rangeOneWeek => '1S';

  @override
  String get rangeOneMonth => '1L';

  @override
  String get rangeThreeMonths => '3L';

  @override
  String get rangeOneYear => '1A';

  @override
  String get rangeFiveYears => '5A';

  @override
  String get chartUnavailable =>
      'Istoricul prețurilor nu este disponibil de la sursa de date curentă.';

  @override
  String get sectionStatements => 'Situații financiare (anuale)';

  @override
  String get labelFiscalYear => 'An fiscal';

  @override
  String get labelRevenue => 'Venituri';

  @override
  String get labelNetIncome => 'Profit net';

  @override
  String get labelTotalAssets => 'Total active';

  @override
  String get labelTotalLiabilities => 'Total datorii';

  @override
  String get labelEquity => 'Capital propriu';

  @override
  String get labelOperatingCashFlow => 'Flux de numerar operațional';

  @override
  String get statementsUnavailable =>
      'Nu sunt disponibile situații financiare raportate pentru această acțiune.';

  @override
  String get launchAtLogin => 'Pornește la autentificare';

  @override
  String get hotkeyLabel => 'Scurtătură globală';

  @override
  String get hotkeyRecordHint =>
      'Dă clic aici, apoi apasă noua combinație de taste';

  @override
  String get hotkeyReset => 'Resetează la valoarea implicită';

  @override
  String get pasteImage => 'Lipește imaginea din clipboard';

  @override
  String get errClipboardNoImage => 'Nu există nicio imagine în clipboard.';

  @override
  String get favorites => 'Favorite';

  @override
  String get addToFavorites => 'Adaugă la favorite';

  @override
  String get removeFromFavorites => 'Elimină din favorite';

  @override
  String get noFavorites =>
      'Nu există favorite încă. Atinge steluța unei acțiuni pentru a o adăuga.';

  @override
  String get displayCurrency => 'Monedă de afișare';

  @override
  String get displayCurrencyNone => 'Doar moneda proprie a acțiunii';

  @override
  String labelConverted(String currency) {
    return '≈ în $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Curs: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Actualizări';

  @override
  String currentVersion(String version) {
    return 'Versiunea $version';
  }

  @override
  String get autoUpdate => 'Instalează actualizările automat';

  @override
  String get checkForUpdates => 'Caută actualizări';

  @override
  String get updateChecking => 'Se caută actualizări…';

  @override
  String get updateUpToDate => 'Ai cea mai recentă versiune.';

  @override
  String updateAvailable(String version) {
    return 'Versiunea $version este disponibilă.';
  }

  @override
  String get updateDownloading => 'Actualizarea se descarcă în fundal…';

  @override
  String get updateDownloaded =>
      'Actualizarea este gata. Repornește pentru a o instala.';

  @override
  String get updateNow => 'Actualizează';

  @override
  String get restartNow => 'Repornește';

  @override
  String get updatesViaStore =>
      'Actualizările sosesc automat prin magazinul de aplicații.';

  @override
  String get updateCheckFailed => 'Nu s-au putut căuta actualizări.';

  @override
  String get subscription => 'Abonament';

  @override
  String get planTrial => 'Probă';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Niciun plan activ';

  @override
  String planAnalysesPerMonth(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de analize pe lună',
      few: '$count analize pe lună',
      one: '$count analiză pe lună',
    );
    return '$_temp0';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Probă gratuită de $days zile cu $count analize';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Au mai rămas $days de zile de probă',
      few: 'Au mai rămas $days zile de probă',
      one: 'A mai rămas 1 zi de probă',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Perioada ta de probă gratuită s-a încheiat. Alege un plan pentru a continua analizele.';

  @override
  String analysesRemaining(int remaining, int total) {
    return '$remaining din $total analize rămase în această perioadă';
  }

  @override
  String extraCredits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de analize suplimentare',
      few: '$count analize suplimentare',
      one: '$count analiză suplimentară',
    );
    return '$_temp0';
  }

  @override
  String renewsOn(String date) {
    return 'Se reînnoiește pe $date';
  }

  @override
  String get choosePlan => 'Alege un plan';

  @override
  String get currentPlan => 'Planul actual';

  @override
  String get subscribe => 'Abonează-te';

  @override
  String get perMonth => '/ lună';

  @override
  String get extraPacksTitle =>
      'Ai nevoie de mai multe? Cumpără analize suplimentare';

  @override
  String get extraPacksHint =>
      'Analizele suplimentare nu expiră niciodată și sunt folosite după cota ta lunară.';

  @override
  String get buy => 'Cumpără';

  @override
  String get restorePurchases => 'Restabilește achizițiile';

  @override
  String get manageSubscription => 'Gestionează abonamentul';

  @override
  String get purchaseSuccess => 'Mulțumim! Achiziția ta este activă.';

  @override
  String get purchasePending => 'Achiziție în așteptare…';

  @override
  String get purchaseFailed => 'Achiziția nu a putut fi finalizată.';

  @override
  String get purchaseCanceled => 'Achiziție anulată.';

  @override
  String get billingUnavailable =>
      'Achizițiile nu sunt încă disponibile pe această platformă. Abonează-te de pe telefon sau Mac; planul tău va funcționa pe toate dispozitivele.';

  @override
  String get errQuotaExceeded =>
      'Nu mai ai analize în această perioadă. Treci la un plan superior sau cumpără analize suplimentare.';

  @override
  String get errTrialExpired =>
      'Perioada ta de probă gratuită s-a încheiat. Alege un plan pentru a continua.';

  @override
  String get errNoPlan => 'Pentru analiza AI este necesar un plan activ.';

  @override
  String get viewPlans => 'Vezi planurile';

  @override
  String get usageTitle => 'Utilizare';

  @override
  String get demoPurchaseNote =>
      'Facturare demonstrativă: achizițiile sunt simulate pe această platformă.';

  @override
  String get mostPopular => 'Cel mai popular';

  @override
  String get bestValue => 'Cel mai avantajos';

  @override
  String get planFeaturesCommon =>
      'Recunoașterea fotografiilor, datele în timp real, graficele, favoritele și toate cele 120 de limbi sunt incluse în fiecare plan. Cota acoperă analizele AI.';

  @override
  String get searchLanguages => 'Caută limbi…';

  @override
  String get noLanguageMatch => 'Nicio limbă nu se potrivește.';

  @override
  String get aiSettings => 'Analiză AI';

  @override
  String get aiLength => 'Lungime';

  @override
  String get aiDepthBrief => 'Scurtă';

  @override
  String get aiDepthStandard => 'Standard';

  @override
  String get aiDepthDeep => 'Detaliată';

  @override
  String get aiDepthBriefDesc => 'Esențialul, rapid.';

  @override
  String get aiDepthStandardDesc => 'Raport complet, cu toate secțiunile.';

  @override
  String get aiDepthDeepDesc =>
      'Mai multe căutări web, comparație cu companii similare și detalii suplimentare.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Aproximativ $min–$max de cuvinte';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'folosește $count de analize',
      few: 'folosește $count analize',
      one: 'folosește 1 analiză',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Nivelul cititorului';

  @override
  String get aiReaderBeginner => 'Începător';

  @override
  String get aiReaderExperienced => 'Experimentat';

  @override
  String get aiReaderBeginnerDesc =>
      'Limbaj simplu; fiecare termen tehnic este explicat.';

  @override
  String get aiReaderExperiencedDesc =>
      'Text mai dens, cu terminologie financiară standard.';

  @override
  String get aiCounterArgument => 'Cel mai puternic contraargument';

  @override
  String get aiCounterArgumentDesc =>
      'Rezumatul se încheie mereu cu cel mai bun argument împotriva propriei concluzii.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Până la $count de căutări web pe analiză cu planul tău',
      few: 'Până la $count căutări web pe analiză cu planul tău',
      one: 'Până la 1 căutare web pe analiză cu planul tău',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Lungimea standard în funcție de plan: Normal $normal, Pro $pro, Max $max, Ultra $ultra. „Scurtă” folosește cu 2 mai puține, „Detaliată” cu 2 mai multe.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'până la $count de căutări web',
      few: 'până la $count căutări web',
      one: 'până la 1 căutare web',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de căutări web pe analiză',
      few: '$count căutări web pe analiză',
      one: '1 căutare web pe analiză',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Această lungime necesită $needed analize, dar mai ai doar $left. Alege o lungime mai scurtă în Setări sau obține mai multe analize.';
  }

  @override
  String get outlookMarketMood => 'Sentimentul pieței';

  @override
  String get moodVeryPessimistic => 'Foarte pesimist';

  @override
  String get moodPessimistic => 'Pesimist';

  @override
  String get moodNeutral => 'Neutru';

  @override
  String get moodOptimistic => 'Optimist';

  @override
  String get moodVeryOptimistic => 'Foarte optimist';

  @override
  String get scenarioBull => 'Scenariu optimist';

  @override
  String get scenarioBase => 'Scenariu de bază';

  @override
  String get scenarioBear => 'Scenariu pesimist';

  @override
  String outlookCurrentPrice(String price) {
    return 'Preț curent: $price';
  }

  @override
  String get outlookKeyLevels => 'Niveluri cheie';

  @override
  String get keyLevelSupport => 'Suport';

  @override
  String get keyLevelResistance => 'Rezistență';

  @override
  String get keyLevelAnchor => 'Ancoră';

  @override
  String get upcomingEvents => 'Evenimente viitoare';

  @override
  String get outlookChartNote =>
      'Intervale orientative; probabilitățile sunt estimări aproximative, nu predicții.';

  @override
  String get accountTitle => 'Cont';

  @override
  String get signIn => 'Conectează-te';

  @override
  String get signOut => 'Deconectează-te';

  @override
  String get notSignedIn => 'Neconectat';

  @override
  String get accountBenefit =>
      'Conectează-te ca abonamentul tău să funcționeze pe toate dispozitivele tale.';

  @override
  String get accountSyncedNote =>
      'Abonamentul tău și analizele rămase sunt aceleași pe fiecare dispozitiv.';

  @override
  String get signInTitle => 'Conectează-te la WhatStock';

  @override
  String get emailLabel => 'Adresă de e-mail';

  @override
  String get continueWithEmail => 'Continuă cu e-mail';

  @override
  String codeSentTo(String email) {
    return 'Am trimis un cod din 6 cifre la $email. Este valabil 10 minute.';
  }

  @override
  String get codeLabel => 'Cod de conectare';

  @override
  String get resendCode => 'Trimite un cod nou';

  @override
  String get useDifferentEmail => 'Folosește alt e-mail';

  @override
  String get errInvalidCode => 'Codul este greșit sau a expirat.';

  @override
  String get errInvalidEmail => 'Introdu o adresă de e-mail validă.';

  @override
  String get errSignInFailed =>
      'Conectarea a eșuat. Verifică-ți conexiunea și încearcă din nou.';

  @override
  String get checkoutWaiting =>
      'Finalizează plata în browser. Aplicația se actualizează automat când plata este gata.';

  @override
  String get paymentViaStripe =>
      'Plată securizată în browser prin Stripe. Poți anula oricând.';

  @override
  String get paymentViaStore =>
      'Facturat prin contul tău App Store sau Google Play. Poți anula oricând din setările magazinului.';

  @override
  String get keySpace => 'Spațiu';

  @override
  String get doubleOptionTitle => 'Apăsare dublă pe Opțiune';

  @override
  String get doubleOptionSubtitle =>
      'Și apăsarea rapidă de două ori a tastei Opțiune deschide WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Pentru ca funcția să meargă și în alte aplicații, permite WhatStock în Configurări sistem → Intimitate și securitate → Monitorizare intrare, apoi redeschide aplicația.';

  @override
  String get openSystemSettings => 'Deschide Configurări sistem';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Apasă $shortcut sau de două ori tasta Opțiune oriunde pentru a deschide WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Cel mai probabil';

  @override
  String get longTermToday => 'Azi';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years de ani',
      few: '$years ani',
      one: '1 an',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range pe an';
  }

  @override
  String longTermLikely(String price) {
    return 'cel mai probabil $price';
  }

  @override
  String get confidenceLow => 'Încredere scăzută';

  @override
  String get confidenceMedium => 'Încredere medie';

  @override
  String get confidenceHigh => 'Încredere ridicată';

  @override
  String get longTermNote =>
      'Intervalele pe termen lung se bazează pe ipotezele indicate și se lărgesc în timp. Prețuri fără dividende. Estimări aproximative, nu previziuni.';

  @override
  String get portfolio => 'Portofoliu';

  @override
  String get portfolioEmpty =>
      'Deocamdată e gol. Deschide o acțiune și atinge „Adaugă în portofoliu” ca să urmărești ce deții.';

  @override
  String get portfolioLocalNote =>
      'Salvat doar pe acest dispozitiv. Totalurile sunt convertite la cursurile de referință BCE; prețurile pot fi întârziate.';

  @override
  String get addToPortfolio => 'Adaugă în portofoliu';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Adaugă $symbol';
  }

  @override
  String get portfolioQuantity => 'Număr de acțiuni';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Preț pe acțiune ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Data cumpărării';

  @override
  String get portfolioAdd => 'Adaugă';

  @override
  String get portfolioInvalidNumber => 'Introdu un număr mai mare decât zero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol a fost adăugată în portofoliu.';
  }

  @override
  String get portfolioTotalValue => 'Valoare totală';

  @override
  String get portfolioToday => 'Azi';

  @override
  String get portfolioGainLoss => 'Câștig/pierdere';

  @override
  String get portfolioInvested => 'Investit';

  @override
  String get portfolioAllocation => 'Distribuție';

  @override
  String get portfolioPositions => 'Poziții';

  @override
  String portfolioAvgCost(String price) {
    return 'preț mediu $price';
  }

  @override
  String get portfolioYourPosition => 'Poziția ta';

  @override
  String get portfolioPurchases => 'Cumpărări';

  @override
  String get portfolioRemove => 'Elimină';

  @override
  String get portfolioExcluded =>
      'Pozițiile fără preț sau curs de schimb nu sunt incluse în totaluri.';

  @override
  String get priceAlerts => 'Alerte de preț';

  @override
  String get setPriceAlert => 'Setează o alertă de preț';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alertă de preț · $symbol';
  }

  @override
  String get alertKindAbove => 'Urcă peste';

  @override
  String get alertKindBelow => 'Scade sub';

  @override
  String get alertKindMove => 'Se mișcă mult într-o zi';

  @override
  String alertTargetPrice(String currency) {
    return 'Preț ($currency)';
  }

  @override
  String get alertMovePercent => 'Variație zilnică (%)';

  @override
  String get alertAlreadyMet => 'Prețul a depășit deja acest nivel.';

  @override
  String get alertSave => 'Setează alerta';

  @override
  String alertCreated(String symbol) {
    return 'Alertă setată pentru $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Nicio alertă încă. Deschide o acțiune și atinge clopoțelul.';

  @override
  String get alertsNote =>
      'Alertele sunt verificate la fiecare 5 minute cât timp WhatStock rulează. Pe calculator aplicația continuă în bara de meniu sau în bara de sistem; pe telefon, deocamdată alertele vin doar când aplicația e deschisă.';

  @override
  String alertDescAbove(String price) {
    return 'Peste $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Sub $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Variație zilnică ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Declanșată pe $date la $price';
  }

  @override
  String get alertRearm => 'Reactivează';

  @override
  String get alertDelete => 'Șterge';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol a urcat peste $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol a scăzut sub $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol s-a mișcat azi cu $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Preț curent: $price';
  }

  @override
  String get alertOpen => 'Deschide';

  @override
  String get keepInTrayTitle => 'Continuă după închiderea ferestrei';

  @override
  String get keepInTraySubtitle =>
      'WhatStock rămâne în bara de meniu sau în bara de sistem, astfel încât scurtătura și alertele de preț funcționează în continuare.';

  @override
  String get termsOfUse => 'Termeni de utilizare';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String get subscriptionLegal =>
      'Abonamentul se reînnoiește automat în fiecare lună până îl anulezi. Prin abonare accepți Termenii de utilizare și Politica de confidențialitate.';

  @override
  String get deleteAccount => 'Șterge contul';

  @override
  String get deleteAccountTitle => 'Ștergi contul?';

  @override
  String get deleteAccountBody =>
      'Contul tău și tot ce stocăm pe server (e-mail, cotă, utilizare) vor fi șterse definitiv, iar analizele nefolosite se pierd. Un abonament plătit în browser este anulat imediat; un abonament prin App Store sau Google Play trebuie anulat din setările magazinului.';

  @override
  String get deleteLocalData =>
      'Șterge și datele de pe acest dispozitiv (portofoliu, alerte, favorite, istoric, analize salvate)';

  @override
  String get deleteAccountConfirm => 'Șterge definitiv';

  @override
  String get accountDeleted => 'Contul tău a fost șters.';

  @override
  String get errDeleteAccount =>
      'Contul nu a putut fi șters. Verifică conexiunea și încearcă din nou.';

  @override
  String get aiTrialBriefNote =>
      'Analizele din perioada de probă sunt scurte și realizate cu un model AI mai rapid. Cu un plan primești cel mai capabil AI al nostru, mai multe căutări web și lungimile Standard și Detaliată.';

  @override
  String get billingMonthly => 'Lunar';

  @override
  String get billingYearly => 'Anual';

  @override
  String get yearlyDiscount => '2 luni gratuit';

  @override
  String get perYear => '/ an';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price pe lună';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abonamentul anual se reînnoiește automat în fiecare an până îl anulezi. Prin abonare accepți Termenii de utilizare și Politica de confidențialitate.';

  @override
  String get myAnalyses => 'Analizele mele';

  @override
  String get navAlerts => 'Alerte';

  @override
  String get inviteTitle => 'Previzualizare privată';

  @override
  String get inviteBody =>
      'Deocamdată, WhatStock este disponibil doar pe bază de invitație. Introdu codul de invitație primit.';

  @override
  String get inviteCodeLabel => 'Cod de invitație';

  @override
  String get inviteContinue => 'Continuă';

  @override
  String get inviteInvalid => 'Acest cod de invitație nu este valid.';

  @override
  String get inviteExpired =>
      'Această invitație a expirat. Cere un cod nou persoanei care te-a invitat.';

  @override
  String get inviteDeviceLimit =>
      'Acest cod de invitație este deja folosit pe numărul maxim de dispozitive.';

  @override
  String get previewConfidential => 'Previzualizare confidențială';

  @override
  String get errPreviewDailyLimit =>
      'Limita de analize de azi pentru această previzualizare a fost atinsă. Încearcă din nou mâine.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'acum $count de ore',
      few: 'acum $count ore',
      one: 'acum o oră',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'acum $count de zile',
      few: 'acum $count zile',
      one: 'acum o zi',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Actualizezi această analiză?';

  @override
  String staleBody(String age) {
    return 'A fost realizată $age. Între timp, prețurile, știrile și rezultatele s-ar putea să se fi schimbat.';
  }

  @override
  String get staleKeep => 'Arată-o pe cea anterioară';

  @override
  String get staleRefresh => 'Creează una nouă';

  @override
  String seeAll(int count) {
    return 'Vezi toate ($count)';
  }

  @override
  String get searchAnalyses => 'Caută în analizele tale';

  @override
  String get deleteAnalysis => 'Șterge';

  @override
  String analysisDeleted(String symbol) {
    return 'Analiza $symbol a fost ștearsă';
  }

  @override
  String get keyLevelAlertHint =>
      'Atinge un nivel ca să primești o alertă când prețul ajunge la el.';

  @override
  String get shareAnalysisTitle => 'Distribuie analiza';

  @override
  String get shareAsImage => 'Distribuie ca imagine';

  @override
  String get shareAsText => 'Distribuie ca text';

  @override
  String get shareCardFooter => 'Creat cu WhatStock';

  @override
  String get shareCardDisclaimer => 'Analiză AI · nu este sfat de investiții';

  @override
  String get referralTitle => 'Invită prieteni';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de analize suplimentare',
      few: '$count analize suplimentare',
      one: '$count analiză suplimentară',
    );
    return 'Distribuie codul tău. Prietenul tău primește imediat $_temp0, iar tu primești la fel după prima sa analiză.';
  }

  @override
  String get referralYourCode => 'Codul tău';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Invitați: $invited · Recompensați: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ai un cod de la un prieten?';

  @override
  String get referralRedeem => 'Folosește';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Au fost adăugate $count de analize suplimentare. Bun venit!',
      few: 'Au fost adăugate $count analize suplimentare. Bun venit!',
      one: 'A fost adăugată $count analiză suplimentară. Bun venit!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Acest cod nu există. Verifică-l și încearcă din nou.';

  @override
  String get referralErrOwn => 'Nu îți poți folosi propriul cod.';

  @override
  String get referralErrAlready => 'Ai folosit deja codul unui prieten.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de analize suplimentare',
      few: '$count analize suplimentare',
      one: '$count analiză suplimentară',
    );
    return 'Analizez acțiuni cu WhatStock: fotografiezi o acțiune și AI-ul ți-o explică. Cu codul meu $code primești $_temp0.';
  }

  @override
  String get referralCopied => 'Cod copiat';

  @override
  String get onboardTitle1 => 'Fotografiază o acțiune';

  @override
  String get onboardBody1 =>
      'Ajunge un ecran de broker, un ziar sau un logo de companie: WhatStock recunoaște acțiunea și îți arată prețul, graficul și cifrele-cheie.';

  @override
  String get onboardTitle2 => 'Înțelege totul în câteva minute';

  @override
  String get onboardBody2 =>
      'Analiza AI explică ce mișcă acțiunea, riscurile, evaluarea și trei scenarii despre direcția în care ar putea merge prețul, cu surse și în limba ta.';

  @override
  String get onboardTitle3 => 'Rămâi mereu la curent';

  @override
  String get onboardBody3 =>
      'Favoritele, portofoliul tău și alertele de preț te țin la curent. Analizele tale rămân pe dispozitivul tău, gata să fie redeschise.';

  @override
  String get onboardNext => 'Înainte';

  @override
  String get onboardStart => 'Să începem';

  @override
  String get onboardSkip => 'Omite';

  @override
  String changesTitle(String date) {
    return 'De la analiza anterioară ($date)';
  }

  @override
  String get changesPrice => 'Preț';

  @override
  String get changesNoMajor => 'Perspectivele nu s-au schimbat semnificativ.';

  @override
  String get changesPreviousSummary => 'Rezumatul anterior';

  @override
  String get telemetryTitle => 'Ajută la îmbunătățirea WhatStock';

  @override
  String get telemetryBody =>
      'Trimite statistici anonime de utilizare și rapoarte de blocare: ce funcții sunt folosite și ce nu a funcționat. Niciodată acțiunile, analizele sau datele tale personale. Poți modifica oricând această opțiune din Setări.';

  @override
  String get telemetryAllow => 'Permite';

  @override
  String get telemetryDecline => 'Nu, mulțumesc';

  @override
  String get telemetrySetting => 'Statistici anonime și rapoarte de blocare';

  @override
  String get telemetrySettingHint =>
      'Cât de des sunt folosite funcțiile și rapoarte de erori, fără date personale sau conținutul căutărilor și analizelor tale.';

  @override
  String get askButton => 'Ask about this analysis';

  @override
  String askTitle(String symbol) {
    return 'Questions about $symbol';
  }

  @override
  String get askIntro =>
      'Ask anything about the analysis: what a risk means, what would change the outlook, how a number was worked out. The answers are based on this analysis and are not investment advice.';

  @override
  String get askHint => 'Ask a question…';

  @override
  String get askSend => 'Send';

  @override
  String get askThinking => 'Thinking…';

  @override
  String get askSuggest1 => 'What is the biggest risk?';

  @override
  String get askSuggest2 => 'What would change the outlook?';

  @override
  String get askSuggest3 => 'Explain it in simple terms';

  @override
  String get askMaxReached =>
      'That was the last question for this analysis. Make a new analysis to ask more.';

  @override
  String get errAskLimit =>
      'You have reached today\'s limit for questions. Please try again tomorrow.';
}
