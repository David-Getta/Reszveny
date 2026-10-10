// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'StockLens';

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
  String get errorSectionUnavailable => 'Această secțiune nu a putut fi încărcată.';

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
  String get errRecognitionRefused => 'Serviciul de recunoaștere nu a putut procesa această imagine.';

  @override
  String get errRecognitionTruncated => 'Răspunsul serviciului de recunoaștere a fost întrerupt. Încearcă din nou.';

  @override
  String get errRecognitionBadResponse => 'Răspuns neașteptat de la serviciul de recunoaștere.';

  @override
  String get errRecognitionEmpty => 'Serviciul de recunoaștere a returnat un răspuns gol.';

  @override
  String get errMissingFinnhubKey => 'Datele de piață nu sunt configurate (lipsește FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nu s-a putut contacta serviciul de date de piață. Verifică conexiunea la internet.';

  @override
  String get errMarketRateLimited => 'Prea multe solicitări către serviciul de date de piață. Așteaptă un minut.';

  @override
  String errMarketHttp(String status) {
    return 'Serviciul de date de piață a returnat o eroare (HTTP $status).';
  }

  @override
  String get errMarketBadResponse => 'Răspuns neașteptat de la serviciul de date de piață.';

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
    return 'Apasă $shortcut oriunde pentru a deschide StockLens.';
  }

  @override
  String get trayOpen => 'Deschide StockLens';

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
  String get aiGenerating => 'Se pregătește analiza… poate dura un minut sau două.';

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
  String get errAiNotConfigured => 'Analiza AI nu este configurată (lipsește ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable => 'Nu s-a putut contacta serviciul AI. Verifică conexiunea la internet.';

  @override
  String errAiHttp(String status) {
    return 'Serviciul AI a returnat o eroare (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Serviciul AI a refuzat să analizeze această acțiune.';

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
  String get chartUnavailable => 'Istoricul prețurilor nu este disponibil de la sursa de date curentă.';

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
  String get statementsUnavailable => 'Nu sunt disponibile situații financiare raportate pentru această acțiune.';

  @override
  String get launchAtLogin => 'Pornește la autentificare';

  @override
  String get hotkeyLabel => 'Scurtătură globală';

  @override
  String get hotkeyRecordHint => 'Dă clic aici, apoi apasă noua combinație de taste';

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
  String get noFavorites => 'Nu există favorite încă. Atinge steluța unei acțiuni pentru a o adăuga.';

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
  String get updateDownloaded => 'Actualizarea este gata. Repornește pentru a o instala.';

  @override
  String get updateNow => 'Actualizează';

  @override
  String get restartNow => 'Repornește';

  @override
  String get updatesViaStore => 'Actualizările sosesc automat prin magazinul de aplicații.';

  @override
  String get updateCheckFailed => 'Nu s-au putut căuta actualizări.';

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
