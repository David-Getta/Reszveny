// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Fotografoni një aksion dhe mësoni gjithçka për të.';

  @override
  String get homeHint =>
      'Një certifikatë aksionesh, ekrani i një aplikacioni brokerimi, një gazetë ose logoja e një kompanie – çdo gjë që identifikon një aksion.';

  @override
  String get takePhoto => 'Bëj një foto';

  @override
  String get chooseFromGallery => 'Zgjidh nga galeria';

  @override
  String get chooseImage => 'Zgjidh një imazh';

  @override
  String get enterTickerManually => 'Shkruaj simbolin manualisht';

  @override
  String get tickerInputLabel => 'Simboli i aksionit (ticker)';

  @override
  String get tickerInputHint => 'p.sh. AAPL';

  @override
  String get lookUp => 'Kërko';

  @override
  String demoModeBanner(String symbols) {
    return 'Modaliteti demo – nuk është konfiguruar çelës për të dhënat e tregut. Të dhëna shembull janë të disponueshme për: $symbols.';
  }

  @override
  String get recognizing => 'Duke analizuar imazhin…';

  @override
  String get loadingData => 'Duke ngarkuar të dhënat…';

  @override
  String get noCandidatesTitle => 'Nuk u njoh asnjë aksion';

  @override
  String get noCandidatesBody =>
      'Nuk mundëm të identifikojmë një aksion në këtë imazh. Provoni një foto më të qartë ose shkruani simbolin manualisht.';

  @override
  String get whatWeSaw => 'Çfarë pamë';

  @override
  String get chooseCandidateTitle => 'Cilin aksion kishit parasysh?';

  @override
  String confidencePercent(int percent) {
    return '$percent% siguri';
  }

  @override
  String get settings => 'Cilësimet';

  @override
  String get language => 'Gjuha';

  @override
  String get systemLanguage => 'Parazgjedhja e sistemit';

  @override
  String get about => 'Rreth aplikacionit';

  @override
  String get disclaimer =>
      'Ky aplikacion ofron vetëm informacion dhe nuk përbën këshillë investimi. Të dhënat mund të jenë të vonuara ose të pasakta.';

  @override
  String dataSource(String source) {
    return 'Burimi i të dhënave: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Njohja: $source';
  }

  @override
  String get retry => 'Provo përsëri';

  @override
  String get cancel => 'Anulo';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Mbyll';

  @override
  String get errorGeneric => 'Ndodhi një gabim.';

  @override
  String get errorSectionUnavailable => 'Ky seksion nuk mund të ngarkohej.';

  @override
  String get notAvailable => 'n/a';

  @override
  String get sectionIdentity => 'Identifikimi';

  @override
  String get sectionPrice => 'Çmimi';

  @override
  String get sectionValuation => 'Vlerësimi';

  @override
  String get sectionFinancials => 'Të dhënat financiare';

  @override
  String get sectionDividend => 'Dividendi';

  @override
  String get sectionProfile => 'Profili i kompanisë';

  @override
  String get sectionAnalysts => 'Vlerësimet e analistëve';

  @override
  String get sectionNews => 'Lajme';

  @override
  String get sectionRecognition => 'Detajet e njohjes';

  @override
  String get labelSymbol => 'Simboli';

  @override
  String get labelExchange => 'Bursa';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Monedha';

  @override
  String get labelCountry => 'Shteti';

  @override
  String get labelIndustry => 'Industria';

  @override
  String get labelSector => 'Sektori';

  @override
  String get labelWebsite => 'Faqja e internetit';

  @override
  String get labelIpoDate => 'Data e IPO-s';

  @override
  String get labelMarketCap => 'Kapitalizimi i tregut';

  @override
  String get labelSharesOutstanding => 'Aksione në qarkullim';

  @override
  String get labelEmployees => 'Punonjës';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Selia';

  @override
  String get labelDescription => 'Përshkrimi';

  @override
  String get labelLastPrice => 'Çmimi i fundit';

  @override
  String get labelChange => 'Ndryshimi';

  @override
  String get labelOpen => 'Hapja';

  @override
  String get labelDayHigh => 'Maksimumi ditor';

  @override
  String get labelDayLow => 'Minimumi ditor';

  @override
  String get labelPreviousClose => 'Mbyllja e mëparshme';

  @override
  String get labelWeek52High => 'Maksimumi 52-javor';

  @override
  String get labelWeek52Low => 'Minimumi 52-javor';

  @override
  String get labelAverageVolume10d => 'Vol. mesatar (10 ditë)';

  @override
  String updatedAt(String time) {
    return 'Përditësuar $time';
  }

  @override
  String get labelPeTrailing => 'P/E (aktual)';

  @override
  String get labelPeForward => 'P/E (i pritshëm)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / fluksi i lirë i parasë';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Të ardhurat (TTM)';

  @override
  String get labelNetIncomeTtm => 'Fitimi neto (TTM)';

  @override
  String get labelGrossMargin => 'Marzhi bruto';

  @override
  String get labelOperatingMargin => 'Marzhi operativ';

  @override
  String get labelNetMargin => 'Marzhi neto';

  @override
  String get labelRoe => 'Kthimi nga kapitali';

  @override
  String get labelRoa => 'Kthimi nga aktivet';

  @override
  String get labelDebtToEquity => 'Borxhi / kapitali';

  @override
  String get labelCurrentRatio => 'Raporti i likuiditetit';

  @override
  String get labelRevenueGrowth => 'Rritja e të ardhurave (YoY)';

  @override
  String get labelEpsGrowth => 'Rritja e EPS (YoY)';

  @override
  String get labelDividendYield => 'Rendimenti i dividendit';

  @override
  String get labelDividendPerShare => 'Dividendi për aksion';

  @override
  String get labelPayoutRatio => 'Raporti i shpërndarjes';

  @override
  String get labelYieldOnCost => 'Rendimenti mbi çmimin e blerjes';

  @override
  String get labelDividendGrowth5y => 'Rritja e dividendit (5 vjet)';

  @override
  String get dividendNone => 'Asnjë dividend i paguar në 12 muajt e fundit.';

  @override
  String get dividendOnYourShares => 'Për aksionet tuaja, në vit';

  @override
  String get labelConsensus => 'Konsensusi';

  @override
  String get ratingStrongBuy => 'Blerje e fortë';

  @override
  String get ratingBuy => 'Blerje';

  @override
  String get ratingHold => 'Mbaj';

  @override
  String get ratingSell => 'Shitje';

  @override
  String get ratingStrongSell => 'Shitje e fortë';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analistë',
      one: '1 analist',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Periudha: $period';
  }

  @override
  String get noNews => 'Nuk ka lajme të fundit.';

  @override
  String get openArticle => 'Hap artikullin';

  @override
  String get openLinkFailed => 'Lidhja nuk mund të hapej.';

  @override
  String get recognitionSummary => 'Përmbledhje';

  @override
  String get recognitionEvidence => 'Pse mendojmë kështu';

  @override
  String get recognitionRawText => 'Teksti i lexuar nga imazhi';

  @override
  String get errMissingAnthropicKey =>
      'Njohja e imazheve nuk është konfiguruar (mungon ANTHROPIC_API_KEY). Shkruani simbolin manualisht.';

  @override
  String get errRecognitionUnreachable =>
      'Shërbimi i njohjes nuk mund të arrihej. Kontrolloni lidhjen e internetit.';

  @override
  String errRecognitionHttp(String status) {
    return 'Shërbimi i njohjes ktheu një gabim (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Shërbimi i njohjes nuk mundi të përpunojë këtë imazh.';

  @override
  String get errRecognitionTruncated =>
      'Përgjigjja e njohjes u ndërpre. Ju lutemi provoni përsëri.';

  @override
  String get errRecognitionBadResponse =>
      'Përgjigje e papritur nga shërbimi i njohjes.';

  @override
  String get errRecognitionEmpty =>
      'Shërbimi i njohjes ktheu një përgjigje bosh.';

  @override
  String get errMissingFinnhubKey =>
      'Të dhënat e tregut nuk janë konfiguruar (mungon FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Shërbimi i të dhënave të tregut nuk mund të arrihej. Kontrolloni lidhjen e internetit.';

  @override
  String get errMarketRateLimited =>
      'Shumë kërkesa drejt shërbimit të të dhënave të tregut. Ju lutemi prisni një minutë.';

  @override
  String errMarketHttp(String status) {
    return 'Shërbimi i të dhënave të tregut ktheu një gabim (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Përgjigje e papritur nga shërbimi i të dhënave të tregut.';

  @override
  String errNoQuote(String symbol) {
    return 'Nuk u gjetën të dhëna çmimi për $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nuk u gjet profil kompanie për $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Modaliteti demo mbështet vetëm $symbols. Shtoni një FINNHUB_API_KEY për të dhëna në kohë reale.';
  }

  @override
  String errUnknown(String detail) {
    return 'Ndodhi një gabim: $detail';
  }

  @override
  String get newSearch => 'Kërkim i ri';

  @override
  String get recentSearches => 'Të fundit';

  @override
  String get noRecentSearches => 'Ende nuk ka kërkime të fundit.';

  @override
  String get clearRecent => 'Fshi të fundit';

  @override
  String get greeting => 'Cilin aksion të shohim?';

  @override
  String get searchHint => 'Simboli ose emri i kompanisë';

  @override
  String get attachImage => 'Bashkëngjit një imazh';

  @override
  String get searchResultsTitle => 'Rezultatet e kërkimit';

  @override
  String errNoResults(String query) {
    return 'Nuk u gjet asnjë aksion për „$query“.';
  }

  @override
  String get quickBarHint => 'Shkruaj një simbol ose emrin e kompanisë…';

  @override
  String get openFullWindow => 'Hap dritaren';

  @override
  String hotkeyHint(String shortcut) {
    return 'Shtypni $shortcut kudo për të hapur WhatStock.';
  }

  @override
  String get trayOpen => 'Hap WhatStock';

  @override
  String get trayQuickSearch => 'Kërkim i shpejtë';

  @override
  String get trayQuit => 'Dil';

  @override
  String get appearance => 'Pamja';

  @override
  String get themeSystem => 'Sistemi';

  @override
  String get themeDark => 'E errët';

  @override
  String get themeLight => 'E çelët';

  @override
  String get back => 'Prapa';

  @override
  String get aiSectionTitle => 'Analiza me AI';

  @override
  String get aiIntro =>
      'Një përmbledhje e detajuar e shkruar nga AI: përmbledhje e lajmeve të fundit, biznesi, pikat e forta, rreziqet dhe faktorët e fshehur, vlerësimi, një perspektivë e çmimit me skenarë nga këndvështrimi psikologjik, sociologjik, teknik dhe makroekonomik, dhe çfarë duhet ndjekur.';

  @override
  String get aiGenerate => 'Gjenero analizën';

  @override
  String get aiRegenerate => 'Gjenero përsëri';

  @override
  String get aiGenerating =>
      'Duke përgatitur analizën… kjo mund të zgjasë një ose dy minuta.';

  @override
  String get aiSources => 'Burimet';

  @override
  String aiGeneratedAt(String time) {
    return 'Gjeneruar $time';
  }

  @override
  String get aiDisclaimer =>
      'Analizë e gjeneruar nga AI bazuar në të dhëna publike dhe lajme të fundit. Mund të përmbajë gabime ose të jetë e vjetruar dhe nuk përbën këshillë investimi.';

  @override
  String get errAiNotConfigured =>
      'Analiza me AI nuk është konfiguruar (mungon ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Shërbimi i AI nuk mund të arrihej. Kontrolloni lidhjen e internetit.';

  @override
  String errAiHttp(String status) {
    return 'Shërbimi i AI ktheu një gabim (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Shërbimi i AI refuzoi të analizojë këtë aksion.';

  @override
  String get errAiBadResponse => 'Përgjigje e papritur nga shërbimi i AI.';

  @override
  String get sectionChart => 'Grafiku i çmimit';

  @override
  String get rangeOneWeek => '1J';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1V';

  @override
  String get rangeFiveYears => '5V';

  @override
  String get chartUnavailable =>
      'Historiku i çmimeve nuk është i disponueshëm nga burimi aktual i të dhënave.';

  @override
  String get sectionStatements => 'Pasqyrat financiare (vjetore)';

  @override
  String get labelFiscalYear => 'Viti fiskal';

  @override
  String get labelRevenue => 'Të ardhurat';

  @override
  String get labelNetIncome => 'Fitimi neto';

  @override
  String get labelTotalAssets => 'Aktivet totale';

  @override
  String get labelTotalLiabilities => 'Detyrimet totale';

  @override
  String get labelEquity => 'Kapitali i aksionarëve';

  @override
  String get labelOperatingCashFlow =>
      'Fluksi i parasë nga veprimtaria operative';

  @override
  String get statementsUnavailable =>
      'Pasqyrat financiare të raportuara nuk janë të disponueshme për këtë aksion.';

  @override
  String get launchAtLogin => 'Nis gjatë hyrjes në sistem';

  @override
  String get hotkeyLabel => 'Shkurtore globale';

  @override
  String get hotkeyRecordHint =>
      'Klikoni këtu, pastaj shtypni kombinimin e ri të tasteve';

  @override
  String get hotkeyReset => 'Rikthe parazgjedhjen';

  @override
  String get pasteImage => 'Ngjit imazhin nga kujtesa e përkohshme';

  @override
  String get errClipboardNoImage => 'Nuk ka imazh në kujtesën e përkohshme.';

  @override
  String get favorites => 'Të preferuarat';

  @override
  String get addToFavorites => 'Shto te të preferuarat';

  @override
  String get removeFromFavorites => 'Hiq nga të preferuarat';

  @override
  String get noFavorites =>
      'Ende nuk ka të preferuara. Prekni yllin e një aksioni për ta shtuar.';

  @override
  String get displayCurrency => 'Monedha e shfaqjes';

  @override
  String get displayCurrencyNone => 'Vetëm monedha e vetë aksionit';

  @override
  String labelConverted(String currency) {
    return '≈ në $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Kursi: 1 $from = $rate $to (BQE, $date)';
  }

  @override
  String get updates => 'Përditësimet';

  @override
  String currentVersion(String version) {
    return 'Versioni $version';
  }

  @override
  String get autoUpdate => 'Instalo përditësimet automatikisht';

  @override
  String get checkForUpdates => 'Kontrollo për përditësime';

  @override
  String get updateChecking => 'Po kontrollohet për përditësime…';

  @override
  String get updateUpToDate => 'Keni versionin më të fundit.';

  @override
  String updateAvailable(String version) {
    return 'Versioni $version është i disponueshëm.';
  }

  @override
  String get updateDownloading => 'Përditësimi po shkarkohet në sfond…';

  @override
  String get updateDownloaded =>
      'Përditësimi është gati. Rinisni aplikacionin për ta instaluar.';

  @override
  String get updateNow => 'Përditëso';

  @override
  String get restartNow => 'Rinis';

  @override
  String get updatesViaStore =>
      'Përditësimet vijnë automatikisht përmes dyqanit të aplikacioneve.';

  @override
  String get updateCheckFailed =>
      'Nuk u arrit të kontrollohej për përditësime.';

  @override
  String get subscription => 'Abonimi';

  @override
  String get planTrial => 'Provë';

  @override
  String get planNormal => 'Normal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Asnjë plan aktiv';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analiza në muaj';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Provë falas $days-ditore me $count analiza';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Mbeten $days ditë provë',
      one: 'Mbetet 1 ditë provë',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Prova juaj falas ka përfunduar. Zgjidhni një plan për të vazhduar analizat.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Kanë mbetur $remaining nga $total analiza në këtë periudhë';
  }

  @override
  String extraCredits(int count) {
    return '$count analiza shtesë';
  }

  @override
  String renewsOn(String date) {
    return 'Rinovohet më $date';
  }

  @override
  String get choosePlan => 'Zgjidhni një plan';

  @override
  String get currentPlan => 'Plani aktual';

  @override
  String get subscribe => 'Abonohu';

  @override
  String get perMonth => '/ muaj';

  @override
  String get extraPacksTitle =>
      'Keni nevojë për më shumë? Blini analiza shtesë';

  @override
  String get extraPacksHint =>
      'Analizat shtesë nuk skadojnë kurrë dhe përdoren pas kuotës suaj mujore.';

  @override
  String get buy => 'Bli';

  @override
  String get restorePurchases => 'Rikthe blerjet';

  @override
  String get manageSubscription => 'Menaxho abonimin';

  @override
  String get purchaseSuccess => 'Faleminderit! Blerja juaj është aktive.';

  @override
  String get purchasePending => 'Blerja në pritje…';

  @override
  String get purchaseFailed => 'Blerja nuk mund të përfundohej.';

  @override
  String get purchaseCanceled => 'Blerja u anulua.';

  @override
  String get billingUnavailable =>
      'Blerjet nuk janë ende të disponueshme në këtë platformë. Abonohuni në telefonin ose Mac-un tuaj; plani juaj do të funksionojë në çdo pajisje.';

  @override
  String get errQuotaExceeded =>
      'Nuk keni më analiza për këtë periudhë. Përmirësoni planin ose blini analiza shtesë.';

  @override
  String get errTrialExpired =>
      'Prova juaj falas ka përfunduar. Zgjidhni një plan për të vazhduar.';

  @override
  String get errNoPlan => 'Për analizën me AI nevojitet një plan aktiv.';

  @override
  String get viewPlans => 'Shiko planet';

  @override
  String get usageTitle => 'Përdorimi';

  @override
  String get demoPurchaseNote =>
      'Faturim demo: blerjet simulohen në këtë platformë.';

  @override
  String get mostPopular => 'Më i popullarizuari';

  @override
  String get bestValue => 'Vlera më e mirë';

  @override
  String get planFeaturesCommon =>
      'Njohja e fotove, të dhënat në kohë reale, grafikët, të preferuarat dhe të 120 gjuhët përfshihen në çdo plan. Kuota mbulon analizat me AI.';

  @override
  String get searchLanguages => 'Kërko gjuhët…';

  @override
  String get noLanguageMatch => 'Asnjë gjuhë nuk përputhet.';

  @override
  String get aiSettings => 'Analiza me AI';

  @override
  String get aiLength => 'Gjatësia';

  @override
  String get aiDepthBrief => 'E shkurtër';

  @override
  String get aiDepthStandard => 'Standarde';

  @override
  String get aiDepthDeep => 'E thelluar';

  @override
  String get aiDepthBriefDesc => 'Thelbësorja, shpejt.';

  @override
  String get aiDepthStandardDesc => 'Raport i plotë me të gjitha seksionet.';

  @override
  String get aiDepthDeepDesc =>
      'Më shumë kërkime në ueb, krahasim me konkurrentët dhe detaje më të thella.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Rreth $min–$max fjalë';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'përdor $count analiza',
      one: 'përdor $count analizë',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Niveli i lexuesit';

  @override
  String get aiReaderBeginner => 'Fillestar';

  @override
  String get aiReaderExperienced => 'Me përvojë';

  @override
  String get aiReaderBeginnerDesc =>
      'Gjuhë e thjeshtë; çdo term teknik shpjegohet.';

  @override
  String get aiReaderExperiencedDesc =>
      'Tekst më i ngjeshur me terminologji standarde financiare.';

  @override
  String get aiCounterArgument => 'Kundërargumenti më i fortë';

  @override
  String get aiCounterArgumentDesc =>
      'Përmbledhja përfundon gjithmonë me argumentin më të fortë kundër përfundimit të vet.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Deri në $count kërkime në ueb për analizë me planin tuaj',
      one: 'Deri në $count kërkim në ueb për analizë me planin tuaj',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Kërkime në ueb për gjatësinë standarde sipas planit: Normal $normal, Pro $pro, Max $max, Ultra $ultra. E shkurtra përdor 2 më pak, e thelluara 2 më shumë.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'deri në $count kërkime në ueb',
      one: 'deri në $count kërkim në ueb',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kërkime në ueb për analizë',
      one: '$count kërkim në ueb për analizë',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Kjo gjatësi kërkon më shumë analiza ($needed) se sa ju kanë mbetur ($left). Zgjidhni një gjatësi më të shkurtër te Cilësimet ose merrni më shumë analiza.';
  }

  @override
  String get outlookMarketMood => 'Disponimi i tregut';

  @override
  String get moodVeryPessimistic => 'Shumë pesimist';

  @override
  String get moodPessimistic => 'Pesimist';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get moodOptimistic => 'Optimist';

  @override
  String get moodVeryOptimistic => 'Shumë optimist';

  @override
  String get scenarioBull => 'Skenari optimist';

  @override
  String get scenarioBase => 'Skenari bazë';

  @override
  String get scenarioBear => 'Skenari pesimist';

  @override
  String outlookCurrentPrice(String price) {
    return 'Çmimi aktual: $price';
  }

  @override
  String get outlookKeyLevels => 'Nivelet kyçe';

  @override
  String get keyLevelSupport => 'Mbështetja';

  @override
  String get keyLevelResistance => 'Rezistenca';

  @override
  String get keyLevelAnchor => 'Spiranca';

  @override
  String get upcomingEvents => 'Ngjarjet e ardhshme';

  @override
  String get outlookChartNote =>
      'Intervale orientuese; probabilitetet janë vlerësime të përafërta, jo parashikime.';

  @override
  String get accountTitle => 'Llogaria';

  @override
  String get signIn => 'Hyr';

  @override
  String get signOut => 'Dil';

  @override
  String get notSignedIn => 'Nuk keni hyrë';

  @override
  String get accountBenefit =>
      'Hyni që abonimi juaj të funksionojë në të gjitha pajisjet tuaja.';

  @override
  String get accountSyncedNote =>
      'Abonimi juaj dhe analizat e mbetura janë të njëjta në çdo pajisje.';

  @override
  String get signInTitle => 'Hyni në WhatStock';

  @override
  String get emailLabel => 'Adresa e email-it';

  @override
  String get continueWithEmail => 'Vazhdo me email';

  @override
  String codeSentTo(String email) {
    return 'Dërguam një kod 6-shifror te $email. Është i vlefshëm për 10 minuta.';
  }

  @override
  String get codeLabel => 'Kodi i hyrjes';

  @override
  String get resendCode => 'Dërgo një kod të ri';

  @override
  String get useDifferentEmail => 'Përdor një email tjetër';

  @override
  String get errInvalidCode => 'Kodi është i gabuar ose ka skaduar.';

  @override
  String get errInvalidEmail =>
      'Ju lutemi vendosni një adresë email-i të vlefshme.';

  @override
  String get errSignInFailed =>
      'Hyrja dështoi. Kontrolloni lidhjen dhe provoni përsëri.';

  @override
  String get checkoutWaiting =>
      'Përfundoni pagesën në shfletues. Aplikacioni përditësohet automatikisht kur të mbarojë.';

  @override
  String get paymentViaStripe =>
      'Pagesë e sigurt në shfletues përmes Stripe. Anuloni në çdo kohë.';

  @override
  String get paymentViaStore =>
      'Faturohet përmes llogarisë suaj App Store ose Google Play. Anuloni në çdo kohë te cilësimet e dyqanit.';

  @override
  String get keySpace => 'Hapësirë';

  @override
  String get doubleOptionTitle => 'Shtypje e dyfishtë e Option';

  @override
  String get doubleOptionSubtitle =>
      'Edhe shtypja e shpejtë dy herë e tastit Option hap WhatStock.';

  @override
  String get doubleOptionPermission =>
      'Që të funksionojë edhe në aplikacione të tjera, lejoni WhatStock te Cilësimet e sistemit → Privatësia dhe siguria → Monitorimi i hyrjes, pastaj rihapni aplikacionin.';

  @override
  String get openSystemSettings => 'Hap Cilësimet e sistemit';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Shtypni $shortcut ose shtypni dy herë Option kudo për të hapur WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Më e mundshme';

  @override
  String get longTermToday => 'Sot';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years vjet',
      one: '1 vit',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range në vit';
  }

  @override
  String longTermLikely(String price) {
    return 'më e mundshme $price';
  }

  @override
  String get confidenceLow => 'Besueshmëri e ulët';

  @override
  String get confidenceMedium => 'Besueshmëri mesatare';

  @override
  String get confidenceHigh => 'Besueshmëri e lartë';

  @override
  String get longTermNote =>
      'Intervalet afatgjata bazohen në supozimet e dhëna dhe zgjerohen me kohën. Çmimet pa dividendë. Vlerësime të përafërta, jo parashikime.';

  @override
  String get portfolio => 'Portofoli';

  @override
  String get portfolioEmpty =>
      'Ende bosh. Hapni një aksion dhe prekni “Shto në portofol” për të ndjekur atë që zotëroni.';

  @override
  String get portfolioLocalNote =>
      'Ruhet në këtë pajisje dhe, nëse keni hyrë, në llogarinë tuaj. Totalet konvertohen me kurset e referencës së BQE-së; çmimet mund të vonohen.';

  @override
  String get addToPortfolio => 'Shto në portofol';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Shto $symbol';
  }

  @override
  String get portfolioQuantity => 'Numri i aksioneve';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Çmimi për aksion ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Data e blerjes';

  @override
  String get portfolioAdd => 'Shto';

  @override
  String get portfolioInvalidNumber => 'Vendosni një numër më të madh se zero.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol u shtua në portofol.';
  }

  @override
  String get portfolioTotalValue => 'Vlera totale';

  @override
  String get portfolioToday => 'Sot';

  @override
  String get portfolioGainLoss => 'Fitim/humbje';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividendë këtë vit: $amount';
  }

  @override
  String get portfolioInvested => 'Investuar';

  @override
  String get portfolioAllocation => 'Shpërndarja';

  @override
  String get portfolioPositions => 'Pozicionet';

  @override
  String portfolioAvgCost(String price) {
    return 'kosto mesatare $price';
  }

  @override
  String get portfolioYourPosition => 'Pozicioni juaj';

  @override
  String get portfolioPurchases => 'Blerjet';

  @override
  String get portfolioRemove => 'Hiq';

  @override
  String get portfolioExcluded =>
      'Pozicionet pa çmim ose kurs këmbimi nuk përfshihen në totale.';

  @override
  String get priceAlerts => 'Alarmet e çmimit';

  @override
  String get setPriceAlert => 'Vendos alarm çmimi';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alarm çmimi · $symbol';
  }

  @override
  String get alertKindAbove => 'Ngjitet mbi';

  @override
  String get alertKindBelow => 'Bie nën';

  @override
  String get alertKindMove => 'Lëviz shumë brenda ditës';

  @override
  String alertTargetPrice(String currency) {
    return 'Çmimi ($currency)';
  }

  @override
  String get alertMovePercent => 'Lëvizja ditore (%)';

  @override
  String get alertAlreadyMet => 'Çmimi e ka kaluar tashmë këtë nivel.';

  @override
  String get alertSave => 'Vendos alarmin';

  @override
  String alertCreated(String symbol) {
    return 'Alarmi për $symbol u vendos.';
  }

  @override
  String get alertsEmpty =>
      'Ende nuk ka alarme. Hapni një aksion dhe prekni zilen.';

  @override
  String get alertsNote =>
      'Alarmet kontrollohen çdo 5 minuta sa kohë që WhatStock është në punë. Në kompjuter aplikacioni vazhdon në shiritin e menysë ose në tabaka; në telefon, për momentin njofton vetëm kur aplikacioni është i hapur.';

  @override
  String alertDescAbove(String price) {
    return 'Mbi $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Nën $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Lëvizja ditore ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'U aktivizua më $date me $price';
  }

  @override
  String get alertRearm => 'Riaktivizo';

  @override
  String get alertDelete => 'Fshi';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol u ngjit mbi $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol ra nën $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol lëvizi sot $percent';
  }

  @override
  String alertHitBody(String price) {
    return 'Çmimi aktual: $price';
  }

  @override
  String get alertOpen => 'Hap';

  @override
  String get keepInTrayTitle => 'Vazhdo pasi mbyllet dritarja';

  @override
  String get keepInTraySubtitle =>
      'WhatStock mbetet në shiritin e menysë ose në tabaka, kështu shkurtorja dhe alarmet e çmimit vazhdojnë të punojnë.';

  @override
  String get termsOfUse => 'Kushtet e përdorimit';

  @override
  String get privacyPolicy => 'Politika e privatësisë';

  @override
  String get subscriptionLegal =>
      'Abonimi rinovohet automatikisht çdo muaj derisa ta anuloni. Duke u abonuar pranoni Kushtet e përdorimit dhe Politikën e privatësisë.';

  @override
  String get deleteAccount => 'Fshi llogarinë';

  @override
  String get deleteAccountTitle => 'Të fshihet llogaria juaj?';

  @override
  String get deleteAccountBody =>
      'Llogaria juaj dhe gjithçka e ruajtur në serverin tonë (email, kuota, përdorimi) do të fshihen përgjithmonë, dhe analizat e papërdorura humbasin. Abonimi i paguar në shfletues anulohet menjëherë; abonimi përmes App Store ose Google Play duhet anuluar te cilësimet e dyqanit.';

  @override
  String get deleteLocalData =>
      'Fshi edhe të dhënat në këtë pajisje (portofoli, alarmet, të preferuarat, historiku, analizat e ruajtura)';

  @override
  String get deleteAccountConfirm => 'Fshi përgjithmonë';

  @override
  String get accountDeleted => 'Llogaria juaj u fshi.';

  @override
  String get errDeleteAccount =>
      'Llogaria nuk u fshi dot. Kontrolloni lidhjen dhe provoni sërish.';

  @override
  String get aiTrialBriefNote =>
      'Analizat e provës janë të shkurtra dhe kryhen me një model AI më të shpejtë. Me një plan merrni AI-në tonë më të aftë, më shumë kërkime në ueb dhe gjatësitë Standarde dhe E thelluar.';

  @override
  String get billingMonthly => 'Mujore';

  @override
  String get billingYearly => 'Vjetore';

  @override
  String get yearlyDiscount => '2 muaj falas';

  @override
  String get perYear => '/ vit';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price në muaj';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abonimi vjetor rinovohet automatikisht çdo vit derisa ta anuloni. Duke u abonuar pranoni Kushtet e përdorimit dhe Politikën e privatësisë.';

  @override
  String get myAnalyses => 'Analizat e mia';

  @override
  String get navAlerts => 'Alarmet';

  @override
  String get inviteTitle => 'Pamje paraprake e mbyllur';

  @override
  String get inviteBody =>
      'WhatStock tani për tani është i disponueshëm vetëm me ftesë. Vendosni kodin e ftesës që keni marrë.';

  @override
  String get inviteCodeLabel => 'Kodi i ftesës';

  @override
  String get inviteContinue => 'Vazhdo';

  @override
  String get inviteInvalid => 'Ky kod ftese nuk është i vlefshëm.';

  @override
  String get inviteExpired =>
      'Kjo ftesë ka skaduar. Kërkojini personit që ju ftoi një kod të ri.';

  @override
  String get inviteDeviceLimit =>
      'Ky kod ftese përdoret tashmë në numrin maksimal të pajisjeve.';

  @override
  String get previewConfidential => 'Pamje paraprake konfidenciale';

  @override
  String get errPreviewDailyLimit =>
      'Kufiri ditor i analizave për këtë pamje paraprake është arritur. Provoni përsëri nesër.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'para $count orësh',
      one: 'para 1 ore',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'para $count ditësh',
      one: 'para 1 dite',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Ta përditësojmë këtë analizë?';

  @override
  String staleBody(String age) {
    return 'Është bërë $age. Çmimet, lajmet dhe rezultatet mund të kenë ndryshuar që atëherë.';
  }

  @override
  String get staleKeep => 'Shfaq të mëparshmen';

  @override
  String get staleRefresh => 'Bëj një të re';

  @override
  String seeAll(int count) {
    return 'Shiko të gjitha ($count)';
  }

  @override
  String get searchAnalyses => 'Kërko në analizat e tua';

  @override
  String get deleteAnalysis => 'Fshi';

  @override
  String analysisDeleted(String symbol) {
    return 'Analiza e $symbol u fshi';
  }

  @override
  String get keyLevelAlertHint =>
      'Prekni një nivel për të marrë alarm kur çmimi ta arrijë.';

  @override
  String get shareAnalysisTitle => 'Ndaj analizën';

  @override
  String get shareAsImage => 'Ndaj si imazh';

  @override
  String get shareAsText => 'Ndaj si tekst';

  @override
  String get shareCardFooter => 'Krijuar me WhatStock';

  @override
  String get shareCardDisclaimer =>
      'Analiza me AI · nuk është këshillë investimi';

  @override
  String get referralTitle => 'Fto miqtë';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analiza shtesë',
      one: '1 analizë shtesë',
    );
    return 'Ndaj kodin tënd. Shoku yt merr menjëherë $_temp0, dhe ti merr po aq pas analizës së tij të parë.';
  }

  @override
  String get referralYourCode => 'Kodi yt';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Të ftuar: $invited · Të shpërblyer: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ke një kod nga një mik?';

  @override
  String get referralRedeem => 'Aktivizo';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U shtuan $count analiza shtesë. Mirë se erdhe!',
      one: 'U shtua 1 analizë shtesë. Mirë se erdhe!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Ky kod nuk ekziston. Kontrolloje dhe provo përsëri.';

  @override
  String get referralErrOwn => 'Nuk mund të aktivizosh kodin tënd.';

  @override
  String get referralErrAlready => 'Ke aktivizuar tashmë kodin e një miku.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analiza shtesë',
      one: '1 analizë shtesë',
    );
    return 'Analizoj aksione me WhatStock: fotografo një aksion dhe AI ta shpjegon. Me kodin tim $code merr $_temp0.';
  }

  @override
  String get referralCopied => 'Kodi u kopjua';

  @override
  String get onboardTitle1 => 'Fotografoni një aksion';

  @override
  String get onboardBody1 =>
      'Mjafton ekrani i një aplikacioni brokerimi, një gazetë ose logoja e një kompanie: WhatStock e njeh aksionin dhe ju tregon çmimin, grafikun dhe shifrat kryesore.';

  @override
  String get onboardTitle2 => 'Kuptojeni në pak minuta';

  @override
  String get onboardBody2 =>
      'Analiza me AI shpjegon se çfarë e lëviz aksionin, rreziqet, vlerësimin dhe tre skenarë se ku mund të shkojë çmimi – me burime dhe në gjuhën tuaj.';

  @override
  String get onboardTitle3 => 'Jini gjithmonë në dijeni';

  @override
  String get onboardBody3 =>
      'Të preferuarat, portofoli juaj dhe alarmet e çmimit ju mbajnë të informuar. Analizat tuaja mbeten në pajisjen tuaj, gati për t’u rihapur.';

  @override
  String get onboardNext => 'Tjetër';

  @override
  String get onboardStart => 'Fillo';

  @override
  String get onboardSkip => 'Kapërce';

  @override
  String changesTitle(String date) {
    return 'Që nga analiza e mëparshme ($date)';
  }

  @override
  String get changesPrice => 'Çmimi';

  @override
  String get changesNoMajor => 'Perspektiva nuk ka ndryshuar ndjeshëm.';

  @override
  String get changesPreviousSummary => 'Përmbledhja e mëparshme';

  @override
  String get telemetryTitle => 'Ndihmo në përmirësimin e WhatStock';

  @override
  String get telemetryBody =>
      'Ndaj statistika anonime përdorimi dhe raporte ndërprerjesh: cilat veçori përdoren dhe çfarë shkoi keq. Asnjëherë aksionet, analizat apo të dhënat e tua personale. Mund ta ndryshosh këtë në çdo kohë te Cilësimet.';

  @override
  String get telemetryAllow => 'Lejo';

  @override
  String get telemetryDecline => 'Jo, faleminderit';

  @override
  String get telemetrySetting => 'Statistika anonime dhe raporte ndërprerjesh';

  @override
  String get telemetrySettingHint =>
      'Sa shpesh përdoren veçoritë dhe raportet e gabimeve, pa të dhëna personale apo përmbajtjen e kërkimeve dhe analizave të tua.';

  @override
  String get askButton => 'Pyetni për këtë analizë';

  @override
  String askTitle(String symbol) {
    return 'Pyetje për $symbol';
  }

  @override
  String get askIntro =>
      'Pyetni çfarëdo për analizën: çfarë do të thotë një rrezik, çfarë do ta ndryshonte perspektivën, si është llogaritur një numër. Përgjigjet bazohen në këtë analizë dhe nuk përbëjnë këshillë investimi.';

  @override
  String get askHint => 'Bëni një pyetje…';

  @override
  String get askSend => 'Dërgo';

  @override
  String get askThinking => 'Duke menduar…';

  @override
  String get askSuggest1 => 'Cili është rreziku më i madh?';

  @override
  String get askSuggest2 => 'Çfarë do ta ndryshonte perspektivën?';

  @override
  String get askSuggest3 => 'Shpjegoje me fjalë të thjeshta';

  @override
  String get askMaxReached =>
      'Kjo ishte pyetja e fundit për këtë analizë. Krijoni një analizë të re për të bërë më shumë pyetje.';

  @override
  String get errAskLimit =>
      'Keni arritur kufirin e sotëm të pyetjeve. Provoni përsëri nesër.';

  @override
  String get eventTomorrow => 'Nesër';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'pas $days ditësh',
      one: 'pas 1 dite',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Rezultatet tremujore';

  @override
  String get eventBeforeOpen => 'para hapjes së tregut';

  @override
  String get eventAfterClose => 'pas mbylljes së tregut';

  @override
  String eventEpsEstimate(String value) {
    return 'EPS e pritur: $value';
  }

  @override
  String get eventFromAnalysis => 'Nga analiza jote';

  @override
  String get eventDividend => 'Dividendë i pritur';

  @override
  String get eventDividendEstimate => 'Vlerësuar nga pagesat që regjistruat';

  @override
  String get eventsHint =>
      'Datat e rezultateve të aksioneve të preferuara dhe të portofolit tënd për 90 ditët e ardhshme, ngjarjet me datë të shënuara nga analizat e tua, si dhe dividendët e pritur nga pagesat që regjistrove.';

  @override
  String get eventsEmpty =>
      'Nuk ka ngjarje me datë në 90 ditët e ardhshme. Shto të preferuara ose aksione në portofol për të parë këtu datat e rezultateve të tyre; dividendët e regjistruar tregojnë pagesën e radhës të pritur.';

  @override
  String get compareTitle => 'Krahaso';

  @override
  String get compareAdd => 'Shto një aksion';

  @override
  String get compareRemove => 'Hiq';

  @override
  String get compareTickerHint => 'Simboli, p.sh. MSFT';

  @override
  String get compareHint =>
      'Shifrat kryesore krah për krah; vlera më e mirë në çdo rresht është e theksuar. Shumat janë në monedhën e secilit aksion.';

  @override
  String get compareNoAnalysis => 'Ende pa analizë';

  @override
  String get portfolioDividends => 'Dividendi vjetor';

  @override
  String portfolioDividendYield(String percent) {
    return 'Rendiment $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividendi vjetor i pritshëm bazohet në dividendët e paguar në 12 muajt e fundit; pagesat e ardhshme nuk janë të garantuara.';

  @override
  String positionDividend(String amount) {
    return 'Dividendi: $amount në vit';
  }

  @override
  String get chartAvgCost => 'Mesatarja juaj';

  @override
  String get chartAlertLevel => 'Alarm';

  @override
  String get marketsToday => 'Tregjet sot';

  @override
  String get notesTitle => 'Shënimet e mia';

  @override
  String get notesHint =>
      'Pse e bletë, çfarë po ndiqni, çfarë do t’ju bënte ta shisnit?';

  @override
  String get notesInfo =>
      'Ruhet në këtë pajisje dhe, nëse keni hyrë, në llogarinë tuaj. Analiza me AI merr parasysh shënimet tuaja.';

  @override
  String notesSaved(String date) {
    return 'Ruajtur $date';
  }

  @override
  String get peersTitle => 'Kompani të ngjashme';

  @override
  String get portfolioExport => 'Eksporto si CSV';

  @override
  String get portfolioImport => 'Importo nga CSV';

  @override
  String get portfolioImportHint =>
      'Ngjit një blerje për rresht: simboli i aksionit, sasia, çmimi, monedha, data (VVVV-MM-DD). Kolonat mund të ndahen me presje, pikëpresje ose tabulacione; rreshti i titujve është opsional.';

  @override
  String get portfolioImportButton => 'Importo';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U shtuan $count transaksione',
      one: 'U shtua 1 transaksion',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U anashkaluan $count rreshta',
      one: 'U anashkalua 1 rresht',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Portofoli, të preferuarat, alarmet e çmimit dhe shënimet sinkronizohen në të gjitha pajisjet tuaja.';

  @override
  String syncLast(String time) {
    return 'Sinkronizimi i fundit: $time';
  }

  @override
  String get syncNow => 'Sinkronizo tani';

  @override
  String get syncFailed =>
      'Sinkronizimi dështoi. Do të provohet përsëri automatikisht.';

  @override
  String get alertEmailTitle => 'Email kur aktivizohet një alarm';

  @override
  String get alertEmailOn =>
      'I kontrollojmë alarmet tuaja çdo disa minuta dhe ju dërgojmë email, edhe kur aplikacioni është i mbyllur.';

  @override
  String get alertEmailSignIn =>
      'Hyni me email-in tuaj te Cilësimet për të marrë alarmet me email, edhe kur aplikacioni është i mbyllur.';

  @override
  String get portfolioHistory => 'Ecuria e vlerës';

  @override
  String get portfolioReviewTitle => 'Analiza e portofolit me AI';

  @override
  String get portfolioReviewIntro =>
      'AI shqyrton gjithë portofolin tënd: përqendrimin, ekspozimin ndaj sektorëve dhe monedhave, rreziqet e përbashkëta të aksioneve të tua dhe dividentët. Përdor 1 analizë.';

  @override
  String get portfolioReviewButton => 'Analizo portofolin tim';

  @override
  String get portfolioReviewAgain => 'Analizo përsëri';

  @override
  String get portfolioReviewWorking => 'Duke analizuar portofolin tënd…';

  @override
  String get digestTitle => 'Përmbledhje javore me email';

  @override
  String get digestHint =>
      'Çdo të hënë: si lëvizën të preferuarat dhe portofoli juaj javën e kaluar, si dhe datat e ardhshme të rezultateve të tyre.';

  @override
  String get benchmarkTitle => 'Krahasuar me S&P 500';

  @override
  String get benchmarkTitleIndex => 'Krahasuar me një indeks';

  @override
  String get benchmarkHintIndex =>
      'Sikur çdo blerje të ishte investuar në të njëjtën ditë në një fond që ndjek indeksin e zgjedhur. Pa dividendë; kthimet e kaluara nuk parashikojnë ato të ardhshme.';

  @override
  String get benchmarkYours => 'Blerjet tuaja';

  @override
  String benchmarkAhead(String points) {
    return '$points pikë përqindjeje më mirë se indeksi';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points pikë përqindjeje pas indeksit';
  }

  @override
  String get portfolioSell => 'Shit';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Shit $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Çmimi i shitjes për aksion ($currency)';
  }

  @override
  String get portfolioSellDate => 'Data e shitjes';

  @override
  String get portfolioSellAll => 'Të gjitha';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Keni $quantity';
  }

  @override
  String get portfolioSold => 'Shitur';

  @override
  String get portfolioRealized => 'Realizuar';

  @override
  String get portfolioClosed => 'Pozicionet e mbyllura';

  @override
  String get portfolioClosedNote => 'Të gjitha aksionet u shitën';

  @override
  String get portfolioTransactions => 'Transaksionet';

  @override
  String get portfolioRealizedByYear => 'Fitimi i realizuar sipas viteve';

  @override
  String get portfolioRealizedHint =>
      'Shitjet përputhen fillimisht me blerjet tuaja më të vjetra (FIFO) dhe konvertohen me kursin e këmbimit të sotëm. Për deklaratën tatimore, përdorni pasqyrën e brokerit tuaj.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Pas kësaj analize janë publikuar rezultate të reja tremujore ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Rezultate të reja';

  @override
  String get portfolioImportBrokers =>
      'Njihen edhe eksportet nga Revolut, Trading 212, Interactive Brokers, DEGIRO, Schwab, Fidelity dhe Robinhood, bashkë me shitjet dhe dividendët (pas zbritjes së tatimit në burim); depozitat anashkalohen.';

  @override
  String get portfolioImportFile => 'Zgjidh një skedar';

  @override
  String offlineBanner(String time) {
    return 'Nuk ka lidhje – po shfaqen të dhënat e fundit të ruajtura ($time).';
  }

  @override
  String get glossMarketCap =>
      'Sa vlen e gjithë kompania në bursë: çmimi i aksionit × numri i aksioneve.';

  @override
  String get glossSharesOutstanding =>
      'Sa aksione ka emetuar kompania. Nëse numri rritet, çdo aksion zotëron një pjesë më të vogël; riblerjet e zvogëlojnë.';

  @override
  String get glossPeTrailing =>
      'Çmimi ÷ fitimi për aksion i 12 muajve të fundit: për sa vite të fitimit aktual paguani. Më i ulët është më lirë, por kompanitë që rriten shpejt zakonisht kanë P/E të lartë.';

  @override
  String get glossPeForward =>
      'Si P/E, por me fitimin që analistët presin për 12 muajt e ardhshëm. Nëse është nën P/E-në aktuale, pritet që fitimet të rriten.';

  @override
  String get glossPb =>
      'Çmimi ÷ vlera kontabël (aktivet minus borxhet) për aksion. Rreth 1 do të thotë se tregu e vlerëson kompaninë sa ç\'zotëron ajo në letër.';

  @override
  String get glossPs =>
      'Vlera e tregut ÷ të ardhurat vjetore. E dobishme për kompanitë me pak ose aspak fitim; krahasojeni brenda të njëjtës industri.';

  @override
  String get glossEvToFcf =>
      'Vlera e kompanisë përfshirë borxhin (EV) ÷ paratë që ajo gjeneron në një vit pas investimeve. Më i ulët do të thotë që merrni më shumë para për çmimin.';

  @override
  String get glossPeg =>
      'P/E ÷ rritja e pritshme vjetore e fitimit (%). Rreth 1 shpesh konsiderohet e drejtë; e vendos P/E-në në dritën e rritjes.';

  @override
  String get glossEps =>
      'Fitimi për aksion në 12 muajt e fundit. Një EPS që rritet ndër vite është një nga shenjat më të forta të një kompanie të shëndetshme.';

  @override
  String get glossBeta =>
      'Sa priret aksioni të lëvizë bashkë me tregun: 1 = si tregu, 1,5 = luhatje rreth 50% më të mëdha, nën 1 = më i qetë.';

  @override
  String get glossRevenueTtm =>
      'Shitjet totale të 12 muajve të fundit, para çdo kostoje.';

  @override
  String get glossNetIncomeTtm =>
      'Fitimi që mbetet pas të gjitha kostove, interesave dhe taksave në 12 muajt e fundit.';

  @override
  String get glossGrossMargin =>
      'Pjesa e të ardhurave që mbetet pas kostos direkte të produkteve. Një marzh i lartë shpesh tregon fuqi për të vendosur çmimet.';

  @override
  String get glossOperatingMargin =>
      'Pjesa e të ardhurave që mbetet pas shpenzimeve të biznesit (paga, qira, marketing), para interesave dhe taksave.';

  @override
  String get glossNetMargin =>
      'Pjesa e të ardhurave që përfundon si fitim përfundimtar. 20% do të thotë se nga çdo 100 në shitje, 20 janë fitim.';

  @override
  String get glossRoe =>
      'Kthimi nga kapitali: fitimi vjetor ÷ kapitali i pronarëve. Tregon sa mirë i përdor drejtuesit paratë e aksionarëve; mbi rreth 15% është i fortë.';

  @override
  String get glossRoa =>
      'Kthimi nga aktivet: fitimi vjetor ÷ gjithçka që zotëron kompania. Krahasojeni brenda të njëjtës industri.';

  @override
  String get glossDebtToEquity =>
      'Borxhet ÷ kapitali i pronarëve. Më i lartë do të thotë më shumë para të huazuara: më shumë rrezik kur rriten normat e interesit ose ngadalësohet biznesi.';

  @override
  String get glossCurrentRatio =>
      'Aktivet afatshkurtra ÷ detyrimet që skadojnë brenda një viti. Mbi 1 do të thotë se kompania mund të mbulojë detyrimet e afërta.';

  @override
  String get glossRevenueGrowth =>
      'Sa janë rritur të ardhurat krahasuar me një vit më parë.';

  @override
  String get glossEpsGrowth =>
      'Sa është rritur fitimi për aksion krahasuar me një vit më parë.';

  @override
  String get glossDividendYield =>
      'Dividendi vjetor ÷ çmimi i aksionit: të ardhurat në para që do të merrnit çdo vit, si përqindje e shumës që paguani.';

  @override
  String get glossDividendPerShare =>
      'Dividendi i paguar për një aksion gjatë vitit të fundit.';

  @override
  String get glossPayoutRatio =>
      'Pjesa e fitimit që paguhet si dividend. Mbi 100% kompania paguan më shumë se sa fiton, gjë që rrallë zgjat.';

  @override
  String get portfolioBeta => 'Beta e portofolit';

  @override
  String get glossPortfolioBeta =>
      'Beta e aksioneve tuaja, e peshuar sipas vlerës së tyre: përafërsisht me sa përqind lëvizin aksionet tuaja kur tregu lëviz 1%. Mbi 1 luhaten më shumë se tregu, nën 1 më pak. Paratë e gatshme nuk përfshihen.';

  @override
  String get portfolioTop3 => '3 pozicionet më të mëdha';

  @override
  String get glossPortfolioTop3 =>
      'Sa nga vlera e aksioneve tuaja ndodhet në tri pozicionet tuaja më të mëdha. Sa më e lartë, aq më shumë mund ta dëmtojnë të gjithë portofolin lajmet e këqija për një kompani të vetme.';

  @override
  String get glossDividendGrowth5y =>
      'Sa është rritur mesatarisht në vit dividendi për aksion gjatë pesë viteve të fundit. Një rritje e qëndrueshme zakonisht do të thotë se kompania i beson rrjedhës së saj të parasë; një ulje shpesh është shenjë paralajmëruese.';

  @override
  String get glossYieldOnCost =>
      'Dividendët e marrë në 12 muajt e fundit pjesëtuar me atë që pagove për aksionet që ende mban. Ndryshe nga rendimenti i dividendit, matet ndaj çmimit tënd të blerjes, jo ndaj çmimit të sotëm.';

  @override
  String get glossTitle => 'Çfarë do të thotë?';

  @override
  String get watchNewsTitle => 'Lajme për aksionet tuaja';

  @override
  String get undo => 'Zhbëj';

  @override
  String get watchSort => 'Rendit';

  @override
  String get watchSortOwn => 'Renditja ime';

  @override
  String get watchSortGainers => 'Rritjet më të mëdha së pari';

  @override
  String get watchSortLosers => 'Rëniet më të mëdha së pari';

  @override
  String get watchSortName => 'Sipas simbolit (A–Z)';

  @override
  String get watchHint =>
      'Tërhiq dorezën për të rirenditur, rrëshqit majtas për ta hequr. Vija tregon 30 ditët e fundit.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: analiza juaj është gati.';
  }

  @override
  String alertFromCost(String price) {
    return 'Nga çmimi juaj mesatar i blerjes ($price):';
  }

  @override
  String get briefTitle => 'Sot me aksionet tuaja';

  @override
  String get briefButton => 'Përmblidh ditën';

  @override
  String get briefHint =>
      'Një përmbledhje e shkurtër me AI se si lëvizën sot portofoli dhe të preferuarat tuaja dhe çfarë thonë lajmet e fundit për to. Nuk shpenzon analizë.';

  @override
  String get briefRefresh => 'Përditëso';

  @override
  String get sectionEarnings => 'Rezultatet';

  @override
  String earningsNext(String date) {
    return 'Raporti i radhës: $date';
  }

  @override
  String get earningsExpected => 'EPS e pritur';

  @override
  String get earningsReported => 'EPS e raportuar';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Në nivelin ose mbi EPS-në e pritur në $beats nga $total tremujorët e fundit',
      one: 'Në nivelin ose mbi EPS-në e pritur në $beats nga 1 tremujor',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol publikon rezultatet tremujore nesër';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol publikon rezultatet tremujore sot';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return '$symbol: dividend i pritur sot';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Rreth $amount. Kur të mbërrijë, regjistrojeni në portofol.';
  }

  @override
  String get dividendRemindersTitle => 'Kujtues për dividendët';

  @override
  String get dividendRemindersSubtitle =>
      'Një njoftim në ditën kur pritet një dividend sipas ritmit të pagesave që keni regjistruar, që ta regjistroni';

  @override
  String get earningsRemindersTitle => 'Kujtues për rezultatet';

  @override
  String get earningsRemindersSubtitle =>
      'Një njoftim një ditë para se aksionet e tua të preferuara ose të portofolit të publikojnë rezultatet tremujore';

  @override
  String addAllToFavorites(int count) {
    return 'Shtoji të gjitha te të preferuarat ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Importo nga një pamje ekrani';

  @override
  String get holdingsReading => 'Po lexohen pozicionet e tua…';

  @override
  String get holdingsReviewTitle => 'Pozicionet e gjetura';

  @override
  String get holdingsReviewHint =>
      'Kontrollo numrat para se t\'i shtosh. Çmimi është çmimi mesatar i blerjes për aksion, jo çmimi i sotëm.';

  @override
  String get holdingsNoPrice => 'Nuk ka çmim mesatar blerjeje në imazh';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Shto $count pozicione',
      one: 'Shto 1 pozicion',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Nuk u gjet asnjë pozicion aksionesh në këtë imazh. Provo një pamje ekrani të faqes së pozicioneve ose të zotërimeve te brokeri yt.';

  @override
  String get week52Range => 'Diapazoni 52-javor';

  @override
  String week52BelowHigh(String percent) {
    return '$percent nën maksimumin 52-javor';
  }

  @override
  String get week52AtHigh => 'Në maksimumin 52-javor';

  @override
  String get alertKindTrailing => 'Bie nga maja';

  @override
  String get alertTrailingPercent => 'Rënia nga maja (%)';

  @override
  String get alertTrailingHint =>
      'Ndjek çmimin lart: njoftimi aktivizohet kur çmimi bie kaq nga niveli më i lartë që kur e vendose.';

  @override
  String alertDescTrailing(String percent) {
    return 'Rënie $percent nga maja';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'maja deri tani: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol ra $percent nga maja';
  }

  @override
  String get sectionInsiders => 'Transaksionet e të brendshmëve';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blerje',
      one: '1 blerje',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count shitje',
      one: '1 shitje',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Neto: $shares aksione';
  }

  @override
  String get insiderBuy => 'Bleu';

  @override
  String get insiderSell => 'Shiti';

  @override
  String get insiderHint =>
      'Blerje dhe shitje në tregun e hapur nga drejtuesit dhe anëtarët e bordit në 90 ditët e fundit (SEC Form 4). Ushtrimi i opsioneve dhe aksionet e dhuruara nuk llogariten.';

  @override
  String get insiderNone =>
      'Asnjë blerje apo shitje e të brendshmëve në tregun e hapur në 90 ditët e fundit.';

  @override
  String get analystTrend => 'Si ndryshuan opinionet muaj pas muaji';

  @override
  String get watchListAll => 'Të gjitha';

  @override
  String get watchListNew => 'Listë e re';

  @override
  String get watchListName => 'Emri i listës';

  @override
  String get watchListRename => 'Riemërto listën';

  @override
  String get watchListDelete => 'Fshi listën';

  @override
  String get watchListAddTo => 'Shto në listë';

  @override
  String get watchListEmpty =>
      'Ende nuk ka aksione në këtë listë. Prek butonin e listës pranë një aksioni për ta shtuar.';

  @override
  String get portfolioAskTitle => 'Pyetje për portofolin tuaj';

  @override
  String get rangeYtd => 'Këtë vit';

  @override
  String get backupTitle => 'Kopje rezervë';

  @override
  String get backupSave => 'Ruaj një kopje rezervë';

  @override
  String get backupSaveHint =>
      'Të preferuarat, listat, portofoli, alarmet dhe shënimet tuaja në një skedar.';

  @override
  String get backupRestore => 'Rikthe nga kopja rezervë';

  @override
  String get backupRestoreHint =>
      'Shton atë që është në skedar; asgjë nga ajo që keni tani nuk fshihet.';

  @override
  String get backupRestored => 'Kopja rezervë u rikthye.';

  @override
  String get backupInvalid => 'Ky skedar nuk është kopje rezervë e WhatStock.';

  @override
  String get allocationPositions => 'Aksionet';

  @override
  String get allocationSectors => 'Sektorët';

  @override
  String get allocationCurrencies => 'Monedhat';

  @override
  String get allocationAccounts => 'Llogaritë';

  @override
  String get compareReturn1y => 'Kthimi 1-vjeçar';

  @override
  String get compareFromHigh => 'Nga maksimumi 52-javor';

  @override
  String get briefAutoTitle => 'Përmbledhje ditore çdo mëngjes';

  @override
  String get briefAutoSubtitle =>
      '“Sot me aksionet tuaja” krijohet automatikisht pas orës 7:00 sa kohë që aplikacioni është në punë; në kompjuterë do të shfaqet një njoftim. Përdor kufirin tuaj ditor të pyetjeve, jo një analizë.';

  @override
  String get targetsButton => 'Shpërndarja e synuar';

  @override
  String get targetsTitle => 'Shpërndarja e synuar';

  @override
  String get targetsHint =>
      'Cakto sa pjesë të portofolit duhet të ketë çdo aksion. Lëre fushën bosh nëse nuk ka synim. Aplikacioni më pas tregon çfarë të blesh ose të shesësh për të arritur atje.';

  @override
  String targetsSum(String percent) {
    return 'Gjithsej: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Bli ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Shit ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Në synim';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol tejkaloi EPS-në e pritur';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol nuk arriti EPS-në e pritur';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS e raportuar $actual, e pritur $estimate';
  }

  @override
  String get newsExplain => 'Çfarë do të thotë kjo?';

  @override
  String get watchAlertAll => 'Sinjalizim për lëvizje të mëdha ditore';

  @override
  String get watchAlertAllHint =>
      'Një sinjalizim çmimi për çdo aksion në këtë listë, që aktivizohet kur ai lëviz kaq shumë brenda një dite, lart ose poshtë. Aksionet që kanë tashmë një, e mbajnë të tyrin.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U vendosën $count sinjalizime',
      one: 'U vendos 1 sinjalizim',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Eksporto fitimet e realizuara (CSV)';

  @override
  String get portfolioAnnualReturn => 'Rendimenti vjetor';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / vit';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Rendimenti vjetor i ponderuar me paratë (XIRR): merr parasysh kur keni blerë dhe shitur, kështu që paratë e shtuara më vonë nuk e shtrembërojnë. Shfaqet kur blerja juaj e parë të jetë të paktën një vjeçe; dividendët nuk përfshihen.';

  @override
  String get eventsAddToCalendar => 'Shto në kalendar (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Sinjalizim për portofolin';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Një njoftim kur i gjithë portofoli yt lëviz kaq shumë brenda një dite.';

  @override
  String get portfolioMoveAlertOff => 'Joaktiv';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portofoli yt është rritur sot me $percent';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portofoli yt ka rënë sot me $percent';
  }

  @override
  String get whatIfTitle => 'Po sikur të kishe investuar?';

  @override
  String get whatIfAmount => 'Shuma';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount të investuara $period më parë do të vlenin sot';
  }

  @override
  String get whatIfNote =>
      'Vetëm në bazë të çmimit të aksionit: dividendët, tarifat dhe taksat nuk përfshihen. Kthimet e kaluara nuk parashikojnë ato të ardhshme.';

  @override
  String get watchShare => 'Ndaj listën';

  @override
  String get watchImport => 'Shto simbole';

  @override
  String get watchImportHint =>
      'Ngjit simbolet e aksioneve të ndara me presje, hapësira ose rreshta të rinj – për shembull një listë që dikush ka ndarë me ty.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U shtuan $count aksione',
      one: 'U shtua 1 aksion',
      zero: 'Asnjë aksion i ri',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Më të mëdhatë së pari';

  @override
  String get positionsSortGain => 'Kthimi total më i lartë së pari';

  @override
  String get positionsSortToday => 'Më të mirat e sotme së pari';

  @override
  String get chartMyBuys => 'Blerjet tuaja';

  @override
  String get chartMySells => 'Shitjet tuaja';

  @override
  String get shortcutsTitle => 'Shkurtoret e tastierës';

  @override
  String usMarketOpen(String time) {
    return 'Tregu i SHBA-së i hapur · mbyllet pas $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Tregu i SHBA-së i mbyllur · hapet pas $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours orë $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days ditë $hours orë';
  }

  @override
  String get dividendGoalSet => 'Cakto një objektiv mujor dividendi';

  @override
  String get dividendGoalTitle => 'Objektivi mujor i dividendit';

  @override
  String get dividendGoalAmount => 'Dividendë në muaj';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Rreth $amount në muaj me rendimentet e sotme · $percent · objektivi: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Rreth $amount në muaj me rendimentet e sotme · Objektivi u arrit: $goal';
  }

  @override
  String get portfolioAccount => 'Llogaria';

  @override
  String get portfolioAccountHint => 'p.sh. TBSZ 2026 (opsionale)';

  @override
  String get portfolioAccountAdd => 'Specifiko llogarinë';

  @override
  String get portfolioAccountsAll => 'Të gjitha llogaritë';

  @override
  String get portfolioAccountNote =>
      'Vetëm transaksionet dhe dividendët e kësaj llogarie. Paratë e gatshme, objektivat dhe analiza me AI shfaqen te „Të gjitha llogaritë“.';

  @override
  String get portfolioNoAccount => 'Pa llogari';

  @override
  String portfolioFee(String currency) {
    return 'Komisioni ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Shto komision';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komisioni: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Përmbledhje vjetore';

  @override
  String get portfolioProceeds => 'Të ardhurat nga shitjet';

  @override
  String get portfolioCostBasis => 'Kostoja e blerjes';

  @override
  String get portfolioFeesPaid => 'Komisionet e paguara';

  @override
  String get portfolioAnnualSummaryNote =>
      'Shumat në monedhën origjinale, pa konvertim. Të ardhurat janë neto nga komisioni i shitjes; kostoja e blerjes përfshin komisionin e blerjes (FIFO). Për deklaratën tatimore, konvertoni me kursin e këmbimit që kërkon autoriteti juaj tatimor.';

  @override
  String get portfolioShare => 'Ndaj performancën';

  @override
  String get portfolioShareHeading => 'Portofoli im';

  @override
  String get portfolioTopHoldings => 'Pozicionet më të mëdha';

  @override
  String get portfolioShareNote => 'Ndahen vetëm përqindjet, jo shumat.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozicione',
      one: '$count pozicion',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Nuk është këshillë investimi';

  @override
  String get contributionButton => 'Investo para të reja';

  @override
  String contributionAmount(String currency) {
    return 'Shuma për t’u investuar ($currency)';
  }

  @override
  String get contributionHint =>
      'Vetëm blerje, pa shitje: paratë i marrin së pari pozicionet që janë më shumë nën synimin e tyre.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares aksione';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Nuk ka çmim aktual për $symbols: nuk përfshihen në ndarje.';
  }

  @override
  String portfolioGoalEta(String rate, String year) {
    return 'Nëse rendimenti vjetor mbetet i tillë ($rate), objektivin do ta arrini rreth vitit $year.';
  }

  @override
  String get portfolioMaxDrawdown => 'Rënia më e madhe';

  @override
  String get glossMaxDrawdown =>
      'Rënia më e madhe e vlerës së aksioneve tuaja nga një kulm i mëparshëm në një minimum të mëvonshëm, pa efektin e blerjeve dhe shitjeve tuaja (e ponderuar me kohën). Tregon sa të thellë rënie ka kaluar tashmë portofoli juaj.';

  @override
  String watchSince(String date) {
    return 'Që kur e shtuat te të preferuarat ($date)';
  }

  @override
  String get portfolioSampleTry => 'Provo me një portofol shembull';

  @override
  String get portfolioSampleBanner =>
      'Ky është një portofol shembull. Shtoni pranë tij blerjet tuaja ose hiqeni.';

  @override
  String get portfolioSampleRemove => 'Hiq shembullin';

  @override
  String get portfolioStopsAll =>
      'Sinjalizim për rënie nga maja për të gjitha pozicionet';

  @override
  String portfolioStopsDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U vendosën $count sinjalizime',
      one: 'U vendos 1 sinjalizim',
      zero: 'Të gjitha pozicionet e kanë tashmë këtë sinjalizim',
    );
    return '$_temp0';
  }

  @override
  String portfolioSinceSale(String percent) {
    return '$percent që kur e shitët';
  }

  @override
  String get lotPreviewRealized => 'Realizuar nga kjo shitje (FIFO):';

  @override
  String lotPreviewAverage(String after, String before) {
    return 'Kosto e re mesatare: $after (tani $before)';
  }

  @override
  String get portfolioYtdReturn => 'Rendimenti këtë vit';

  @override
  String get glossTwrYtd =>
      'Rendimenti i ponderuar me kohën që nga fillimi i vitit (ose që nga blerja juaj e parë, nëse ishte këtë vit): çdo ditë llogarit ndryshimin e aksioneve që zotëronit atë ditë, dhe ditët lidhen zinxhir me njëra-tjetrën – paratë që depozitoni ose tërhiqni nuk janë rendiment, ndaj mund të krahasohet me një indeks. Poshtë tij: indeksi i zgjedhur për të njëjtën periudhë.';

  @override
  String alertDistance(String price, String percent) {
    return 'Tani $price · edhe $percent';
  }

  @override
  String get watchSortSince => 'Sipas ndryshimit që nga shtimi';

  @override
  String get portfolioTodayMovers => 'Lëvizën më shumë sot:';

  @override
  String get lotNoteAdd => 'Shto një shënim';

  @override
  String get lotNoteBuyHint =>
      'Pse po blini? Shtohet te shënimet e aksionit, me datën.';

  @override
  String get lotNoteSellHint =>
      'Pse po shitni? Shtohet te shënimet e aksionit, me datën.';

  @override
  String get lotNoteBought => 'Blerë';

  @override
  String get positionHeld => 'Periudha e mbajtjes';

  @override
  String durationMonths(int months) {
    String _temp0 = intl.Intl.pluralLogic(
      months,
      locale: localeName,
      other: '$months muaj',
      one: '$months muaj',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days ditë',
      one: '$days ditë',
    );
    return '$_temp0';
  }

  @override
  String positionHeldSince(String date) {
    return 'që nga $date';
  }

  @override
  String lotPreviewWeight(String after, String before) {
    return 'Pesha në portofol më pas: $after (tani $before)';
  }

  @override
  String lotFromCash(String amount) {
    return 'Paguaj nga paratë e gatshme (tani $amount)';
  }

  @override
  String lotToCash(String amount) {
    return 'Shto te paratë e gatshme (tani $amount)';
  }

  @override
  String get onboardTitle4 => 'Ndiqni portofolin tuaj';

  @override
  String get onboardBody4 =>
      'Importoni eksportin e brokerit tuaj (Revolut, Trading 212, IBKR, DEGIRO, Schwab…) ose shtoni transaksionet me dorë: shihni rendimentin tuaj krahasuar me një indeks, dividendët tuaj dhe një përmbledhje vjetore për deklaratën tatimore.';

  @override
  String get lotEdit => 'Ndrysho';

  @override
  String lotEditTitle(String symbol) {
    return 'Ndrysho transaksionin · $symbol';
  }

  @override
  String get lotSave => 'Ruaj';

  @override
  String dividendEditTitle(String symbol) {
    return 'Ndrysho dividendin · $symbol';
  }

  @override
  String get activityTitle => 'Të gjitha transaksionet';

  @override
  String get activitySearchHint => 'Filtro sipas simbolit';

  @override
  String get activityNoMatch => 'Asnjë transaksion nuk përputhet me filtrin.';

  @override
  String portfolioImportDuplicates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ishin regjistruar tashmë, u lanë jashtë',
      one: '1 ishte regjistruar tashmë, u la jashtë',
    );
    return '$_temp0';
  }

  @override
  String get tickerChange => 'Ndryshim simboli';

  @override
  String tickerChangeTitle(String symbol) {
    return 'Ndryshim simboli · $symbol';
  }

  @override
  String get tickerChangeNew => 'Simboli i ri';

  @override
  String get tickerChangeHint =>
      'Kur një kompani ndryshon simbolin (p.sh. FB → META): të gjitha transaksionet, dividendët, ndarjet e aksioneve, shënimi dhe alarmet kalojnë te i riu.';

  @override
  String tickerChanged(String symbol) {
    return 'U zhvendos te $symbol';
  }

  @override
  String get referralErrSignIn =>
      'Hyr me email-in tënd për të aktivizuar kodin e një miku.';

  @override
  String get referralErrFull =>
      'Ky kod është aktivizuar tashmë numrin maksimal të herëve.';

  @override
  String portfolioGoalReachedBody(String value) {
    return 'Portofoli juaj tani vlen $value.';
  }

  @override
  String get errAiTruncated =>
      'Analiza u ndërpre para se të përfundonte. Ju lutemi provoni përsëri – nuk u zbrit nga kuota juaj.';

  @override
  String get errImageUnsupported =>
      'Ky imazh nuk mund të lexohet. Ruajeni si JPEG ose PNG dhe provoni përsëri.';

  @override
  String get errRateLimited =>
      'Shumë kërkesa brenda një kohe të shkurtër. Ju lutemi prisni një minutë dhe provoni përsëri.';

  @override
  String get watchListNameTaken => 'Ekziston tashmë një listë me këtë emër.';

  @override
  String watchListLimit(int max) {
    return 'Mund të keni deri në $max lista.';
  }

  @override
  String portfolioBuyBelowSold(String quantity) {
    return 'Të paktën $quantity – kaq janë shitur tashmë';
  }

  @override
  String get restoreNothing =>
      'Nuk u gjetën blerje të mëparshme për t’u rikthyer.';

  @override
  String get manageSubscriptionElsewhere =>
      'Këtu nuk ka abonim për t’u menaxhuar. Një abonim i blerë në App Store ose Google Play menaxhohet te cilësimet e dyqanit.';

  @override
  String get backupFailed =>
      'Kopja rezervë nuk mund të ruhej. Ju lutemi provoni përsëri.';

  @override
  String get portfolioGoalSet => 'Cakto një objektiv';

  @override
  String get portfolioGoalTitle => 'Objektivi i portofolit';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · objektivi: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Objektivi u arrit: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Hiq objektivin';

  @override
  String get alertEdit => 'Ndrysho alarmin';

  @override
  String get positionOpenLots => 'Ende në zotërim (më të vjetrat së pari)';

  @override
  String get lotRemoved => 'Transaksioni u fshi';

  @override
  String get alertDeleted => 'Sinjalizimi u fshi';

  @override
  String get alertsClearTriggered => 'Pastro sinjalizimet e aktivizuara';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U pastruan $count sinjalizime',
      one: 'U pastrua 1 sinjalizim',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Ekrani bazë';

  @override
  String get allocationCountries => 'Vendet';

  @override
  String get newsExplainNoteResearch =>
      'Shpjegim nga AI: kërkon faktet në internet, hap artikullin dhe vlerëson sa i besueshëm është burimi. Nuk përbën këshillë investimi. Përdor kufirin tuaj ditor të pyetjeve, jo një analizë.';

  @override
  String get sourceOfficial => 'Zyrtare';

  @override
  String get sourcePressRelease => 'Njoftim për shtyp';

  @override
  String get sourceMajorNews => 'Media e madhe';

  @override
  String get sourceOpinion => 'Opinion';

  @override
  String get earningsSummaryButton => 'Çfarë kishte në raportin e fundit?';

  @override
  String get earningsSummaryNote =>
      'Përmbledhje nga AI e njoftimit të rezultateve të kompanisë dhe e mbulimit në shtyp që gjen në internet. Nuk përbën këshillë investimi. Përdor kufirin tuaj ditor të pyetjeve, jo një analizë.';

  @override
  String get compareLastSurprise => 'EPS tremujori i fundit vs. i pritur';

  @override
  String get compareNextReport => 'Raporti i radhës';

  @override
  String get resolvingDescription =>
      'Duke përcaktuar cilin aksion keni parasysh…';

  @override
  String get instrumentTitle => 'Rreth këtij instrumenti';

  @override
  String get instrumentHint =>
      'Nuk ka profil kompanie për këtë simbol – mund të jetë një ETF, një fond ose një certifikatë depozitare. Pyesni AI-n çfarë është, çfarë përmban dhe sa kushton.';

  @override
  String get instrumentAsk => 'Çfarë është kjo?';

  @override
  String get instrumentNote =>
      'Shpjegim nga AI bazuar në faqen e fondit të emetuesit dhe në faqet financiare që gjen në internet. Nuk përbën këshillë investimi. Përdor kufirin tuaj ditor të pyetjeve, jo një analizë.';

  @override
  String suggestAskAi(String query) {
    return 'Pyesni AI-n: „$query“';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Nuk ka çmim aktual për $symbols.';
  }

  @override
  String get eventsRecentResults => 'Rezultatet e fundit';

  @override
  String get saveToNotes => 'Ruaj te shënimet e mia';

  @override
  String get savedToNotes => 'U ruajt te shënimet tuaja';

  @override
  String get portfolioDividendsReceived => 'Dividendë të marrë';

  @override
  String get portfolioDividendsThisYear => 'Këtë vit';

  @override
  String get portfolioDividendsAllTime => 'Gjithsej';

  @override
  String get portfolioAddDividend => 'Shto dividend';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Shuma e marrë ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Data e pagesës';

  @override
  String get portfolioDividendsEmpty =>
      'Ende nuk ka dividendë të regjistruar. Shtojini me dorë ose importoni eksportin e brokerit tuaj – rreshtat e dividendëve merren gjithashtu.';

  @override
  String get portfolioSplit => 'Ndarje e aksioneve';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Ndarje e aksioneve: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Blerjet dhe shitjet me datë para ndarjes rregullohen: numri i aksioneve shumëzohet dhe çmimi për aksion pjesëtohet, kështu që kostoja mbetet e njëjtë.';

  @override
  String get portfolioSplitRatio => 'Raporti (të reja : të vjetra)';

  @override
  String get portfolioSplitRatioError =>
      'Vendosni një raport si 10:1, ose 1:10 për një ndarje të kundërt.';

  @override
  String get portfolioSplitDate => 'Data e ndarjes';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Ndarje e aksioneve $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Ndarja e aksioneve u fshi';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U shtuan $count ndarje të aksioneve',
      one: 'U shtua 1 ndarje e aksioneve',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'U shtuan $count dividendë',
      one: 'U shtua 1 dividend',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Eksporto dividendët (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividendi u fshi';

  @override
  String get portfolioDividendsHint =>
      'Shumat ashtu si mbërritën në llogarinë tuaj, në monedhën e pagesës; totalet konvertohen me kursin e sotëm. Për deklaratën tatimore përdorni pasqyrën e brokerit tuaj.';

  @override
  String get awayTitle => 'Ndërsa ishit larg';

  @override
  String awaySince(String when) {
    return 'Që nga $when';
  }

  @override
  String get awayQuiet => 'Asgjë nuk lëvizi shumë.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alarme u aktivizuan',
      one: '1 alarm u aktivizua',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Rezultate të publikuara: $symbols';
  }

  @override
  String get moveWhyButton => 'Pse lëviz sot?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent sot';
  }

  @override
  String get moveWhyNote =>
      'Shpjegim nga IA bazuar në lajmet e sotme të gjetura në internet; arsyeja e vërtetë mund të jetë e panjohur ose e ndryshme. Nuk është këshillë investimi. Përdor kuotën tuaj ditore të pyetjeve, jo një analizë.';

  @override
  String get sectionTechnical => 'Pamja teknike';

  @override
  String get labelSma50 => 'Mesatarja 50-ditore';

  @override
  String get labelSma200 => 'Mesatarja 200-ditore';

  @override
  String get labelRsi => 'RSI (14 ditë)';

  @override
  String get labelVolatility30 => 'Volatiliteti (30 ditë)';

  @override
  String techAbove(String percent) {
    return '$percent mbi';
  }

  @override
  String techBelow(String percent) {
    return '$percent nën';
  }

  @override
  String get techOverbought => 'e mbiblerë';

  @override
  String get techOversold => 'e mbishitur';

  @override
  String get techNeutral => 'neutrale';

  @override
  String get techGoldenCross =>
      'Mesatarja 50-ditore është mbi mesataren 200-ditore – trend rritës sipas leximit klasik.';

  @override
  String get techDeathCross =>
      'Mesatarja 50-ditore është nën mesataren 200-ditore – trend zbritës sipas leximit klasik.';

  @override
  String get glossSma50 =>
      'Çmimi mesatar i mbylljes i 50 ditëve të fundit të tregtimit. Çmimi mbi të shpesh lexohet si forcë afatshkurtër, nën të si dobësi.';

  @override
  String get glossSma200 =>
      'Çmimi mesatar i mbylljes i 200 ditëve të fundit të tregtimit – linja klasike e trendit afatgjatë. Shumë investitorë e trajtojnë çmimin mbi të si trend rritës afatgjatë.';

  @override
  String get glossRsi =>
      'Indeksi i forcës relative: krahason fitimet e fundit me humbjet e fundit në një shkallë 0–100. Mbi 70 aksioni shpesh quhet i mbiblerë (u rrit shpejt), nën 30 i mbishitur – por një trend i fortë mund të qëndrojë aty për një kohë të gjatë.';

  @override
  String get glossVolatility =>
      'Sa shumë lëkundet çmimi nga dita në ditë, shkallëzuar për një vit: 20% do të thotë që një vit tipik lëviz brenda afërsisht ±20%. Volatilitet më i lartë do të thotë lëvizje më të mëdha në të dyja drejtimet.';

  @override
  String get techNote =>
      'Llogaritur nga çmimet ditore të mbylljes. Sinjalet teknike përshkruajnë të kaluarën, jo të ardhmen.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above nga $count pozicione mbi mesataren e tyre 200-ditore';
  }

  @override
  String get watchSignalsTitle => 'Sinjale';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · e mbishitur';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · e mbiblerë';
  }

  @override
  String get signalCrossedAbove => 'kaloi mbi mesataren 200-ditore';

  @override
  String get signalCrossedBelow => 'kaloi nën mesataren 200-ditore';

  @override
  String get signalAlertsTitle => 'Njoftime për sinjale teknike';

  @override
  String get signalAlertsSubtitle =>
      'Një herë në ditë, kur një aksion që ndiqni bëhet e mbishitur ose e mbiblerë (RSI), ose çmimi i tij kalon mesataren 200-ditore.';

  @override
  String get signalAlertsNotification => 'Sinjale teknike';

  @override
  String get glossaryPageTitle => 'Fjalorth';

  @override
  String get glossaryPageSubtitle =>
      'Shpjegime të thjeshta për çdo shifër që tregon aplikacioni, nga P/E deri te RSI';

  @override
  String get glossarySearchHint => 'Kërko në fjalorth';

  @override
  String get portfolioCash => 'Para të gatshme';

  @override
  String get portfolioCashTitle => 'Gjendja e parave të gatshme';

  @override
  String get portfolioCashHint =>
      'Para të painvestuara te brokeri juaj, sipas monedhës. Përfshihen në vlerën totale dhe shpërndarjen; jo në kthimin.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Shuma ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Cakto gjendjen e parave të gatshme';

  @override
  String get portfolioDividendsByMonth => 'Sipas muajve';

  @override
  String get dividendsLegendReceived => 'Të marrë';

  @override
  String get dividendsLegendExpected => 'Të pritur';

  @override
  String get portfolioDividendsExpected => 'Pritet më pas';

  @override
  String get portfolioDividendsExpectedNote =>
      'Vlerësuar nga datat dhe shumat e pagesave që regjistruat; kompanitë mund t\'i ndryshojnë ose t\'i anashkalojnë.';

  @override
  String portfolioDividendAround(String date) {
    return 'rreth $date';
  }
}
