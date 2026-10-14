// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Fulah (`ff`).
class AppLocalizationsFf extends AppLocalizations {
  AppLocalizationsFf([String locale = 'ff']) : super(locale);

  @override
  String get appTitle => 'WhatStock';

  @override
  String get homeTagline =>
      'Ƴettu natal aksiyoŋ, a anndan kala ko fayti e ɗum.';

  @override
  String get homeHint =>
      'Seedamfaagu aksiyoŋ, yaynirde jaaɓnirgal soodde e yeeyde aksiyoŋ, jaaynde walla maanndel sosiyete – kala ko hollata aksiyoŋ.';

  @override
  String get takePhoto => 'Ƴettu natal';

  @override
  String get chooseFromGallery => 'Suɓo e nate maa';

  @override
  String get chooseImage => 'Suɓo natal';

  @override
  String get enterTickerManually => 'Tappu kod aksiyoŋ e jungo maa';

  @override
  String get tickerInputLabel => 'Kod aksiyoŋ';

  @override
  String get tickerInputHint => 'yeru: AAPL';

  @override
  String get lookUp => 'Yiylo';

  @override
  String demoModeBanner(String symbols) {
    return 'Mbayka demo – coktirgal keɓe luumo teeltaaka. Keɓe yeru ina ngoodi wonande: $symbols.';
  }

  @override
  String get recognizing => 'Ina ƴeewa natal ngal…';

  @override
  String get loadingData => 'Ina loowa keɓe…';

  @override
  String get noCandidatesTitle => 'Aksiyoŋ heɓtinaaka';

  @override
  String get noCandidatesBody =>
      'Min mbaawaani heɓtinde aksiyoŋ e natal ngal. Eto natal ɓurngal laaɓde, walla tappu kod aksiyoŋ e jungo maa.';

  @override
  String get whatWeSaw => 'Ko min njiyi';

  @override
  String get chooseCandidateTitle => 'Hol aksiyoŋ mo njiɗ-ɗaa?';

  @override
  String confidencePercent(int percent) {
    return 'Hoolaare $percent%';
  }

  @override
  String get settings => 'Teelte';

  @override
  String get language => 'Ɗemngal';

  @override
  String get systemLanguage => 'Ɗemngal yuɓɓo';

  @override
  String get about => 'Baɗte';

  @override
  String get disclaimer =>
      'Jaaɓnirgal ngal ina hokka humpito tan, wonaa wasiya e investisman. Keɓe ɗee ina mbaawi ɓooyde walla ɗe peewaani.';

  @override
  String dataSource(String source) {
    return 'Iwdi keɓe: $source';
  }

  @override
  String recognizerSource(String source) {
    return 'Heɓtingol: $source';
  }

  @override
  String get retry => 'Eto goɗngol';

  @override
  String get cancel => 'Haaytu';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Uddu';

  @override
  String get errorGeneric => 'Won caɗeele mbaɗi.';

  @override
  String get errorSectionUnavailable => 'Horiima loowde ndee taƴre.';

  @override
  String get notAvailable => 'alaa';

  @override
  String get sectionIdentity => 'Humpito aksiyoŋ';

  @override
  String get sectionPrice => 'Coggu';

  @override
  String get sectionValuation => 'Hiisa njaru';

  @override
  String get sectionFinancials => 'Ceede sosiyete';

  @override
  String get sectionDividend => 'Geɗal nafoore';

  @override
  String get sectionProfile => 'Humpito sosiyete';

  @override
  String get sectionAnalysts => 'Ko ƴeewooɓe mbiyi';

  @override
  String get sectionNews => 'Kabaruuji';

  @override
  String get sectionRecognition => 'Cariiɗe heɓtingol';

  @override
  String get labelSymbol => 'Kod';

  @override
  String get labelExchange => 'Luumo';

  @override
  String get labelIsin => 'ISIN';

  @override
  String get labelCurrency => 'Ceede';

  @override
  String get labelCountry => 'Leydi';

  @override
  String get labelIndustry => 'Golle';

  @override
  String get labelSector => 'Fannu';

  @override
  String get labelWebsite => 'Lowre geese';

  @override
  String get labelIpoDate => 'Ñalnde IPO';

  @override
  String get labelMarketCap => 'Njaru e luumo';

  @override
  String get labelSharesOutstanding => 'Limoore aksiyoŋ fof';

  @override
  String get labelEmployees => 'Golliiɓe';

  @override
  String get labelCeo => 'CEO';

  @override
  String get labelHeadquarters => 'Biro mawɗo';

  @override
  String get labelDescription => 'Cifagol';

  @override
  String get labelLastPrice => 'Coggu cakkitiingu';

  @override
  String get labelChange => 'Waylo';

  @override
  String get labelOpen => 'Udditgol';

  @override
  String get labelDayHigh => 'Ɓurɗum toowde hannde';

  @override
  String get labelDayLow => 'Ɓurɗum leeseede hannde';

  @override
  String get labelPreviousClose => 'Uddugol ɓennungol';

  @override
  String get labelWeek52High => 'Ɓurɗum toowde e yonte 52';

  @override
  String get labelWeek52Low => 'Ɓurɗum leeseede e yonte 52';

  @override
  String get labelAverageVolume10d => 'Volume moyen (ñalɗi 10)';

  @override
  String updatedAt(String time) {
    return 'Hesɗitinaa $time';
  }

  @override
  String get labelPeTrailing => 'P/E (historique)';

  @override
  String get labelPeForward => 'P/E (prévisionnel)';

  @override
  String get labelPb => 'P/B';

  @override
  String get labelPs => 'P/S';

  @override
  String get labelEvToFcf => 'EV / cash-flow libre';

  @override
  String get labelPeg => 'PEG';

  @override
  String get labelEps => 'EPS (TTM)';

  @override
  String get labelBeta => 'Beta';

  @override
  String get labelRevenueTtm => 'Ceede naatuɗe (TTM)';

  @override
  String get labelNetIncomeTtm => 'Nafoore laaɓnde (TTM)';

  @override
  String get labelGrossMargin => 'Marge brute';

  @override
  String get labelOperatingMargin => 'Marge opérationnelle';

  @override
  String get labelNetMargin => 'Marge nette';

  @override
  String get labelRoe => 'Nafoore e kapital (ROE)';

  @override
  String get labelRoa => 'Nafoore e jawdi (ROA)';

  @override
  String get labelDebtToEquity => 'Ñamaale / kapital';

  @override
  String get labelCurrentRatio => 'Ratio de liquidité';

  @override
  String get labelRevenueGrowth => 'Ɓeydagol ceede naatuɗe (YoY)';

  @override
  String get labelEpsGrowth => 'Ɓeydagol EPS (YoY)';

  @override
  String get labelDividendYield => 'Geɗal nafoore e coggu (%)';

  @override
  String get labelDividendPerShare => 'Geɗal nafoore e kala aksiyoŋ';

  @override
  String get labelPayoutRatio => 'Taux de distribution';

  @override
  String get labelConsensus => 'Ko ɓe kawri';

  @override
  String get ratingStrongBuy => 'Soodu no feewi';

  @override
  String get ratingBuy => 'Soodu';

  @override
  String get ratingHold => 'Jogo';

  @override
  String get ratingSell => 'Yeeyu';

  @override
  String get ratingStrongSell => 'Yeeyu no feewi';

  @override
  String analystCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ƴeewooɓe $count',
      one: 'Ƴeewoowo 1',
    );
    return '$_temp0';
  }

  @override
  String analystPeriod(String period) {
    return 'Sahaa: $period';
  }

  @override
  String get noNews => 'Alaa kabaruuji jooni.';

  @override
  String get openArticle => 'Uddit winndannde';

  @override
  String get openLinkFailed => 'Horiima udditde jokkol ngol.';

  @override
  String get recognitionSummary => 'Tonngoode';

  @override
  String get recognitionEvidence => 'Ko waɗi min miijii non';

  @override
  String get recognitionRawText => 'Binndol janngaangol e natal ngal';

  @override
  String get errMissingAnthropicKey =>
      'Heɓtingol nate teeltaaka (alaa ANTHROPIC_API_KEY). Tappu kod aksiyoŋ e jungo maa.';

  @override
  String get errRecognitionUnreachable =>
      'Horiima jokkondirde e carwol heɓtingol. Ƴeewto ceŋagol enternet maa.';

  @override
  String errRecognitionHttp(String status) {
    return 'Carwol heɓtingol ruttii juumre (HTTP $status).';
  }

  @override
  String get errRecognitionRefused =>
      'Carwol heɓtingol waawaani ƴeewde natal ngal.';

  @override
  String get errRecognitionTruncated =>
      'Jaabawol heɓtingol taƴaama. Tiiɗno eto goɗngol.';

  @override
  String get errRecognitionBadResponse =>
      'Carwol heɓtingol ruttii jaabawol ngol tijjaaka.';

  @override
  String get errRecognitionEmpty => 'Carwol heɓtingol ruttii jaabawol meho.';

  @override
  String get errMissingFinnhubKey =>
      'Keɓe luumo teeltaaka (alaa FINNHUB_API_KEY).';

  @override
  String get errMarketUnreachable =>
      'Horiima jokkondirde e carwol keɓe luumo. Ƴeewto ceŋagol enternet maa.';

  @override
  String get errMarketRateLimited =>
      'Ɗaɓɓitanɗe keewii e carwol keɓe luumo. Tiiɗno muñ hojom gooto.';

  @override
  String errMarketHttp(String status) {
    return 'Carwol keɓe luumo ruttii juumre (HTTP $status).';
  }

  @override
  String get errMarketBadResponse =>
      'Carwol keɓe luumo ruttii jaabawol ngol tijjaaka.';

  @override
  String errNoQuote(String symbol) {
    return 'Alaa keɓe coggu wonande $symbol.';
  }

  @override
  String errNoProfile(String symbol) {
    return 'Alaa humpito sosiyete wonande $symbol.';
  }

  @override
  String errDemoUnsupportedSymbol(String symbols) {
    return 'Mbayka demo ina jaɓa $symbols tan. Ɓeydu FINNHUB_API_KEY ngam heɓde keɓe e sahaa jooni.';
  }

  @override
  String errUnknown(String detail) {
    return 'Won caɗeele mbaɗi: $detail';
  }

  @override
  String get newSearch => 'Yiylo kadi';

  @override
  String get recentSearches => 'Njiilaw sakket';

  @override
  String get noRecentSearches => 'Alaa njiilaw sakket tawo.';

  @override
  String get clearRecent => 'Momtu njiilaw sakket';

  @override
  String get greeting => 'Hol aksiyoŋ mo en ƴeewata?';

  @override
  String get searchHint => 'Kod aksiyoŋ walla innde sosiyete';

  @override
  String get attachImage => 'Ɓeydu natal';

  @override
  String get searchResultsTitle => 'Njaltudi njiilaw';

  @override
  String errNoResults(String query) {
    return 'Alaa njeñtudi wonande “$query”.';
  }

  @override
  String get quickBarHint => 'Tappu kod aksiyoŋ walla innde sosiyete…';

  @override
  String get openFullWindow => 'Uddit henorde';

  @override
  String hotkeyHint(String shortcut) {
    return 'Ñoƴƴu $shortcut kala ɗo ngam noddude WhatStock.';
  }

  @override
  String get trayOpen => 'Uddit WhatStock';

  @override
  String get trayQuickSearch => 'Yiylo jaawngol';

  @override
  String get trayQuit => 'Yaltu';

  @override
  String get appearance => 'Mbaydi';

  @override
  String get themeSystem => 'Yuɓɓo';

  @override
  String get themeDark => 'Niɓɓo';

  @override
  String get themeLight => 'Leernde';

  @override
  String get back => 'Rutto';

  @override
  String get aiSectionTitle => 'Ƴeewndo AI';

  @override
  String get aiIntro =>
      'Ƴeewndo ko AI winndi, e cariiɗe fof: tonngoode kabaruuji sakket, golle sosiyete, doole, kulle e ko suuɗii, njaru, ko coggu waawi wonde e laabi ceertuɗi – miijo, renndo, teknik e faggudu mawngu – e ko haani yuurneede.';

  @override
  String get aiGenerate => 'Waɗ ƴeewndo';

  @override
  String get aiRegenerate => 'Waɗ ɗum kadi';

  @override
  String get aiGenerating =>
      'Ina waɗa ƴeewndo… ɗum ina waawi ƴettude hojom gooto walla ɗiɗi.';

  @override
  String get aiSources => 'Iwdi';

  @override
  String aiGeneratedAt(String time) {
    return 'Waɗaama $time';
  }

  @override
  String get aiDisclaimer =>
      'Ƴeewndo ko AI waɗi, tuugiiɗo e keɓe udditiiɗe e kabaruuji sakket. Ina waawi jogaade juume walla ɓooyde, wonaa kadi wasiya e investisman.';

  @override
  String get errAiNotConfigured =>
      'Ƴeewndo AI teeltaaka (alaa ANTHROPIC_API_KEY).';

  @override
  String get errAiUnreachable =>
      'Horiima jokkondirde e carwol AI. Ƴeewto ceŋagol enternet maa.';

  @override
  String errAiHttp(String status) {
    return 'Carwol AI ruttii juumre (HTTP $status).';
  }

  @override
  String get errAiRefused => 'Carwol AI salii ƴeewde aksiyoŋ oo.';

  @override
  String get errAiBadResponse => 'Carwol AI ruttii jaabawol ngol tijjaaka.';

  @override
  String get sectionChart => 'Diidol coggu';

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
  String get chartUnavailable => 'Aslol coggu alaa e iwdi keɓe jooni.';

  @override
  String get sectionStatements => 'Jaŋte ceede (hitaande kala)';

  @override
  String get labelFiscalYear => 'Hitaande ceede';

  @override
  String get labelRevenue => 'Ceede naatuɗe';

  @override
  String get labelNetIncome => 'Nafoore laaɓnde';

  @override
  String get labelTotalAssets => 'Kuuɓal jawdi';

  @override
  String get labelTotalLiabilities => 'Kuuɓal ñamaale';

  @override
  String get labelEquity => 'Kapital jeyɓe aksiyoŋ';

  @override
  String get labelOperatingCashFlow => 'Cash-flow golle';

  @override
  String get statementsUnavailable => 'Alaa jaŋte ceede wonande aksiyoŋ oo.';

  @override
  String get launchAtLogin => 'Hurmin so a seŋii';

  @override
  String get hotkeyLabel => 'Laawol ɓadangol kala ɗo';

  @override
  String get hotkeyRecordHint => 'Dobo ɗoo, refti ñoƴƴu dental dobirɗe kesal';

  @override
  String get hotkeyReset => 'Artir goowaaɗe';

  @override
  String get pasteImage => 'Ɗakku natal iwde e ɗakkitorde';

  @override
  String get errClipboardNoImage => 'Alaa natal e ɗakkitorde ndee.';

  @override
  String get favorites => 'Cuɓaaɗe';

  @override
  String get addToFavorites => 'Ɓeydu e cuɓaaɗe';

  @override
  String get removeFromFavorites => 'Ittu e cuɓaaɗe';

  @override
  String get noFavorites =>
      'Alaa cuɓaaɗe tawo. Dobo hoodere ndee e aksiyoŋ ngam ɓeydude ɗum.';

  @override
  String get displayCurrency => 'Hollir e ceede';

  @override
  String get displayCurrencyNone => 'Ceede aksiyoŋ tan';

  @override
  String labelConverted(String currency) {
    return '≈ e $currency';
  }

  @override
  String fxRateNote(String from, String rate, String to, String date) {
    return 'Coggu weccitgol: 1 $from = $rate $to (ECB, $date)';
  }

  @override
  String get updates => 'Kesɗitine';

  @override
  String currentVersion(String version) {
    return 'Yamre $version';
  }

  @override
  String get autoUpdate => 'Aaf kesɗitine e jaajol';

  @override
  String get checkForUpdates => 'Yuurno kesɗitine';

  @override
  String get updateChecking => 'Ina yiyloo kesɗitine…';

  @override
  String get updateUpToDate => 'A woni e yamre sakkitiinde.';

  @override
  String updateAvailable(String version) {
    return 'Yamre $version ina woodi.';
  }

  @override
  String get updateDownloading => 'Ina aawtoo kesɗitinal ngal e ɓaawo…';

  @override
  String get updateDownloaded =>
      'Kesɗitinal ngal hebiima. Hurmitin ngam aafde ngal.';

  @override
  String get updateNow => 'Hesɗitin';

  @override
  String get restartNow => 'Hurmitin';

  @override
  String get updatesViaStore =>
      'Kesɗitine ina ngara e jaajol rewrude e bitik jaaɓnirɗe.';

  @override
  String get updateCheckFailed => 'Horiima yuurnude kesɗitine.';

  @override
  String get subscription => 'Abonmaa';

  @override
  String get planTrial => 'Etagol';

  @override
  String get planNormal => 'Normaal';

  @override
  String get planPro => 'Pro';

  @override
  String get planMax1 => 'Max';

  @override
  String get planMax2 => 'Ultra';

  @override
  String get planNone => 'Alaa feere e golle';

  @override
  String planAnalysesPerMonth(int count) {
    return 'Ƴeewndooji $count e lewru';
  }

  @override
  String planTrialDescription(int days, int count) {
    return 'Etagol meere ñalɗi $days e ƴeewndooji $count';
  }

  @override
  String trialDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Ñalɗi $days heddii e etagol',
      one: 'Ñalnde 1 heddii e etagol',
    );
    return '$_temp0';
  }

  @override
  String get trialExpired =>
      'Etagol maa meere gasii. Suɓo feere ngam jokkude ƴeewndo.';

  @override
  String analysesRemaining(int remaining, int total) {
    return 'Ƴeewndooji $remaining e nder $total heddii e sahaa oo';
  }

  @override
  String extraCredits(int count) {
    return 'Ƴeewndooji ɓeydiiɗi $count';
  }

  @override
  String renewsOn(String date) {
    return 'Ina fuɗɗitoo $date';
  }

  @override
  String get choosePlan => 'Suɓo feere';

  @override
  String get currentPlan => 'Feere maa jooni';

  @override
  String get subscribe => 'Ƴettu abonmaa';

  @override
  String get perMonth => '/ lewru';

  @override
  String get extraPacksTitle => 'Aɗa yiɗi ɓeydude? Soodu ƴeewndooji ɓeydiiɗi';

  @override
  String get extraPacksHint =>
      'Ƴeewndooji ɓeydiiɗi gasataa; ɗi kuutortee caggal geɗal maa lewru kala.';

  @override
  String get buy => 'Soodu';

  @override
  String get restorePurchases => 'Artir ko a soodi';

  @override
  String get manageSubscription => 'Toppito abonmaa';

  @override
  String get purchaseSuccess => 'A jaaraama! Ko a soodi ina golla jooni.';

  @override
  String get purchasePending => 'Soodgol ina jokki…';

  @override
  String get purchaseFailed => 'Horiima timminde soodgol ngol.';

  @override
  String get purchaseCanceled => 'Soodgol haaytaama.';

  @override
  String get billingUnavailable =>
      'Soodgol alaa e ngoo yuɓɓo tawo. Ƴettu abonmaa e cinndel maa walla Mac; feere maa ina gollata e kala kaɓirgol.';

  @override
  String get errQuotaExceeded =>
      'Ƴeewndooji maa gasii e sahaa oo. Toownu feere maa walla soodu ƴeewndooji ɓeydiiɗi.';

  @override
  String get errTrialExpired =>
      'Etagol maa meere gasii. Suɓo feere ngam jokkude.';

  @override
  String get errNoPlan => 'Ƴeewndo AI ina sokli feere e golle.';

  @override
  String get viewPlans => 'Ƴeew peeje';

  @override
  String get usageTitle => 'Kuutorgol';

  @override
  String get demoPurchaseNote =>
      'Njoɓdi demo: soodgol e ngoo yuɓɓo ko nanndinaangol tan.';

  @override
  String get mostPopular => 'Ko ɓuri yiɗeede';

  @override
  String get bestValue => 'Ko ɓuri nafde';

  @override
  String get planFeaturesCommon =>
      'Heɓtingol nate, keɓe e sahaa jooni, diidi coggu, cuɓaaɗe e ɗemɗe 120 ɗe fof ina ngoni e kala feere. Geɗal ngal ko wonande ƴeewndooji AI.';

  @override
  String get searchLanguages => 'Yiylo ɗemɗe…';

  @override
  String get noLanguageMatch => 'Alaa ɗemngal hawriingal.';

  @override
  String get aiSettings => 'Ƴeewndo AI';

  @override
  String get aiLength => 'Njuuteendi';

  @override
  String get aiDepthBrief => 'Rabbiɗum';

  @override
  String get aiDepthStandard => 'Hakkundeejum';

  @override
  String get aiDepthDeep => 'Luggiɗum';

  @override
  String get aiDepthBriefDesc => 'Ko ɓuri himmude, e yaawre.';

  @override
  String get aiDepthStandardDesc => 'Jaŋtol timmungol e taƴe fof.';

  @override
  String get aiDepthDeepDesc =>
      'Ɓeydagol njiilaw geese, yerondiral e sosiyeteeji nannduɗi e cariiɗe ɓurɗe luggiɗde.';

  @override
  String aiDepthWords(String min, String max) {
    return 'Hono konngi $min–$max';
  }

  @override
  String aiDepthCost(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ina huutoroo ƴeewndooji $count',
      one: 'ina huutoroo ƴeewndo 1',
    );
    return '$_temp0';
  }

  @override
  String get aiReaderLevel => 'Tolno janngoowo';

  @override
  String get aiReaderBeginner => 'Fuɗɗoowo';

  @override
  String get aiReaderExperienced => 'Ganndo';

  @override
  String get aiReaderBeginnerDesc =>
      'Ɗemngal newngal; kala konngol teknik ina firee.';

  @override
  String get aiReaderExperiencedDesc =>
      'Binndol ɓurngol tiiɗde, e konngi ceede woowaaɗi.';

  @override
  String get aiCounterArgument => 'Dalil luulndiiɗo ɓurɗo doole';

  @override
  String get aiCounterArgumentDesc =>
      'Tonngoode ndee ina timmoo sahaa kala e dalil ɓurɗo moƴƴude luulndaade gasirgol mayre.';

  @override
  String aiWebSearchesInfo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Haa njiilaw geese $count e kala ƴeewndo e feere maa',
      one: 'Haa njiilaw geese 1 e kala ƴeewndo e feere maa',
    );
    return '$_temp0';
  }

  @override
  String aiWebSearchesPlans(int normal, int pro, int max, int ultra) {
    return 'Njuuteendi Hakkundeejum e kala feere: Normaal $normal, Pro $pro, Max $max, Ultra $ultra. Rabbiɗum ina ustoo 2, Luggiɗum ina ɓeydoo 2.';
  }

  @override
  String aiWebSearchesShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'haa njiilaw geese $count',
      one: 'haa njiilaw geese 1',
    );
    return '$_temp0';
  }

  @override
  String planWebSearches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Njiilaw geese $count e kala ƴeewndo',
      one: 'Njiilaw geese 1 e kala ƴeewndo',
    );
    return '$_temp0';
  }

  @override
  String errNotEnoughCredits(int needed, int left) {
    return 'Njuuteendi ndii ina sokli ƴeewndooji $needed, kono ko $left tan heddii. Suɓo njuuteendi ɓurndi rabbiɗde e Teelte walla heɓ ƴeewndooji goɗɗi.';
  }

  @override
  String get outlookMarketMood => 'Miijo luumo';

  @override
  String get moodVeryPessimistic => 'Kulol mawngol';

  @override
  String get moodPessimistic => 'Kulol';

  @override
  String get moodNeutral => 'Hakkunde';

  @override
  String get moodOptimistic => 'Jikke';

  @override
  String get moodVeryOptimistic => 'Jikke mawɗe';

  @override
  String get scenarioBull => 'Laawol ɓeydagol';

  @override
  String get scenarioBase => 'Laawol hakkunde';

  @override
  String get scenarioBear => 'Laawol ustagol';

  @override
  String outlookCurrentPrice(String price) {
    return 'Coggu jooni: $price';
  }

  @override
  String get outlookKeyLevels => 'Tolnooji himmuɗi';

  @override
  String get keyLevelSupport => 'Tuugnorde';

  @override
  String get keyLevelResistance => 'Haɗirde';

  @override
  String get keyLevelAnchor => 'Daasol';

  @override
  String get upcomingEvents => 'Kewuuji garooɗi';

  @override
  String get outlookChartNote =>
      'Keeri ɗii ko hiisa tan; ko waawi wonde ko miijo, wonaa ko anndaa.';

  @override
  String get accountTitle => 'Konte';

  @override
  String get signIn => 'Seŋo';

  @override
  String get signOut => 'Seŋto';

  @override
  String get notSignedIn => 'A seŋaaki';

  @override
  String get accountBenefit => 'Seŋo ngam abonmaa maa golla e kaɓirɗi maa fof.';

  @override
  String get accountSyncedNote =>
      'Abonmaa maa e ƴeewndooji maa heddiiɗi ko gooto e kala kaɓirgol.';

  @override
  String get signInTitle => 'Seŋo e WhatStock';

  @override
  String get emailLabel => 'Ñiiɓirde iimeel';

  @override
  String get continueWithEmail => 'Jokku e iimeel';

  @override
  String codeSentTo(String email) {
    return 'Min neldii kod limorɗe 6 to $email. Ina golla hojomaaji 10.';
  }

  @override
  String get codeLabel => 'Kod seŋorde';

  @override
  String get resendCode => 'Neldu kod goɗɗo';

  @override
  String get useDifferentEmail => 'Huutoro iimeel goɗɗo';

  @override
  String get errInvalidCode => 'Kod oo moƴƴaani walla buntii.';

  @override
  String get errInvalidEmail => 'Tiiɗno naatnu ñiiɓirde iimeel moƴƴere.';

  @override
  String get errSignInFailed =>
      'Seŋgol jaccii. Ƴeewto ceŋagol maa refti eto goɗngol.';

  @override
  String get checkoutWaiting =>
      'Timmin njoɓdi ndii e wanngorde maa. Jaaɓnirgal ngal ina hesɗitinoo e jaajol so ɗum timmii.';

  @override
  String get paymentViaStripe =>
      'Njoɓdi kisndi e wanngorde maa rewrude e Stripe. Haaytu sahaa kala.';

  @override
  String get paymentViaStore =>
      'Njoɓdi ina rewa e konte App Store walla Google Play maa. Haaytu sahaa kala e teelte bitik maa.';

  @override
  String get keySpace => 'Boowal';

  @override
  String get doubleOptionTitle => 'Ñoƴƴu Option laabi ɗiɗi';

  @override
  String get doubleOptionSubtitle =>
      'So a ñoƴƴii dobirde Option laabi ɗiɗi e yaawre, WhatStock ina wara kadi.';

  @override
  String get doubleOptionPermission =>
      'Ngam ɗum golla e jaaɓnirɗe goɗɗe kadi, yamir WhatStock e Réglages Système → Confidentialité et sécurité → Surveillance de l’entrée, refti uddit jaaɓnirgal ngal kadi.';

  @override
  String get openSystemSettings => 'Uddit Réglages Système';

  @override
  String hotkeyHintDoubleOption(String shortcut) {
    return 'Ñoƴƴu $shortcut walla ñoƴƴu Option laabi ɗiɗi kala ɗo ngam noddude WhatStock.';
  }

  @override
  String get scenarioMostLikely => 'Ko ɓuri waawde wonde';

  @override
  String get longTermToday => 'Hannde';

  @override
  String longTermYears(int years) {
    String _temp0 = intl.Intl.pluralLogic(
      years,
      locale: localeName,
      other: 'duuɓi $years',
      one: 'hitaande 1',
    );
    return '$_temp0';
  }

  @override
  String longTermPerYear(String range) {
    return '$range e hitaande';
  }

  @override
  String longTermLikely(String price) {
    return 'ko ɓuri waawde: $price';
  }

  @override
  String get confidenceLow => 'Hoolaare famɗunde';

  @override
  String get confidenceMedium => 'Hoolaare hakkundeere';

  @override
  String get confidenceHigh => 'Hoolaare toownde';

  @override
  String get longTermNote =>
      'Keeri sahaa juutɗo ina tuugii e miijooji holliraaɗi, ina njaajoo no sahaa yahrata. Coggu naatnaani geɗal nafoore. Ko hiisa tan, wonaa ko anndaa.';

  @override
  String get portfolio => 'Aksiyoŋ am';

  @override
  String get portfolioEmpty =>
      'Alaa huunde ɗoo tawo. Uddit aksiyoŋ, dobo “Ɓeydu e aksiyoŋ am” ngam rewde ko a jogii.';

  @override
  String get portfolioLocalNote =>
      'Ina mooftaa e ngol kaɓirgol tan. Kuuɓal ina waylitee e coggu weccitgol ECB; coggu ina waawi ɓooyde.';

  @override
  String get addToPortfolio => 'Ɓeydu e aksiyoŋ am';

  @override
  String portfolioAddTitle(String symbol) {
    return 'Ɓeydu $symbol';
  }

  @override
  String get portfolioQuantity => 'Limoore aksiyoŋ';

  @override
  String portfolioBuyPrice(String currency) {
    return 'Coggu kala aksiyoŋ ($currency)';
  }

  @override
  String get portfolioBuyDate => 'Ñalnde soodgol';

  @override
  String get portfolioAdd => 'Ɓeydu';

  @override
  String get portfolioInvalidNumber => 'Naatnu limoore ɓurnde ɓolum.';

  @override
  String portfolioAdded(String symbol) {
    return '$symbol ɓeydaama e aksiyoŋ maa.';
  }

  @override
  String get portfolioTotalValue => 'Kuuɓal njaru';

  @override
  String get portfolioToday => 'Hannde';

  @override
  String get portfolioGainLoss => 'Nafoore/bonannde';

  @override
  String get portfolioInvested => 'Ceede ɗe a waɗi';

  @override
  String get portfolioAllocation => 'Peccugol';

  @override
  String get portfolioPositions => 'Ko a jogii';

  @override
  String portfolioAvgCost(String price) {
    return 'coggu hakkunde $price';
  }

  @override
  String get portfolioYourPosition => 'Ko jeyaa e maa';

  @override
  String get portfolioPurchases => 'Ko a soodi';

  @override
  String get portfolioRemove => 'Ittu';

  @override
  String get portfolioExcluded =>
      'Ko alaa coggu walla coggu weccitgol naatnaaka e kuuɓal.';

  @override
  String get priceAlerts => 'Tintine coggu';

  @override
  String get setPriceAlert => 'Waɗ tintinol coggu';

  @override
  String alertDialogTitle(String symbol) {
    return 'Tintinol coggu · $symbol';
  }

  @override
  String get alertKindAbove => 'Toownagol dow';

  @override
  String get alertKindBelow => 'Jippagol les';

  @override
  String get alertKindMove => 'Waylo mawngo e ñalnde';

  @override
  String alertTargetPrice(String currency) {
    return 'Coggu ($currency)';
  }

  @override
  String get alertMovePercent => 'Waylo ñalnde (%)';

  @override
  String get alertAlreadyMet => 'Coggu jooni ɓennii ɗum kisa.';

  @override
  String get alertSave => 'Waɗ tintinol';

  @override
  String alertCreated(String symbol) {
    return 'Tintinol waɗaama wonande $symbol.';
  }

  @override
  String get alertsEmpty =>
      'Alaa tintine coggu tawo. Uddit aksiyoŋ, dobo maanndel tintinol ngam waɗde gootol.';

  @override
  String get alertsNote =>
      'Tintine ina ƴeewtee hojomaaji 5 kala tuma WhatStock ina golla. E ordinateer, ina jokka golle e palal dosi walla tray; e cinndel, jooni tintine ina ngara tan so jaaɓnirgal ngal udditaama.';

  @override
  String alertDescAbove(String price) {
    return 'Dow $price';
  }

  @override
  String alertDescBelow(String price) {
    return 'Les $price';
  }

  @override
  String alertDescMove(String percent) {
    return 'Waylo ñalnde ±$percent';
  }

  @override
  String alertTriggeredAt(String date, String price) {
    return 'Yaltii $date e $price';
  }

  @override
  String get alertRearm => 'Waɗtu';

  @override
  String get alertDelete => 'Momtu';

  @override
  String alertHitAbove(String symbol, String price) {
    return '$symbol ɓurtii $price';
  }

  @override
  String alertHitBelow(String symbol, String price) {
    return '$symbol jippii les $price';
  }

  @override
  String alertHitMove(String symbol, String percent) {
    return '$symbol wayliima $percent hannde';
  }

  @override
  String alertHitBody(String price) {
    return 'Coggu jooni: $price';
  }

  @override
  String get alertOpen => 'Uddit';

  @override
  String get keepInTrayTitle => 'Jokku golle so henorde ndee uddaama';

  @override
  String get keepInTraySubtitle =>
      'WhatStock ina heddoo e palal dosi walla tray, ngam laawol ɓadangol e tintine coggu ina njokka golle.';

  @override
  String get termsOfUse => 'Sarɗiiji kuutorgol';

  @override
  String get privacyPolicy => 'Dawrugol suturo';

  @override
  String get subscriptionLegal =>
      'Abonmaa ina hesɗitinee e jaajol lewru kala haa a haaytii. So a ƴettii abonmaa, a jaɓii Sarɗiiji kuutorgol e Dawrugol suturo.';

  @override
  String get deleteAccount => 'Momtu konte';

  @override
  String get deleteAccountTitle => 'Momtu konte maa?';

  @override
  String get deleteAccountBody =>
      'Konte maa e kala ko min ndanndi e sarworde amen (iimeel, geɗal, kuutorgol) ina momtee haa abada, ƴeewndooji ɗi a huutoraani ina majja. Abonmaa yoɓaaɗo e wanngorde ina haaytee ɗoon e ɗoon; abonmaa App Store walla Google Play ina foti haaytireede e teelte bitik ngon.';

  @override
  String get deleteLocalData =>
      'Momtu kadi keɓe ngol kaɓirgol (aksiyoŋ am, tintine, cuɓaaɗe, aslol, ƴeewndooji danndaaɗi)';

  @override
  String get deleteAccountConfirm => 'Momtu haa abada';

  @override
  String get accountDeleted => 'Konte maa momtaama.';

  @override
  String get errDeleteAccount =>
      'Horiima momtude konte maa. Ƴeewto ceŋagol maa refti eto goɗngol.';

  @override
  String get aiTrialBriefNote =>
      'Ƴeewndooji etagol ngoni rabbiɗi, ina waɗee e modeel AI ɓurngel yaawde. So a jogii feere, a heɓan AI amen ɓurɗo baawde, ɓeydagol njiilaw geese, e njuuteendi Hakkundeejum e Luggiɗum.';

  @override
  String get billingMonthly => 'Lewru kala';

  @override
  String get billingYearly => 'Hitaande kala';

  @override
  String get yearlyDiscount => 'Lebbi 2 mehe';

  @override
  String get perYear => '/ hitaande';

  @override
  String pricePerMonthApprox(String price) {
    return '≈ $price e lewru';
  }

  @override
  String get subscriptionLegalYearly =>
      'Abonmaa ina hesɗitinee e jaajol hitaande kala haa a haaytii. So a ƴettii abonmaa, a jaɓii Sarɗiiji kuutorgol e Dawrugol suturo.';

  @override
  String get myAnalyses => 'Ƴeewndooji am';

  @override
  String get navAlerts => 'Tintine';

  @override
  String get inviteTitle => 'Ƴeewndo adano uddiingo';

  @override
  String get inviteBody =>
      'Jooni, WhatStock heɓetee tan e noddaangal. Winndu kod noddaangal ngal keɓɗaa.';

  @override
  String get inviteCodeLabel => 'Kod noddaangal';

  @override
  String get inviteContinue => 'Jokku';

  @override
  String get inviteInvalid => 'Kod noddaangal ngal moƴƴaani.';

  @override
  String get inviteExpired =>
      'Noddaangal ngal buntii. Ɗaɓɓit kod kesum to neɗɗo noddiiɗo ma.';

  @override
  String get inviteDeviceLimit =>
      'Kod noddaangal ngal no huutoraa e limoore kaɓirɗe ɓurnde ndee.';

  @override
  String get previewConfidential => 'Ƴeewndo suuɗiingo';

  @override
  String get errPreviewDailyLimit =>
      'Keerol ƴeewndooji hannde ngol e ƴeewndo ngo hewtii. Fuɗɗito janngo.';

  @override
  String ageHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'waktuuji $count ɓennii',
      one: 'waktu 1 ɓennii',
    );
    return '$_temp0';
  }

  @override
  String ageDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ñalɗi $count ɓennii',
      one: 'ñalnde 1 ɓennii',
    );
    return '$_temp0';
  }

  @override
  String get staleTitle => 'Hesɗitin ƴeewndo ndee?';

  @override
  String staleBody(String age) {
    return 'Waɗaama $age. Coggu, kabaruuji e njaltudi ina waawi waylaade gila ndeen.';
  }

  @override
  String get staleKeep => 'Hollu ndo adii';

  @override
  String get staleRefresh => 'Waɗ ndo hesɗo';

  @override
  String seeAll(int count) {
    return 'Yiy fof ($count)';
  }

  @override
  String get searchAnalyses => 'Yiylo e nder ƴeewndooji maa';

  @override
  String get deleteAnalysis => 'Momtu';

  @override
  String analysisDeleted(String symbol) {
    return 'Ƴeewndo $symbol momtaama';
  }
}
