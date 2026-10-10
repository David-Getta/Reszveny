// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'StockLens';

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
    return 'Shtypni $shortcut kudo për të hapur StockLens.';
  }

  @override
  String get trayOpen => 'Hap StockLens';

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
  String get planMax1 => 'Max 1';

  @override
  String get planMax2 => 'Max 2';

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
      'Njohja e fotove, të dhënat në kohë reale, grafikët, të preferuarat dhe të 44 gjuhët përfshihen në çdo plan. Kuota mbulon analizat me AI.';
}
