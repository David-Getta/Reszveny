// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Haitian Haitian Creole (`ht`).
class AppLocalizationsHt extends AppLocalizations {
  AppLocalizationsHt([String locale = 'ht']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Pran foto yon aksyon epi dekouvri tout sa ou bezwen konnen sou li.';

  @override
  String get homeHint =>
      'Yon sètifika aksyon, ekran yon aplikasyon koutye, yon jounal oswa logo yon konpayi – nenpòt bagay ki idantifye yon aksyon.';

  @override
  String get takePhoto => 'Pran yon foto';

  @override
  String get chooseFromGallery => 'Chwazi nan galri a';

  @override
  String get chooseImage => 'Chwazi yon imaj';

  @override
  String get enterTickerManually => 'Tape senbòl la alamen';

  @override
  String get tickerInputLabel => 'Senbòl (ticker)';

  @override
  String get tickerInputHint => 'egz. AAPL';

  @override
  String get lookUp => 'Chèche';

  @override
  String demoModeBanner(String symbols) {
    return 'Mòd demo – pa gen kle done mache ki konfigire. Gen done egzanp pou: $symbols.';
  }

  @override
  String get recognizing => 'N ap analize imaj la…';

  @override
  String get loadingData => 'N ap chaje done yo…';

  @override
  String get noCandidatesTitle => 'Nou pa rekonèt okenn aksyon';

  @override
  String get noCandidatesBody =>
      'Nou pa t ka idantifye yon aksyon nan imaj sa a. Eseye yon foto ki pi klè, oswa tape senbòl la alamen.';

  @override
  String get whatWeSaw => 'Sa nou wè';

  @override
  String get chooseCandidateTitle => 'Ki aksyon ou te vle di?';

  @override
  String confidencePercent(int percent) {
    return '$percent% konfyans';
  }

  @override
  String get settings => 'Paramèt';

  @override
  String get language => 'Lang';

  @override
  String get systemLanguage => 'Lang sistèm nan';

  @override
  String get about => 'Apwopo';

  @override
  String get disclaimer =>
      'Aplikasyon sa a bay enfòmasyon sèlman, se pa yon konsèy envestisman. Done yo ka an reta oswa yo ka pa egzat.';

  @override
  String dataSource(String source) {
    return 'Sous done: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Rekonesans: $source';
  }

  @override
  String get retry => 'Eseye ankò';

  @override
  String get cancel => 'Anile';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Fèmen';

  @override
  String get errorGeneric => 'Gen yon bagay ki pa mache.';

  @override
  String get errorSectionUnavailable => 'Nou pa t ka chaje seksyon sa a.';

  @override
  String get notAvailable => 'n/d';

  @override
  String get sectionIdentity => 'Idantifikasyon';

  @override
  String get sectionPrice => 'Pri';

  @override
  String get sectionValuation => 'Evalyasyon';

  @override
  String get sectionFinancials => 'Finans';

  @override
  String get sectionDividend => 'Dividann';

  @override
  String get sectionProfile => 'Pwofil konpayi a';

  @override
  String get sectionAnalysts => 'Nòt analis yo';

  @override
  String get sectionNews => 'Nouvèl';

  @override
  String get sectionRecognition => 'Detay rekonesans';

  @override
  String get labelSymbol => 'Senbòl';

  @override
  String get labelExchange => 'Bous';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Deviz';

  @override
  String get labelCountry => 'Peyi';

  @override
  String get labelIndustry => 'Endistri';

  @override
  String get labelSector => 'Sektè';

  @override
  String get labelWebsite => 'Sit entènèt';

  @override
  String get labelIpoDate => 'Dat IPO';

  @override
  String get labelMarketCap => 'Kapitalizasyon bousyè';

  @override
  String get labelSharesOutstanding => 'Aksyon an sikilasyon';

  @override
  String get labelEmployees => 'Anplwaye';

  @override
  String get labelCeo => 'PDG';

  @override
  String get labelHeadquarters => 'Biwo santral';

  @override
  String get labelDescription => 'Deskripsyon';

  @override
  String get labelLastPrice => 'Dènye pri';

  @override
  String get labelChange => 'Varyasyon';

  @override
  String get labelOpen => 'Ouvèti';

  @override
  String get labelDayHigh => 'Pi wo jounen an';

  @override
  String get labelDayLow => 'Pi ba jounen an';

  @override
  String get labelPreviousClose => 'Fèmti anvan an';

  @override
  String get labelWeek52High => 'Pi wo sou 52 semèn';

  @override
  String get labelWeek52Low => 'Pi ba sou 52 semèn';

  @override
  String get labelAverageVolume10d => 'Volim mwayen (10 jou)';

  @override
  String updatedAt(String time) {
    return 'Mete ajou $time';
  }

  @override
  String get labelPeTrailing => 'P/E (istorik)';

  @override
  String get labelPeForward => 'P/E (previzyon)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / kach flo lib';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Chif dafè (TTM)';

  @override
  String get labelNetIncomeTtm => 'Benefis nèt (TTM)';

  @override
  String get labelGrossMargin => 'Maj brit';

  @override
  String get labelOperatingMargin => 'Maj operasyonèl';

  @override
  String get labelNetMargin => 'Maj nèt';

  @override
  String get labelRoe => 'Rantabilite kapital pwòp';

  @override
  String get labelRoa => 'Rantabilite aktif yo';

  @override
  String get labelDebtToEquity => 'Dèt / kapital pwòp';

  @override
  String get labelCurrentRatio => 'Rapò likidite';

  @override
  String get labelRevenueGrowth => 'Kwasans chif dafè (sou 1 an)';

  @override
  String get labelEpsGrowth => 'Kwasans EPS (sou 1 an)';

  @override
  String get labelDividendYield => 'Rannman dividann';

  @override
  String get labelDividendPerShare => 'Dividann pa aksyon';

  @override
  String get labelPayoutRatio => 'To distribisyon';

  @override
  String get labelYieldOnCost => 'Rannman sou pri acha';

  @override
  String get labelDividendGrowth5y => 'Kwasans dividann (5 an)';

  @override
  String get dividendNone => 'Pa gen dividann ki peye nan 12 dènye mwa yo.';

  @override
  String get dividendOnYourShares => 'Sou aksyon ou yo, pa ane';

  @override
  String get labelConsensus => 'Konsansis';

  @override
  String get ratingStrongBuy => 'Achte fòtman';

  @override
  String get ratingBuy => 'Achte';

  @override
  String get ratingHold => 'Kenbe';

  @override
  String get ratingSell => 'Vann';

  @override
  String get ratingStrongSell => 'Vann fòtman';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analis',
      one: '$count analis',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Peryòd: $period';
  }

  @override
  String get noNews => 'Pa gen nouvèl resan.';

  @override
  String get openArticle => 'Louvri atik la';

  @override
  String get openLinkFailed => 'Nou pa t ka louvri lyen an.';

  @override
  String get recognitionSummary => 'Rezime';

  @override
  String get recognitionEvidence => 'Poukisa nou panse sa';

  @override
  String get recognitionRawText => 'Tèks nou li nan imaj la';

  @override
  String get errMissingAnthropicKey =>
      'Rekonesans imaj pa konfigire (pa gen ANTHROPIC_API_KEY). Tape senbòl la alamen.';

  @override
  String get errRecognitionUnreachable =>
      'Nou pa ka jwenn sèvis rekonesans lan. Verifye koneksyon entènèt ou.';

  @override
  String errRecognitionHttp(String status) {
    return 'Sèvis rekonesans lan voye yon erè (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Sèvis rekonesans lan pa t ka trete imaj sa a.';

  @override
  String get errRecognitionTruncated =>
      'Repons rekonesans lan koupe. Tanpri eseye ankò.';

  @override
  String get errRecognitionBadResponse =>
      'Sèvis rekonesans lan voye yon repons nou pa t ap tann.';

  @override
  String get errRecognitionEmpty => 'Sèvis rekonesans lan voye yon repons vid.';

  @override
  String get errMissingFinnhubKey =>
      'Done mache yo pa konfigire (pa gen FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Nou pa ka jwenn sèvis done mache a. Verifye koneksyon entènèt ou.';

  @override
  String get errMarketRateLimited =>
      'Twòp demann bay sèvis done mache a. Tanpri tann yon minit.';

  @override
  String errMarketHttp(String status) {
    return 'Sèvis done mache a voye yon erè (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Sèvis done mache a voye yon repons nou pa t ap tann.';

  @override
  String errNoQuote(String symbol) {
    return 'Nou pa jwenn done pri pou $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Nou pa jwenn pwofil konpayi pou $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mòd demo a sipòte sèlman $symbols. Ajoute yon FINNHUB_API_KEY pou done an dirèk.';
  }

  @override
  String errUnknown(String detail) {
    return 'Gen yon bagay ki pa mache: $detail';
  }

  @override
  String get newSearch => 'Nouvo rechèch';

  @override
  String get recentSearches => 'Resan';

  @override
  String get noRecentSearches => 'Poko gen rechèch resan.';

  @override
  String get clearRecent => 'Efase rechèch resan yo';

  @override
  String get greeting => 'Ki aksyon n ap gade?';

  @override
  String get searchHint => 'Senbòl oswa non konpayi';

  @override
  String get attachImage => 'Tache yon imaj';

  @override
  String get searchResultsTitle => 'Rezilta rechèch';

  @override
  String errNoResults(String query) {
    return 'Nou pa jwenn okenn aksyon pou «$query».';
  }

  @override
  String get quickBarHint => 'Tape yon senbòl oswa non yon konpayi…';

  @override
  String get openFullWindow => 'Louvri fenèt la';

  @override
  String hotkeyHint(String shortcut) {
    return 'Peze $shortcut kèlkeswa kote ou ye pou rele WhatStock.';
  }

  @override
  String get trayOpen => 'Louvri WhatStock';

  @override
  String get trayQuickSearch => 'Rechèch rapid';

  @override
  String get trayQuit => 'Kite';

  @override
  String get appearance => 'Aparans';

  @override
  String get themeSystem => 'Sistèm';

  @override
  String get themeDark => 'Fonse';

  @override
  String get themeLight => 'Klè';

  @override
  String get back => 'Retounen';

  @override
  String get aiSectionTitle => 'Analiz AI';

  @override
  String get aiIntro =>
      'Yon apèsi detaye AI ekri: rezime dènye nouvèl yo, biznis la, fòs yo, risk yo ak faktè kache yo, evalyasyon, yon pèspektiv sou pri a ak senaryo ki soti nan ang sikolojik, sosyolojik, teknik ak makwo, ak sa pou w siveye.';

  @override
  String get aiGenerate => 'Jenere analiz';

  @override
  String get aiRegenerate => 'Jenere ankò';

  @override
  String get aiGenerating =>
      'N ap prepare analiz la… sa ka pran youn oswa de minit.';

  @override
  String get aiSources => 'Sous';

  @override
  String aiGeneratedAt(String time) {
    return 'Jenere $time';
  }

  @override
  String get aiDisclaimer =>
      'Analiz AI jenere sou baz done piblik ak dènye nouvèl. Li ka gen erè oswa li ka pa ajou, epi se pa yon konsèy envestisman.';

  @override
  String get errAiNotConfigured =>
      'Analiz AI pa konfigire (pa gen ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Nou pa ka jwenn sèvis AI a. Verifye koneksyon entènèt ou.';

  @override
  String errAiHttp(String status) {
    return 'Sèvis AI a voye yon erè (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Sèvis AI a refize analize aksyon sa a.';

  @override
  String get errAiBadResponse => 'Sèvis AI a voye yon repons nou pa t ap tann.';

  @override
  String get sectionChart => 'Grafik pri';

  @override
  String get rangeOneWeek => '1S';

  @override
  String get rangeOneMonth => '1M';

  @override
  String get rangeThreeMonths => '3M';

  @override
  String get rangeOneYear => '1A';

  @override
  String get rangeFiveYears => '5A';

  @override
  String get chartUnavailable =>
      'Istorik pri a pa disponib nan sous done aktyèl la.';

  @override
  String get sectionStatements => 'Rapò finansye (anyèl)';

  @override
  String get labelFiscalYear => 'Ane fiskal';

  @override
  String get labelRevenue => 'Chif dafè';

  @override
  String get labelNetIncome => 'Benefis nèt';

  @override
  String get labelTotalAssets => 'Total aktif';

  @override
  String get labelTotalLiabilities => 'Total pasif';

  @override
  String get labelEquity => 'Kapital pwòp aksyonè yo';

  @override
  String get labelOperatingCashFlow => 'Kach flo operasyonèl';

  @override
  String get statementsUnavailable =>
      'Pa gen rapò finansye pibliye pou aksyon sa a.';

  @override
  String get launchAtLogin => 'Louvri otomatikman lè w konekte';

  @override
  String get hotkeyLabel => 'Rakousi global';

  @override
  String get hotkeyRecordHint =>
      'Klike la a, epi peze nouvo konbinezon touch yo';

  @override
  String get hotkeyReset => 'Remete pa defo';

  @override
  String get pasteImage => 'Kole imaj ou te kopye a';

  @override
  String get errClipboardNoImage => 'Pa gen okenn imaj ki kopye.';

  @override
  String get favorites => 'Favori';

  @override
  String get addToFavorites => 'Ajoute nan favori';

  @override
  String get removeFromFavorites => 'Retire nan favori';

  @override
  String get noFavorites =>
      'Poko gen favori. Peze zetwal la sou yon aksyon pou ajoute l.';

  @override
  String get displayCurrency => 'Deviz pou afiche';

  @override
  String get displayCurrencyNone => 'Sèlman deviz aksyon an';

  @override
  String labelConverted(String currency) {
    return '≈ an $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'To: 1 $from = $rate $to (BCE, $date)';
  }

  @override
  String get updates => 'Mizajou';

  @override
  String currentVersion(String version) {
    return 'Vèsyon $version';
  }

  @override
  String get autoUpdate => 'Enstale mizajou yo otomatikman';

  @override
  String get checkForUpdates => 'Tcheke si gen mizajou';

  @override
  String get updateChecking => 'N ap tcheke si gen mizajou…';

  @override
  String get updateUpToDate => 'Ou gen dènye vèsyon an.';

  @override
  String updateAvailable(String version) {
    return 'Vèsyon $version disponib.';
  }

  @override
  String get updateDownloading => 'N ap telechaje mizajou a an aryè plan…';

  @override
  String get updateDownloaded => 'Mizajou a pare. Rekòmanse pou enstale l.';

  @override
  String get updateNow => 'Mete ajou';

  @override
  String get restartNow => 'Rekòmanse';

  @override
  String get updatesViaStore =>
      'Mizajou yo rive otomatikman atravè magazen aplikasyon an.';

  @override
  String get updateCheckFailed => 'Nou pa t ka tcheke si gen mizajou.';

  @override
  String get subscription => 'Abònman';

  @override
  String get planTrial => 'Esè';

  @override
  String get planNormal => 'Nòmal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Pa gen plan aktif';

  @override
  String planAnalysesPerMonth(int count) {
    return '$count analiz pa mwa';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Esè gratis $days jou ak $count analiz';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Rete $days jou esè',
      one: 'Rete $days jou esè',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Esè gratis ou a fini. Chwazi yon plan pou kontinye analize.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Rete $remaining sou $total analiz pou peryòd sa a';
  }

  @override
  String extraCredits(int count) {
    return '$count analiz anplis';
  }

  @override
  String renewsOn(String date) {
    return 'Ap renouvle $date';
  }

  @override
  String get choosePlan => 'Chwazi yon plan';

  @override
  String get currentPlan => 'Plan aktyèl';

  @override
  String get subscribe => 'Abòne';

  @override
  String get perMonth => '/ mwa';

  @override
  String get extraPacksTitle => 'Bezwen plis? Achte analiz anplis';

  @override
  String get extraPacksHint =>
      'Analiz anplis yo pa janm ekspire, epi yo itilize yo apre kota chak mwa ou a.';

  @override
  String get buy => 'Achte';

  @override
  String get restorePurchases => 'Retabli acha yo';

  @override
  String get manageSubscription => 'Jere abònman an';

  @override
  String get purchaseSuccess => 'Mèsi! Acha ou a aktif.';

  @override
  String get purchasePending => 'Acha a ap tann…';

  @override
  String get purchaseFailed => 'Acha a pa t ka fini.';

  @override
  String get purchaseCanceled => 'Acha a anile.';

  @override
  String get billingUnavailable =>
      'Acha poko disponib sou platfòm sa a. Abòne sou telefòn ou oswa sou Mac; plan ou a ap mache sou tout aparèy.';

  @override
  String get errQuotaExceeded =>
      'Ou pa gen analiz ki rete pou peryòd sa a. Monte plan ou a oswa achte analiz anplis.';

  @override
  String get errTrialExpired =>
      'Esè gratis ou a fini. Chwazi yon plan pou kontinye.';

  @override
  String get errNoPlan => 'Ou bezwen yon plan aktif pou analiz AI.';

  @override
  String get viewPlans => 'Wè plan yo';

  @override
  String get usageTitle => 'Itilizasyon';

  @override
  String get demoPurchaseNote =>
      'Faktirasyon demo: acha yo se similasyon sèlman sou platfòm sa a.';

  @override
  String get mostPopular => 'Pi popilè';

  @override
  String get bestValue => 'Pi bon afè';

  @override
  String get planFeaturesCommon =>
      'Rekonesans foto, done an dirèk, grafik, favori ak tout 120 lang yo enkli nan chak plan. Kota a se pou analiz AI yo.';

  @override
  String get searchLanguages => 'Chèche yon lang…';

  @override
  String get noLanguageMatch => 'Pa gen lang ki koresponn.';

  @override
  String get aiSettings => 'Analiz AI';

  @override
  String get aiLength => 'Longè';

  @override
  String get aiDepthBrief => 'Kout';

  @override
  String get aiDepthStandard => 'Estanda';

  @override
  String get aiDepthDeep => 'An pwofondè';

  @override
  String get aiDepthBriefDesc => 'Esansyèl la, rapid.';

  @override
  String get aiDepthStandardDesc => 'Rapò konplè ak tout seksyon yo.';

  @override
  String get aiDepthDeepDesc =>
      'Plis rechèch sou entènèt, konparezon ak konpayi parèy yo ak plis detay.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Anviwon $min–$max mo';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sèvi ak $count analiz',
      one: 'sèvi ak $count analiz',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Nivo lektè a';

  @override
  String get aiReaderBeginner => 'Debitan';

  @override
  String get aiReaderExperienced => 'Gen eksperyans';

  @override
  String get aiReaderBeginnerDesc => 'Langaj senp; chak mo teknik eksplike.';

  @override
  String get aiReaderExperiencedDesc =>
      'Tèks pi dans ak vokabilè finansye estanda.';

  @override
  String get aiCounterArgument => 'Pi fò kont-agiman an';

  @override
  String get aiCounterArgumentDesc =>
      'Rezime a toujou fini ak pi bon agiman kont pwòp konklizyon l.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jiska $count rechèch sou entènèt pa analiz ak plan ou a',
      one: 'Jiska $count rechèch sou entènèt pa analiz ak plan ou a',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Longè estanda selon plan: Nòmal $normal, Pro $pro, Max $max, Ultra $ultra. Kout fè 2 mwens, An pwofondè 2 plis.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jiska $count rechèch sou entènèt',
      one: 'jiska $count rechèch sou entènèt',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rechèch sou entènèt pa analiz',
      one: '$count rechèch sou entènèt pa analiz',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Longè sa a bezwen $needed analiz, men ou gen $left sèlman ki rete. Chwazi yon longè ki pi kout nan Paramèt oswa pran plis analiz.';
  }

  @override
  String get outlookMarketMood => 'Moral mache a';

  @override
  String get moodVeryPessimistic => 'Trè pesimis';

  @override
  String get moodPessimistic => 'Pesimis';

  @override
  String get moodNeutral => 'Netral';

  @override
  String get moodOptimistic => 'Optimis';

  @override
  String get moodVeryOptimistic => 'Trè optimis';

  @override
  String get scenarioBull => 'Senaryo optimis';

  @override
  String get scenarioBase => 'Senaryo debaz';

  @override
  String get scenarioBear => 'Senaryo pesimis';

  @override
  String outlookCurrentPrice(String price) {
    return 'Pri aktyèl: $price';
  }

  @override
  String get outlookKeyLevels => 'Nivo kle';

  @override
  String get keyLevelSupport => 'Sipò';

  @override
  String get keyLevelResistance => 'Rezistans';

  @override
  String get keyLevelAnchor => 'Lank';

  @override
  String get upcomingEvents => 'Evènman k ap vini';

  @override
  String get outlookChartNote =>
      'Entèval endikatif; pwobabilite yo se estimasyon apeprè, se pa prediksyon.';

  @override
  String get accountTitle => 'Kont';

  @override
  String get signIn => 'Konekte';

  @override
  String get signOut => 'Dekonekte';

  @override
  String get notSignedIn => 'Ou pa konekte';

  @override
  String get accountBenefit =>
      'Konekte pou abònman ou a mache sou tout aparèy ou yo.';

  @override
  String get accountSyncedNote =>
      'Abònman ou ak analiz ki rete yo se menm bagay sou chak aparèy.';

  @override
  String get signInTitle => 'Konekte nan WhatStock';

  @override
  String get emailLabel => 'Adrès imèl';

  @override
  String get continueWithEmail => 'Kontinye ak imèl';

  @override
  String codeSentTo(String email) {
    return 'Nou voye yon kòd 6 chif bay $email. Li valab pou 10 minit.';
  }

  @override
  String get codeLabel => 'Kòd koneksyon';

  @override
  String get resendCode => 'Voye yon nouvo kòd';

  @override
  String get useDifferentEmail => 'Sèvi ak yon lòt imèl';

  @override
  String get errInvalidCode => 'Kòd la pa bon oswa li ekspire.';

  @override
  String get errInvalidEmail => 'Tanpri antre yon adrès imèl ki valab.';

  @override
  String get errSignInFailed =>
      'Koneksyon an echwe. Verifye koneksyon entènèt ou epi eseye ankò.';

  @override
  String get checkoutWaiting =>
      'Fini peman an nan navigatè w. Aplikasyon an ap mete ajou otomatikman lè sa fini.';

  @override
  String get paymentViaStripe =>
      'Peman sekirize nan navigatè w atravè Stripe. Anile nenpòt ki lè.';

  @override
  String get paymentViaStore =>
      'Peye atravè kont App Store oswa Google Play ou. Anile nenpòt ki lè nan paramèt magazen an.';

  @override
  String get keySpace => 'Espas';

  @override
  String get doubleOptionTitle => 'Peze Option de fwa';

  @override
  String get doubleOptionSubtitle =>
      'Lè w peze touch Option la de fwa byen vit, sa rele WhatStock tou.';

  @override
  String get doubleOptionPermission =>
      'Pou sa mache nan lòt aplikasyon tou, otorize WhatStock nan Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée, epi relouvri aplikasyon an.';

  @override
  String get openSystemSettings => 'Louvri Réglages Système';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Peze $shortcut oswa peze Option de fwa kèlkeswa kote ou ye pou rele WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Pi pwobab';

  @override
  String get longTermToday => 'Jodi a';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: '$years an',
      one: '$years an',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range pa ane';
  }

  @override
  String longTermLikely(String price) {
    return 'pi pwobab $price';
  }

  @override
  String get confidenceLow => 'Konfyans fèb';

  @override
  String get confidenceMedium => 'Konfyans mwayen';

  @override
  String get confidenceHigh => 'Konfyans wo';

  @override
  String get longTermNote =>
      'Entèval alontèm yo baze sou sipozisyon yo deklare epi yo vin pi laj ak tan. Pri yo pa enkli dividann. Estimasyon apeprè, se pa prediksyon.';

  @override
  String get portfolio => 'Pòtfèy';

  @override
  String get portfolioEmpty =>
      'Poko gen anyen la a. Louvri yon aksyon epi peze «Ajoute nan pòtfèy» pou swiv sa w genyen.';

  @override
  String get portfolioLocalNote =>
      'Anrejistre sèlman sou aparèy sa a. Total yo konvèti ak to referans BCE a; pri yo ka an reta.';

  @override
  String get addToPortfolio => 'Ajoute nan pòtfèy';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ajoute $symbol';
  }

  @override
  String get portfolioQuantity => 'Kantite aksyon';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Pri pa aksyon ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Dat acha';

  @override
  String get portfolioAdd => 'Ajoute';

  @override
  String get portfolioInvalidNumber => 'Antre yon nonb ki pi gran pase zewo.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ajoute nan pòtfèy ou.';
  }

  @override
  String get portfolioTotalValue => 'Valè total';

  @override
  String get portfolioToday => 'Jodi a';

  @override
  String get portfolioGainLoss => 'Benefis/pèt';

  @override
  String homeDividendsThisYear(String amount) {
    return 'Dividann ane sa a: $amount';
  }

  @override
  String get portfolioInvested => 'Envesti';

  @override
  String get portfolioAllocation => 'Repatisyon';

  @override
  String get portfolioPositions => 'Pozisyon';

  @override
  String portfolioAvgCost(String price) {
    return 'pri mwayen $price';
  }

  @override
  String get portfolioYourPosition => 'Pozisyon ou';

  @override
  String get portfolioPurchases => 'Acha';

  @override
  String get portfolioRemove => 'Retire';

  @override
  String get portfolioExcluded =>
      'Pozisyon ki pa gen pri oswa to chanj pa konte nan total yo.';

  @override
  String get priceAlerts => 'Alèt pri';

  @override
  String get setPriceAlert => 'Mete yon alèt pri';

  @override
  String alertDialogTitle(String symbol) {
    return 'Alèt pri · $symbol';
  }

  @override
  String get alertKindAbove => 'Monte pi wo pase';

  @override
  String get alertKindBelow => 'Desann pi ba pase';

  @override
  String get alertKindMove => 'Bouje anpil nan yon jounen';

  @override
  String alertTargetPrice(String currency) {
    return 'Pri ($currency)';
  }

  @override
  String get alertMovePercent => 'Mouvman pa jou (%)';

  @override
  String get alertAlreadyMet => 'Pri a deja depase nivo sa a.';

  @override
  String get alertSave => 'Mete alèt la';

  @override
  String alertCreated(String symbol) {
    return 'Alèt la mete pou $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Poko gen alèt pri. Louvri yon aksyon epi peze klòch la pou mete youn.';

  @override
  String get alertsNote =>
      'Nou tcheke alèt yo chak 5 minit pandan WhatStock ap mache. Sou yon òdinatè, li kontinye mache nan ba meni an oswa nan tray la; sou yon telefòn, pou kounye a alèt yo rive sèlman lè aplikasyon an louvri.';

  @override
  String alertDescAbove(String price) {
    return 'Pi wo pase $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Pi ba pase $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Mouvman pa jou ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Deklanche $date a $price';
  }

  @override
  String get alertRearm => 'Reaktive';

  @override
  String get alertDelete => 'Efase';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol monte pi wo pase $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol desann pi ba pase $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol bouje $percent jodi a';
  }

  @override
  String alertHitBody(String price) {
    return 'Pri aktyèl: $price';
  }

  @override
  String get alertOpen => 'Louvri';

  @override
  String get keepInTrayTitle => 'Kontinye mache lè fenèt la fèmen';

  @override
  String get keepInTraySubtitle =>
      'WhatStock rete nan ba meni an oswa nan tray la, konsa rakousi a ak alèt pri yo kontinye mache.';

  @override
  String get termsOfUse => 'Kondisyon itilizasyon';

  @override
  String get privacyPolicy => 'Politik konfidansyalite';

  @override
  String get subscriptionLegal =>
      'Abònman yo renouvle otomatikman chak mwa jiskaske ou anile. Lè w abòne, ou aksepte Kondisyon itilizasyon yo ak Politik konfidansyalite a.';

  @override
  String get deleteAccount => 'Efase kont lan';

  @override
  String get deleteAccountTitle => 'Efase kont ou?';

  @override
  String get deleteAccountBody =>
      'Kont ou ak tout sa ki anrejistre sou sèvè nou an (imèl, kota, itilizasyon) ap efase nèt, epi analiz ou pa t itilize yo ap pèdi. Yon abònman ou peye nan navigatè a ap anile touswit; yon abònman App Store oswa Google Play, se nan paramèt magazen an pou w anile l.';

  @override
  String get deleteLocalData =>
      'Efase done ki sou aparèy sa a tou (pòtfèy, alèt, favori, istorik, analiz anrejistre)';

  @override
  String get deleteAccountConfirm => 'Efase nèt';

  @override
  String get accountDeleted => 'Kont ou efase.';

  @override
  String get errDeleteAccount =>
      'Nou pa t ka efase kont lan. Verifye koneksyon entènèt ou epi eseye ankò.';

  @override
  String get aiTrialBriefNote =>
      'Analiz esè yo kout epi se yon modèl AI ki pi rapid ki fè yo. Avèk yon plan, ou jwenn AI ki pi pwisan nou an, plis rechèch sou entènèt, ak longè Estanda ak An pwofondè.';

  @override
  String get billingMonthly => 'Chak mwa';

  @override
  String get billingYearly => 'Chak ane';

  @override
  String get yearlyDiscount => '2 mwa gratis';

  @override
  String get perYear => '/ ane';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price pa mwa';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abònman anyèl yo renouvle otomatikman chak ane jiskaske ou anile. Lè w abòne, ou aksepte Kondisyon itilizasyon yo ak Politik konfidansyalite a.';

  @override
  String get myAnalyses => 'Analiz mwen yo';

  @override
  String get navAlerts => 'Alèt';

  @override
  String get inviteTitle => 'Apèsi prive';

  @override
  String get inviteBody =>
      'Pou kounye a, WhatStock disponib sèlman sou envitasyon. Antre kòd envitasyon ou te resevwa a.';

  @override
  String get inviteCodeLabel => 'Kòd envitasyon';

  @override
  String get inviteContinue => 'Kontinye';

  @override
  String get inviteInvalid => 'Kòd envitasyon sa a pa valab.';

  @override
  String get inviteExpired =>
      'Envitasyon sa a ekspire. Mande moun ki te envite w la yon nouvo kòd.';

  @override
  String get inviteDeviceLimit =>
      'Kòd envitasyon sa a deja itilize sou kantite maksimòm aparèy ki pèmèt.';

  @override
  String get previewConfidential => 'Apèsi konfidansyèl';

  @override
  String get errPreviewDailyLimit =>
      'Limit analiz jodi a pou apèsi sa a fin rive. Eseye ankò demen.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sa gen $count èdtan',
      one: 'sa gen 1 èdtan',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sa gen $count jou',
      one: 'sa gen 1 jou',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Mete analiz sa a ajou?';

  @override
  String staleBody(String age) {
    return 'Analiz sa a te fèt $age. Pri, nouvèl ak rezilta yo ka chanje depi lè sa a.';
  }

  @override
  String get staleKeep => 'Montre ansyen an';

  @override
  String get staleRefresh => 'Fè yon nouvo';

  @override
  String seeAll(int count) {
    return 'Wè tout ($count)';
  }

  @override
  String get searchAnalyses => 'Chèche nan analiz ou yo';

  @override
  String get deleteAnalysis => 'Efase';

  @override
  String analysisDeleted(String symbol) {
    return 'Analiz $symbol efase';
  }

  @override
  String get keyLevelAlertHint =>
      'Peze yon nivo pou resevwa yon alèt lè pri a rive la.';

  @override
  String get shareAnalysisTitle => 'Pataje analiz la';

  @override
  String get shareAsImage => 'Pataje kòm imaj';

  @override
  String get shareAsText => 'Pataje kòm tèks';

  @override
  String get shareCardFooter => 'Fèt ak WhatStock';

  @override
  String get shareCardDisclaimer => 'Analiz AI · se pa yon konsèy envestisman';

  @override
  String get referralTitle => 'Envite zanmi';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analiz anplis',
      one: '1 analiz anplis',
    );
    return 'Pataje kòd ou. Zanmi ou resevwa $_temp0 touswit, epi ou resevwa menm kantite a apre premye analiz li.';
  }

  @override
  String get referralYourCode => 'Kòd ou';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Envite: $invited · Rekonpanse: $rewarded';
  }

  @override
  String get referralHaveCode => 'Ou gen kòd yon zanmi?';

  @override
  String get referralRedeem => 'Itilize';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nou ajoute $count analiz anplis. Byenvini!',
      one: 'Nou ajoute 1 analiz anplis. Byenvini!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Kòd sa a pa egziste. Verifye l epi eseye ankò.';

  @override
  String get referralErrOwn => 'Ou pa ka itilize pwòp kòd ou.';

  @override
  String get referralErrAlready => 'Ou deja itilize kòd yon zanmi.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count analiz anplis',
      one: '1 analiz anplis',
    );
    return 'Mwen analize aksyon ak WhatStock: ou pran foto yon aksyon epi AI a eksplike l. Avèk kòd mwen $code ou resevwa $_temp0.';
  }

  @override
  String get referralCopied => 'Kòd la kopye';

  @override
  String get onboardTitle1 => 'Pran foto yon aksyon';

  @override
  String get onboardBody1 =>
      'Yon ekran aplikasyon kourtye, yon jounal oswa logo yon konpayi ase: WhatStock rekonèt aksyon an epi li montre w pri li, grafik li ak chif enpòtan yo.';

  @override
  String get onboardTitle2 => 'Konprann li nan kèk minit';

  @override
  String get onboardBody2 =>
      'Analiz AI a eksplike sa ki fè aksyon an bouje, risk yo, valè li ak twa senaryo sou kote pri a ka ale, avèk sous epi nan lang ou.';

  @override
  String get onboardTitle3 => 'Toujou okouran';

  @override
  String get onboardBody3 =>
      'Favori, pòtfèy ou ak alèt pri yo kenbe w okouran. Analiz ou yo rete sou aparèy ou, pare pou w louvri yo ankò.';

  @override
  String get onboardNext => 'Swivan';

  @override
  String get onboardStart => 'Ann kòmanse';

  @override
  String get onboardSkip => 'Sote';

  @override
  String changesTitle(String date) {
    return 'Depi analiz anvan an ($date)';
  }

  @override
  String get changesPrice => 'Pri';

  @override
  String get changesNoMajor => 'Pèspektiv yo pa chanje anpil.';

  @override
  String get changesPreviousSummary => 'Rezime anvan an';

  @override
  String get telemetryTitle => 'Ede amelyore WhatStock';

  @override
  String get telemetryBody =>
      'Pataje estatistik itilizasyon anonim ak rapò sou pann: ki fonksyon yo itilize ak sa ki pa t mache. Pa janm aksyon ou yo, analiz ou yo oswa done pèsonèl ou. Ou ka chanje sa nenpòt ki lè nan Paramèt.';

  @override
  String get telemetryAllow => 'Pèmèt';

  @override
  String get telemetryDecline => 'Non, mèsi';

  @override
  String get telemetrySetting => 'Estatistik anonim ak rapò sou pann';

  @override
  String get telemetrySettingHint =>
      'Konbyen fwa yo itilize fonksyon yo ak rapò erè, san done pèsonèl ni kontni rechèch ak analiz ou yo.';

  @override
  String get askButton => 'Poze kesyon sou analiz sa a';

  @override
  String askTitle(String symbol) {
    return 'Kesyon sou $symbol';
  }

  @override
  String get askIntro =>
      'Poze nenpòt kesyon sou analiz la: sa yon risk vle di, kisa ki ta ka chanje pèspektiv yo, kijan yo kalkile yon chif. Repons yo baze sou analiz sa a, epi se pa yon konsèy envestisman.';

  @override
  String get askHint => 'Ekri kesyon ou…';

  @override
  String get askSend => 'Voye';

  @override
  String get askThinking => 'M ap reflechi…';

  @override
  String get askSuggest1 => 'Ki pi gwo risk la?';

  @override
  String get askSuggest2 => 'Kisa ki ta ka chanje pèspektiv yo?';

  @override
  String get askSuggest3 => 'Eksplike l avèk mo senp';

  @override
  String get askMaxReached =>
      'Sa se te dènye kesyon pou analiz sa a. Jenere yon nouvo analiz pou w poze plis kesyon.';

  @override
  String get errAskLimit =>
      'Ou rive nan limit kesyon pou jodi a. Eseye ankò demen.';

  @override
  String get eventTomorrow => 'Demen';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'nan $days jou',
      one: 'nan 1 jou',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Rezilta trimestriyèl';

  @override
  String get eventBeforeOpen => 'anvan mache a louvri';

  @override
  String get eventAfterClose => 'apre mache a fèmen';

  @override
  String eventEpsEstimate(String value) {
    return 'Estimasyon EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Soti nan analiz ou';

  @override
  String get eventDividend => 'Dividann yo atann';

  @override
  String get eventDividendEstimate => 'Estime dapre peman ou te anrejistre yo';

  @override
  String get eventsHint =>
      'Dat rezilta favori ou yo ak aksyon ki nan pòtfèy ou pou 90 jou k ap vini yo, evènman ki gen dat analiz ou yo make, ak dividann yo atann dapre peman ou te anrejistre yo.';

  @override
  String get eventsEmpty =>
      'Pa gen evènman ki gen dat nan 90 jou k ap vini yo. Ajoute favori oswa aksyon nan pòtfèy ou pou w wè dat rezilta yo isit la; dividann ou te anrejistre yo montre pwochen peman yo atann.';

  @override
  String get compareTitle => 'Konpare';

  @override
  String get compareAdd => 'Ajoute yon aksyon';

  @override
  String get compareRemove => 'Retire';

  @override
  String get compareTickerHint => 'Senbòl, pa egzanp MSFT';

  @override
  String get compareHint =>
      'Chif kle yo youn bò lòt; pi bon valè nan chak liy make an evidans. Montan yo nan pwòp deviz chak aksyon.';

  @override
  String get compareNoAnalysis => 'Poko gen analiz';

  @override
  String get portfolioDividends => 'Dividann chak ane';

  @override
  String portfolioDividendYield(String percent) {
    return 'Rannman $percent';
  }

  @override
  String get portfolioDividendNote =>
      'Dividann chak ane yo espere a baze sou dividann ki te peye pandan 12 dènye mwa yo; pa gen garanti pou peman nan lavni.';

  @override
  String positionDividend(String amount) {
    return 'Dividann: $amount pa ane';
  }

  @override
  String get chartAvgCost => 'Mwayèn ou';

  @override
  String get chartAlertLevel => 'Alèt';

  @override
  String get marketsToday => 'Mache yo jodi a';

  @override
  String get notesTitle => 'Nòt mwen yo';

  @override
  String get notesHint =>
      'Poukisa ou te achte l, kisa w ap swiv, kisa ki ta fè w vann li?';

  @override
  String get notesInfo =>
      'Anrejistre sèlman sou aparèy sa a. Analiz AI a pran nòt ou yo an kont.';

  @override
  String notesSaved(String date) {
    return 'Anrejistre $date';
  }

  @override
  String get peersTitle => 'Konpayi ki sanble';

  @override
  String get portfolioExport => 'Ekspòte an CSV';

  @override
  String get portfolioImport => 'Enpòte soti nan CSV';

  @override
  String get portfolioImportHint =>
      'Kole yon acha pa liy: senbòl, kantite, pri, deviz, dat (AAAA-MM-JJ). Kolòn yo ka separe ak vigil, pwen vigil oswa tab; liy tèt la pa obligatwa.';

  @override
  String get portfolioImportButton => 'Enpòte';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nou ajoute $count acha',
      one: 'Nou ajoute 1 acha',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nou sote $count liy',
      one: 'Nou sote 1 liy',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Pòtfèy, favori, alèt pri ak nòt yo senkronize sou tout aparèy ou yo.';

  @override
  String syncLast(String time) {
    return 'Dènye senkronizasyon: $time';
  }

  @override
  String get syncNow => 'Senkronize kounye a';

  @override
  String get syncFailed =>
      'Senkronizasyon an echwe. L ap eseye ankò otomatikman.';

  @override
  String get alertEmailTitle => 'Imèl lè yon alèt deklanche';

  @override
  String get alertEmailOn =>
      'Nou tcheke alèt ou yo chak kèk minit epi nou voye yon imèl ba ou, menm lè aplikasyon an fèmen.';

  @override
  String get alertEmailSignIn =>
      'Konekte ak imèl ou nan Paramèt pou w resevwa alèt yo pa imèl, menm lè aplikasyon an fèmen.';

  @override
  String get portfolioHistory => 'Evolisyon valè';

  @override
  String get portfolioReviewTitle => 'Analiz pòtfèy ak AI';

  @override
  String get portfolioReviewIntro =>
      'AI a egzamine tout pòtfèy ou: konsantrasyon, ekspozisyon nan sektè ak lajan etranje, risk aksyon ou yo pataje, ak dividann. Sèvi ak 1 analiz.';

  @override
  String get portfolioReviewButton => 'Analize pòtfèy mwen';

  @override
  String get portfolioReviewAgain => 'Analize ankò';

  @override
  String get portfolioReviewWorking => 'N ap analize pòtfèy ou…';

  @override
  String get digestTitle => 'Rezime chak semèn pa imèl';

  @override
  String get digestHint =>
      'Chak lendi: kijan favori ou ak pòtfèy ou te mache semèn pase a, ak pwochen dat rezilta yo.';

  @override
  String get benchmarkTitle => 'Konpare ak S&P 500';

  @override
  String get benchmarkTitleIndex => 'Konpare ak yon endèks';

  @override
  String get benchmarkHintIndex =>
      'Tankou si chak acha te envesti nan yon fon ki swiv endèks ou chwazi a menm jou a. San dividann; rannman pase pa predi rannman nan lavni.';

  @override
  String get benchmarkYours => 'Acha ou yo';

  @override
  String benchmarkAhead(String points) {
    return '$points pwen pousantaj pi bon pase endèks la';
  }

  @override
  String benchmarkBehind(String points) {
    return '$points pwen pousantaj dèyè endèks la';
  }

  @override
  String get portfolioSell => 'Vann';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Vann $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Pri vant pa aksyon ($currency)';
  }

  @override
  String get portfolioSellDate => 'Dat vant';

  @override
  String get portfolioSellAll => 'Tout';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'Ou genyen $quantity';
  }

  @override
  String get portfolioSold => 'Vandi';

  @override
  String get portfolioRealized => 'Reyalize';

  @override
  String get portfolioClosed => 'Pozisyon fèmen';

  @override
  String get portfolioClosedNote => 'Tout aksyon yo vann';

  @override
  String get portfolioTransactions => 'Tranzaksyon';

  @override
  String get portfolioRealizedByYear => 'Benefis reyalize pa ane';

  @override
  String get portfolioRealizedHint =>
      'Nou matche lavant yo ak pi ansyen acha ou yo anvan (FIFO), konvèti nan to chanj jodi a. Pou deklarasyon taks ou, sèvi ak rapò koutye ou.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Gen nouvo rezilta trimestriyèl ki pibliye depi analiz sa a ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Nouvo rezilta';

  @override
  String get portfolioImportBrokers =>
      'Ekspòtasyon Revolut, Trading 212 ak Interactive Brokers rekonèt tou, ansanm ak vant yo; dividann ak depo yo sote.';

  @override
  String get portfolioImportFile => 'Chwazi yon fichye';

  @override
  String offlineBanner(String time) {
    return 'Pa gen koneksyon – n ap montre dènye done ki te anrejistre yo ($time).';
  }

  @override
  String get glossMarketCap =>
      'Konbyen tout konpayi a vo sou mache bousyè a: pri aksyon an × kantite aksyon.';

  @override
  String get glossSharesOutstanding =>
      'Konbyen aksyon konpayi a emèt. Si kantite a ogmante, chak aksyon gen yon pi piti mòso; lè konpayi a rachte aksyon, li diminye.';

  @override
  String get glossPeTrailing =>
      'Pri ÷ benefis pa aksyon sou 12 dènye mwa yo: konbyen ane benefis aktyèl w ap peye. Pi ba vle di pi bon mache, men konpayi k ap grandi vit souvan gen yon P/E wo.';

  @override
  String get glossPeForward =>
      'Tankou P/E, men ak benefis analis yo prevwa pou 12 pwochen mwa yo. Si li pi ba pase P/E istorik la, sa vle di yo prevwa benefis ap ogmante.';

  @override
  String get glossPb =>
      'Pri ÷ valè kontab (aktif mwens dèt) pa aksyon. Anviwon 1 vle di mache a evalye konpayi a pou sa li posede sou papye.';

  @override
  String get glossPs =>
      'Valè sou mache ÷ chif dafè anyèl. Itil pou konpayi ki fè ti kras benefis oswa ki poko fè ditou; konpare l nan menm endistri a.';

  @override
  String get glossEvToFcf =>
      'Valè konpayi a ak dèt li (EV) ÷ lajan kach li pwodui nan yon ane apre envestisman. Pi ba vle di ou jwenn plis kach pou pri a.';

  @override
  String get glossPeg =>
      'P/E ÷ kwasans benefis anyèl yo prevwa (%). Anviwon 1 souvan konsidere kòm jis; li mete P/E a an rapò ak kwasans lan.';

  @override
  String get glossEps =>
      'Benefis pa aksyon sou 12 dènye mwa yo. Yon EPS k ap monte ane apre ane se youn nan pi gwo siy yon konpayi ki an sante.';

  @override
  String get glossBeta =>
      'Konbyen aksyon an konn bouje ak mache a: 1 = tankou mache a, 1,5 = mouvman anviwon 50% pi gwo, anba 1 = pi kalm.';

  @override
  String get glossRevenueTtm =>
      'Total lavant 12 dènye mwa yo, anvan nenpòt depans.';

  @override
  String get glossNetIncomeTtm =>
      'Benefis ki rete apre tout depans, enterè ak taks sou 12 dènye mwa yo.';

  @override
  String get glossGrossMargin =>
      'Pati nan chif dafè a ki rete apre pri dirèk pwodwi yo. Yon maj wo souvan vle di konpayi a gen pouvwa sou pri li.';

  @override
  String get glossOperatingMargin =>
      'Pati nan chif dafè a ki rete apre depans pou fè biznis la mache (salè, lwaye, maketing), anvan enterè ak taks.';

  @override
  String get glossNetMargin =>
      'Pati nan chif dafè a ki tounen benefis final. 20% vle di sou chak 100 nan lavant, 20 se benefis.';

  @override
  String get glossRoe =>
      'Rantabilite kapital pwòp: benefis anyèl ÷ kapital pwopriyetè yo. Li montre kijan direksyon an byen itilize lajan aksyonè yo; plis pase anviwon 15% se fò.';

  @override
  String get glossRoa =>
      'Rantabilite aktif yo: benefis anyèl ÷ tout sa konpayi a posede. Konpare l nan menm endistri a.';

  @override
  String get glossDebtToEquity =>
      'Dèt ÷ kapital pwopriyetè yo. Pi wo vle di plis lajan prete: plis risk lè to enterè monte oswa biznis la ralanti.';

  @override
  String get glossCurrentRatio =>
      'Aktif kout tèm ÷ fakti pou peye nan yon ane. Plis pase 1 vle di konpayi a ka kouvri fakti ki pral rive yo.';

  @override
  String get glossRevenueGrowth =>
      'Konbyen chif dafè a ogmante konpare ak yon ane anvan.';

  @override
  String get glossEpsGrowth =>
      'Konbyen benefis pa aksyon an ogmante konpare ak yon ane anvan.';

  @override
  String get glossDividendYield =>
      'Dividann anyèl ÷ pri aksyon an: lajan kach ou ta resevwa chak ane, an pousantaj sa ou peye a.';

  @override
  String get glossDividendPerShare =>
      'Dividann yo peye sou yon aksyon pandan dènye ane a.';

  @override
  String get glossPayoutRatio =>
      'Pati nan benefis la yo peye kòm dividann. Plis pase 100% konpayi a peye plis pase sa li fè, e sa raman dire.';

  @override
  String get portfolioBeta => 'Beta pòtfèy la';

  @override
  String get glossPortfolioBeta =>
      'Beta aksyon ou yo, an mwayèn selon valè chak: apeprè konbyen pousan aksyon ou yo bouje lè mache a bouje 1%. Pi wo pase 1, yo bouje plis pase mache a; anba 1, mwens. Lajan kach pa ladan l.';

  @override
  String get portfolioTop3 => '3 pi gwo pozisyon';

  @override
  String get glossPortfolioTop3 =>
      'Ki pati nan valè aksyon ou yo ki nan twa pi gwo pozisyon ou yo. Plis li wo, plis move nouvèl sou yon sèl konpayi ka fè tout pòtfèy la mal.';

  @override
  String get glossDividendGrowth5y =>
      'Konbyen dividann pa aksyon an te grandi chak ane an mwayèn pandan senk dènye ane yo. Yon kwasans regilye anjeneral vle di konpayi an gen konfyans nan lajan k ap antre ak soti li; yon diminisyon souvan se yon siy avètisman.';

  @override
  String get glossYieldOnCost =>
      'Dividann ou resevwa nan 12 dènye mwa yo divize pa sa ou te peye pou aksyon ou toujou genyen yo. Kontrèman ak rannman dividann, yo mezire l sou pwòp pri acha ou, pa sou pri jodi a.';

  @override
  String get glossTitle => 'Kisa sa vle di?';

  @override
  String get watchNewsTitle => 'Nouvèl sou aksyon ou yo';

  @override
  String get undo => 'Defèt';

  @override
  String get watchSort => 'Triye';

  @override
  String get watchSortOwn => 'Lòd pa m';

  @override
  String get watchSortGainers => 'Pi gwo monte an premye';

  @override
  String get watchSortLosers => 'Pi gwo desann an premye';

  @override
  String get watchSortName => 'Pa senbòl (A–Z)';

  @override
  String get watchHint =>
      'Trennen manch lan pou chanje lòd, glise sou bò goch pou retire. Liy lan montre 30 dènye jou yo.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: analiz ou a pare.';
  }

  @override
  String alertFromCost(String price) {
    return 'Apati pri mwayen ou te achte a ($price):';
  }

  @override
  String get briefTitle => 'Jodi a ak aksyon ou yo';

  @override
  String get briefButton => 'Rezime jodi a';

  @override
  String get briefHint =>
      'Yon ti rezime AI sou kijan pòtfolyo ou ak favori ou yo te deplase jodi a ak sa dènye nouvèl yo di sou yo. Li pa itilize okenn analiz.';

  @override
  String get briefRefresh => 'Mete ajou';

  @override
  String get sectionEarnings => 'Rezilta trimestriyèl';

  @override
  String earningsNext(String date) {
    return 'Pwochen rapò: $date';
  }

  @override
  String get earningsExpected => 'EPS yo atann';

  @override
  String get earningsReported => 'EPS rapòte';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Nan nivo oswa pi wo pase EPS yo te atann nan $beats sou $total dènye trimès yo',
      one: 'Nan nivo oswa pi wo pase EPS yo te atann nan $beats sou 1 trimès',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol ap pibliye rezilta trimestriyèl li demen';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ap pibliye rezilta trimestriyèl li jodi a';
  }

  @override
  String dividendReminderTitle(String symbol) {
    return 'Dividann $symbol yo atann jodi a';
  }

  @override
  String dividendReminderBody(String amount) {
    return 'Anviwon $amount. Anrejistre l nan pòtfolyo w lè l rive.';
  }

  @override
  String get dividendRemindersTitle => 'Rapèl dividann';

  @override
  String get dividendRemindersSubtitle =>
      'Yon notifikasyon jou yo atann yon dividann dapre ritm peman ou te anrejistre yo, pou w ka anrejistre l';

  @override
  String get earningsRemindersTitle => 'Rapèl rezilta';

  @override
  String get earningsRemindersSubtitle =>
      'Yon notifikasyon jou anvan aksyon ki nan favori w oswa pòtfolyo w pibliye rezilta trimestriyèl yo';

  @override
  String addAllToFavorites(int count) {
    return 'Ajoute tout nan favori ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Enpòte soti nan yon kapti ekran';

  @override
  String get holdingsReading => 'N ap li pozisyon ou yo…';

  @override
  String get holdingsReviewTitle => 'Pozisyon nou jwenn';

  @override
  String get holdingsReviewHint =>
      'Verifye chif yo anvan ou ajoute yo. Pri a se pri acha mwayen ou pou chak aksyon, se pa pri jodi a.';

  @override
  String get holdingsNoPrice => 'Pa gen pri acha mwayen sou imaj la';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ajoute $count pozisyon',
      one: 'Ajoute 1 pozisyon',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Nou pa jwenn okenn pozisyon aksyon sou imaj sa a. Eseye yon kapti ekran paj pozisyon koutye ou a.';

  @override
  String get week52Range => 'Ranje sou 52 semèn';

  @override
  String week52BelowHigh(String percent) {
    return '$percent anba pi wo sou 52 semèn';
  }

  @override
  String get week52AtHigh => 'Nan pi wo sou 52 semèn';

  @override
  String get alertKindTrailing => 'Desann depi pik la';

  @override
  String get alertTrailingPercent => 'Bès depi pik la (%)';

  @override
  String get alertTrailingHint =>
      'Li swiv pri a lè l monte: alèt la sonnen lè pri a desann konsa depi pi wo nivo li te rive depi ou te mete l.';

  @override
  String alertDescTrailing(String percent) {
    return 'Bès $percent depi pik la';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'pik jiskaprezan: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol desann $percent depi pik li';
  }

  @override
  String get sectionInsiders => 'Tranzaksyon moun anndan yo';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count acha',
      one: '1 acha',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vant',
      one: '1 vant',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Nèt: $shares aksyon';
  }

  @override
  String get insiderBuy => 'Achte';

  @override
  String get insiderSell => 'Vann';

  @override
  String get insiderHint =>
      'Acha ak vant sou mache ouvè pa dirijan ak administratè yo nan 90 dènye jou yo (SEC Form 4). Nou pa konte egzèsis opsyon ak aksyon yo bay kòm rekonpans.';

  @override
  String get insiderNone =>
      'Pa gen acha oswa vant moun anndan sou mache ouvè nan 90 dènye jou yo.';

  @override
  String get analystTrend => 'Kijan opinyon yo chanje mwa apre mwa';

  @override
  String get watchListAll => 'Tout';

  @override
  String get watchListNew => 'Nouvo lis';

  @override
  String get watchListName => 'Non lis la';

  @override
  String get watchListRename => 'Chanje non lis la';

  @override
  String get watchListDelete => 'Efase lis la';

  @override
  String get watchListAddTo => 'Ajoute nan yon lis';

  @override
  String get watchListEmpty =>
      'Poko gen aksyon nan lis sa a. Tape bouton lis la bò kote yon aksyon pou ajoute l.';

  @override
  String get portfolioAskTitle => 'Kesyon sou pòtfèy ou';

  @override
  String get rangeYtd => 'Ane sa a';

  @override
  String get backupTitle => 'Sovgad';

  @override
  String get backupSave => 'Anrejistre yon sovgad';

  @override
  String get backupSaveHint =>
      'Favori ou, lis ou, pòtfèy ou, alèt ou ak nòt ou nan yon sèl fichye.';

  @override
  String get backupRestore => 'Restore nan yon sovgad';

  @override
  String get backupRestoreHint =>
      'Li ajoute sa ki nan fichye a; anyen nan sa ou genyen kounye a p ap efase.';

  @override
  String get backupRestored => 'Sovgad la restore.';

  @override
  String get backupInvalid => 'Fichye sa a se pa yon sovgad WhatStock.';

  @override
  String get allocationPositions => 'Aksyon';

  @override
  String get allocationSectors => 'Sektè';

  @override
  String get allocationCurrencies => 'Deviz';

  @override
  String get allocationAccounts => 'Kont';

  @override
  String get compareReturn1y => 'Rannman sou 1 an';

  @override
  String get compareFromHigh => 'Distans ak pi wo sou 52 semèn';

  @override
  String get briefAutoTitle => 'Rezime chak jou chak maten';

  @override
  String get briefAutoSubtitle =>
      '“Jodi a ak aksyon ou yo” fèt otomatikman apre 7:00 nan maten pandan aplikasyon an ap mache; sou òdinatè, yon notifikasyon fè ou konnen. Li itilize limit kesyon ou pou chak jou, pa yon analiz.';

  @override
  String get targetsButton => 'Repatisyon sib';

  @override
  String get targetsTitle => 'Repatisyon sib';

  @override
  String get targetsHint =>
      'Mete ki pòsyon nan pòtfolyo a chak aksyon dwe genyen. Kite chan an vid si pa gen sib. Apre sa, aplikasyon an ap montre sa pou achte oswa vann pou rive la.';

  @override
  String targetsSum(String percent) {
    return 'Total: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Achte ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Vann ≈ $amount';
  }

  @override
  String get rebalanceOk => 'Sou sib la';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol depase EPS yo te atann lan';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol pa rive nan EPS yo te atann lan';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS rapòte $actual, yo te atann $estimate';
  }

  @override
  String get newsExplain => 'Kisa sa vle di?';

  @override
  String get watchAlertAll => 'Alèt pou gwo mouvman pa jou';

  @override
  String get watchAlertAllHint =>
      'Yon alèt pri pou chak aksyon nan lis sa a ki sonnen lè li bouje konsa nan yon jounen, monte oswa desann. Aksyon ki gen youn deja ap kenbe pa yo.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nou mete $count alèt',
      one: 'Nou mete 1 alèt',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Ekspòte pwofi reyalize yo (CSV)';

  @override
  String get portfolioAnnualReturn => 'Rannman anyèl';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / ane';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Rannman anyèl ki peze selon lajan an (XIRR): li konte ki lè ou te achte ak vann, kidonk lajan ou ajoute pita pa defòme l. Li parèt depi premye acha ou gen omwen yon ane; dividann yo pa ladan l.';

  @override
  String get eventsAddToCalendar => 'Ajoute nan kalandriye (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Alèt pòtfolyo';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Yon notifikasyon lè tout pòtfolyo w bouje konsa nan yon jou.';

  @override
  String get portfolioMoveAlertOff => 'Fèmen';

  @override
  String portfolioMoveUp(String percent) {
    return 'Pòtfolyo w monte $percent jodi a';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Pòtfolyo w desann $percent jodi a';
  }

  @override
  String get whatIfTitle => 'E si ou te envesti?';

  @override
  String get whatIfAmount => 'Montan';

  @override
  String whatIfResult(String amount, String period) {
    return '$amount ou te envesti sa gen $period ta vo jodi a';
  }

  @override
  String get whatIfNote =>
      'Sa baze sèlman sou pri aksyon an: dividann, frè ak taks pa ladan l. Rannman pase yo pa predi sa k ap vini.';

  @override
  String get watchShare => 'Pataje lis la';

  @override
  String get watchImport => 'Ajoute senbòl';

  @override
  String get watchImportHint =>
      'Kole senbòl yo separe ak vigil, espas oswa nouvo liy – pa egzanp yon lis yon moun pataje avè w.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nou ajoute $count aksyon',
      one: 'Nou ajoute 1 aksyon',
      zero: 'Pa gen nouvo aksyon',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Pi gwo an premye';

  @override
  String get positionsSortGain => 'Pi bon randman total an premye';

  @override
  String get positionsSortToday => 'Pi bon jodi a an premye';

  @override
  String get chartMyBuys => 'Acha ou yo';

  @override
  String get chartMySells => 'Vant ou yo';

  @override
  String get shortcutsTitle => 'Rakousi klavye';

  @override
  String usMarketOpen(String time) {
    return 'Mache ameriken louvri · ap fèmen nan $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Mache ameriken fèmen · ap louvri nan $time';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String durationDaysHours(int days, int hours) {
    return '$days j $hours h';
  }

  @override
  String get dividendGoalSet => 'Mete yon objektif dividann chak mwa';

  @override
  String get dividendGoalTitle => 'Objektif dividann chak mwa';

  @override
  String get dividendGoalAmount => 'Dividann pa mwa';

  @override
  String dividendGoalProgress(String amount, String percent, String goal) {
    return 'Anviwon $amount pa mwa ak rannman jodi a · $percent · Objektif: $goal';
  }

  @override
  String dividendGoalReached(String amount, String goal) {
    return 'Anviwon $amount pa mwa ak rannman jodi a · Objektif atenn: $goal';
  }

  @override
  String get portfolioAccount => 'Kont';

  @override
  String get portfolioAccountHint => 'egz. TBSZ 2026 (opsyonèl)';

  @override
  String get portfolioAccountAdd => 'Presize yon kont';

  @override
  String get portfolioAccountsAll => 'Tout kont yo';

  @override
  String get portfolioAccountNote =>
      'Se sèlman tranzaksyon ak dividann kont sa a. Lajan kach, objektif ak analiz AI parèt nan Tout kont yo.';

  @override
  String get portfolioNoAccount => 'San kont';

  @override
  String portfolioFee(String currency) {
    return 'Komisyon ($currency)';
  }

  @override
  String get portfolioFeeAdd => 'Ajoute yon komisyon';

  @override
  String portfolioFeeRow(String amount) {
    return 'Komisyon: $amount';
  }

  @override
  String get portfolioAnnualSummary => 'Rezime anyèl';

  @override
  String get portfolioProceeds => 'Revni lavant';

  @override
  String get portfolioCostBasis => 'Pri acha';

  @override
  String get portfolioFeesPaid => 'Komisyon ou peye';

  @override
  String get portfolioAnnualSummaryNote =>
      'Montan yo nan lajan orijinal la, yo pa konvèti. Revni lavant yo se apre komisyon lavant lan retire; pri acha a gen ladan l komisyon acha a (FIFO). Pou deklarasyon taks ou, konvèti yo nan to chanj otorite taks ou egzije a.';

  @override
  String get portfolioShare => 'Pataje pèfòmans lan';

  @override
  String get portfolioShareHeading => 'Pòtfèy mwen';

  @override
  String get portfolioTopHoldings => 'Pi gwo pozisyon yo';

  @override
  String get portfolioShareNote =>
      'Se sèlman pousantaj yo ki pataje, pa gen montan.';

  @override
  String portfolioPositionsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozisyon',
      one: '1 pozisyon',
    );
    return '$_temp0';
  }

  @override
  String get shareNotAdvice => 'Se pa yon konsèy envestisman';

  @override
  String get contributionButton => 'Envesti nouvo lajan';

  @override
  String contributionAmount(String currency) {
    return 'Montan pou envesti ($currency)';
  }

  @override
  String get contributionHint =>
      'Se achte sèlman, pa gen vant: pozisyon ki pi lwen anba sib yo resevwa lajan an an premye.';

  @override
  String contributionShares(String shares) {
    return '≈ $shares aksyon';
  }

  @override
  String contributionMissing(String symbols) {
    return 'Pa gen pri aktyèl pou $symbols: yo pa konte nan repatisyon an.';
  }

  @override
  String get portfolioGoalSet => 'Mete yon objektif';

  @override
  String get portfolioGoalTitle => 'Objektif pòtfèy';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Objektif: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'Objektif atenn: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Retire objektif la';

  @override
  String get alertEdit => 'Modifye alèt la';

  @override
  String get positionOpenLots => 'Toujou genyen (pi ansyen yo anvan)';

  @override
  String get lotRemoved => 'Tranzaksyon efase';

  @override
  String get alertDeleted => 'Alèt la efase';

  @override
  String get alertsClearTriggered => 'Efase alèt ki deklanche yo';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alèt efase',
      one: '1 alèt efase',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Ekran akèy';

  @override
  String get allocationCountries => 'Peyi';

  @override
  String get newsExplainNoteResearch =>
      'Eksplikasyon AI: li chèche enfòmasyon yo sou entènèt, li louvri atik la epi li evalye kijan sous la serye. Se pa yon konsèy envestisman. Li itilize limit kesyon ou pou chak jou, pa yon analiz.';

  @override
  String get sourceOfficial => 'Ofisyèl';

  @override
  String get sourcePressRelease => 'Kominike';

  @override
  String get sourceMajorNews => 'Gwo medya';

  @override
  String get sourceOpinion => 'Opinyon';

  @override
  String get earningsSummaryButton => 'Kisa ki te nan dènye rapò a?';

  @override
  String get earningsSummaryNote =>
      'Rezime AI sou anons rezilta konpayi an ak sa laprès di sou li li jwenn sou entènèt. Se pa yon konsèy envestisman. Li itilize limit kesyon ou pou chak jou, pa yon analiz.';

  @override
  String get compareLastSurprise => 'EPS dènye trimès vs. sa yo atann';

  @override
  String get compareNextReport => 'Pwochen rapò';

  @override
  String get resolvingDescription => 'N ap chèche konnen ki aksyon ou vle di…';

  @override
  String get instrumentTitle => 'Sou enstriman sa a';

  @override
  String get instrumentHint =>
      'Pa gen pwofil konpayi pou senbòl sa a – li ka yon ETF, yon fon oswa yon sètifika depo. Mande AI a kisa li ye, kisa li genyen ladan l ak konbyen li koute.';

  @override
  String get instrumentAsk => 'Kisa sa ye?';

  @override
  String get instrumentNote =>
      'Eksplikasyon AI ki soti nan paj fon emetè a ak sit finansye li jwenn sou entènèt. Se pa yon konsèy envestisman. Li itilize limit kesyon ou pou chak jou, pa yon analiz.';

  @override
  String suggestAskAi(String query) {
    return 'Mande AI a: « $query »';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Pa gen pri aktyèl pou $symbols.';
  }

  @override
  String get eventsRecentResults => 'Rezilta ki fèk pibliye';

  @override
  String get saveToNotes => 'Anrejistre nan nòt mwen yo';

  @override
  String get savedToNotes => 'Anrejistre nan nòt ou yo';

  @override
  String get portfolioDividendsReceived => 'Dividann ou resevwa';

  @override
  String get portfolioDividendsThisYear => 'Ane sa a';

  @override
  String get portfolioDividendsAllTime => 'Depi kòmansman';

  @override
  String get portfolioAddDividend => 'Ajoute dividann';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Montan ou resevwa ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Dat peman';

  @override
  String get portfolioDividendsEmpty =>
      'Poko gen okenn dividann ki anrejistre. Ajoute yo alamen, oswa enpòte ekspò koutye w la – liy dividann li yo ap pran tou.';

  @override
  String get portfolioSplit => 'Divizyon aksyon';

  @override
  String portfolioSplitTitle(String symbol) {
    return 'Divizyon aksyon: $symbol';
  }

  @override
  String get portfolioSplitHint =>
      'Acha ak vant ki gen dat anvan divizyon an ajiste: kantite aksyon yo miltipliye epi pri chak aksyon divize, kidonk kou a rete menm jan.';

  @override
  String get portfolioSplitRatio => 'Rapò (nouvo : ansyen)';

  @override
  String get portfolioSplitRatioError =>
      'Antre yon rapò tankou 10:1, oswa 1:10 pou yon divizyon envès.';

  @override
  String get portfolioSplitDate => 'Dat divizyon an';

  @override
  String portfolioSplitRow(String ratio) {
    return 'Divizyon aksyon $ratio';
  }

  @override
  String get portfolioSplitRemoved => 'Divizyon aksyon an efase';

  @override
  String portfolioSplitsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count divizyon aksyon ajoute',
      one: '1 divizyon aksyon ajoute',
    );
    return '$_temp0';
  }

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dividann ajoute',
      one: '1 dividann ajoute',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Ekspòte dividann (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividann efase';

  @override
  String get portfolioDividendsHint =>
      'Montan yo jan yo te rive sou kont ou, nan lajan peman an; total yo konvèti nan to jodi a. Pou deklarasyon taks ou, sèvi ak relve koutye w la.';

  @override
  String get awayTitle => 'Pandan ou pa t la';

  @override
  String awaySince(String when) {
    return 'Depi $when';
  }

  @override
  String get awayQuiet => 'Anyen pa t deplase anpil.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alèt deklanche',
      one: '1 alèt deklanche',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Rezilta pibliye: $symbols';
  }

  @override
  String get moveWhyButton => 'Poukisa l ap bouje jodi a?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent jodi a';
  }

  @override
  String get moveWhyNote =>
      'Eksplikasyon AI ki soti nan nouvèl jodi a yo jwenn sou entènèt; vrè rezon an ka pa konnen oswa diferan. Se pa konsèy envestisman. Li sèvi ak kota kesyon chak jou ou, se pa yon analiz.';

  @override
  String get sectionTechnical => 'Imaj teknik';

  @override
  String get labelSma50 => 'Mwayèn 50 jou';

  @override
  String get labelSma200 => 'Mwayèn 200 jou';

  @override
  String get labelRsi => 'RSI (14 jou)';

  @override
  String get labelVolatility30 => 'Volatilite (30 jou)';

  @override
  String techAbove(String percent) {
    return '$percent anwo';
  }

  @override
  String techBelow(String percent) {
    return '$percent anba';
  }

  @override
  String get techOverbought => 'twò achte';

  @override
  String get techOversold => 'twò vann';

  @override
  String get techNeutral => 'net';

  @override
  String get techGoldenCross =>
      'Mwayèn 50 jou a pi wo pase mwayèn 200 jou a – yon tandans monte dapre lekti klasik la.';

  @override
  String get techDeathCross =>
      'Mwayèn 50 jou a pi ba pase mwayèn 200 jou a – yon tandans desann dapre lekti klasik la.';

  @override
  String get glossSma50 =>
      'Mwayèn pri fèmti 50 dènye jou komès yo. Yon pri ki pi wo pase li souvan konsidere kòm fòs sou kout tèm, pi ba kòm feblès.';

  @override
  String get glossSma200 =>
      'Mwayèn pri fèmti 200 dènye jou komès yo – liy tandans klasik la pou lontan. Anpil envestisè konsidere yon pri ki pi wo pase li kòm yon tandans monte sou lontan.';

  @override
  String get glossRsi =>
      'Endis fòs relatif: li konpare dènye pwofi yo ak dènye pèt yo sou yon echèl 0–100. Pi wo pase 70, yo souvan di aksyon an twò achte (li monte vit), pi ba pase 30 twò vann – men yon tandans fò ka rete la pou lontan.';

  @override
  String get glossVolatility =>
      'Konbyen pri a varye de yon jou a yon lòt, kalkile sou yon ane: 20% vle di nan yon ane nòmal pri a deplase anviwon ±20%. Plis volatilite vle di pi gwo mouvman nan toude direksyon.';

  @override
  String get techNote =>
      'Kalkile apati pri fèmti chak jou. Siyal teknik yo dekri sa ki pase, pa sa ki pral vini.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above sou $count pozisyon pi wo pase mwayèn 200 jou yo';
  }

  @override
  String get watchSignalsTitle => 'Siyal';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · twò vann';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · twò achte';
  }

  @override
  String get signalCrossedAbove => 'monte pi wo pase mwayèn 200 jou li';

  @override
  String get signalCrossedBelow => 'desann pi ba pase mwayèn 200 jou li';

  @override
  String get signalAlertsTitle => 'Notifikasyon siyal teknik';

  @override
  String get signalAlertsSubtitle =>
      'Yon fwa pa jou, lè yon aksyon w ap swiv vin twò vann oswa twò achte (RSI), oswa lè pri li travèse mwayèn 200 jou li.';

  @override
  String get signalAlertsNotification => 'Siyal teknik';

  @override
  String get glossaryPageTitle => 'Glosè';

  @override
  String get glossaryPageSubtitle =>
      'Eksplikasyon senp pou chak chif aplikasyon an montre, soti nan P/E rive nan RSI';

  @override
  String get glossarySearchHint => 'Chèche nan glosè a';

  @override
  String get portfolioCash => 'Lajan kach';

  @override
  String get portfolioCashTitle => 'Balans lajan kach';

  @override
  String get portfolioCashHint =>
      'Lajan ki pa envesti kay koutye ou, pa deviz. Li konte nan valè total ak repatisyon an; pa nan rannman an.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Montan ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Fikse balans lajan kach';

  @override
  String get portfolioDividendsByMonth => 'Pa mwa';

  @override
  String get dividendsLegendReceived => 'Resevwa';

  @override
  String get dividendsLegendExpected => 'Prevwa';

  @override
  String get portfolioDividendsExpected => 'Pwochen yo atann';

  @override
  String get portfolioDividendsExpectedNote =>
      'Estime dapre dat ak montan peman ou te anrejistre yo; konpayi yo ka chanje yo oswa sote yo.';

  @override
  String portfolioDividendAround(String date) {
    return 'anviwon $date';
  }
}
