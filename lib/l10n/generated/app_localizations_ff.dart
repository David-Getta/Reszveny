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
  String get labelYieldOnCost => 'Nafoore e coggu soodgol (%)';

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
  String homeDividendsThisYear(String amount) {
    return 'Dividendeeji hitaande ndee: $amount';
  }

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

  @override
  String get keyLevelAlertHint =>
      'Dobo tolnoore ngam heɓde tintinol so coggu ngu yettii ɗum.';

  @override
  String get shareAnalysisTitle => 'Lollin ƴeewndo';

  @override
  String get shareAsImage => 'Lollin no natal';

  @override
  String get shareAsText => 'Lollin no binndi';

  @override
  String get shareCardFooter => 'Waɗaa e WhatStock';

  @override
  String get shareCardDisclaimer => 'Ƴeewndo AI · wonaa wasiya e investisman';

  @override
  String get referralTitle => 'Noddu sehilaaɓe maa';

  @override
  String referralBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ƴeewndooji ɓeydiiɗi $count',
      one: 'ƴeewndo ɓeydiingo 1',
    );
    return 'Lollin kod maa. Sehil maa heɓay $_temp0 ɗoon e ɗoon, an kadi heɓay ko foti ɗum caggal ƴeewndo makko aranndo.';
  }

  @override
  String get referralYourCode => 'Kod maa';

  @override
  String referralStats(int invited, int rewarded) {
    return 'Noddaaɓe: $invited · Njeenaaɗe: $rewarded';
  }

  @override
  String get referralHaveCode => 'A jogii kod immorde e sehil maa?';

  @override
  String get referralRedeem => 'Huutoro';

  @override
  String referralRedeemed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ƴeewndooji ɓeydiiɗi $count ɓeydaama. A jaɓɓaama!',
      one: 'Ƴeewndo ɓeydiingo 1 ɓeydaama. A jaɓɓaama!',
    );
    return '$_temp0';
  }

  @override
  String get referralErrUnknown =>
      'Ndee kod woodaani. Ƴeewto nde refti eto goɗngol.';

  @override
  String get referralErrOwn => 'A waawaa huutoraade kod maa e hoore maa.';

  @override
  String get referralErrAlready => 'A huutoriima kod sehil maa gila law.';

  @override
  String referralShareText(String code, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ƴeewndooji ɓeydiiɗi $count',
      one: 'ƴeewndo ɓeydiingo 1',
    );
    return 'Mi ƴeewnda aksiyoŋaaji e WhatStock: ƴettu natal aksiyoŋ, AI firta ɗum. E kod am $code a heɓay $_temp0.';
  }

  @override
  String get referralCopied => 'Kod nde kopiyaama';

  @override
  String get onboardTitle1 => 'Ƴettu natal aksiyoŋ';

  @override
  String get onboardBody1 =>
      'Yaynirde jaaɓnirgal soodde aksiyoŋ, jaaynde walla maanndel sosiyete heewii: WhatStock heɓtinat aksiyoŋ ngoon, hollaa coggu mayru, natal mayru e limooje mayru tiiɗuɗe.';

  @override
  String get onboardTitle2 => 'Faamu ɗum e nder hojomaaji seeɗa';

  @override
  String get onboardBody2 =>
      'Ƴeewndo AI ngo ina firta ko dillinta aksiyoŋ ngoon, kulɗe mayru, njaru mayru e laabi tati ɗi coggu ngu waawi rewde – e ɗo keɓe ɗee ummii, e ɗemngal maa.';

  @override
  String get onboardTitle3 => 'Wono e kabaaru sahaa kala';

  @override
  String get onboardBody3 =>
      'Cuɓaaɗe, aksiyoŋ maa e tintine coggu ina tintina ma. Ƴeewndooji maa ina heddoo e kaɓirgol maa, a waawii udditde ɗi kadi sahaa kala.';

  @override
  String get onboardNext => 'Yeeso';

  @override
  String get onboardStart => 'Fuɗɗen';

  @override
  String get onboardSkip => 'Accu';

  @override
  String changesTitle(String date) {
    return 'Gila ƴeewndo ndo adii ($date)';
  }

  @override
  String get changesPrice => 'Coggu';

  @override
  String get changesNoMajor => 'Ko yiyaa yeeso waylaaki no feewi.';

  @override
  String get changesPreviousSummary => 'Kuuɓal ndo adii';

  @override
  String get telemetryTitle => 'Wallu ngam moƴƴinde WhatStock';

  @override
  String get telemetryBody =>
      'Lollin limoore kuutorgol mo innde maa alaa e kabaruuji fuuntaaji: kuuɗe kanje huutoraa e ko bonni. Aksiyoŋ maa, ƴeewndooji maa walla humpito maa keeriiɗo neldetaake abadaa. Aɗa waawi waylude ɗum sahaa kala e Teelte.';

  @override
  String get telemetryAllow => 'Yamir';

  @override
  String get telemetryDecline => 'Alaa, a jaaraama';

  @override
  String get telemetrySetting => 'Limoore mo innde alaa e kabaruuji fuuntaaji';

  @override
  String get telemetrySettingHint =>
      'No kuuɗe huutortee ɗoon e ɗoon e kabaruuji juumre, tawa humpito keeriiɗo walla loowdi ɗaɓɓitaaɗe e ƴeewndooji maa alaa.';

  @override
  String get askButton => 'Naamnu dow ƴeewndo ngoo';

  @override
  String askTitle(String symbol) {
    return 'Naamne dow $symbol';
  }

  @override
  String get askIntro =>
      'Naamno kala ko faati e ƴeewndo ngoo: ko kulol woo firti, ko waawi waylude ko yiyetee yeeso, no limoore woo hiisiraa. Jaabawuuji ɗii tuugii ko e ƴeewndo ngoo, wonaa kadi wasiya e investisman.';

  @override
  String get askHint => 'Naamno naamne…';

  @override
  String get askSend => 'Neldu';

  @override
  String get askThinking => 'Ina miijoo…';

  @override
  String get askSuggest1 => 'Ko honɗum woni kulol ɓurngol mawnude?';

  @override
  String get askSuggest2 => 'Ko honɗum waawi waylude ko yiyetee yeeso?';

  @override
  String get askSuggest3 => 'Firir ɗum e haala newiiɗa';

  @override
  String get askMaxReached =>
      'Ɗuum ko naamne cakkitiiɗe ƴeewndo ngoo. Waɗ ƴeewndo kesoo ngam naamnaade goɗɗum.';

  @override
  String get errAskLimit => 'A hewtii keerol naamne hannde. Fuɗɗito janngo.';

  @override
  String get eventTomorrow => 'Jaango';

  @override
  String eventInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'e nder balɗe $days',
      one: 'e nder ñalnde 1',
    );
    return '$_temp0';
  }

  @override
  String get eventEarnings => 'Ngalluuji lebbi tati';

  @override
  String get eventBeforeOpen => 'hade luumo udditde';

  @override
  String get eventAfterClose => 'caggal nde luumo uddi';

  @override
  String eventEpsEstimate(String value) {
    return 'Tijjol EPS: $value';
  }

  @override
  String get eventFromAnalysis => 'Iwde e ƴeewndo maa';

  @override
  String get eventDividend => 'Dividende habbaaɗo';

  @override
  String get eventDividendEstimate => 'Hiisaama iwde e yoɓdiiji ɗe mbinnduɗaa';

  @override
  String get eventsHint =>
      'Ñalɗi ngalluuji cuɓaaɗe maa e aksiyoŋ am e nder balɗe 90 garooɗe, kewuuji jogiiɗi ñalɗi ɗi ƴeewndooji maa kollitii, e dividendeeji habbaaɗi iwde e yoɓdiiji ɗe mbinnduɗaa.';

  @override
  String get eventsEmpty =>
      'Alaa kewu jogiiɗo ñalnde e nder balɗe 90 garooɗe. Ɓeydu cuɓaaɗe walla aksiyoŋ e aksiyoŋ am ngam yiyde ñalɗi ngalluuji maɓɓe ɗoo; dividendeeji ɗi mbinnduɗaa hollat yoɓdi maɓɓe garoowo habbaaɗo.';

  @override
  String get compareTitle => 'Fondondir';

  @override
  String get compareAdd => 'Ɓeydu aksiyoŋ';

  @override
  String get compareRemove => 'Momtu';

  @override
  String get compareTickerHint => 'Kod aksiyoŋ, ɗum noon MSFT';

  @override
  String get compareHint =>
      'Limooje mawɗe ɗee takko takko; nafoore ɓurnde moƴƴude e nder gaɗa kala ko feeñinaa. Limooje ceede ɗee ko e ceede aksiyoŋ kala.';

  @override
  String get compareNoAnalysis => 'Alaa ƴeewndo tawo';

  @override
  String get portfolioDividends => 'Geɗal nafoore hitaande';

  @override
  String portfolioDividendYield(String percent) {
    return '$percent e coggu';
  }

  @override
  String get portfolioDividendNote =>
      'Geɗal nafoore hitaande njaŋngaaɗo ina tuugii e geɗal nafoore yoboraaɗe e lebbi 12 ɓennuɗi ɗii; njoboje garooje ngalaa hoolaare.';

  @override
  String positionDividend(String amount) {
    return 'Geɗal nafoore: $amount kala hitaande';
  }

  @override
  String get chartAvgCost => 'Hakkunde maa';

  @override
  String get chartAlertLevel => 'Tintinol';

  @override
  String get marketsToday => 'Luumooji hannde';

  @override
  String get notesTitle => 'Binndi am';

  @override
  String get notesHint =>
      'Ko waɗi a soodi ɗum, ko ndaarataa, ko waɗata a yeeya?';

  @override
  String get notesInfo =>
      'Ina mooftaa e ngol kaɓirgol tan. Ƴeewndo AI ina jogitoo binndi maa.';

  @override
  String notesSaved(String date) {
    return 'Mooftaama $date';
  }

  @override
  String get peersTitle => 'Sosiyeteeji nanndooji';

  @override
  String get portfolioExport => 'Yaltin no CSV';

  @override
  String get portfolioImport => 'Naatnu iwde e CSV';

  @override
  String get portfolioImportHint =>
      'Ɓortin soodaare wootere e kala diidol: kod aksiyoŋ, keewal, coggu, ceede, ñalnde (YYYY-MM-DD). Kolonuuji ina mbaawi seerndeede ko virgule, point-virgule walla tabulation; diidol tiitoonde ngol ko suɓaade.';

  @override
  String get portfolioImportButton => 'Naatnu';

  @override
  String portfolioImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Soodaaje $count ɓeydaama',
      one: 'Soodaare 1 ɓeydaama',
    );
    return '$_temp0';
  }

  @override
  String portfolioImportSkipped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Diidi $count acciraama',
      one: 'Diidol 1 acciraama',
    );
    return '$_temp0';
  }

  @override
  String get syncInfo =>
      'Aksiyoŋ maa, cuɓaaɗe maa, tintine coggu e binndi maa ko gooto e kala kaɓirgol maa.';

  @override
  String syncLast(String time) {
    return 'Sync sakkitiiɗo: $time';
  }

  @override
  String get syncNow => 'Sync jooni';

  @override
  String get syncFailed => 'Sync roŋkii. Ɗum fuɗɗittoto kam e hoore mum.';

  @override
  String get alertEmailTitle => 'E-mail so tintinol huɓɓii';

  @override
  String get alertEmailOn =>
      'Min ƴeewtata tintine maa hojomaaji seeɗa kala, min neldoo ma e-mail, hay so jaaɓnirgal ngal uddaama.';

  @override
  String get alertEmailSignIn =>
      'Seŋo e e-mail maa nder Teelte ngam heɓde tintine e e-mail, hay so jaaɓnirgal ngal uddaama.';

  @override
  String get portfolioHistory => 'Waylagol njaru';

  @override
  String get portfolioReviewTitle => 'Ƴeewndo AI aksiyoŋ am';

  @override
  String get portfolioReviewIntro =>
      'AI ina ƴeewa aksiyoŋ maa fof: hawrugol kaalis maa e nokku gooto, golle e kaalis ɗe ngonɗaa e mum\'en, bone ɗe aksiyoŋ maa kawri, e njeenaari. Ina huutoroo ƴeewndo 1.';

  @override
  String get portfolioReviewButton => 'Ƴeew aksiyoŋ am';

  @override
  String get portfolioReviewAgain => 'Ƴeew kadi';

  @override
  String get portfolioReviewWorking => 'Ina ƴeewa aksiyoŋ maa…';

  @override
  String get digestTitle => 'Tonngol yontere e iimeel';

  @override
  String get digestHint =>
      'Altine kala: no cuɓaaɗe maa e aksiyoŋ maa njahri yontere ɓennunde nde, e ñalɗi ngalluuji maɓɓe garooɗi.';

  @override
  String get benchmarkTitle => 'Fondaade e S&P 500';

  @override
  String get benchmarkYours => 'Coodgu maa';

  @override
  String get benchmarkIndex => 'Kaalis gooto e S&P 500';

  @override
  String benchmarkAhead(String points) {
    return 'Ɓuri indeks oo pursantaas $points';
  }

  @override
  String benchmarkBehind(String points) {
    return 'Ina rewi indeks oo pursantaas $points';
  }

  @override
  String get benchmarkHint =>
      'Wano si ceede coodgu kala waɗaa e fonds indeks S&P 500 e ñalawma gooto oo. Dividende naatiraaka; ngañaari ɓennuɗi hollataa ngañaari garooji.';

  @override
  String get portfolioSell => 'Yeeyu';

  @override
  String portfolioSellTitle(String symbol) {
    return 'Yeeyu $symbol';
  }

  @override
  String portfolioSellPrice(String currency) {
    return 'Coggu yeeyugol kala aksiyoŋ ($currency)';
  }

  @override
  String get portfolioSellDate => 'Ñalnde yeeyugol';

  @override
  String get portfolioSellAll => 'Fof';

  @override
  String portfolioSellTooMany(String quantity) {
    return 'A jogii $quantity';
  }

  @override
  String get portfolioSold => 'Yeeyaama';

  @override
  String get portfolioRealized => 'Nafoore heɓaande';

  @override
  String get portfolioClosed => 'Aksiyoŋ yeeyaaɗe';

  @override
  String get portfolioClosedNote => 'Aksiyoŋ fof yeeyaama';

  @override
  String get portfolioTransactions => 'Soodgol e yeeyugol';

  @override
  String get portfolioRealizedByYear => 'Nafoore heɓaande e kala hitaande';

  @override
  String get portfolioRealizedHint =>
      'Yeeyuuji ina njaaɓndira adan e soodgol maa ɓurngol ƙiɗɗude (FIFO), waylaa e coggu beccol hannde. Ngam deftere lempo maa, huutoro ciimtol broker maa.';

  @override
  String staleNewResults(String symbol, String date) {
    return 'Gila ndee ƴeewndo nde waɗaa, ngalluuji lebbi tati kesi njaltinaama ($symbol, $date).';
  }

  @override
  String get newResultsBadge => 'Ngalluuji kesi';

  @override
  String get portfolioImportBrokers =>
      'Ɗoftaaɗe Revolut, Trading 212 e Interactive Brokers kadi ina heftinee, wondude e coggu; geɗal nafoore e njoɓdi ina acceede.';

  @override
  String get portfolioImportFile => 'Suɓo fiilde';

  @override
  String offlineBanner(String time) {
    return 'Ceŋagol alaa – keɓe sakkiiɗe danndeede ina njaltinee ($time).';
  }

  @override
  String get glossMarketCap =>
      'Njaru kompaañi ndii fof e luumo aksiyoŋ: coggu aksiyoŋ × limoore aksiyoŋ.';

  @override
  String get glossSharesOutstanding =>
      'Limoore aksiyoŋ ɗe kompaañi ndii yaltini. So ɓeydiima, kala aksiyoŋ heɓat geɗal ɓurngal famɗude; soodtitagol aksiyoŋ ina ustoo ɗum.';

  @override
  String get glossPeTrailing =>
      'Coggu ÷ nafoore kala aksiyoŋ e lebbi 12 ɓennuɗi ɗii: duuɓi nafoore jooni no foti njoɓataa. Ko ɓuri lesde ko ɓuri hoyde, kono kompaañiiji mawnotooɗi law ina njogii P/E toowuɗo.';

  @override
  String get glossPeForward =>
      'Hono P/E, kono e nafoore nde ƴeewtotooɓe ndamndii e lebbi 12 garooji ɗii. So ina les P/E ɓennuɗo, ina sikkaa nafoore maa ɓeydo.';

  @override
  String get glossPb =>
      'Coggu ÷ njaru deftere (jawdi ustaa ñamaale) kala aksiyoŋ. Ɓadaade 1 ina firi luumo ina hiisa kompaañi ndii e ko o jogii e kaayit.';

  @override
  String get glossPs =>
      'Njaru e luumo ÷ ceede naatuɗe e hitaande. Ina nafa kompaañiiji jogiiɗi nafoore famɗunde walla alaa tawo; yerdondin ɗum e nder golle gooto.';

  @override
  String get glossEvToFcf =>
      'Njaru kompaañi e ñamaale mum (EV) ÷ ceede ɗe o heɓata e hitaande caggal ndimmorɗe. Ko ɓuri lesde ina firi a heɓat ceede ɓurɗe heewde e coggu ngun.';

  @override
  String get glossPeg =>
      'P/E ÷ ɓeydagol nafoore hitaande ndamndaangol (%). Ɓadaade 1 ina hiisee ko feewi; ina hollira P/E e jaŋngol ɓeydagol.';

  @override
  String get glossEps =>
      'Nafoore kala aksiyoŋ e lebbi 12 ɓennuɗi ɗii. EPS ɓeydotoo hitaande kala ko maande ɓurnde semmbude e kompaañi cellundi.';

  @override
  String get glossBeta =>
      'No aksiyoŋ ngo dillirta e luumo: 1 = hono luumo, 1,5 = dillere ɓurnde mawnude 50% ɓadaade, les 1 = ɓuri deƴƴude.';

  @override
  String get glossRevenueTtm =>
      'Kala ko yeeyaa e lebbi 12 ɓennuɗi ɗii, hade ustaade njoɓdi fof.';

  @override
  String get glossNetIncomeTtm =>
      'Nafoore heddiinde caggal njoɓdi fof, interes e lempo e lebbi 12 ɓennuɗi ɗii.';

  @override
  String get glossGrossMargin =>
      'Geɗal ceede naatuɗe heddiiɗo caggal njoɓdi piiji ɗii tigi. Marge toowuɗo ina hollira law semmbe e taƴugol coggu.';

  @override
  String get glossOperatingMargin =>
      'Geɗal ceede naatuɗe heddiiɗo caggal njoɓdi golle (njoɓdi liggotooɓe, luwe, marketing), hade interes e lempo.';

  @override
  String get glossNetMargin =>
      'Geɗal ceede naatuɗe wonta nafoore sakkitiinde. 20% ina firi e kala 100 yeeyaa, 20 ko nafoore.';

  @override
  String get glossRoe =>
      'Nafoore e kapital (ROE): nafoore hitaande ÷ kapital jom\'en. Ina hollira no ardiiɓe kuutortoo ceede jom aksiyoŋ\'en; ɓuri 15% ɓadaade ko semmbe.';

  @override
  String get glossRoa =>
      'Nafoore e jawdi (ROA): nafoore hitaande ÷ kala ko kompaañi ndii jogii. Yerdondin ɗum e nder golle gooto.';

  @override
  String get glossDebtToEquity =>
      'Ñamaale ÷ kapital jom\'en. Ko ɓuri toowde ina firi ceede ñamaaɗe ɓurɗe heewde: kulol ɓurngol mawnude so interes ɓeydiima walla golle ndeƴƴii.';

  @override
  String get glossCurrentRatio =>
      'Jawdi ɓooyataa ÷ ñamaale yoɓetee e nder hitaande. Ɓuri 1 ina firi kompaañi ndii ina waawi yoɓde ñamaale mum ɓadiiɗe.';

  @override
  String get glossRevenueGrowth =>
      'No ceede naatuɗe ɓeydiiri yerdondinaa e hitaande ɓennunde.';

  @override
  String get glossEpsGrowth =>
      'No nafoore kala aksiyoŋ ɓeydiiri yerdondinaa e hitaande ɓennunde.';

  @override
  String get glossDividendYield =>
      'Geɗal nafoore hitaande ÷ coggu aksiyoŋ: ceede ɗe keɓataa e hitaande, e teemedere e ko njoɓ-ɗaa.';

  @override
  String get glossDividendPerShare =>
      'Geɗal nafoore yoɓaangal e aksiyoŋ gooto e hitaande ɓennunde.';

  @override
  String get glossPayoutRatio =>
      'Geɗal nafoore yoɓetee jom aksiyoŋ\'en. Ɓuri 100% kompaañi ndii ina yoɓa ko ɓuri ko heɓata, ɗum ɓooyataa.';

  @override
  String get glossYieldOnCost =>
      'Dividendeeji ɗi a heɓi e lebbi 12 sakkitiiɗi, feccaaɗi e ko a yoɓi e aksiyoŋuuji ɗi a jogii tawo. So wonaa geɗal nafoore e coggu, ɗum ina ɓetee e coggu soodgol maa, wonaa coggu hannde.';

  @override
  String get glossTitle => 'Ko ɗum firi?';

  @override
  String get watchNewsTitle => 'Kabaruuji aksiyoŋ maa';

  @override
  String get undo => 'Firtu';

  @override
  String get watchSort => 'Toppitin';

  @override
  String get watchSortOwn => 'Doggol am';

  @override
  String get watchSortGainers => 'Ɓeyditiiɓe ɓurɗi adan';

  @override
  String get watchSortLosers => 'Ustiiɓe ɓurɗi adan';

  @override
  String get watchSortName => 'E kod (A–Z)';

  @override
  String get watchHint =>
      'Foo jogorgal ngal ngam waylude doggol, taw nano ngam ittude. Ñiiɓol ngol hollat balɗe 30 ɓennuɗe.';

  @override
  String analysisReady(String symbol) {
    return '$symbol: ƴeewndo maa ina heftii.';
  }

  @override
  String alertFromCost(String price) {
    return 'Ummorde e coggu soodu maa hakkundeejo ($price):';
  }

  @override
  String get briefTitle => 'Hannde e aksiyonji maa';

  @override
  String get briefButton => 'Raɓɓin hannde';

  @override
  String get briefHint =>
      'Raɓɓinal AI ngal hollata no portfolio maa e ɗi njiɗ-ɗaa ndilli hannde e ko kabaruuji kesi mbiyata e dow majji. Ɗum huutortaa ƴeewndo.';

  @override
  String get briefRefresh => 'Hesɗitin';

  @override
  String get sectionEarnings => 'Ngalluuji';

  @override
  String earningsNext(String date) {
    return 'Jaŋtol garowol: $date';
  }

  @override
  String get earningsExpected => 'EPS jortaaɗo';

  @override
  String get earningsReported => 'EPS bayyinaaɗo';

  @override
  String earningsBeats(int beats, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other:
          'Hewtii walla ɓurii EPS jortaaɗo e $beats e nder lebbi tati $total sakkitiiɗi',
      one: 'Hewtii walla ɓurii EPS jortaaɗo e $beats e nder lebbi tati 1',
    );
    return '$_temp0';
  }

  @override
  String earningsReminderTomorrow(String symbol) {
    return '$symbol maa yaltin ngalluuji lebbi tati jaango';
  }

  @override
  String earningsReminderToday(String symbol) {
    return '$symbol ina yaltina ngalluuji lebbi tati hannde';
  }

  @override
  String get earningsRemindersTitle => 'Siftorɗe ngalluuji';

  @override
  String get earningsRemindersSubtitle =>
      'Tintinol ñalawma gootal ado cuɓaaɗe maa walla sitokuuji portfolio maa yaltinde ngalluuji lebbi tati';

  @override
  String addAllToFavorites(int count) {
    return 'Ɓeydu fof e cuɓaaɗe ($count)';
  }

  @override
  String get portfolioImportPhoto => 'Naatnu iwde e natal yaynirde';

  @override
  String get holdingsReading => 'Ina janga ko a jogii…';

  @override
  String get holdingsReviewTitle => 'Ko a jogii ko tawaa';

  @override
  String get holdingsReviewHint =>
      'Ƴeewto limooje ɗee hade maa ɓeydude ɗe. Coggu ngu ko coggu hakkunde ngu soodirɗaa kala aksiyoŋ, wanaa coggu hannde.';

  @override
  String get holdingsNoPrice => 'Alaa coggu soodaare hakkunde e natal ngal';

  @override
  String holdingsAdd(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ɓeydu aksiyoŋ $count',
      one: 'Ɓeydu aksiyoŋ 1',
    );
    return '$_temp0';
  }

  @override
  String get holdingsNone =>
      'Alaa aksiyoŋ tawaa e natal ngal. Etto natal yaynirde hello aksiyoŋ maa e burtiyeejo maa.';

  @override
  String get week52Range => 'Hakkunde yonte 52';

  @override
  String week52BelowHigh(String percent) {
    return '$percent les ɓurɗum toowde e yonte 52';
  }

  @override
  String get week52AtHigh => 'E ɓurɗum toowde e yonte 52';

  @override
  String get alertKindTrailing => 'Jippagol gila toownde';

  @override
  String get alertTrailingPercent => 'Jippagol gila toownde (%)';

  @override
  String get alertTrailingHint =>
      'Ɗum rewa coggu ngu e dow: ɗum anndinta so coggu ngu jippii ɗuum gila e toownde mum ɓurnde gila nde a teeltii ɗum.';

  @override
  String alertDescTrailing(String percent) {
    return '$percent jippagol gila toownde';
  }

  @override
  String alertTrailingPeak(String price) {
    return 'toownde haa jooni: $price';
  }

  @override
  String alertHitTrailing(String symbol, String percent) {
    return '$symbol jippii $percent gila e toownde mum';
  }

  @override
  String get sectionInsiders => 'Coodgu e njeeyu hooreeɓe';

  @override
  String insiderBuys(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'coodgu $count',
      one: 'coodgu 1',
    );
    return '$_temp0';
  }

  @override
  String insiderSells(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'njeeyu $count',
      one: 'njeeyu 1',
    );
    return '$_temp0';
  }

  @override
  String insiderNet(String shares) {
    return 'Heddiiɗum: aksiyoŋ $shares';
  }

  @override
  String get insiderBuy => 'Soodii';

  @override
  String get insiderSell => 'Yeeyii';

  @override
  String get insiderHint =>
      'Coodgu e njeeyu hooreeɓe e jiiloyankooɓe e luumo udditiingo nder balɗe 90 ɓennuɗe (SEC Form 4). Huutoraade option e aksiyoŋ dokkaaɗe limtaaka.';

  @override
  String get insiderNone =>
      'Alaa coodgu walla njeeyu hooreeɓe e luumo udditiingo nder balɗe 90 ɓennuɗe.';

  @override
  String get analystTrend => 'No miijooji ndi waylitorii lewru kala';

  @override
  String get watchListAll => 'Fof';

  @override
  String get watchListNew => 'Doggol kesol';

  @override
  String get watchListName => 'Innde doggol';

  @override
  String get watchListRename => 'Waylu innde doggol';

  @override
  String get watchListDelete => 'Momtu doggol';

  @override
  String get watchListAddTo => 'Ɓeydu e doggol';

  @override
  String get watchListEmpty =>
      'Alaa hay sitok e ndee doggol tawo. Ñoƒƒu butoŋ doggol takko sitok ngam ɓeydude ɗum.';

  @override
  String get portfolioAskTitle => 'Naamne dow aksiyoŋ maa';

  @override
  String get rangeYtd => 'Hikka';

  @override
  String get backupTitle => 'Kopi danndaandi';

  @override
  String get backupSave => 'Danndu kopi';

  @override
  String get backupSaveHint =>
      'Cuɓaaɗe maa, dogge maa, aksiyoŋ maa, tintine maa e binndi maa e fiyannde wootere.';

  @override
  String get backupRestore => 'Artir iwde e kopi danndaandi';

  @override
  String get backupRestoreHint =>
      'Ɓeydata ko woni e fiyannde ndee; alaa fus ko woodanaa jooni momtetee.';

  @override
  String get backupRestored => 'Kopi danndaandi ndi artiraama.';

  @override
  String get backupInvalid => 'Ndee fiyannde wonaa kopi danndaandi WhatStock.';

  @override
  String get allocationPositions => 'Aksiyonji';

  @override
  String get allocationSectors => 'Fannuuji';

  @override
  String get allocationCurrencies => 'Ceede';

  @override
  String get compareReturn1y => 'Ñeeñal hitaande 1';

  @override
  String get compareFromHigh => 'Diga ɓurɗum toowde e yonte 52';

  @override
  String get briefAutoTitle => 'Ciimtol ñalnde kala subaka';

  @override
  String get briefAutoSubtitle =>
      '“Hannde e aksiyonji maa” ina waɗee hoore mum caggal 7:00 subaka tuma nde jaaɓnirgal ngal ina golloo; e ordinateeruuji, tintinol maa humpito ma. Ina huutoroo keerol naamne maa ñalnde kala, wonaa ƴeewndo.';

  @override
  String get targetsButton => 'Peccugol faandaare';

  @override
  String get targetsTitle => 'Peccugol faandaare';

  @override
  String get targetsHint =>
      'Holle feccere portfolio nde aksiyon kala foti heɓde. Accu nokku oo meho so faandaare alaa. Caggal ɗuum app oo hollete ko foti soodeede walla yeeyeede ngam yettaade ɗoon.';

  @override
  String targetsSum(String percent) {
    return 'Fof: $percent';
  }

  @override
  String rebalanceBuy(String amount) {
    return 'Soodu ≈ $amount';
  }

  @override
  String rebalanceSell(String amount) {
    return 'Yeeyu ≈ $amount';
  }

  @override
  String get rebalanceOk => 'E faandaare';

  @override
  String earningsResultBeat(String symbol) {
    return '$symbol ɓurii EPS jortaaɗo';
  }

  @override
  String earningsResultMiss(String symbol) {
    return '$symbol heɓaani EPS jortaaɗo';
  }

  @override
  String earningsResultBody(String actual, String estimate) {
    return 'EPS bayyinaaɗo $actual, jortaaɗo $estimate';
  }

  @override
  String get newsExplain => 'Ko ɗum firti?';

  @override
  String get watchAlertAll => 'Jeertinol e waylooji mawɗi ñalnde';

  @override
  String get watchAlertAllHint =>
      'Jeertinol coggu ngam kala aksiyoŋ e ndee doggol: ina haala so waylii ko ɗuum fof e ñalnde wootere, dow walla les. Ɗe njogiiɗe jeertinol gila adii ndeen ndesay e mum en.';

  @override
  String watchAlertAllDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jeertine $count teeltaama',
      one: 'Jeertinol 1 teeltaama',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportRealized => 'Yaltin riba heɓaaɗo (CSV)';

  @override
  String get portfolioAnnualReturn => 'Nafoore hitaande';

  @override
  String portfolioPerYear(String percent) {
    return '$percent / hitaande';
  }

  @override
  String get portfolioAnnualReturnHint =>
      'Nafoore hitaande peesaande e ceede (XIRR): ina jaggita sahaaji ɗi soodu-ɗaa e ɗi yeeyu-ɗaa, ngam ceede ɓeydaaɗe caggal ɗee nattataa ɗum. Ina hollee so soodgol maa adiingol hewtii hitaande wootere fof; geɗal nafoore naatnaaka.';

  @override
  String get eventsAddToCalendar => 'Ɓeydu e kalandiye (.ics)';

  @override
  String get portfolioMoveAlertTitle => 'Jeertinol portfolio';

  @override
  String get portfolioMoveAlertSubtitle =>
      'Tintinol so portfolio maa fof wayliima ɗuum e ñalawma gootal.';

  @override
  String get portfolioMoveAlertOff => 'Ñifaama';

  @override
  String portfolioMoveUp(String percent) {
    return 'Portfolio maa ɓeydiima $percent hannde';
  }

  @override
  String portfolioMoveDown(String percent) {
    return 'Portfolio maa ustiima $percent hannde';
  }

  @override
  String get whatIfTitle => 'Si a waɗii ceede, hol ko ɗum wonata?';

  @override
  String get whatIfAmount => 'Limoore';

  @override
  String whatIfResult(String amount, String period) {
    return 'Si a waɗii $amount e nder $period, hannde ɗum foti';
  }

  @override
  String get whatIfNote =>
      'Ina tuugii e coggu aksiyoŋ tan: geɗal nafoore, njoɓdi e lempooji naataani. Ŋeɗu ɓennuɗu hollataa ko arata.';

  @override
  String get watchShare => 'Senndu doggol ngol';

  @override
  String get watchImport => 'Ɓeydu kod aksiyoŋ';

  @override
  String get watchImportHint =>
      'Ɓortin kod aksiyoŋ seerndaaɗi ko virgule, ɓolɗe walla diiɗe kese – ko wayi no doggol goɗɗo senndii e maaɗa.';

  @override
  String watchImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aksiyoŋuuji $count ɓeydaama',
      one: 'Aksiyoŋ 1 ɓeydaama',
      zero: 'Alaa aksiyoŋ kesol',
    );
    return '$_temp0';
  }

  @override
  String get positionsSortWeight => 'Ɓurɓe mawnude adan';

  @override
  String get positionsSortGain => 'Nafoore timmunde ɓurnde adan';

  @override
  String get positionsSortToday => 'Ɓurɓe moƴƴude hannde adan';

  @override
  String get chartMyBuys => 'Ko a soodi';

  @override
  String get chartMySells => 'Ko a yeeyi';

  @override
  String get shortcutsTitle => 'Laawi ɓadaaɗi kilaawiye';

  @override
  String usMarketOpen(String time) {
    return 'Luumo Amerik ena udditi · ina uddoo e nder $time';
  }

  @override
  String usMarketClosed(String time) {
    return 'Luumo Amerik ena uddii · ina uddita e nder $time';
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
    return '$days balɗe $hours h';
  }

  @override
  String get portfolioGoalSet => 'Taƴto faandaare';

  @override
  String get portfolioGoalTitle => 'Faandaare aksiyoŋ am';

  @override
  String portfolioGoalProgress(String percent, String amount) {
    return '$percent · Faandaare: $amount';
  }

  @override
  String portfolioGoalReached(String amount) {
    return 'A heɓii faandaare maa: $amount';
  }

  @override
  String get portfolioGoalRemove => 'Momtu faandaare';

  @override
  String get alertEdit => 'Waylu tintinol';

  @override
  String get positionOpenLots => 'Ina woodi haa jooni (ɓurɗi ƙiɗɗude adan)';

  @override
  String get lotRemoved => 'Soodgol walla yeeyugol momtaama';

  @override
  String get alertDeleted => 'Jeertinol momtaama';

  @override
  String get alertsClearTriggered => 'Momtu jeertine ɗe huwi';

  @override
  String alertsCleared(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Jeertine $count momtaama',
      one: 'Jeertinol 1 momtaama',
    );
    return '$_temp0';
  }

  @override
  String get homeScreenTitle => 'Hello arano';

  @override
  String get allocationCountries => 'Leyɗeele';

  @override
  String get newsExplainNoteResearch =>
      'Firo AI: ina yiylo goonga ɗen e geese, ina uddita winndannde nden, ina ƴeewa no iwdi ndi hoolniri. Wonaa wasiya e investisman. Ina huutoroo keerol naamne maa ñalnde kala, wonaa ƴeewndo.';

  @override
  String get sourceOfficial => 'Laawɗungal';

  @override
  String get sourcePressRelease => 'Habrudi';

  @override
  String get sourceMajorNews => 'Jaaynde mawnde';

  @override
  String get sourceOpinion => 'Miijo';

  @override
  String get earningsSummaryButton => 'Ko woni e jaŋtorde sakkitiinde ndee?';

  @override
  String get earningsSummaryNote =>
      'Ɓeyngugol AI bayyinannde ngalluuji sosiyetee oo e kabaruuji jaaynde ɗi o yiyi e geese. Wonaa wasiya e investisman. Ina huutoroo keerol naamne maa ñalnde kala, wonaa ƴeewndo.';

  @override
  String get compareLastSurprise => 'EPS kuartaal ɓennuɗo e jortaaɗo';

  @override
  String get compareNextReport => 'Jaŋtol garowol';

  @override
  String get resolvingDescription => 'Ina ƴeewa aksiyoŋ mo njiɗ-ɗaa…';

  @override
  String get instrumentTitle => 'Ko faati e kuutorgal ngal';

  @override
  String get instrumentHint =>
      'Alaa humpito sosiyetee e maande ndee – ina waawi wonde ETF, fonndo walla ɗerewol depoo. Naamno AI ko woni ɗum, ko woni e mum e no foti coggu mum.';

  @override
  String get instrumentAsk => 'Ko woni ɗum?';

  @override
  String get instrumentNote =>
      'Faccirde AI ummoraade e hello fonndo yaltinoowo e lowe ngalu ɗe o yiyi e geese. Wonaa wasiya e investisman. Ina huutoroo keerol naamne maa ñalnde kala, wonaa ƴeewndo.';

  @override
  String suggestAskAi(String query) {
    return 'Naamnu AI: « $query »';
  }

  @override
  String portfolioNoPriceFor(String symbols) {
    return 'Coggu jooni alaa wonande $symbols.';
  }

  @override
  String get eventsRecentResults => 'Ngalluuji kesi bayyinaaɗi';

  @override
  String get saveToNotes => 'Mooftu e binndi am';

  @override
  String get savedToNotes => 'Mooftaama e binndi maa';

  @override
  String get portfolioDividendsReceived => 'Dividendeeji heɓaaɗi';

  @override
  String get portfolioDividendsThisYear => 'Hitaande ndee';

  @override
  String get portfolioDividendsAllTime => 'Sahaa fof';

  @override
  String get portfolioAddDividend => 'Ɓeydu dividende';

  @override
  String portfolioDividendAmount(String currency) {
    return 'Keewal heɓaangal ($currency)';
  }

  @override
  String get portfolioDividendDate => 'Ñalnde yoɓdi';

  @override
  String get portfolioDividendsEmpty =>
      'Dividende winndaaka tawo. Ɓeydu ɗum e junngo, walla naatnu export broker maa – gorol dividende makko kadi ƴettete.';

  @override
  String portfolioDividendsImported(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dividendeeji $count ɓeydaama',
      one: 'Dividende 1 ɓeydaama',
    );
    return '$_temp0';
  }

  @override
  String get portfolioExportDividends => 'Yaltin dividendeeji (CSV)';

  @override
  String get portfolioDividendDeleted => 'Dividende momtaama';

  @override
  String get portfolioDividendsHint =>
      'Keeweele no ɗe ari e konte maa, e kaalis yoɓdi; kuuɓtidinal waylete e coggu hannde. Ngam winndannde lempoo maa, huutoro ɓataake broker maa.';

  @override
  String get awayTitle => 'Tuma nde a woodaano';

  @override
  String awaySince(String when) {
    return 'Gila $when';
  }

  @override
  String get awayQuiet => 'Hay huunde dillaani sanne.';

  @override
  String awayAlerts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tintinooli $count yaltii',
      one: 'Tintinol 1 yaltii',
    );
    return '$_temp0';
  }

  @override
  String awayReported(String symbols) {
    return 'Ɓe yaltini keɓe maɓɓe: $symbols';
  }

  @override
  String get moveWhyButton => 'Ko waɗi ɗum waylotoo hannde?';

  @override
  String moveWhyTitle(String percent) {
    return '$percent hannde';
  }

  @override
  String get moveWhyNote =>
      'Faccirde AI iwde e kabaruuji hannde ɗi tawaa e enternet; sabaabu goonga ina waawi wonde ko anndaaka walla ko seerti. Wonaa waajuuji jawdi. Ina huutoroo keerol maa naamnde ñalawma, wonaa ƴeewndo.';

  @override
  String get sectionTechnical => 'Natal karallagal';

  @override
  String get labelSma50 => 'Hakkundeyel balɗe 50';

  @override
  String get labelSma200 => 'Hakkundeyel balɗe 200';

  @override
  String get labelRsi => 'RSI (balɗe 14)';

  @override
  String get labelVolatility30 => 'Waylitaare (balɗe 30)';

  @override
  String techAbove(String percent) {
    return '$percent dow';
  }

  @override
  String techBelow(String percent) {
    return '$percent les';
  }

  @override
  String get techOverbought => 'soodaama burtii';

  @override
  String get techOversold => 'yeeyaama burtii';

  @override
  String get techNeutral => 'hakkunde';

  @override
  String get techGoldenCross =>
      'Hakkundeyel balɗe 50 ina dow hakkundeyel balɗe 200 – e janngol kiiɗɗol, ɗum ko laawol ƴellitaare.';

  @override
  String get techDeathCross =>
      'Hakkundeyel balɗe 50 ina les hakkundeyel balɗe 200 – e janngol kiiɗɗol, ɗum ko laawol jippagol.';

  @override
  String get glossSma50 =>
      'Hakkundeyel coggu uddugol balɗe njulaagu 50 sakkitiiɗe. Coggu dow mum ina jaŋnge heewi ko semmbe daɓɓo, les mum ko lo\'ere.';

  @override
  String get glossSma200 =>
      'Hakkundeyel coggu uddugol balɗe njulaagu 200 sakkitiiɗe – ɗiggol laawol juutngol kiiɗɗol. Jom-jawdi heewɓe ina jaaltoo coggu dow mum ko laawol ƴellitaare juutngol.';

  @override
  String get glossRsi =>
      'Tiimtol semmbe jiidugol (RSI): ina ƴeewindira ɓamtaare keewɗe e pertugol keewɗe e ɓetol 0–100. So ɓuri 70, heewi wiyeede ko ngeɗu ngun soodaama burtii (ƴellitii law), so les 30 ko yeeyaama burtii – kono laawol tiiɗngol ina waawi heddaade ɗoon ko juuti.';

  @override
  String get glossVolatility =>
      'No coggu waylitortoo ñalnde kala, limaama e hitaande wootere: 20% firti ko e hitaande hesere coggu ina dillira hakkunde ±20%. Waylitaare ɓurnde toowde firti ko dillannde mawnde e banngeeji ɗiɗi fof.';

  @override
  String get techNote =>
      'Limaama e coggu uddugol ñalawma kala. Maandeeji karallagal ina sifoo ko ɓenni, wonaa ko aroyta.';

  @override
  String portfolioAbove200(int above, int count) {
    return '$above e nder $count aksiyoŋ ina dow hakkundeyel balɗe 200 mum';
  }

  @override
  String get watchSignalsTitle => 'Maandeeji';

  @override
  String signalRsiOversold(String value) {
    return 'RSI $value · yeeyaama burtii';
  }

  @override
  String signalRsiOverbought(String value) {
    return 'RSI $value · soodaama burtii';
  }

  @override
  String get signalCrossedAbove => 'ƴawii dow hakkundeyel balɗe 200';

  @override
  String get signalCrossedBelow => 'jippii les hakkundeyel balɗe 200';

  @override
  String get signalAlertsTitle => 'Tintinooli maandeeji teknik';

  @override
  String get signalAlertsSubtitle =>
      'Laawol gootol e ñalawma, so aksiyoŋ ngo rewataa yeeyaama burtii walla soodaama burtii (RSI), walla coggu mum ɓennii hakkundeyel balɗe 200.';

  @override
  String get signalAlertsNotification => 'Maandeeji teknik';

  @override
  String get glossaryPageTitle => 'Ɓaŋngirde kelme';

  @override
  String get glossaryPageSubtitle =>
      'Pirtoore newiinde kala limoore nde app ndee hollata, gila P/E haa RSI';

  @override
  String get glossarySearchHint => 'Yiylo e ɓaŋngirde kelme';

  @override
  String get portfolioCash => 'Kaalis';

  @override
  String get portfolioCashTitle => 'Keddiiɗum kaalis';

  @override
  String get portfolioCashHint =>
      'Kaalis mo waɗaaka e njulaagu to broker maa, e kala ceede. Ina limee e kuuɓal njaru e peccugol; wonaa e nafoore.';

  @override
  String portfolioCashAmount(String currency) {
    return 'Limoore ($currency)';
  }

  @override
  String get portfolioCashEdit => 'Teelto keddiiɗum kaalis';

  @override
  String get portfolioDividendsExpected => 'Ko habbaa rewde';

  @override
  String get portfolioDividendsExpectedNote =>
      'Hiisaama e ñalɗi e keeweendi yoɓdiiji ɗi winnduɗaa; sosiyeteeji ina mbaawi waylude ɗum walla ɗalde ɗum.';

  @override
  String portfolioDividendAround(String date) {
    return 'hedde $date';
  }
}
